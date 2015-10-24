.class public Lcom/dianxinos/powermanager/PowerMgrService;
.super Landroid/app/Service;
.source "PowerMgrService.java"

# interfaces
.implements Ladc;
.implements Lamc;
.implements Lamd;


# static fields
.field private static u:Ljava/lang/String;


# instance fields
.field private A:Lafi;

.field private B:Laio;

.field private C:Labl;

.field private D:Labk;

.field private E:Laff;

.field private F:Ljava/util/Timer;

.field private G:Ljava/util/TimerTask;

.field private H:Laap;

.field private I:Laaq;

.field private J:Lagw;

.field private K:Lcom/dianxinos/common/coins/CoinManager;

.field private L:Landroid/content/BroadcastReceiver;

.field public a:Latm;

.field private b:Z

.field private final c:I

.field private d:Ljava/util/Timer;

.field private e:Larr;

.field private f:Lass;

.field private g:Lamb;

.field private h:Landroid/os/PowerManager;

.field private i:Z

.field private j:[Z

.field private k:Lacz;

.field private l:Laty;

.field private m:Lamp;

.field private n:Lamh;

.field private o:Laar;

.field private p:Z

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private v:Z

.field private w:I

.field private x:Ljava/lang/String;

.field private y:Laaa;

.field private z:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 58
    iput-boolean v1, p0, Lcom/dianxinos/powermanager/PowerMgrService;->b:Z

    .line 62
    const/16 v0, 0x2710

    iput v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->c:I

    .line 79
    iput-boolean v1, p0, Lcom/dianxinos/powermanager/PowerMgrService;->i:Z

    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->j:[Z

    .line 98
    const/16 v0, -0x3e8

    iput v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->w:I

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->z:Ljava/util/Timer;

    .line 113
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->F:Ljava/util/Timer;

    .line 114
    new-instance v0, Labg;

    invoke-direct {v0, p0}, Labg;-><init>(Lcom/dianxinos/powermanager/PowerMgrService;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->G:Ljava/util/TimerTask;

    .line 134
    new-instance v0, Lagw;

    invoke-direct {v0}, Lagw;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->J:Lagw;

    .line 427
    new-instance v0, Labi;

    invoke-direct {v0, p0}, Labi;-><init>(Lcom/dianxinos/powermanager/PowerMgrService;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->L:Landroid/content/BroadcastReceiver;

    return-void

    .line 80
    :array_0
    .array-data 0x1
        0x1t
        0x1t
    .end array-data
.end method

.method private a(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 482
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->e:Larr;

    invoke-virtual {v0}, Larr;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->e:Larr;

    invoke-virtual {v0}, Larr;->d()[Z

    move-result-object v0

    .line 486
    iget-object v1, p0, Lcom/dianxinos/powermanager/PowerMgrService;->n:Lamh;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lamh;->a(I)Lahp;

    move-result-object v1

    .line 487
    invoke-virtual {v1}, Lahp;->a()Z

    move-result v2

    const/4 v3, 0x0

    aget-boolean v3, v0, v3

    if-eq v2, v3, :cond_2

    .line 488
    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a019d

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lapb;->a(Landroid/content/Context;Lahp;Ljava/lang/String;)Z

    .line 491
    :cond_2
    iget-object v1, p0, Lcom/dianxinos/powermanager/PowerMgrService;->n:Lamh;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lamh;->a(I)Lahp;

    move-result-object v1

    .line 492
    invoke-virtual {v1}, Lahp;->a()Z

    move-result v2

    const/4 v3, 0x1

    aget-boolean v0, v0, v3

    if-eq v2, v0, :cond_0

    invoke-virtual {v1}, Lahp;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0197

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lapb;->a(Landroid/content/Context;Lahp;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/PowerMgrService;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/PowerMgrService;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/PowerMgrService;)Z
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->v:Z

    return v0
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/PowerMgrService;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/PowerMgrService;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/PowerMgrService;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/dianxinos/powermanager/PowerMgrService;->b:Z

    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 458
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->i:Z

    if-eqz v0, :cond_1

    move v1, v2

    .line 478
    :cond_0
    :goto_0
    return v1

    .line 462
    :cond_1
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->h:Landroid/os/PowerManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->h:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 464
    iget-object v3, p0, Lcom/dianxinos/powermanager/PowerMgrService;->j:[Z

    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->j:[Z

    aget-boolean v0, v0, v2

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    aput-boolean v0, v3, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    .line 466
    :cond_3
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->h:Landroid/os/PowerManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->h:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_5

    .line 468
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->j:[Z

    iget-object v3, p0, Lcom/dianxinos/powermanager/PowerMgrService;->j:[Z

    aget-boolean v3, v3, v1

    if-nez v3, :cond_4

    move v2, v1

    :cond_4
    aput-boolean v2, v0, v1

    goto :goto_0

    .line 470
    :cond_5
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->h:Landroid/os/PowerManager;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->h:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->j:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->j:[Z

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    :cond_6
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->j:[Z

    aget-boolean v0, v0, v2

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->j:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 477
    :cond_7
    iput-boolean v1, p0, Lcom/dianxinos/powermanager/PowerMgrService;->i:Z

    move v1, v2

    .line 478
    goto :goto_0
.end method

.method public static synthetic b(Lcom/dianxinos/powermanager/PowerMgrService;)Laff;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->E:Laff;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 451
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->e:Larr;

    invoke-virtual {v0}, Larr;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    invoke-static {p0}, Laaa;->a(Landroid/content/Context;)Laaa;

    move-result-object v0

    const/16 v1, 0x190

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Laaa;->a(IZ)I

    .line 455
    :cond_0
    return-void
.end method

.method private c()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 499
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->e:Larr;

    invoke-virtual {v0}, Larr;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 515
    :goto_0
    return-void

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->n:Lamh;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lamh;->a(I)Lahp;

    move-result-object v0

    .line 503
    invoke-virtual {v0}, Lahp;->a()Z

    move-result v1

    .line 504
    if-eqz v1, :cond_1

    .line 505
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PowerMgrService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v4}, Lapb;->a(Landroid/content/Context;Lahp;Ljava/lang/String;)Z

    .line 508
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->n:Lamh;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lamh;->a(I)Lahp;

    move-result-object v0

    .line 509
    invoke-virtual {v0}, Lahp;->a()Z

    move-result v2

    .line 510
    if-eqz v2, :cond_2

    .line 511
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PowerMgrService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v4}, Lapb;->a(Landroid/content/Context;Lahp;Ljava/lang/String;)Z

    .line 514
    :cond_2
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->e:Larr;

    invoke-virtual {v0, v1, v2}, Larr;->a(ZZ)V

    goto :goto_0
.end method

.method public static synthetic c(Lcom/dianxinos/powermanager/PowerMgrService;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/dianxinos/powermanager/PowerMgrService;->e()V

    return-void
.end method

.method public static synthetic d(Lcom/dianxinos/powermanager/PowerMgrService;)Laaa;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->y:Laaa;

    return-object v0
.end method

.method private declared-synchronized d()V
    .locals 4

    .prologue
    .line 518
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->d:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 519
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 539
    :goto_0
    monitor-exit p0

    return-void

    .line 522
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->d:Ljava/util/Timer;

    .line 523
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->d:Ljava/util/Timer;

    new-instance v1, Labj;

    invoke-direct {v1, p0}, Labj;-><init>(Lcom/dianxinos/powermanager/PowerMgrService;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 518
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 531
    :cond_1
    :try_start_2
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->e:Larr;

    invoke-virtual {v0}, Larr;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 532
    invoke-direct {p0, p0}, Lcom/dianxinos/powermanager/PowerMgrService;->a(Landroid/content/Context;)V

    .line 533
    invoke-direct {p0}, Lcom/dianxinos/powermanager/PowerMgrService;->b()V

    .line 534
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->b:Z

    .line 536
    :cond_2
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->d:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 537
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->d:Ljava/util/Timer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static synthetic e(Lcom/dianxinos/powermanager/PowerMgrService;)Labk;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->D:Labk;

    return-object v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 542
    invoke-static {}, Lazf;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 543
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PowerMgrService;->stopForeground(Z)V

    .line 545
    :cond_0
    invoke-static {p0}, Lazy;->a(Landroid/content/Context;)V

    .line 546
    return-void
.end method

.method public static synthetic f(Lcom/dianxinos/powermanager/PowerMgrService;)Larr;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->e:Larr;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 549
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->m:Lamp;

    invoke-virtual {v0}, Lamp;->b()I

    move-result v0

    invoke-static {v2}, Lamq;->d(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 551
    :goto_0
    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->n:Lamh;

    invoke-virtual {v0}, Lamh;->l()Lahd;

    move-result-object v0

    invoke-virtual {v0}, Lahd;->a()Z

    move-result v0

    .line 553
    iget-object v1, p0, Lcom/dianxinos/powermanager/PowerMgrService;->n:Lamh;

    invoke-virtual {v1, v2}, Lamh;->a(I)Lahp;

    move-result-object v1

    invoke-virtual {v1}, Lahp;->a()Z

    move-result v1

    .line 554
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 555
    invoke-static {p0}, Lacc;->a(Landroid/content/Context;)Lacc;

    move-result-object v0

    invoke-virtual {v0}, Lacc;->a()V

    .line 559
    :cond_0
    return-void

    .line 549
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic g(Lcom/dianxinos/powermanager/PowerMgrService;)Z
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->b:Z

    return v0
.end method

.method public static synthetic h(Lcom/dianxinos/powermanager/PowerMgrService;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/dianxinos/powermanager/PowerMgrService;->b()V

    return-void
.end method

.method public static synthetic i(Lcom/dianxinos/powermanager/PowerMgrService;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/dianxinos/powermanager/PowerMgrService;->d()V

    return-void
.end method

.method public static synthetic j(Lcom/dianxinos/powermanager/PowerMgrService;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/dianxinos/powermanager/PowerMgrService;->c()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x2710

    .line 156
    invoke-static {p0}, Lamp;->a(Landroid/content/Context;)Lamp;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->m:Lamp;

    .line 157
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->m:Lamp;

    invoke-virtual {v0}, Lamp;->g()Lamh;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->n:Lamh;

    .line 158
    invoke-static {p0}, Laar;->a(Landroid/content/Context;)Laar;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->o:Laar;

    .line 161
    invoke-static {p0}, Lacz;->a(Landroid/content/Context;)Lacz;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->k:Lacz;

    .line 164
    invoke-static {p0}, Laty;->a(Landroid/content/Context;)Laty;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->l:Laty;

    .line 165
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->l:Laty;

    invoke-virtual {v0}, Laty;->a()V

    .line 167
    invoke-static {p0}, Laaa;->a(Landroid/content/Context;)Laaa;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->y:Laaa;

    .line 169
    invoke-static {p0}, Lamb;->a(Landroid/content/Context;)Lamb;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->g:Lamb;

    .line 170
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->g:Lamb;

    invoke-virtual {v0, p0}, Lamb;->a(Lamc;)V

    .line 171
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->g:Lamb;

    invoke-virtual {v0}, Lamb;->h()Z

    move-result v0

    .line 172
    iget-object v1, p0, Lcom/dianxinos/powermanager/PowerMgrService;->g:Lamb;

    invoke-virtual {v1}, Lamb;->i()I

    move-result v1

    .line 173
    invoke-virtual {p0, v0, v1}, Lcom/dianxinos/powermanager/PowerMgrService;->a(ZI)V

    .line 174
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->g:Lamb;

    invoke-virtual {v0, p0}, Lamb;->a(Lamd;)V

    .line 175
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->g:Lamb;

    invoke-virtual {v0}, Lamb;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->v:Z

    .line 176
    invoke-static {p0}, Lazr;->a(Landroid/content/Context;)Lazr;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Lazr;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lazr;->d()I

    move-result v0

    const/16 v1, 0x14

    if-gt v0, v1, :cond_0

    .line 178
    invoke-static {p0}, Lamb;->a(Landroid/content/Context;)Lamb;

    move-result-object v0

    invoke-virtual {v0}, Lamb;->p()V

    .line 180
    :cond_0
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->v:Z

    iget-object v1, p0, Lcom/dianxinos/powermanager/PowerMgrService;->g:Lamb;

    invoke-virtual {v1}, Lamb;->b()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/dianxinos/powermanager/PowerMgrService;->b(ZI)V

    .line 182
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PowerMgrService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Laff;->a(Landroid/content/Context;)Laff;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->E:Laff;

    .line 183
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->k:Lacz;

    invoke-virtual {v0, p0}, Lacz;->a(Ladc;)V

    .line 185
    invoke-static {p0}, Latm;->a(Landroid/content/Context;)Latm;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->a:Latm;

    .line 186
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->k:Lacz;

    iget-object v1, p0, Lcom/dianxinos/powermanager/PowerMgrService;->a:Latm;

    invoke-virtual {v0, v1}, Lacz;->a(Ladc;)V

    .line 188
    invoke-static {p0}, Laap;->a(Landroid/content/Context;)Laap;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->H:Laap;

    .line 189
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->k:Lacz;

    iget-object v1, p0, Lcom/dianxinos/powermanager/PowerMgrService;->H:Laap;

    invoke-virtual {v0, v1}, Lacz;->a(Lade;)V

    .line 191
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PowerMgrService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lass;->a(Landroid/content/Context;)Lass;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->f:Lass;

    .line 192
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->k:Lacz;

    iget-object v1, p0, Lcom/dianxinos/powermanager/PowerMgrService;->f:Lass;

    invoke-virtual {v0, v1}, Lacz;->a(Ladc;)V

    .line 194
    new-instance v0, Lafi;

    invoke-direct {v0, p0}, Lafi;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->A:Lafi;

    .line 195
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->k:Lacz;

    iget-object v1, p0, Lcom/dianxinos/powermanager/PowerMgrService;->A:Lafi;

    invoke-virtual {v0, v1}, Lacz;->a(Ladc;)V

    .line 197
    invoke-static {p0}, Laio;->a(Landroid/content/Context;)Laio;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->B:Laio;

    .line 198
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->k:Lacz;

    iget-object v1, p0, Lcom/dianxinos/powermanager/PowerMgrService;->B:Laio;

    invoke-virtual {v0, v1}, Lacz;->a(Ladc;)V

    .line 200
    invoke-static {p0}, Laaq;->a(Landroid/content/Context;)Laaq;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->I:Laaq;

    .line 201
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->k:Lacz;

    iget-object v1, p0, Lcom/dianxinos/powermanager/PowerMgrService;->I:Laaq;

    invoke-virtual {v0, v1}, Lacz;->a(Ladc;)V

    .line 203
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->k:Lacz;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PowerMgrService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lago;->a(Landroid/content/Context;)Lago;

    move-result-object v1

    invoke-virtual {v0, v1}, Lacz;->a(Ladc;)V

    .line 206
    invoke-static {p0}, Latm;->a(Landroid/content/Context;)Latm;

    move-result-object v0

    invoke-virtual {v0}, Latm;->a()J

    move-result-wide v0

    .line 208
    new-instance v4, Labl;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Labl;-><init>(Lcom/dianxinos/powermanager/PowerMgrService;Labg;)V

    iput-object v4, p0, Lcom/dianxinos/powermanager/PowerMgrService;->C:Labl;

    .line 209
    iget-object v4, p0, Lcom/dianxinos/powermanager/PowerMgrService;->C:Labl;

    add-long/2addr v0, v2

    const-wide/32 v5, 0x927c0

    invoke-virtual {v4, v0, v1, v5, v6}, Labl;->a(JJ)V

    .line 210
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->C:Labl;

    invoke-virtual {v0}, Labl;->start()V

    .line 212
    invoke-direct {p0}, Lcom/dianxinos/powermanager/PowerMgrService;->f()V

    .line 213
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->F:Ljava/util/Timer;

    iget-object v1, p0, Lcom/dianxinos/powermanager/PowerMgrService;->G:Ljava/util/TimerTask;

    const-wide/32 v4, 0xa4cb80

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 215
    invoke-static {p0}, Larr;->a(Landroid/content/Context;)Larr;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->e:Larr;

    .line 216
    return-void
.end method

.method public a(Ladd;)V
    .locals 7
    .parameter

    .prologue
    .line 338
    iget v0, p1, Ladd;->j:I

    iput v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->w:I

    .line 339
    iget v0, p1, Ladd;->k:I

    iput v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->r:I

    .line 340
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->E:Laff;

    invoke-virtual {v0}, Laff;->f()Lafh;

    move-result-object v0

    invoke-virtual {v0}, Lafh;->c()I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->s:I

    .line 341
    iget v0, p1, Ladd;->a:I

    iput v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->q:I

    .line 342
    iget v0, p1, Ladd;->g:I

    iput v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->t:I

    .line 343
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->E:Laff;

    invoke-virtual {v0}, Laff;->e()I

    move-result v0

    .line 344
    iget-object v1, p0, Lcom/dianxinos/powermanager/PowerMgrService;->E:Laff;

    invoke-virtual {v1}, Laff;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    const/16 v1, 0x67

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->p:Z

    .line 350
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->v:Z

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->n:Lamh;

    invoke-virtual {v0}, Lamh;->l()Lahd;

    move-result-object v0

    invoke-virtual {v0}, Lahd;->a()Z

    move-result v0

    .line 352
    iget-object v1, p0, Lcom/dianxinos/powermanager/PowerMgrService;->n:Lamh;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lamh;->a(I)Lahp;

    move-result-object v1

    invoke-virtual {v1}, Lahp;->a()Z

    move-result v1

    .line 353
    iget-object v2, p0, Lcom/dianxinos/powermanager/PowerMgrService;->n:Lamh;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lamh;->a(I)Lahp;

    move-result-object v2

    invoke-virtual {v2}, Lahp;->a()Z

    move-result v2

    .line 354
    iget-object v3, p0, Lcom/dianxinos/powermanager/PowerMgrService;->o:Laar;

    invoke-virtual {v3, v0, v1, v2}, Laar;->a(ZZZ)V

    .line 356
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->p:Z

    if-eqz v0, :cond_2

    iget v3, p0, Lcom/dianxinos/powermanager/PowerMgrService;->s:I

    .line 357
    :goto_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->o:Laar;

    iget v1, p0, Lcom/dianxinos/powermanager/PowerMgrService;->q:I

    iget v2, p0, Lcom/dianxinos/powermanager/PowerMgrService;->w:I

    iget-object v4, p0, Lcom/dianxinos/powermanager/PowerMgrService;->m:Lamp;

    invoke-virtual {v4}, Lamp;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/dianxinos/powermanager/PowerMgrService;->b(Ladd;)Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/dianxinos/powermanager/PowerMgrService;->t:I

    invoke-virtual/range {v0 .. v6}, Laar;->a(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 362
    :cond_0
    invoke-static {p0}, Lbal;->f(Landroid/content/Context;)V

    .line 363
    invoke-static {p0}, Ladf;->a(Landroid/content/Context;)Ladf;

    move-result-object v0

    invoke-virtual {v0, p1}, Ladf;->a(Ladd;)V

    .line 364
    return-void

    .line 344
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 356
    :cond_2
    iget v3, p0, Lcom/dianxinos/powermanager/PowerMgrService;->r:I

    goto :goto_1
.end method

.method public a(ZI)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 292
    if-eqz p1, :cond_1

    .line 294
    const v0, 0xea60

    mul-int/2addr v0, p2

    int-to-long v4, v0

    .line 295
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->z:Ljava/util/Timer;

    .line 296
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->z:Ljava/util/Timer;

    new-instance v1, Labh;

    invoke-direct {v1, p0}, Labh;-><init>(Lcom/dianxinos/powermanager/PowerMgrService;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->z:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->z:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_0
.end method

.method public b(Ladd;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 409
    iget v0, p1, Ladd;->g:I

    if-gtz v0, :cond_2

    .line 410
    const-string v0, ""

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->x:Ljava/lang/String;

    .line 418
    :goto_0
    iget v0, p1, Ladd;->f:I

    if-lez v0, :cond_1

    .line 419
    iget v0, p1, Ladd;->g:I

    if-lez v0, :cond_0

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dianxinos/powermanager/PowerMgrService;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->x:Ljava/lang/String;

    .line 421
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dianxinos/powermanager/PowerMgrService;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Ladd;->f:I

    int-to-float v1, v1

    const/high16 v2, 0x447a

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dianxinos/powermanager/PowerMgrService;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->x:Ljava/lang/String;

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->x:Ljava/lang/String;

    return-object v0

    .line 412
    :cond_2
    iget v0, p1, Ladd;->g:I

    invoke-static {p0, v0}, Lbao;->a(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v0

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->x:Ljava/lang/String;

    goto :goto_0
.end method

.method public b(ZI)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 314
    iput-boolean p1, p0, Lcom/dianxinos/powermanager/PowerMgrService;->v:Z

    .line 315
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->o:Laar;

    invoke-virtual {v0, p2}, Laar;->a(I)V

    .line 316
    if-eqz p1, :cond_2

    .line 317
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->n:Lamh;

    invoke-virtual {v0}, Lamh;->l()Lahd;

    move-result-object v0

    invoke-virtual {v0}, Lahd;->a()Z

    move-result v0

    .line 318
    iget-object v1, p0, Lcom/dianxinos/powermanager/PowerMgrService;->n:Lamh;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lamh;->a(I)Lahp;

    move-result-object v1

    invoke-virtual {v1}, Lahp;->a()Z

    move-result v1

    .line 319
    iget-object v2, p0, Lcom/dianxinos/powermanager/PowerMgrService;->n:Lamh;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lamh;->a(I)Lahp;

    move-result-object v2

    invoke-virtual {v2}, Lahp;->a()Z

    move-result v2

    .line 320
    iget-object v3, p0, Lcom/dianxinos/powermanager/PowerMgrService;->o:Laar;

    invoke-virtual {v3, v0, v1, v2}, Laar;->a(ZZZ)V

    .line 322
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->p:Z

    if-eqz v0, :cond_1

    iget v3, p0, Lcom/dianxinos/powermanager/PowerMgrService;->s:I

    .line 323
    :goto_0
    iget v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->w:I

    const/16 v1, -0x3e8

    if-ne v0, v1, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PowerMgrService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lacx;->a(Landroid/content/Context;)Lacx;

    move-result-object v0

    invoke-virtual {v0}, Lacx;->a()I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->w:I

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->o:Laar;

    iget v1, p0, Lcom/dianxinos/powermanager/PowerMgrService;->q:I

    iget v2, p0, Lcom/dianxinos/powermanager/PowerMgrService;->w:I

    iget-object v4, p0, Lcom/dianxinos/powermanager/PowerMgrService;->m:Lamp;

    invoke-virtual {v4}, Lamp;->e()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/dianxinos/powermanager/PowerMgrService;->x:Ljava/lang/String;

    iget v6, p0, Lcom/dianxinos/powermanager/PowerMgrService;->t:I

    invoke-virtual/range {v0 .. v6}, Laar;->a(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 334
    :goto_1
    return-void

    .line 322
    :cond_1
    iget v3, p0, Lcom/dianxinos/powermanager/PowerMgrService;->r:I

    goto :goto_0

    .line 332
    :cond_2
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->o:Laar;

    invoke-virtual {v0}, Laar;->a()V

    goto :goto_1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 287
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 220
    const-string v0, "PowerMgrService"

    const-string v1, "create PowerMgrService... "

    invoke-static {v0, v1}, Lazt;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PowerMgrService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/common/coins/CoinManager;->a(Landroid/content/Context;)Lcom/dianxinos/common/coins/CoinManager;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->K:Lcom/dianxinos/common/coins/CoinManager;

    .line 223
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->J:Lagw;

    invoke-static {p0, v0}, Lcom/dianxinos/common/coins/CoinManager;->a(Landroid/content/Context;Lmc;)V

    .line 225
    invoke-static {}, Lazf;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    const/16 v0, 0x65

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/dianxinos/powermanager/PowerMgrService;->startForeground(ILandroid/app/Notification;)V

    .line 229
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 230
    const-string v1, "com.dianxinos.dxbs.KILLSELF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    const-string v1, "com.dianxinos.dxbs.ABORTKILL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Lcom/dianxinos/powermanager/PowerMgrService;->L:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/dianxinos/powermanager/PowerMgrService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 238
    :try_start_0
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0363

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PowerMgrService;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dianxinos/powermanager/PowerMgrService;->u:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_0
    new-instance v0, Labk;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Labk;-><init>(Lcom/dianxinos/powermanager/PowerMgrService;Labg;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->D:Labk;

    .line 245
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PowerMgrService;->a()V

    .line 252
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PowerMgrService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->h:Landroid/os/PowerManager;

    .line 253
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 241
    const-string v0, ""

    sput-object v0, Lcom/dianxinos/powermanager/PowerMgrService;->u:Ljava/lang/String;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 257
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->g:Lamb;

    invoke-virtual {v0, v2}, Lamb;->a(Lamc;)V

    .line 258
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->g:Lamb;

    invoke-virtual {v0, v2}, Lamb;->a(Lamd;)V

    .line 259
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->l:Laty;

    invoke-virtual {v0}, Laty;->b()V

    .line 260
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->C:Labl;

    invoke-virtual {v0}, Labl;->a()V

    .line 261
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->J:Lagw;

    invoke-static {p0, v0}, Lcom/dianxinos/common/coins/CoinManager;->b(Landroid/content/Context;Lmc;)V

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->L:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PowerMgrService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->f:Lass;

    invoke-virtual {v0}, Lass;->b()V

    .line 269
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->k:Lacz;

    iget-object v1, p0, Lcom/dianxinos/powermanager/PowerMgrService;->A:Lafi;

    invoke-virtual {v0, v1}, Lacz;->b(Ladc;)V

    .line 270
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->k:Lacz;

    iget-object v1, p0, Lcom/dianxinos/powermanager/PowerMgrService;->f:Lass;

    invoke-virtual {v0, v1}, Lacz;->b(Ladc;)V

    .line 271
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->k:Lacz;

    iget-object v1, p0, Lcom/dianxinos/powermanager/PowerMgrService;->a:Latm;

    invoke-virtual {v0, v1}, Lacz;->b(Ladc;)V

    .line 272
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->k:Lacz;

    iget-object v1, p0, Lcom/dianxinos/powermanager/PowerMgrService;->B:Laio;

    invoke-virtual {v0, v1}, Lacz;->b(Ladc;)V

    .line 273
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->k:Lacz;

    invoke-virtual {v0, p0}, Lacz;->b(Ladc;)V

    .line 274
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->k:Lacz;

    iget-object v1, p0, Lcom/dianxinos/powermanager/PowerMgrService;->I:Laaq;

    invoke-virtual {v0, v1}, Lacz;->b(Ladc;)V

    .line 276
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->d:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrService;->d:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 278
    iput-object v2, p0, Lcom/dianxinos/powermanager/PowerMgrService;->d:Ljava/util/Timer;

    .line 281
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 282
    return-void

    .line 264
    :catch_0
    move-exception v0

    goto :goto_0
.end method
