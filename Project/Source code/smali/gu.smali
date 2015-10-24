.class public Lgu;
.super Ljava/lang/Object;
.source "DelayClockService.java"


# static fields
.field private static volatile c:Lgu;


# instance fields
.field private final a:Landroid/content/BroadcastReceiver;

.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lgv;

    invoke-direct {v0, p0}, Lgv;-><init>(Lgu;)V

    iput-object v0, p0, Lgu;->a:Landroid/content/BroadcastReceiver;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lgu;->b:Landroid/content/Context;

    .line 60
    return-void
.end method

.method static synthetic a(Lgu;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 12
    iget-object v0, p0, Lgu;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lgu;
    .locals 2
    .parameter

    .prologue
    .line 50
    const-class v1, Lgu;

    monitor-enter v1

    .line 51
    :try_start_0
    sget-object v0, Lgu;->c:Lgu;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lgu;

    invoke-direct {v0, p0}, Lgu;-><init>(Landroid/content/Context;)V

    sput-object v0, Lgu;->c:Lgu;

    .line 54
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    sget-object v0, Lgu;->c:Lgu;

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lgu;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.{DL6B117B-CBC7-4ac2-8F3C-43C1649DC7DL}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lgu;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 12
    invoke-direct {p0}, Lgu;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lgu;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.{DL6B117B-CBC7-4ac2-8F3C-43C1649DC7LT}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lgu;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 12
    invoke-direct {p0}, Lgu;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 78
    iget-object v0, p0, Lgu;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 79
    invoke-direct {p0}, Lgu;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 81
    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
