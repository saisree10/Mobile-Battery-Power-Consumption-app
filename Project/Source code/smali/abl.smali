.class public Labl;
.super Ljava/lang/Thread;
.source "PowerMgrService.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/PowerMgrService;

.field private volatile b:Z

.field private volatile c:J

.field private volatile d:J


# direct methods
.method private constructor <init>(Lcom/dianxinos/powermanager/PowerMgrService;)V
    .locals 0
    .parameter

    .prologue
    .line 366
    iput-object p1, p0, Labl;->a:Lcom/dianxinos/powermanager/PowerMgrService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dianxinos/powermanager/PowerMgrService;Labg;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 366
    invoke-direct {p0, p1}, Labl;-><init>(Lcom/dianxinos/powermanager/PowerMgrService;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x1

    iput-boolean v0, p0, Labl;->b:Z

    .line 382
    invoke-virtual {p0}, Labl;->interrupt()V

    .line 383
    return-void
.end method

.method public a(JJ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    .line 372
    cmp-long v0, p1, v1

    if-ltz v0, :cond_0

    cmp-long v0, p3, v1

    if-gtz v0, :cond_1

    .line 374
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 376
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Labl;->c:J

    .line 377
    iput-wide p3, p0, Labl;->d:J

    .line 378
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 389
    :goto_0
    iget-boolean v0, p0, Labl;->b:Z

    if-nez v0, :cond_1

    .line 390
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 391
    iget-wide v2, p0, Labl;->c:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 392
    const-string v2, "PowerMgrService"

    const-string v3, "Snap the battery usage in service"

    invoke-static {v2, v3}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v2, p0, Labl;->a:Lcom/dianxinos/powermanager/PowerMgrService;

    iget-object v2, v2, Lcom/dianxinos/powermanager/PowerMgrService;->a:Latm;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Latm;->a(Z)V

    .line 394
    iget-wide v2, p0, Labl;->d:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Labl;->c:J

    .line 398
    :cond_0
    const-wide/32 v0, 0x927c0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 399
    :catch_0
    move-exception v0

    goto :goto_0

    .line 403
    :cond_1
    return-void
.end method
