.class public Laoy;
.super Ljava/lang/Object;
.source "SettingsActionListener.java"


# static fields
.field private static a:Laoy;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/content/BroadcastReceiver;

.field private d:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Laoz;

    invoke-direct {v0, p0}, Laoz;-><init>(Laoy;)V

    iput-object v0, p0, Laoy;->c:Landroid/content/BroadcastReceiver;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoy;->d:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Laoy;->b:Landroid/content/Context;

    .line 23
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 24
    const-string v1, "com.dianxinos.dxbs.MODEMODIFIED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25
    const-string v1, "com.dianxinos.dxbs.MODECHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    iget-object v1, p0, Laoy;->b:Landroid/content/Context;

    iget-object v2, p0, Laoy;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 27
    return-void
.end method

.method public static a(Landroid/content/Context;)Laoy;
    .locals 2
    .parameter

    .prologue
    .line 30
    sget-object v0, Laoy;->a:Laoy;

    if-nez v0, :cond_1

    .line 31
    const-class v1, Laoy;

    monitor-enter v1

    .line 32
    :try_start_0
    sget-object v0, Laoy;->a:Laoy;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Laoy;

    invoke-direct {v0, p0}, Laoy;-><init>(Landroid/content/Context;)V

    sput-object v0, Laoy;->a:Laoy;

    .line 35
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_1
    sget-object v0, Laoy;->a:Laoy;

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Laoy;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapa;

    .line 76
    invoke-interface {v0, p1}, Lapa;->a(I)V

    goto :goto_0

    .line 77
    :cond_0
    return-void
.end method

.method static synthetic a(Laoy;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1}, Laoy;->a(I)V

    return-void
.end method


# virtual methods
.method public a(Lapa;)V
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Laoy;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Laoy;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_0
    return-void
.end method

.method public b(Lapa;)V
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Laoy;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Laoy;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 72
    :cond_0
    return-void
.end method
