.class public Lasw;
.super Ljava/lang/Object;
.source "SmartSwitchNotification.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lasw;->a:Landroid/content/Context;

    .line 31
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    iget-object v1, p0, Lasw;->a:Landroid/content/Context;

    invoke-static {v1}, Larr;->a(Landroid/content/Context;)Larr;

    move-result-object v1

    .line 109
    invoke-virtual {v1}, Larr;->n()[I

    move-result-object v2

    .line 110
    aget v3, v2, v4

    aget v2, v2, v5

    invoke-direct {p0, v3, v2}, Lasw;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v1}, Larr;->o()[I

    move-result-object v1

    .line 112
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    aget v2, v1, v4

    aget v1, v1, v5

    invoke-direct {p0, v2, v1}, Lasw;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(II)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/16 v2, 0xa

    .line 130
    if-ge p1, v2, :cond_0

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    :goto_0
    if-ge p2, v2, :cond_1

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    :goto_1
    return-object v0

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 140
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 35
    .line 37
    iget-object v0, p0, Lasw;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lasw;->a:Landroid/content/Context;

    const-class v3, Lcom/dianxinos/powermanager/menu/SmartNotificationStatusBarClearReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 39
    new-instance v1, Landroid/app/Notification;

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f02000e

    const-wide/16 v3, 0x0

    invoke-direct {v1, v2, p3, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 41
    iget-object v2, p0, Lasw;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, p3, p2, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 46
    iput-object p4, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 54
    iget-object v0, p0, Lasw;->a:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 56
    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 57
    invoke-virtual {v0, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 61
    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    iget-object v1, p0, Lasw;->a:Landroid/content/Context;

    invoke-static {v1}, Larr;->a(Landroid/content/Context;)Larr;

    move-result-object v1

    .line 120
    invoke-virtual {v1}, Larr;->o()[I

    move-result-object v2

    .line 121
    aget v3, v2, v4

    aget v2, v2, v5

    invoke-direct {p0, v3, v2}, Lasw;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v1}, Larr;->n()[I

    move-result-object v1

    .line 124
    aget v2, v1, v4

    aget v1, v1, v5

    invoke-direct {p0, v2, v1}, Lasw;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const v6, 0x7f0a0170

    const v9, 0x7f0a0224

    const v5, 0x7f0a016f

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 69
    iget-object v0, p0, Lasw;->a:Landroid/content/Context;

    invoke-static {v0}, Lamb;->a(Landroid/content/Context;)Lamb;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lamb;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    const/4 v0, 0x0

    .line 75
    iget-object v1, p0, Lasw;->a:Landroid/content/Context;

    invoke-static {v1}, Lbap;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    iget-object v1, p0, Lasw;->a:Landroid/content/Context;

    invoke-static {v1}, Lbae;->a(Landroid/content/Context;)V

    .line 81
    :cond_2
    if-ne p1, v7, :cond_3

    .line 82
    iget-object v1, p0, Lasw;->a:Landroid/content/Context;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lasw;->a:Landroid/content/Context;

    sget-object v4, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v4, 0x7f0a0171

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lasw;->a:Landroid/content/Context;

    sget-object v4, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v4, 0x7f0a0225

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lasw;->a:Landroid/content/Context;

    invoke-static {v6}, Larr;->a(Landroid/content/Context;)Larr;

    move-result-object v6

    invoke-virtual {v6}, Larr;->j()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lasw;->a:Landroid/content/Context;

    sget-object v4, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p2, v4, v8

    invoke-virtual {v3, v9, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-direct {p0, p1, v2, v1, v0}, Lasw;->a(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .line 87
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 88
    iget-object v1, p0, Lasw;->a:Landroid/content/Context;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lasw;->a:Landroid/content/Context;

    sget-object v4, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v4, 0x7f0a0172

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lasw;->a:Landroid/content/Context;

    sget-object v4, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v4, 0x7f0a0226

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lasw;->a:Landroid/content/Context;

    invoke-static {v6}, Larr;->a(Landroid/content/Context;)Larr;

    move-result-object v6

    invoke-virtual {v6}, Larr;->j()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lasw;->a:Landroid/content/Context;

    sget-object v4, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p2, v4, v8

    invoke-virtual {v3, v9, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-direct {p0, p1, v2, v1, v0}, Lasw;->a(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 93
    :cond_4
    const/4 v1, 0x3

    if-ne p1, v1, :cond_5

    .line 94
    iget-object v1, p0, Lasw;->a:Landroid/content/Context;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lasw;->a:Landroid/content/Context;

    sget-object v4, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lasw;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lasw;->a:Landroid/content/Context;

    sget-object v4, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p2, v4, v8

    invoke-virtual {v3, v9, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2, v1, v0}, Lasw;->a(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 98
    :cond_5
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 99
    iget-object v1, p0, Lasw;->a:Landroid/content/Context;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lasw;->a:Landroid/content/Context;

    sget-object v4, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lasw;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lasw;->a:Landroid/content/Context;

    sget-object v4, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p2, v4, v8

    invoke-virtual {v3, v9, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2, v1, v0}, Lasw;->a(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_0
.end method
