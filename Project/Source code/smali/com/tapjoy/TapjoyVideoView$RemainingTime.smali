.class Lcom/tapjoy/TapjoyVideoView$RemainingTime;
.super Ljava/util/TimerTask;
.source "TapjoyVideoView.java"


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyVideoView;


# direct methods
.method private constructor <init>(Lcom/tapjoy/TapjoyVideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 538
    iput-object p1, p0, Lcom/tapjoy/TapjoyVideoView$RemainingTime;->this$0:Lcom/tapjoy/TapjoyVideoView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/TapjoyVideoView;Lcom/tapjoy/TapjoyVideoView$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 538
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyVideoView$RemainingTime;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 543
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView$RemainingTime;->this$0:Lcom/tapjoy/TapjoyVideoView;

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView$RemainingTime;->this$0:Lcom/tapjoy/TapjoyVideoView;

    iget-object v1, v1, Lcom/tapjoy/TapjoyVideoView;->mUpdateResults:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 544
    return-void
.end method
