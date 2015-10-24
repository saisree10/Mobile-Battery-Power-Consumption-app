.class public Lcom/dianxinos/powermanager/PowerMgrReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerMgrReceiver.java"


# static fields
.field private static a:I

.field private static b:I

.field private static c:I


# instance fields
.field private d:Labf;

.field private e:Landroid/content/Context;

.field private f:Larr;

.field private g:J

.field private h:J

.field private i:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    sput v0, Lcom/dianxinos/powermanager/PowerMgrReceiver;->a:I

    .line 37
    const/4 v0, 0x2

    sput v0, Lcom/dianxinos/powermanager/PowerMgrReceiver;->b:I

    .line 38
    const/4 v0, 0x3

    sput v0, Lcom/dianxinos/powermanager/PowerMgrReceiver;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 107
    return-void
.end method

.method public static synthetic a()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lcom/dianxinos/powermanager/PowerMgrReceiver;->c:I

    return v0
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/PowerMgrReceiver;)Labf;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrReceiver;->d:Labf;

    return-object v0
.end method

.method public static synthetic b()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lcom/dianxinos/powermanager/PowerMgrReceiver;->b:I

    return v0
.end method

.method public static synthetic b(Lcom/dianxinos/powermanager/PowerMgrReceiver;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrReceiver;->e:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic c()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lcom/dianxinos/powermanager/PowerMgrReceiver;->a:I

    return v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 85
    new-instance v0, Labf;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Labf;-><init>(Lcom/dianxinos/powermanager/PowerMgrReceiver;Labe;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrReceiver;->d:Labf;

    .line 86
    invoke-static {}, Lbag;->a()Lbag;

    move-result-object v0

    new-instance v1, Labe;

    invoke-direct {v1, p0}, Labe;-><init>(Lcom/dianxinos/powermanager/PowerMgrReceiver;)V

    invoke-virtual {v0, v1}, Lbag;->a(Lbai;)V

    .line 105
    return-void
.end method

.method private e()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 131
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrReceiver;->f:Larr;

    invoke-virtual {v0}, Larr;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/dianxinos/powermanager/PowerMgrReceiver;->f()V

    .line 133
    invoke-direct {p0}, Lcom/dianxinos/powermanager/PowerMgrReceiver;->g()V

    .line 134
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrReceiver;->f:Larr;

    invoke-virtual {v0}, Larr;->q()J

    move-result-wide v0

    .line 135
    iget-object v2, p0, Lcom/dianxinos/powermanager/PowerMgrReceiver;->f:Larr;

    invoke-virtual {v2}, Larr;->p()I

    move-result v2

    .line 141
    iget-boolean v3, p0, Lcom/dianxinos/powermanager/PowerMgrReceiver;->j:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    iget-wide v3, p0, Lcom/dianxinos/powermanager/PowerMgrReceiver;->h:J

    cmp-long v3, v3, v0

    if-lez v3, :cond_1

    .line 143
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.dianxinos.dxbs.ALARMRESTORE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/dianxinos/powermanager/PowerMgrReceiver;->e:Landroid/content/Context;

    invoke-static {v1, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 145
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrReceiver;->e:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 146
    iget-wide v2, p0, Lcom/dianxinos/powermanager/PowerMgrReceiver;->h:J

    invoke-static {v2, v3}, Lazf;->a(J)J

    move-result-wide v2

    invoke-virtual {v0, v5, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-boolean v3, p0, Lcom/dianxinos/powermanager/PowerMgrReceiver;->i:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/dianxinos/powermanager/PowerMgrReceiver;->j:Z

    if-nez v3, :cond_0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget-wide v2, p0, Lcom/dianxinos/powermanager/PowerMgrReceiver;->g:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 153
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.dianxinos.dxbs.ALARMSWITCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/dianxinos/powermanager/PowerMgrReceiver;->e:Landroid/content/Context;

    invoke-static {v1, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 155
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrReceiver;->e:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 156
    iget-wide v2, p0, Lcom/dianxinos/powermanager/PowerMgrReceiver;->g:J

    invoke-static {v2, v3}, Lazf;->a(J)J

    move-result-wide v2

    invoke-virtual {v0, v5, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private f()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 163
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrReceiver;->f:Larr;

    invoke-virtual {v0}, Larr;->n()[I

    move-result-object v0

    .line 164
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 166
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 167
    const/16 v4, 0xb

    aget v5, v0, v6

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 168
    const/16 v4, 0xc

    aget v0, v0, v7

    invoke-virtual {v1, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 169
    const/16 v0, 0xd

    invoke-virtual {v1, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 170
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 171
    iput-boolean v7, p0, Lcom/dianxinos/powermanager/PowerMgrReceiver;->i:Z

    .line 174
    :cond_0
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dianxinos/powermanager/PowerMgrReceiver;->g:J

    .line 176
    return-void
.end method

.method private g()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 179
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrReceiver;->f:Larr;

    invoke-virtual {v0}, Larr;->o()[I

    move-result-object v0

    .line 180
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 182
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 183
    const/16 v4, 0xb

    aget v5, v0, v6

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 184
    const/16 v4, 0xc

    aget v0, v0, v8

    invoke-virtual {v1, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 185
    const/16 v0, 0xd

    invoke-virtual {v1, v0, v6}, Ljava/util/Calendar;->set(II)V

    .line 186
    iget-wide v4, p0, Lcom/dianxinos/powermanager/PowerMgrReceiver;->g:J

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    .line 188
    const/16 v0, 0xa

    const/16 v4, 0x18

    invoke-virtual {v1, v0, v4}, Ljava/util/Calendar;->add(II)V

    .line 190
    :cond_0
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 192
    iput-boolean v8, p0, Lcom/dianxinos/powermanager/PowerMgrReceiver;->j:Z

    .line 196
    :cond_1
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dianxinos/powermanager/PowerMgrReceiver;->h:J

    .line 197
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 50
    const-string v0, "PowerMgrReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/dianxinos/powermanager/PowerMgrReceiver;->e:Landroid/content/Context;

    .line 52
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {p1}, Lmy;->a(Landroid/content/Context;)Lmy;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lmy;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 54
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    invoke-static {}, Lagj;->a()Lagj;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lagj;->a(I)V

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lagl;->a(Landroid/content/Context;)Lagl;

    move-result-object v0

    const-string v1, "false:-100:-1"

    invoke-virtual {v0, v1}, Lagl;->a(Ljava/lang/String;)V

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/PowerMgrService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 61
    invoke-static {p1}, Larr;->a(Landroid/content/Context;)Larr;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrReceiver;->f:Larr;

    .line 62
    invoke-direct {p0}, Lcom/dianxinos/powermanager/PowerMgrReceiver;->e()V

    .line 63
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrReceiver;->f:Larr;

    invoke-virtual {v0}, Larr;->r()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 64
    invoke-direct {p0}, Lcom/dianxinos/powermanager/PowerMgrReceiver;->d()V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrReceiver;->e:Landroid/content/Context;

    invoke-static {v0}, Lazh;->a(Landroid/content/Context;)Lazh;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lazh;->g()V

    goto :goto_0

    .line 71
    :cond_2
    if-eqz v0, :cond_3

    const-string v1, "com.android.vending.INSTALL_REFERRER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1}, Lbak;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 73
    const-string v0, "referrer"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_0

    .line 75
    const-string v1, "PowerMgrReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRecieve called. referrer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {p1}, Lbak;->b(Landroid/content/Context;)V

    .line 77
    invoke-static {p1, v0}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_3
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Lagj;->a()Lagj;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lagj;->a(I)V

    goto :goto_0
.end method
