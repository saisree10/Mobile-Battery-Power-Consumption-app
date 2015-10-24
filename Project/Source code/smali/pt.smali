.class public Lpt;
.super Ljava/lang/Object;
.source "RefreshBalanceBackgroundPuller.java"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lpt;->a:Ljava/lang/Object;

    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lpt;->b:Z

    return-void
.end method

.method static synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lpt;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 27
    sget-object v1, Lpt;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 28
    :try_start_0
    sget-boolean v2, Lpt;->b:Z

    if-eqz v2, :cond_0

    .line 29
    monitor-exit v1

    .line 71
    :goto_0
    return-void

    .line 31
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lpt;->b:Z

    .line 33
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    const-string v1, "RefreshBalanceBackgroundPuller"

    const-string v2, "Refresh DU Coins in background..."

    invoke-static {v1, v2}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance v1, Lpu;

    invoke-direct {v1, v0}, Lpu;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lra;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Z)Z
    .locals 0
    .parameter

    .prologue
    .line 16
    sput-boolean p0, Lpt;->b:Z

    return p0
.end method
