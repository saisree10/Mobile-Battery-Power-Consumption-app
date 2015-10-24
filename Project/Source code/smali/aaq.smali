.class public Laaq;
.super Ljava/lang/Object;
.source "LowBatteryNotification.java"

# interfaces
.implements Ladc;


# static fields
.field private static volatile a:Laaq;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lamb;

.field private d:Larr;

.field private e:Laap;

.field private f:Landroid/app/NotificationManager;

.field private g:Lamp;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Laaq;->b:Landroid/content/Context;

    .line 47
    iget-object v0, p0, Laaq;->b:Landroid/content/Context;

    invoke-static {v0}, Laap;->a(Landroid/content/Context;)Laap;

    move-result-object v0

    iput-object v0, p0, Laaq;->e:Laap;

    .line 48
    iget-object v0, p0, Laaq;->b:Landroid/content/Context;

    invoke-static {v0}, Larr;->a(Landroid/content/Context;)Larr;

    move-result-object v0

    iput-object v0, p0, Laaq;->d:Larr;

    .line 49
    iget-object v0, p0, Laaq;->b:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Laaq;->f:Landroid/app/NotificationManager;

    .line 50
    iget-object v0, p0, Laaq;->b:Landroid/content/Context;

    invoke-static {v0}, Lamb;->a(Landroid/content/Context;)Lamb;

    move-result-object v0

    iput-object v0, p0, Laaq;->c:Lamb;

    .line 51
    iget-object v0, p0, Laaq;->b:Landroid/content/Context;

    invoke-static {v0}, Lamp;->a(Landroid/content/Context;)Lamp;

    move-result-object v0

    iput-object v0, p0, Laaq;->g:Lamp;

    .line 52
    return-void
.end method

.method public static a(Landroid/content/Context;)Laaq;
    .locals 2
    .parameter

    .prologue
    .line 55
    sget-object v0, Laaq;->a:Laaq;

    if-nez v0, :cond_1

    .line 56
    const-class v1, Laaq;

    monitor-enter v1

    .line 57
    :try_start_0
    sget-object v0, Laaq;->a:Laaq;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Laaq;

    invoke-direct {v0, p0}, Laaq;-><init>(Landroid/content/Context;)V

    sput-object v0, Laaq;->a:Laaq;

    .line 60
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_1
    sget-object v0, Laaq;->a:Laaq;

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(I)V
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0xa

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 127
    iget-object v0, p0, Laaq;->b:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a029c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    iget-object v1, p0, Laaq;->b:Landroid/content/Context;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a029b

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 131
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Laaq;->b:Landroid/content/Context;

    const-class v4, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    const-string v3, "from_where"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    iget-object v3, p0, Laaq;->b:Landroid/content/Context;

    invoke-static {v3, v5, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 134
    new-instance v3, Landroid/app/Notification;

    sget-object v4, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v4, 0x7f02000e

    const-wide/16 v5, 0x0

    invoke-direct {v3, v4, v0, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 135
    iget-object v4, p0, Laaq;->b:Landroid/content/Context;

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 136
    const/16 v0, 0x10

    iput v0, v3, Landroid/app/Notification;->flags:I

    .line 139
    iget-object v0, p0, Laaq;->b:Landroid/content/Context;

    invoke-static {v0}, Lbap;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Laaq;->b:Landroid/content/Context;

    invoke-static {v0}, Lbae;->a(Landroid/content/Context;)V

    .line 143
    :cond_0
    iget-object v0, p0, Laaq;->f:Landroid/app/NotificationManager;

    invoke-virtual {v0, v7}, Landroid/app/NotificationManager;->cancel(I)V

    .line 145
    :try_start_0
    iget-object v0, p0, Laaq;->f:Landroid/app/NotificationManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 147
    iget-object v0, p0, Laaq;->b:Landroid/content/Context;

    const-string v1, "birc"

    const-string v2, "lbnd"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    return-void
.end method

.method private b(Ladd;)I
    .locals 4
    .parameter

    .prologue
    const/16 v2, 0x1e

    const/16 v0, 0xa

    const/4 v1, 0x0

    .line 88
    .line 97
    iget-object v3, p0, Laaq;->d:Larr;

    invoke-virtual {v3}, Larr;->s()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 98
    iget v2, p1, Ladd;->j:I

    if-gt v2, v0, :cond_2

    iget v0, p1, Ladd;->e:I

    if-nez v0, :cond_2

    .line 100
    iget-object v0, p0, Laaq;->d:Larr;

    invoke-virtual {v0}, Larr;->u()I

    move-result v0

    .line 101
    iget-object v2, p0, Laaq;->d:Larr;

    const/16 v2, -0x3e8

    if-ne v0, v2, :cond_1

    .line 102
    iget-object v0, p0, Laaq;->d:Larr;

    iget v2, p1, Ladd;->j:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Larr;->l(I)V

    .line 118
    :cond_0
    :goto_0
    return v1

    .line 105
    :cond_1
    iget-object v2, p0, Laaq;->e:Laap;

    invoke-virtual {v2, v0}, Laap;->a(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 107
    iget-object v2, p0, Laaq;->d:Larr;

    invoke-virtual {v2, v1}, Larr;->f(Z)V

    :goto_1
    move v1, v0

    .line 109
    goto :goto_0

    .line 110
    :cond_2
    iget-object v0, p0, Laaq;->d:Larr;

    invoke-virtual {v0, v1}, Larr;->f(Z)V

    goto :goto_0

    .line 112
    :cond_3
    iget-object v3, p0, Laaq;->e:Laap;

    invoke-virtual {v3, v0}, Laap;->a(I)Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v0

    .line 113
    goto :goto_0

    .line 114
    :cond_4
    iget-object v0, p0, Laaq;->e:Laap;

    invoke-virtual {v0, v2}, Laap;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    .line 115
    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Laaq;->f:Landroid/app/NotificationManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 161
    return-void
.end method

.method public a(Ladd;)V
    .locals 2
    .parameter

    .prologue
    .line 67
    const-string v0, "onBatteryInfoUpdate"

    invoke-static {v0}, Laaq;->a(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Laaq;->c:Lamb;

    invoke-virtual {v0}, Lamb;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-direct {p0, p1}, Laaq;->b(Ladd;)I

    move-result v0

    .line 71
    iget v1, p1, Ladd;->e:I

    if-eqz v1, :cond_1

    .line 73
    invoke-virtual {p0}, Laaq;->a()V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    if-eqz v0, :cond_0

    .line 77
    invoke-direct {p0, v0}, Laaq;->a(I)V

    goto :goto_0
.end method
