.class Lcom/tapjoy/TapjoyVideoView$9;
.super Ljava/lang/Object;
.source "TapjoyVideoView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyVideoView;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyVideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 773
    iput-object p1, p0, Lcom/tapjoy/TapjoyVideoView$9;->this$0:Lcom/tapjoy/TapjoyVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 777
    const-string v0, "VideoView"

    const-string v1, "dialog onCancel"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 779
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView$9;->this$0:Lcom/tapjoy/TapjoyVideoView;

    #setter for: Lcom/tapjoy/TapjoyVideoView;->dialogShowing:Z
    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyVideoView;->access$1302(Lcom/tapjoy/TapjoyVideoView;Z)Z

    .line 780
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView$9;->this$0:Lcom/tapjoy/TapjoyVideoView;

    #calls: Lcom/tapjoy/TapjoyVideoView;->finishWithResult(Z)V
    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyVideoView;->access$1400(Lcom/tapjoy/TapjoyVideoView;Z)V

    .line 781
    return-void
.end method
