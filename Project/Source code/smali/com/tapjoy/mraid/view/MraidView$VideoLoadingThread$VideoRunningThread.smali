.class Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread$VideoRunningThread;
.super Ljava/lang/Object;
.source "MraidView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private playing:Z

.field final synthetic this$1:Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread;


# direct methods
.method public constructor <init>(Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread;)V
    .locals 1
    .parameter

    .prologue
    .line 1344
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread$VideoRunningThread;->this$1:Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1342
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread$VideoRunningThread;->playing:Z

    .line 1344
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1349
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread$VideoRunningThread;->this$1:Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread;

    iget-object v0, v0, Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    #getter for: Lcom/tapjoy/mraid/view/MraidView;->videoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->access$1600(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/VideoView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1351
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 1353
    iget-boolean v0, p0, Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread$VideoRunningThread;->playing:Z

    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread$VideoRunningThread;->this$1:Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread;

    iget-object v1, v1, Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    #getter for: Lcom/tapjoy/mraid/view/MraidView;->videoView:Landroid/widget/VideoView;
    invoke-static {v1}, Lcom/tapjoy/mraid/view/MraidView;->access$1600(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1354
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread$VideoRunningThread;->this$1:Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread;

    iget-object v0, v0, Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    #getter for: Lcom/tapjoy/mraid/view/MraidView;->videoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/tapjoy/mraid/view/MraidView;->access$1600(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread$VideoRunningThread;->playing:Z

    .line 1355
    iget-boolean v0, p0, Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread$VideoRunningThread;->playing:Z

    if-eqz v0, :cond_1

    const-string v0, "videoplay"

    .line 1356
    :goto_1
    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread$VideoRunningThread;->this$1:Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread;

    iget-object v1, v1, Lcom/tapjoy/mraid/view/MraidView$VideoLoadingThread;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:try{Tapjoy.AdUnit.dispatchEvent(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\')}catch(e){}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tapjoy/mraid/view/MraidView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 1359
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1355
    :cond_1
    const-string v0, "videopause"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1361
    :cond_2
    return-void
.end method
