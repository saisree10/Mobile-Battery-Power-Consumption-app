.class public abstract Lbat;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# static fields
.field private static final a:Ljava/util/concurrent/ThreadFactory;

.field public static final b:Ljava/util/concurrent/Executor;

.field public static final c:Ljava/util/concurrent/Executor;

.field public static final d:Ljava/util/concurrent/Executor;

.field private static final e:Ljava/util/concurrent/BlockingQueue;

.field private static final f:Lbaz;

.field private static volatile g:Ljava/util/concurrent/Executor;


# instance fields
.field private final h:Lbbd;

.field private final i:Ljava/util/concurrent/FutureTask;

.field private volatile j:Lbbc;

.field private final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final l:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 204
    new-instance v0, Lbau;

    invoke-direct {v0}, Lbau;-><init>()V

    sput-object v0, Lbat;->a:Ljava/util/concurrent/ThreadFactory;

    .line 212
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lbat;->e:Ljava/util/concurrent/BlockingQueue;

    .line 218
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x5

    const/16 v2, 0x80

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lbat;->e:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lbat;->a:Ljava/util/concurrent/ThreadFactory;

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lbat;->b:Ljava/util/concurrent/Executor;

    .line 227
    invoke-static {}, Lbbp;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lbba;

    invoke-direct {v0, v9}, Lbba;-><init>(Lbau;)V

    :goto_0
    sput-object v0, Lbat;->c:Ljava/util/concurrent/Executor;

    .line 230
    const/4 v0, 0x2

    sget-object v1, Lbat;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lbat;->d:Ljava/util/concurrent/Executor;

    .line 236
    new-instance v0, Lbaz;

    invoke-direct {v0, v9}, Lbaz;-><init>(Lbau;)V

    sput-object v0, Lbat;->f:Lbaz;

    .line 238
    sget-object v0, Lbat;->c:Ljava/util/concurrent/Executor;

    sput-object v0, Lbat;->g:Ljava/util/concurrent/Executor;

    return-void

    .line 227
    :cond_0
    sget-object v0, Lbat;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    sget-object v0, Lbbc;->a:Lbbc;

    iput-object v0, p0, Lbat;->j:Lbbc;

    .line 244
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lbat;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 245
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lbat;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 307
    new-instance v0, Lbav;

    invoke-direct {v0, p0}, Lbav;-><init>(Lbat;)V

    iput-object v0, p0, Lbat;->h:Lbbd;

    .line 317
    new-instance v0, Lbaw;

    iget-object v1, p0, Lbat;->h:Lbbd;

    invoke-direct {v0, p0, v1}, Lbaw;-><init>(Lbat;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lbat;->i:Ljava/util/concurrent/FutureTask;

    .line 332
    return-void
.end method

.method static synthetic a(Lbat;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lbat;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lbat;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Lbat;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic b(Lbat;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lbat;->c(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic c(Lbat;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lbat;->e(Ljava/lang/Object;)V

    return-void
.end method

.method private c(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 335
    iget-object v0, p0, Lbat;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 336
    if-nez v0, :cond_0

    .line 337
    invoke-direct {p0, p1}, Lbat;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    :cond_0
    return-void
.end method

.method private d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 343
    sget-object v0, Lbat;->f:Lbaz;

    new-instance v1, Lbay;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lbay;-><init>(Lbat;[Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, Lbaz;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 346
    return-object p1
.end method

.method private e(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 654
    invoke-virtual {p0}, Lbat;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    invoke-virtual {p0, p1}, Lbat;->b(Ljava/lang/Object;)V

    .line 659
    :goto_0
    sget-object v0, Lbbc;->c:Lbbc;

    iput-object v0, p0, Lbat;->j:Lbbc;

    .line 660
    return-void

    .line 657
    :cond_0
    invoke-virtual {p0, p1}, Lbat;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final varargs a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lbat;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 598
    iget-object v0, p0, Lbat;->j:Lbbc;

    sget-object v1, Lbbc;->a:Lbbc;

    if-eq v0, v1, :cond_0

    .line 599
    sget-object v0, Lbax;->a:[I

    iget-object v1, p0, Lbat;->j:Lbbc;

    invoke-virtual {v1}, Lbbc;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 610
    :cond_0
    sget-object v0, Lbbc;->b:Lbbc;

    iput-object v0, p0, Lbat;->j:Lbbc;

    .line 612
    invoke-virtual {p0}, Lbat;->a()V

    .line 614
    iget-object v0, p0, Lbat;->h:Lbbd;

    iput-object p2, v0, Lbbd;->b:[Ljava/lang/Object;

    .line 615
    iget-object v0, p0, Lbat;->i:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 617
    return-object p0

    .line 601
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 604
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 599
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected varargs abstract a([Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method protected a()V
    .locals 0

    .prologue
    .line 383
    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 399
    return-void
.end method

.method public final a(Z)Z
    .locals 2
    .parameter

    .prologue
    .line 492
    iget-object v0, p0, Lbat;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 493
    iget-object v0, p0, Lbat;->i:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public final b()Lbbc;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lbat;->j:Lbbc;

    return-object v0
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 430
    invoke-virtual {p0}, Lbat;->c()V

    .line 431
    return-void
.end method

.method protected varargs b([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 412
    return-void
.end method

.method public final varargs c([Ljava/lang/Object;)Lbat;
    .locals 1
    .parameter

    .prologue
    .line 560
    sget-object v0, Lbat;->g:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lbat;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lbat;

    move-result-object v0

    return-object v0
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 446
    return-void
.end method

.method protected final varargs d([Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 647
    invoke-virtual {p0}, Lbat;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 648
    sget-object v0, Lbat;->f:Lbaz;

    const/4 v1, 0x2

    new-instance v2, Lbay;

    invoke-direct {v2, p0, p1}, Lbay;-><init>(Lbat;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lbaz;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 651
    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lbat;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
