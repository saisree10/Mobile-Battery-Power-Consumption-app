.class Lbba;
.super Ljava/lang/Object;
.source "AsyncTask.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field final a:Ljava/util/ArrayDeque;

.field b:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lbba;->a:Ljava/util/ArrayDeque;

    return-void
.end method

.method synthetic constructor <init>(Lbau;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    invoke-direct {p0}, Lbba;-><init>()V

    return-void
.end method


# virtual methods
.method protected declared-synchronized a()V
    .locals 2

    .prologue
    .line 268
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbba;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lbba;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 269
    sget-object v0, Lbat;->b:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lbba;->b:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :cond_0
    monitor-exit p0

    return-void

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 2
    .parameter

    .prologue
    .line 253
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbba;->a:Ljava/util/ArrayDeque;

    new-instance v1, Lbbb;

    invoke-direct {v1, p0, p1}, Lbbb;-><init>(Lbba;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 262
    iget-object v0, p0, Lbba;->b:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 263
    invoke-virtual {p0}, Lbba;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    :cond_0
    monitor-exit p0

    return-void

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
