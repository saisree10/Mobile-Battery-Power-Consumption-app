.class public Lbae;
.super Ljava/lang/Object;
.source "RingtonePlayer.java"


# static fields
.field private static a:Landroid/media/MediaPlayer;

.field private static b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lbae;->a:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic a(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter

    .prologue
    .line 15
    sput-object p0, Lbae;->a:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f060002

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://com.dianxinos.dxbs/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lly;->h:Lcom/dianxinos/dxbs/R$raw;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 90
    sget-object v0, Lly;->h:Lcom/dianxinos/dxbs/R$raw;

    invoke-static {p0, v2}, Lbae;->a(Landroid/content/Context;I)V

    .line 91
    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35
    const/high16 v0, 0x3f80

    invoke-static {p0, p1, v0}, Lbae;->a(Landroid/content/Context;IF)V

    .line 36
    return-void
.end method

.method public static a(Landroid/content/Context;IF)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    if-eqz p1, :cond_0

    invoke-static {p0}, Lbae;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    sget-object v0, Lbae;->b:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 44
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RingtonePlayer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 46
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lbae;->b:Landroid/os/Handler;

    .line 49
    :cond_2
    sget-object v0, Lbae;->b:Landroid/os/Handler;

    new-instance v1, Lbaf;

    invoke-direct {v1, p0, p1, p2}, Lbaf;-><init>(Landroid/content/Context;IF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 114
    const-class v1, Lbae;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://com.dianxinos.dxbs/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lly;->h:Lcom/dianxinos/dxbs/R$raw;

    const/high16 v2, 0x7f06

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 116
    sget-object v0, Lly;->h:Lcom/dianxinos/dxbs/R$raw;

    const/high16 v0, 0x7f06

    invoke-static {p0, v0}, Lbae;->a(Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit v1

    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 24
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 26
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    :cond_0
    const/4 v0, 0x1

    .line 31
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
