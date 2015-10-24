.class public Lazm;
.super Ljava/lang/Object;
.source "DxTestCondition.java"


# static fields
.field private static volatile a:Lazm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lazm;->a:Lazm;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static a()Lazm;
    .locals 2

    .prologue
    .line 13
    sget-object v0, Lazm;->a:Lazm;

    if-nez v0, :cond_1

    .line 14
    const-class v1, Lazm;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lazm;->a:Lazm;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lazm;

    invoke-direct {v0}, Lazm;-><init>()V

    sput-object v0, Lazm;->a:Lazm;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lazm;->a:Lazm;

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lazm;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 38
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    const/4 v0, 0x1

    .line 44
    :cond_0
    :goto_0
    return v0

    .line 43
    :catch_0
    move-exception v1

    goto :goto_0
.end method
