.class Lcom/tapjoy/TapjoyVideoView$2;
.super Ljava/lang/Object;
.source "TapjoyVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyVideoView;

.field final synthetic val$event:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyVideoView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 503
    iput-object p1, p0, Lcom/tapjoy/TapjoyVideoView$2;->this$0:Lcom/tapjoy/TapjoyVideoView;

    iput-object p2, p0, Lcom/tapjoy/TapjoyVideoView$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/tapjoy/TapjoyVideoView$2;->val$event:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 507
    const-string v0, "VideoView"

    const-string v1, "Sending video tracking event..."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    new-instance v0, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v0}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView$2;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v0

    .line 511
    iget-object v1, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 513
    const-string v0, "VideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video tracking event success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView$2;->val$event:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    :cond_0
    return-void
.end method
