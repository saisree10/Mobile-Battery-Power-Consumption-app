.class public Lazi;
.super Ljava/lang/Object;
.source "DXThreadPool.java"


# static fields
.field private static a:Lazi;


# instance fields
.field private b:Ljava/util/concurrent/ThreadPoolExecutor;

.field private c:Landroid/os/HandlerThread;

.field private d:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 8

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x2

    const/16 v2, 0xa

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v7, 0x32

    invoke-direct {v6, v7}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lazi;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 22
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DXThreadPool"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lazi;->c:Landroid/os/HandlerThread;

    .line 23
    iget-object v0, p0, Lazi;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 24
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lazi;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lazi;->d:Landroid/os/Handler;

    .line 25
    return-void
.end method

.method public static a()Lazi;
    .locals 2

    .prologue
    .line 28
    sget-object v0, Lazi;->a:Lazi;

    if-nez v0, :cond_1

    .line 29
    const-class v1, Lazi;

    monitor-enter v1

    .line 30
    :try_start_0
    sget-object v0, Lazi;->a:Lazi;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lazi;

    invoke-direct {v0}, Lazi;-><init>()V

    sput-object v0, Lazi;->a:Lazi;

    .line 33
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_1
    sget-object v0, Lazi;->a:Lazi;

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    monitor-enter p0

    if-nez p1, :cond_0

    .line 47
    :goto_0
    monitor-exit p0

    return-void

    .line 43
    :cond_0
    :try_start_0
    iget-object v0, p0, Lazi;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lazi;->d:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    return-void
.end method
