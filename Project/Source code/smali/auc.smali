.class public Lauc;
.super Ljava/lang/Object;
.source "GlobalPpsMgr.java"


# static fields
.field private static f:Lauc;


# instance fields
.field private a:D

.field private b:J

.field private c:J

.field private d:I

.field private e:Lazr;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Lazr;->a(Landroid/content/Context;)Lazr;

    move-result-object v0

    iput-object v0, p0, Lauc;->e:Lazr;

    .line 36
    iget-object v0, p0, Lauc;->e:Lazr;

    invoke-virtual {v0}, Lazr;->e()[J

    move-result-object v0

    .line 37
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    iput-wide v1, p0, Lauc;->b:J

    .line 38
    const/4 v1, 0x1

    aget-wide v0, v0, v1

    iput-wide v0, p0, Lauc;->c:J

    .line 39
    iget-wide v0, p0, Lauc;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 40
    iget-wide v0, p0, Lauc;->b:J

    long-to-double v0, v0

    iget-wide v2, p0, Lauc;->c:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lauc;->a:D

    .line 47
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Lauc;
    .locals 3
    .parameter

    .prologue
    .line 24
    sget-object v0, Lauc;->f:Lauc;

    if-nez v0, :cond_1

    .line 25
    const-class v1, Lauc;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lauc;->f:Lauc;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lauc;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lauc;-><init>(Landroid/content/Context;)V

    sput-object v0, Lauc;->f:Lauc;

    .line 29
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_1
    sget-object v0, Lauc;->f:Lauc;

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(IJ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 51
    iget-wide v0, p0, Lauc;->b:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lauc;->b:J

    .line 52
    iget-wide v0, p0, Lauc;->c:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lauc;->c:J

    .line 53
    iget-wide v0, p0, Lauc;->b:J

    long-to-double v0, v0

    iget-wide v2, p0, Lauc;->c:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lauc;->a:D

    .line 54
    iget v0, p0, Lauc;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Lauc;->d:I

    .line 55
    iget v0, p0, Lauc;->d:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    iget-wide v0, p0, Lauc;->b:J

    const-wide/16 v2, 0x14

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 56
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lauc;->d:I

    .line 57
    iget-object v0, p0, Lauc;->e:Lazr;

    iget-wide v1, p0, Lauc;->b:J

    iget-wide v3, p0, Lauc;->c:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lazr;->a(JJ)V

    .line 65
    :cond_1
    return-void
.end method

.method public a()Z
    .locals 4

    .prologue
    .line 68
    iget-wide v0, p0, Lauc;->b:J

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()D
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lauc;->a:D

    return-wide v0
.end method
