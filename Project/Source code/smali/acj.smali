.class public abstract Lacj;
.super Landroid/app/Service;
.source "WidgetUpdataServiceBase.java"

# interfaces
.implements Ladc;


# static fields
.field private static d:Ljava/util/Timer;


# instance fields
.field protected a:Landroid/content/res/Resources;

.field private b:Lacz;

.field private c:Z

.field private e:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 113
    new-instance v0, Lacl;

    invoke-direct {v0, p0}, Lacl;-><init>(Lacj;)V

    iput-object v0, p0, Lacj;->e:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lacj;)Z
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-boolean v0, p0, Lacj;->c:Z

    return v0
.end method

.method static synthetic a(Lacj;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput-boolean p1, p0, Lacj;->c:Z

    return p1
.end method

.method static synthetic b(Lacj;)Lacz;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lacj;->b:Lacz;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public a(Ladd;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lacj;->b(Ladd;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lacj;->a()V

    .line 41
    :cond_0
    return-void
.end method

.method protected b(Ladd;)Z
    .locals 1
    .parameter

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 63
    invoke-static {p0}, Lacz;->a(Landroid/content/Context;)Lacz;

    move-result-object v0

    iput-object v0, p0, Lacj;->b:Lacz;

    .line 64
    invoke-virtual {p0}, Lacj;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lacj;->a:Landroid/content/res/Resources;

    .line 66
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 67
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lacj;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lacj;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 70
    sget-object v0, Lacj;->d:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lacj;->d:Ljava/util/Timer;

    .line 72
    sget-object v0, Lacj;->d:Ljava/util/Timer;

    new-instance v1, Lack;

    invoke-direct {v1, p0}, Lack;-><init>(Lacj;)V

    const-wide/16 v2, 0x2710

    const-wide/32 v4, 0xa4cb80

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 79
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lacj;->c:Z

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lacj;->b:Lacz;

    invoke-virtual {v0, p0}, Lacz;->b(Ladc;)V

    .line 105
    :cond_0
    :try_start_0
    iget-object v0, p0, Lacj;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lacj;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    sget-object v0, Lacj;->d:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 110
    const/4 v0, 0x0

    sput-object v0, Lacj;->d:Ljava/util/Timer;

    .line 111
    return-void

    .line 106
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    iget-boolean v0, p0, Lacj;->c:Z

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lacj;->b:Lacz;

    invoke-virtual {v0, p0}, Lacz;->a(Ladc;)V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lacj;->c:Z

    .line 94
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    .line 92
    :cond_0
    invoke-virtual {p0}, Lacj;->a()V

    goto :goto_0
.end method
