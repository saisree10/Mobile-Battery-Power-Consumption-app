.class Lcom/tapjoy/TapjoyFullScreenAd$1;
.super Ljava/lang/Object;
.source "TapjoyFullScreenAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyFullScreenAd;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyFullScreenAd;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/tapjoy/TapjoyFullScreenAd$1;->this$0:Lcom/tapjoy/TapjoyFullScreenAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 104
    new-instance v0, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v0}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "get_offers/featured.html?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TapjoyFullScreenAd$1;->this$0:Lcom/tapjoy/TapjoyFullScreenAd;

    #getter for: Lcom/tapjoy/TapjoyFullScreenAd;->legacyFullScreenAdParams:Ljava/util/Map;
    invoke-static {v2}, Lcom/tapjoy/TapjoyFullScreenAd;->access$000(Lcom/tapjoy/TapjoyFullScreenAd;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/util/Map;)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v0

    .line 105
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/TapjoyFullScreenAd;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    if-eqz v0, :cond_1

    .line 109
    iget v1, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    packed-switch v1, :pswitch_data_0

    .line 120
    invoke-static {}, Lcom/tapjoy/TapjoyFullScreenAd;->access$300()Lcom/tapjoy/TapjoyFullScreenAdNotifier;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    invoke-static {}, Lcom/tapjoy/TapjoyFullScreenAd;->access$300()Lcom/tapjoy/TapjoyFullScreenAdNotifier;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/tapjoy/TapjoyFullScreenAdNotifier;->getFullScreenAdResponseFailed(I)V

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 112
    :pswitch_0
    iget-object v0, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/TapjoyFullScreenAd;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    invoke-static {}, Lcom/tapjoy/TapjoyFullScreenAd;->access$300()Lcom/tapjoy/TapjoyFullScreenAdNotifier;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    invoke-static {}, Lcom/tapjoy/TapjoyFullScreenAd;->access$300()Lcom/tapjoy/TapjoyFullScreenAdNotifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/tapjoy/TapjoyFullScreenAdNotifier;->getFullScreenAdResponse()V

    goto :goto_0

    .line 127
    :cond_1
    invoke-static {}, Lcom/tapjoy/TapjoyFullScreenAd;->access$300()Lcom/tapjoy/TapjoyFullScreenAdNotifier;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    invoke-static {}, Lcom/tapjoy/TapjoyFullScreenAd;->access$300()Lcom/tapjoy/TapjoyFullScreenAdNotifier;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/tapjoy/TapjoyFullScreenAdNotifier;->getFullScreenAdResponseFailed(I)V

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method
