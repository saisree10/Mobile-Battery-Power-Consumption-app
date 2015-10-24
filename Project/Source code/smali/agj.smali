.class public Lagj;
.super Ljava/lang/Object;
.source "BatteryStatsReporter.java"


# static fields
.field private static b:Lagj;


# instance fields
.field a:Z

.field private c:Landroid/content/SharedPreferences;

.field private d:Landroid/content/Context;

.field private e:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v2, p0, Lagj;->a:Z

    .line 43
    invoke-static {}, Lcom/dianxinos/powermanager/PowerMangerApplication;->a()Lcom/dianxinos/powermanager/PowerMangerApplication;

    move-result-object v0

    iput-object v0, p0, Lagj;->d:Landroid/content/Context;

    .line 44
    iget-object v0, p0, Lagj;->d:Landroid/content/Context;

    const-string v1, "batterystats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lagj;->c:Landroid/content/SharedPreferences;

    .line 45
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "bsr"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 47
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lagj;->e:Landroid/os/Handler;

    .line 48
    return-void
.end method

.method static synthetic a(Lagj;)I
    .locals 1
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Lagj;->c()I

    move-result v0

    return v0
.end method

.method public static a()Lagj;
    .locals 2

    .prologue
    .line 51
    sget-object v0, Lagj;->b:Lagj;

    if-nez v0, :cond_1

    .line 52
    const-class v1, Lagj;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Lagj;->b:Lagj;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lagj;

    invoke-direct {v0}, Lagj;-><init>()V

    sput-object v0, Lagj;->b:Lagj;

    .line 56
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_1
    sget-object v0, Lagj;->b:Lagj;

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b()Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 65
    iget-object v3, p0, Lagj;->c:Landroid/content/SharedPreferences;

    const-string v4, "last_battery_time"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sub-long v3, v1, v3

    const-wide/32 v5, 0x5265c00

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 66
    iget-object v3, p0, Lagj;->c:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "last_battery_time"

    invoke-interface {v3, v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 67
    iget-object v1, p0, Lagj;->c:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "today_report_count"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 75
    :goto_0
    return v0

    .line 70
    :cond_0
    iget-object v1, p0, Lagj;->c:Landroid/content/SharedPreferences;

    const-string v2, "today_report_count"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 71
    const/16 v2, 0xa

    if-gt v1, v2, :cond_1

    .line 72
    iget-object v2, p0, Lagj;->c:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "today_report_count"

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 75
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()I
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lagj;->c:Landroid/content/SharedPreferences;

    const-string v1, "index"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 122
    iget-object v1, p0, Lagj;->c:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "index"

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 123
    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lagj;->d:Landroid/content/Context;

    invoke-static {v0}, Lacz;->a(Landroid/content/Context;)Lacz;

    move-result-object v0

    invoke-virtual {v0}, Lacz;->c()Ladd;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lagj;->a(ILadd;)V

    .line 118
    return-void
.end method

.method public a(ILadd;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Lagj;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lagj;->e:Landroid/os/Handler;

    new-instance v1, Lagk;

    invoke-direct {v1, p0, p2, p1}, Lagk;-><init>(Lagj;Ladd;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
