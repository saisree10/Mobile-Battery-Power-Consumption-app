.class Lcom/tapjoy/TJPoints$1;
.super Ljava/lang/Object;
.source "TJPoints.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TJPoints;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJPoints;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/tapjoy/TJPoints$1;->this$0:Lcom/tapjoy/TJPoints;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 76
    new-instance v1, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v1}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "get_vg_store_items/user_account?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getURLParams()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/util/Map;)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v1

    .line 79
    iget-object v2, v1, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 81
    iget-object v0, p0, Lcom/tapjoy/TJPoints$1;->this$0:Lcom/tapjoy/TJPoints;

    iget-object v1, v1, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    #calls: Lcom/tapjoy/TJPoints;->handleGetPointsResponse(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/tapjoy/TJPoints;->access$000(Lcom/tapjoy/TJPoints;Ljava/lang/String;)Z

    move-result v0

    .line 86
    :cond_0
    if-nez v0, :cond_1

    .line 87
    invoke-static {}, Lcom/tapjoy/TJPoints;->access$100()Lcom/tapjoy/TapjoyNotifier;

    move-result-object v0

    const-string v1, "Failed to retrieve points from server"

    invoke-interface {v0, v1}, Lcom/tapjoy/TapjoyNotifier;->getUpdatePointsFailed(Ljava/lang/String;)V

    .line 88
    :cond_1
    return-void
.end method
