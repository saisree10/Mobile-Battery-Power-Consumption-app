.class final Lbaf;
.super Ljava/lang/Object;
.source "RingtonePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:F


# direct methods
.method constructor <init>(Landroid/content/Context;IF)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lbaf;->a:Landroid/content/Context;

    iput p2, p0, Lbaf;->b:I

    iput p3, p0, Lbaf;->c:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 52
    iget-object v0, p0, Lbaf;->a:Landroid/content/Context;

    invoke-static {v0}, Lasx;->a(Landroid/content/Context;)Lasx;

    move-result-object v0

    invoke-virtual {v0}, Lasx;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const-string v0, "RingtonePlayer"

    const-string v1, "Ignore sound playing when calling"

    invoke-static {v0, v1}, Lazt;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :goto_0
    return-void

    .line 57
    :cond_0
    const-class v6, Lbae;

    monitor-enter v6

    .line 58
    :try_start_0
    invoke-static {}, Lbae;->a()Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 59
    invoke-static {}, Lbae;->a()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 60
    invoke-static {}, Lbae;->a()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 61
    const/4 v0, 0x0

    invoke-static {v0}, Lbae;->a(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 63
    :cond_1
    invoke-static {}, Lbae;->a()Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_2

    .line 64
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {v0}, Lbae;->a(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_2
    :try_start_1
    iget-object v0, p0, Lbaf;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lbaf;->b:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    .line 68
    if-nez v7, :cond_3

    .line 69
    :try_start_2
    monitor-exit v6

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 70
    :cond_3
    :try_start_3
    invoke-static {}, Lbae;->a()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 72
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 73
    invoke-static {}, Lbae;->a()Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 74
    invoke-static {}, Lbae;->a()Landroid/media/MediaPlayer;

    move-result-object v0

    iget v1, p0, Lbaf;->c:F

    iget v2, p0, Lbaf;->c:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 75
    invoke-static {}, Lbae;->a()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 76
    invoke-static {}, Lbae;->a()Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 77
    invoke-static {}, Lbae;->a()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 82
    :goto_1
    :try_start_4
    monitor-exit v6

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    const-string v1, "RingtonePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not play media, uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lbaf;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lazt;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method
