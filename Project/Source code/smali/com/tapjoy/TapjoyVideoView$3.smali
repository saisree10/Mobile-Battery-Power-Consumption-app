.class Lcom/tapjoy/TapjoyVideoView$3;
.super Ljava/lang/Object;
.source "TapjoyVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyVideoView;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyVideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 550
    iput-object p1, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/high16 v6, 0x4080

    const/4 v5, 0x1

    .line 554
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    #getter for: Lcom/tapjoy/TapjoyVideoView;->overlayText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/tapjoy/TapjoyVideoView;->access$500(Lcom/tapjoy/TapjoyVideoView;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    #calls: Lcom/tapjoy/TapjoyVideoView;->getRemainingVideoTime()I
    invoke-static {v2}, Lcom/tapjoy/TapjoyVideoView;->access$400(Lcom/tapjoy/TapjoyVideoView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    #getter for: Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/tapjoy/TapjoyVideoView;->access$600(Lcom/tapjoy/TapjoyVideoView;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    int-to-float v0, v0

    .line 558
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    .line 561
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    #getter for: Lcom/tapjoy/TapjoyVideoView;->didStartPlaying:Z
    invoke-static {v1}, Lcom/tapjoy/TapjoyVideoView;->access$700(Lcom/tapjoy/TapjoyVideoView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 563
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    const-string v2, "start"

    #calls: Lcom/tapjoy/TapjoyVideoView;->sendTrackingEvent(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyVideoView;->access$800(Lcom/tapjoy/TapjoyVideoView;Ljava/lang/String;)V

    .line 564
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    #setter for: Lcom/tapjoy/TapjoyVideoView;->didStartPlaying:Z
    invoke-static {v1, v5}, Lcom/tapjoy/TapjoyVideoView;->access$702(Lcom/tapjoy/TapjoyVideoView;Z)Z

    .line 567
    :cond_0
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    #getter for: Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;
    invoke-static {v1}, Lcom/tapjoy/TapjoyVideoView;->access$600(Lcom/tapjoy/TapjoyVideoView;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    int-to-float v1, v1

    .line 568
    div-float v2, v0, v6

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    #getter for: Lcom/tapjoy/TapjoyVideoView;->firstQuartileSent:Z
    invoke-static {v2}, Lcom/tapjoy/TapjoyVideoView;->access$900(Lcom/tapjoy/TapjoyVideoView;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 570
    const-string v2, "VideoView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Video 1st quartile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    const-string v3, "firstQuartile"

    #calls: Lcom/tapjoy/TapjoyVideoView;->sendTrackingEvent(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyVideoView;->access$800(Lcom/tapjoy/TapjoyVideoView;Ljava/lang/String;)V

    .line 572
    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    #setter for: Lcom/tapjoy/TapjoyVideoView;->firstQuartileSent:Z
    invoke-static {v2, v5}, Lcom/tapjoy/TapjoyVideoView;->access$902(Lcom/tapjoy/TapjoyVideoView;Z)Z

    .line 575
    :cond_1
    const/high16 v2, 0x4000

    div-float v2, v0, v2

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    #getter for: Lcom/tapjoy/TapjoyVideoView;->midpointSent:Z
    invoke-static {v2}, Lcom/tapjoy/TapjoyVideoView;->access$1000(Lcom/tapjoy/TapjoyVideoView;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 577
    const-string v2, "VideoView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Video midpoint: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    const-string v3, "midpoint"

    #calls: Lcom/tapjoy/TapjoyVideoView;->sendTrackingEvent(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyVideoView;->access$800(Lcom/tapjoy/TapjoyVideoView;Ljava/lang/String;)V

    .line 579
    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    #setter for: Lcom/tapjoy/TapjoyVideoView;->midpointSent:Z
    invoke-static {v2, v5}, Lcom/tapjoy/TapjoyVideoView;->access$1002(Lcom/tapjoy/TapjoyVideoView;Z)Z

    .line 582
    :cond_2
    const/high16 v2, 0x4040

    mul-float/2addr v0, v2

    div-float/2addr v0, v6

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    #getter for: Lcom/tapjoy/TapjoyVideoView;->thirdQuartileSent:Z
    invoke-static {v0}, Lcom/tapjoy/TapjoyVideoView;->access$1100(Lcom/tapjoy/TapjoyVideoView;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 584
    const-string v0, "VideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video 3rd quartile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    const-string v1, "thirdQuartile"

    #calls: Lcom/tapjoy/TapjoyVideoView;->sendTrackingEvent(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyVideoView;->access$800(Lcom/tapjoy/TapjoyVideoView;Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView$3;->this$0:Lcom/tapjoy/TapjoyVideoView;

    #setter for: Lcom/tapjoy/TapjoyVideoView;->thirdQuartileSent:Z
    invoke-static {v0, v5}, Lcom/tapjoy/TapjoyVideoView;->access$1102(Lcom/tapjoy/TapjoyVideoView;Z)Z

    .line 589
    :cond_3
    return-void
.end method
