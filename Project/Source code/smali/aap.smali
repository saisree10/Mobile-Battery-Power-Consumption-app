.class public Laap;
.super Ljava/lang/Object;
.source "LowBatteryMgr.java"

# interfaces
.implements Lade;


# static fields
.field private static volatile a:Laap;


# instance fields
.field private b:Ladd;

.field private c:I

.field private d:Larr;

.field private e:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Laap;->c:I

    .line 30
    iput-object p1, p0, Laap;->e:Landroid/content/Context;

    .line 31
    iget-object v0, p0, Laap;->e:Landroid/content/Context;

    invoke-static {v0}, Larr;->a(Landroid/content/Context;)Larr;

    move-result-object v0

    iput-object v0, p0, Laap;->d:Larr;

    .line 32
    return-void
.end method

.method public static a(Landroid/content/Context;)Laap;
    .locals 2
    .parameter

    .prologue
    .line 44
    sget-object v0, Laap;->a:Laap;

    if-nez v0, :cond_1

    .line 45
    const-class v1, Laap;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Laap;->a:Laap;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Laap;

    invoke-direct {v0, p0}, Laap;-><init>(Landroid/content/Context;)V

    sput-object v0, Laap;->a:Laap;

    .line 49
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_1
    sget-object v0, Laap;->a:Laap;

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private c(I)V
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Laap;->d:Larr;

    invoke-virtual {v0, p1}, Larr;->a(I)I

    move-result v0

    iput v0, p0, Laap;->c:I

    .line 41
    return-void
.end method


# virtual methods
.method public a(Ladd;)V
    .locals 2
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Laap;->b:Ladd;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Laap;->b:Ladd;

    iget v0, v0, Ladd;->j:I

    iput v0, p0, Laap;->c:I

    .line 58
    iget-object v0, p0, Laap;->d:Larr;

    iget v1, p0, Laap;->c:I

    invoke-virtual {v0, v1}, Larr;->b(I)V

    .line 60
    :cond_0
    iput-object p1, p0, Laap;->b:Ladd;

    .line 61
    return-void
.end method

.method public a(I)Z
    .locals 2
    .parameter

    .prologue
    .line 70
    iget v0, p0, Laap;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 71
    iget-object v0, p0, Laap;->b:Ladd;

    iget v0, v0, Ladd;->c:I

    invoke-direct {p0, v0}, Laap;->c(I)V

    .line 73
    :cond_0
    iget-object v0, p0, Laap;->b:Ladd;

    iget v0, v0, Ladd;->j:I

    if-gt v0, p1, :cond_1

    iget v0, p0, Laap;->c:I

    if-le v0, p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 83
    iget v1, p0, Laap;->c:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 84
    iget-object v1, p0, Laap;->b:Ladd;

    if-nez v1, :cond_1

    .line 85
    const-string v1, "LowBatteryMgr"

    const-string v2, "LAST_BATTERY_PERCENT_DEFAULT not initialized."

    invoke-static {v1, v2}, Lazt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_0
    :goto_0
    return v0

    .line 88
    :cond_1
    iget-object v1, p0, Laap;->b:Ladd;

    iget v1, v1, Ladd;->c:I

    invoke-direct {p0, v1}, Laap;->c(I)V

    .line 90
    :cond_2
    iget-object v1, p0, Laap;->b:Ladd;

    iget v1, v1, Ladd;->j:I

    if-le v1, p1, :cond_0

    iget v1, p0, Laap;->c:I

    if-gt v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
