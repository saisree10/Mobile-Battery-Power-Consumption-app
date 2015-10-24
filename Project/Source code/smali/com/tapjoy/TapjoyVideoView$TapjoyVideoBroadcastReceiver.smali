.class Lcom/tapjoy/TapjoyVideoView$TapjoyVideoBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TapjoyVideoView.java"


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyVideoView;


# direct methods
.method private constructor <init>(Lcom/tapjoy/TapjoyVideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 795
    iput-object p1, p0, Lcom/tapjoy/TapjoyVideoView$TapjoyVideoBroadcastReceiver;->this$0:Lcom/tapjoy/TapjoyVideoView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/TapjoyVideoView;Lcom/tapjoy/TapjoyVideoView$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 795
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyVideoView$TapjoyVideoBroadcastReceiver;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 799
    const-string v0, "noConnectivity"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 801
    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView$TapjoyVideoBroadcastReceiver;->this$0:Lcom/tapjoy/TapjoyVideoView;

    #getter for: Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/tapjoy/TapjoyVideoView;->access$600(Lcom/tapjoy/TapjoyVideoView;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 803
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView$TapjoyVideoBroadcastReceiver;->this$0:Lcom/tapjoy/TapjoyVideoView;

    #setter for: Lcom/tapjoy/TapjoyVideoView;->dialogShowing:Z
    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyVideoView;->access$1302(Lcom/tapjoy/TapjoyVideoView;Z)Z

    .line 804
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView$TapjoyVideoBroadcastReceiver;->this$0:Lcom/tapjoy/TapjoyVideoView;

    invoke-virtual {v0, v2}, Lcom/tapjoy/TapjoyVideoView;->showDialog(I)V

    .line 805
    const-string v0, "VideoView"

    const-string v1, "No network connectivity during video playback"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    :cond_0
    return-void
.end method
