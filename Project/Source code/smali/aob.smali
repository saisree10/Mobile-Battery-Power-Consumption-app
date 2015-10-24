.class public Laob;
.super Ljava/lang/Object;
.source "CmsServerPullScheduler.java"


# static fields
.field private static a:Laob;


# instance fields
.field private b:Ljava/util/HashMap;

.field private c:Landroid/os/Handler;

.field private d:Laoa;

.field private e:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laob;->b:Ljava/util/HashMap;

    .line 29
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "cmsserverpullscheduler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 31
    invoke-static {}, Lcom/dianxinos/powermanager/PowerMangerApplication;->a()Lcom/dianxinos/powermanager/PowerMangerApplication;

    move-result-object v1

    iput-object v1, p0, Laob;->e:Landroid/content/Context;

    .line 32
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Laob;->c:Landroid/os/Handler;

    .line 33
    new-instance v0, Laoa;

    invoke-direct {v0}, Laoa;-><init>()V

    iput-object v0, p0, Laob;->d:Laoa;

    .line 34
    return-void
.end method

.method public static a()Laob;
    .locals 2

    .prologue
    .line 37
    sget-object v0, Laob;->a:Laob;

    if-nez v0, :cond_1

    .line 38
    const-class v1, Laob;

    monitor-enter v1

    .line 39
    :try_start_0
    sget-object v0, Laob;->a:Laob;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Laob;

    invoke-direct {v0}, Laob;-><init>()V

    sput-object v0, Laob;->a:Laob;

    .line 42
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_1
    sget-object v0, Laob;->a:Laob;

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Laob;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Laob;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic a(Laob;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1}, Laob;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    return-void
.end method

.method static synthetic b(Laob;)Laoa;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Laob;->d:Laoa;

    return-object v0
.end method

.method static synthetic c(Laob;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Laob;->e:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Lanz;)V
    .locals 2
    .parameter

    .prologue
    .line 48
    if-nez p1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 53
    iget-object v1, p0, Laob;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    iget-object v1, p0, Laob;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Laob;->c:Landroid/os/Handler;

    new-instance v1, Laoc;

    invoke-direct {v1, p0}, Laoc;-><init>(Laob;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 101
    return-void
.end method
