.class public Lkt;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "XThreadPoolExecutor.java"


# direct methods
.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/PriorityBlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct/range {p0 .. p7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 14
    return-void
.end method


# virtual methods
.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 2
    .parameter

    .prologue
    .line 33
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 34
    :cond_0
    new-instance v0, Lku;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lku;-><init>(Lkt;Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 35
    invoke-virtual {p0, v0}, Lkt;->execute(Ljava/lang/Runnable;)V

    .line 36
    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 45
    :cond_0
    new-instance v0, Lku;

    invoke-direct {v0, p0, p1, p2}, Lku;-><init>(Lkt;Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p0, v0}, Lkt;->execute(Ljava/lang/Runnable;)V

    .line 47
    return-object v0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .parameter

    .prologue
    .line 55
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56
    :cond_0
    new-instance v0, Lku;

    invoke-direct {v0, p0, p1}, Lku;-><init>(Lkt;Ljava/util/concurrent/Callable;)V

    .line 57
    invoke-virtual {p0, v0}, Lkt;->execute(Ljava/lang/Runnable;)V

    .line 58
    return-object v0
.end method
