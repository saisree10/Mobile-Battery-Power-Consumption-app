.class public final Lbbt;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# instance fields
.field final synthetic a:Lbbq;

.field private final b:Lbbv;

.field private final c:[Z

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>(Lbbq;Lbbv;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 727
    iput-object p1, p0, Lbbt;->a:Lbbq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 728
    iput-object p2, p0, Lbbt;->b:Lbbv;

    .line 729
    invoke-static {p2}, Lbbv;->d(Lbbv;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lbbt;->c:[Z

    .line 730
    return-void

    .line 729
    :cond_0
    invoke-static {p1}, Lbbq;->e(Lbbq;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lbbq;Lbbv;Lbbr;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 721
    invoke-direct {p0, p1, p2}, Lbbt;-><init>(Lbbq;Lbbv;)V

    return-void
.end method

.method static synthetic a(Lbbt;)Lbbv;
    .locals 1
    .parameter

    .prologue
    .line 721
    iget-object v0, p0, Lbbt;->b:Lbbv;

    return-object v0
.end method

.method static synthetic a(Lbbt;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 721
    iput-boolean p1, p0, Lbbt;->d:Z

    return p1
.end method

.method static synthetic b(Lbbt;)[Z
    .locals 1
    .parameter

    .prologue
    .line 721
    iget-object v0, p0, Lbbt;->c:[Z

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/io/OutputStream;
    .locals 4
    .parameter

    .prologue
    .line 769
    iget-object v2, p0, Lbbt;->a:Lbbq;

    monitor-enter v2

    .line 770
    :try_start_0
    iget-object v0, p0, Lbbt;->b:Lbbv;

    invoke-static {v0}, Lbbv;->a(Lbbv;)Lbbt;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 771
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 791
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 773
    :cond_0
    :try_start_1
    iget-object v0, p0, Lbbt;->b:Lbbv;

    invoke-static {v0}, Lbbv;->d(Lbbv;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 774
    iget-object v0, p0, Lbbt;->c:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 776
    :cond_1
    iget-object v0, p0, Lbbt;->b:Lbbv;

    invoke-virtual {v0, p1}, Lbbv;->b(I)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 779
    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v0

    .line 790
    :goto_0
    :try_start_3
    new-instance v0, Lbbu;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3}, Lbbu;-><init>(Lbbt;Ljava/io/OutputStream;Lbbr;)V

    monitor-exit v2

    :goto_1
    return-object v0

    .line 780
    :catch_0
    move-exception v0

    .line 782
    iget-object v0, p0, Lbbt;->a:Lbbq;

    invoke-static {v0}, Lbbq;->f(Lbbq;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 784
    :try_start_4
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v1, v0

    .line 788
    goto :goto_0

    .line 785
    :catch_1
    move-exception v0

    .line 787
    :try_start_5
    invoke-static {}, Lbbq;->d()Ljava/io/OutputStream;

    move-result-object v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 810
    iget-boolean v0, p0, Lbbt;->d:Z

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lbbt;->a:Lbbq;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lbbq;->a(Lbbq;Lbbt;Z)V

    .line 812
    iget-object v0, p0, Lbbt;->a:Lbbq;

    iget-object v1, p0, Lbbt;->b:Lbbv;

    invoke-static {v1}, Lbbv;->c(Lbbv;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbbq;->c(Ljava/lang/String;)Z

    .line 816
    :goto_0
    iput-boolean v2, p0, Lbbt;->e:Z

    .line 817
    return-void

    .line 814
    :cond_0
    iget-object v0, p0, Lbbt;->a:Lbbq;

    invoke-static {v0, p0, v2}, Lbbq;->a(Lbbq;Lbbt;Z)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 824
    iget-object v0, p0, Lbbt;->a:Lbbq;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lbbq;->a(Lbbq;Lbbt;Z)V

    .line 825
    return-void
.end method
