.class public Laty;
.super Ljava/lang/Object;
.source "BatteryStatsSimpleAnalyzer.java"

# interfaces
.implements Ladc;


# static fields
.field private static g:Laty;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lauc;

.field private c:Z

.field private d:Z

.field private e:I

.field private f:J


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v0, p0, Laty;->c:Z

    .line 28
    iput-boolean v0, p0, Laty;->d:Z

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Laty;->e:I

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Laty;->a:Landroid/content/Context;

    .line 47
    invoke-static {p1}, Lauc;->a(Landroid/content/Context;)Lauc;

    move-result-object v0

    iput-object v0, p0, Laty;->b:Lauc;

    .line 48
    return-void
.end method

.method public static a(Landroid/content/Context;)Laty;
    .locals 2
    .parameter

    .prologue
    .line 35
    sget-object v0, Laty;->g:Laty;

    if-nez v0, :cond_1

    .line 36
    const-class v1, Laty;

    monitor-enter v1

    .line 37
    :try_start_0
    sget-object v0, Laty;->g:Laty;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Laty;

    invoke-direct {v0, p0}, Laty;-><init>(Landroid/content/Context;)V

    sput-object v0, Laty;->g:Laty;

    .line 40
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_1
    sget-object v0, Laty;->g:Laty;

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


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 51
    const-string v0, "BatteryStatsSimpleAnalyzer"

    const-string v1, "Start to work"

    invoke-static {v0, v1}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Laty;->a:Landroid/content/Context;

    invoke-static {v0}, Lacz;->a(Landroid/content/Context;)Lacz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lacz;->a(Ladc;)V

    .line 53
    return-void
.end method

.method public a(Ladd;)V
    .locals 7
    .parameter

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 63
    iget v0, p1, Ladd;->a:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 70
    :goto_0
    if-eqz v0, :cond_1

    .line 75
    iput-boolean v2, p0, Laty;->d:Z

    .line 76
    iput-boolean v2, p0, Laty;->c:Z

    .line 77
    iget v0, p1, Ladd;->j:I

    iput v0, p0, Laty;->e:I

    .line 122
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 63
    goto :goto_0

    .line 81
    :cond_1
    iget-boolean v0, p0, Laty;->c:Z

    if-nez v0, :cond_3

    .line 85
    iget v0, p1, Ladd;->j:I

    iget v2, p0, Laty;->e:I

    if-lt v0, v2, :cond_2

    .line 86
    iget v0, p1, Ladd;->j:I

    iput v0, p0, Laty;->e:I

    goto :goto_1

    .line 92
    :cond_2
    iput-boolean v1, p0, Laty;->c:Z

    .line 95
    :cond_3
    iget-boolean v0, p0, Laty;->d:Z

    if-nez v0, :cond_4

    .line 97
    iput-boolean v1, p0, Laty;->d:Z

    .line 98
    iget v0, p1, Ladd;->j:I

    iput v0, p0, Laty;->e:I

    .line 99
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    div-long/2addr v0, v4

    iput-wide v0, p0, Laty;->f:J

    goto :goto_1

    .line 106
    :cond_4
    iget v0, p1, Ladd;->j:I

    .line 107
    iget v1, p0, Laty;->e:I

    sub-int/2addr v1, v0

    .line 109
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    div-long/2addr v2, v4

    .line 110
    iget-wide v4, p0, Laty;->f:J

    sub-long v4, v2, v4

    .line 111
    iget-object v6, p0, Laty;->b:Lauc;

    invoke-virtual {v6, v1, v4, v5}, Lauc;->a(IJ)V

    .line 113
    iput v0, p0, Laty;->e:I

    .line 114
    iput-wide v2, p0, Laty;->f:J

    goto :goto_1
.end method

.method public b()V
    .locals 2

    .prologue
    .line 56
    const-string v0, "BatteryStatsSimpleAnalyzer"

    const-string v1, "Stop to work"

    invoke-static {v0, v1}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Laty;->a:Landroid/content/Context;

    invoke-static {v0}, Lacz;->a(Landroid/content/Context;)Lacz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lacz;->b(Ladc;)V

    .line 58
    return-void
.end method
