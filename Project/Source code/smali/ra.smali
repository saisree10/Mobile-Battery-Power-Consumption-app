.class Lra;
.super Ljava/lang/Object;
.source "UIThreadPool.java"


# static fields
.field private static final a:Ljava/util/concurrent/ThreadFactory;

.field private static final b:Ljava/util/concurrent/BlockingQueue;

.field private static c:Lra;


# instance fields
.field private d:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lrb;

    invoke-direct {v0}, Lrb;-><init>()V

    sput-object v0, Lra;->a:Ljava/util/concurrent/ThreadFactory;

    .line 27
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lra;->b:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x5

    const/16 v2, 0x20

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lra;->b:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lra;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lra;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 40
    return-void
.end method

.method public static declared-synchronized a()Lra;
    .locals 2

    .prologue
    .line 43
    const-class v1, Lra;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lra;->c:Lra;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lra;

    invoke-direct {v0}, Lra;-><init>()V

    sput-object v0, Lra;->c:Lra;

    .line 47
    :cond_0
    sget-object v0, Lra;->c:Lra;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    invoke-static {}, Lra;->a()Lra;

    move-result-object v0

    invoke-virtual {v0, p0}, Lra;->a(Ljava/lang/Runnable;)V

    .line 56
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lra;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 52
    return-void
.end method
