.class public Lbag;
.super Ljava/lang/Object;
.source "ShellUtils.java"


# static fields
.field private static a:Lbag;

.field private static b:Z


# instance fields
.field private c:Lanr;

.field private volatile d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lbag;->b:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method static synthetic a(Lbag;Lanr;)Lanr;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lbag;->c:Lanr;

    return-object p1
.end method

.method public static a()Lbag;
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lbag;->a:Lbag;

    if-nez v0, :cond_1

    .line 36
    const-class v1, Lbag;

    monitor-enter v1

    .line 37
    :try_start_0
    sget-object v0, Lbag;->a:Lbag;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lbag;

    invoke-direct {v0}, Lbag;-><init>()V

    sput-object v0, Lbag;->a:Lbag;

    .line 40
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_1
    sget-object v0, Lbag;->a:Lbag;

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 141
    sget-boolean v0, Lbag;->b:Z

    if-eqz v0, :cond_0

    .line 142
    sget-boolean v0, Lbag;->b:Z

    .line 145
    :goto_0
    return v0

    .line 144
    :cond_0
    invoke-static {}, Lanr;->a()Z

    move-result v0

    sput-boolean v0, Lbag;->b:Z

    .line 145
    sget-boolean v0, Lbag;->b:Z

    goto :goto_0
.end method

.method static synthetic a(Lbag;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    iput-boolean p1, p0, Lbag;->d:Z

    return p1
.end method


# virtual methods
.method public declared-synchronized a(Lbai;)V
    .locals 2
    .parameter

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lazi;->a()Lazi;

    move-result-object v0

    new-instance v1, Lbah;

    invoke-direct {v1, p0, p1}, Lbah;-><init>(Lbag;Lbai;)V

    invoke-virtual {v0, v1}, Lazi;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 96
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    :cond_0
    const/4 v0, 0x0

    .line 101
    :goto_0
    monitor-exit p0

    return v0

    .line 99
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {p0, v0}, Lbag;->a(Ljava/util/ArrayList;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/util/ArrayList;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 133
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 109
    :cond_1
    const/4 v0, 0x0

    .line 111
    :try_start_1
    iget-object v3, p0, Lbag;->c:Lanr;

    if-nez v3, :cond_2

    .line 112
    invoke-static {}, Lanr;->b()Lanr;

    move-result-object v3

    iput-object v3, p0, Lbag;->c:Lanr;

    .line 115
    :cond_2
    iget-object v3, p0, Lbag;->c:Lanr;

    if-nez v3, :cond_3

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbag;->d:Z

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    goto :goto_0

    .line 120
    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, p0, Lbag;->d:Z

    .line 121
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    new-instance v3, Lanu;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-direct {v3, v5}, Lanu;-><init>([Ljava/lang/String;)V

    .line 123
    iget-object v5, p0, Lbag;->c:Lanr;

    new-instance v6, Lanu;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-direct {v6, v7}, Lanu;-><init>([Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lanr;->a(Lanp;)Lanp;

    move-result-object v0

    invoke-virtual {v0}, Lanp;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v3

    goto :goto_1

    .line 129
    :cond_4
    if-eqz v0, :cond_0

    .line 133
    :try_start_2
    invoke-virtual {v0}, Lanu;->c()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_2
    move v2, v0

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_2

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lbag;->d:Z

    return v0
.end method
