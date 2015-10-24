.class public Lov;
.super Ljava/lang/Object;
.source "ToolboxImageLoader.java"


# static fields
.field private static final a:Ljava/util/concurrent/ThreadFactory;

.field private static b:Lov;

.field private static final c:Ljava/lang/Object;


# instance fields
.field private d:Ljava/util/HashMap;

.field private e:Loq;

.field private f:Landroid/os/Handler;

.field private g:Lox;

.field private h:Ljava/util/concurrent/ThreadPoolExecutor;

.field private i:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Low;

    invoke-direct {v0}, Low;-><init>()V

    sput-object v0, Lov;->a:Ljava/util/concurrent/ThreadFactory;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lov;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .prologue
    const/16 v2, 0x6c

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lov;->i:Ljava/util/HashMap;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lov;->d:Ljava/util/HashMap;

    .line 61
    new-instance v0, Lox;

    invoke-direct {v0}, Lox;-><init>()V

    iput-object v0, p0, Lov;->g:Lox;

    .line 62
    iget-object v0, p0, Lov;->g:Lox;

    sget v1, Loh;->toolbox_default_app_icon:I

    iput v1, v0, Lox;->a:I

    .line 63
    iget-object v0, p0, Lov;->g:Lox;

    iput v2, v0, Lox;->b:I

    .line 64
    iget-object v0, p0, Lov;->g:Lox;

    iput v2, v0, Lox;->c:I

    .line 66
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x5

    const/16 v2, 0x20

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v7, 0x80

    invoke-direct {v6, v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sget-object v7, Lov;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lov;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 72
    return-void
.end method

.method static synthetic a(Lov;)Loq;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lov;->e:Loq;

    return-object v0
.end method

.method public static declared-synchronized a()Lov;
    .locals 2

    .prologue
    .line 53
    const-class v1, Lov;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lov;->b:Lov;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lov;

    invoke-direct {v0}, Lov;-><init>()V

    sput-object v0, Lov;->b:Lov;

    .line 56
    :cond_0
    sget-object v0, Lov;->b:Lov;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lov;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lov;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic c(Lov;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lov;->f:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 75
    invoke-static {p1}, Loq;->a(Landroid/content/Context;)Loq;

    move-result-object v0

    iput-object v0, p0, Lov;->e:Loq;

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lov;->f:Landroid/os/Handler;

    .line 77
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 109
    sget-object v1, Lov;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 110
    :try_start_0
    iget-object v0, p0, Lov;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    monitor-exit v1

    .line 112
    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lov;->g:Lox;

    invoke-virtual {p0, p1, p2, v0}, Lov;->a(Ljava/lang/String;Landroid/widget/ImageView;Lox;)V

    .line 81
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;Lox;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lov;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 85
    const v1, -0x5313502

    invoke-virtual {p2, v1, p1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 86
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 106
    :goto_0
    return-void

    .line 93
    :cond_0
    iget v0, p3, Lox;->a:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    sget-object v1, Lov;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_0
    iget-object v0, p0, Lov;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lov;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loy;

    .line 97
    invoke-virtual {v0, p2}, Loy;->a(Landroid/widget/ImageView;)V

    .line 105
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 99
    :cond_1
    :try_start_1
    new-instance v0, Loy;

    invoke-direct {v0, p0, p1, p3}, Loy;-><init>(Lov;Ljava/lang/String;Lox;)V

    .line 100
    invoke-virtual {v0, p2}, Loy;->a(Landroid/widget/ImageView;)V

    .line 102
    iget-object v2, p0, Lov;->i:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v2, p0, Lov;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
