.class public Lun;
.super Ljava/lang/Object;
.source "DXFBManager.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lut;

.field private static c:Lun;

.field private static d:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static e:Ljava/util/concurrent/RejectedExecutionHandler;

.field private static f:Ljava/lang/String;

.field private static g:I


# instance fields
.field private h:Landroid/content/Context;

.field private i:Luv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "dev"

    sput-object v0, Lun;->a:Ljava/lang/String;

    .line 45
    const-string v0, "10.18.102.101"

    sput-object v0, Lun;->f:Ljava/lang/String;

    .line 46
    const/16 v0, 0x10ed

    sput v0, Lun;->g:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lun;->h:Landroid/content/Context;

    .line 94
    new-instance v0, Lut;

    iget-object v1, p0, Lun;->h:Landroid/content/Context;

    invoke-direct {v0, v1}, Lut;-><init>(Landroid/content/Context;)V

    sput-object v0, Lun;->b:Lut;

    .line 95
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v7, 0xa

    invoke-direct {v6, v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lun;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 96
    new-instance v0, Luo;

    invoke-direct {v0, p0}, Luo;-><init>(Lun;)V

    sput-object v0, Lun;->e:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 105
    sget-object v0, Lun;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v1, Lun;->e:Ljava/util/concurrent/RejectedExecutionHandler;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 106
    new-instance v0, Luv;

    iget-object v1, p0, Lun;->h:Landroid/content/Context;

    invoke-direct {v0, v1}, Luv;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lun;->i:Luv;

    .line 107
    return-void
.end method

.method static synthetic a(Lun;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lun;->h:Landroid/content/Context;

    return-object v0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    sget-object v0, Lun;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lun;
    .locals 1
    .parameter

    .prologue
    .line 110
    sget-object v0, Lun;->c:Lun;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lun;

    invoke-direct {v0, p0}, Lun;-><init>(Landroid/content/Context;)V

    sput-object v0, Lun;->c:Lun;

    .line 113
    :cond_0
    sget-object v0, Lun;->c:Lun;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 360
    const-string v0, "prod"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    const-string v0, "fbapi.dxsvr.com"

    sput-object v0, Lun;->f:Ljava/lang/String;

    .line 362
    const/16 v0, 0x50

    sput v0, Lun;->g:I

    .line 365
    :cond_0
    const-string v0, "test"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    const-string v0, "t1.tira.cn"

    sput-object v0, Lun;->f:Ljava/lang/String;

    .line 367
    const/16 v0, 0x1fbd

    sput v0, Lun;->g:I

    .line 370
    :cond_1
    const-string v0, "dev"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 371
    const-string v0, "10.18.102.101"

    sput-object v0, Lun;->f:Ljava/lang/String;

    .line 372
    const/16 v0, 0x10ed

    sput v0, Lun;->g:I

    .line 374
    :cond_2
    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lun;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()I
    .locals 1

    .prologue
    .line 30
    sget v0, Lun;->g:I

    return v0
.end method

.method static synthetic e()Lut;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lun;->b:Lut;

    return-object v0
.end method


# virtual methods
.method public a(IILur;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 296
    if-gtz p2, :cond_1

    .line 297
    if-eqz p3, :cond_0

    .line 298
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-interface {p3, p1, v0, v1}, Lur;->a(IILjava/util/ArrayList;)V

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    sget-object v0, Lun;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lup;

    invoke-direct {v1, p0, p2, p3, p1}, Lup;-><init>(Lun;ILur;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(JLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 410
    iget-object v0, p0, Lun;->i:Luv;

    invoke-virtual {v0, p1, p2, p3}, Luv;->a(JLjava/lang/String;)V

    .line 411
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 414
    const-string v0, "DXFBManager"

    const-string v1, " OnReceive ~"

    invoke-static {v0, v1}, Lvt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    if-nez p2, :cond_0

    .line 416
    const-string v0, "DXFBManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " DXFBManager get intent null "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    :cond_0
    const-string v0, "com.dianxinos.feedback.CHECK_UPDATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 422
    :cond_1
    sget-object v0, Lcom/dianxinos/feedback/NotifyReceiver;->a:Ljava/lang/String;

    const-wide/16 v1, -0x1

    invoke-static {p1, v0, v1, v2}, Lvu;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 423
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    .line 424
    invoke-static {p1}, Lun;->a(Landroid/content/Context;)Lun;

    move-result-object v0

    invoke-virtual {v0}, Lun;->b()V

    .line 432
    :cond_2
    :goto_0
    return-void

    .line 429
    :cond_3
    const-string v2, "com.dianxinos.feedback.CHECK_UPDATE"

    invoke-virtual {p0, v0, v1, v2}, Lun;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    .line 339
    const-string v0, "dev"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "test"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "prod"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    :cond_0
    sput-object p1, Lun;->a:Ljava/lang/String;

    .line 341
    invoke-direct {p0, p1}, Lun;->b(Ljava/lang/String;)V

    .line 342
    const-string v0, "DXFBManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setMode ok "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvt;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lun;->h:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.dianxinos.feedback.FIRST_"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 344
    const/4 v0, 0x1

    .line 346
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 377
    sget-object v0, Lun;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Luq;

    invoke-direct {v1, p0}, Luq;-><init>(Lun;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 407
    return-void
.end method
