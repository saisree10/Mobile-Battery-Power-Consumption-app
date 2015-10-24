.class Lcom/tapjoy/TJPoints$3;
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
    .line 153
    iput-object p1, p0, Lcom/tapjoy/TJPoints$3;->this$0:Lcom/tapjoy/TJPoints;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 156
    const/4 v0, 0x0

    .line 158
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 162
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getGenericURLParams()Ljava/util/Map;

    move-result-object v4

    .line 163
    const-string v5, "tap_points"

    iget-object v6, p0, Lcom/tapjoy/TJPoints$3;->this$0:Lcom/tapjoy/TJPoints;

    iget v6, v6, Lcom/tapjoy/TJPoints;->awardTapPoints:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 165
    const-string v5, "guid"

    invoke-static {v4, v5, v1, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 166
    const-string v5, "timestamp"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 167
    const-string v5, "verifier"

    iget-object v6, p0, Lcom/tapjoy/TJPoints$3;->this$0:Lcom/tapjoy/TJPoints;

    iget v6, v6, Lcom/tapjoy/TJPoints;->awardTapPoints:I

    invoke-static {v2, v3, v6, v1}, Lcom/tapjoy/TapjoyConnectCore;->getAwardPointsVerifier(JILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5, v1, v7}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 169
    new-instance v1, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v1}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "points/award?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/util/Map;)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v1

    .line 172
    iget-object v2, v1, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 174
    iget-object v0, p0, Lcom/tapjoy/TJPoints$3;->this$0:Lcom/tapjoy/TJPoints;

    iget-object v1, v1, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    #calls: Lcom/tapjoy/TJPoints;->handleAwardPointsResponse(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/tapjoy/TJPoints;->access$400(Lcom/tapjoy/TJPoints;Ljava/lang/String;)Z

    move-result v0

    .line 178
    :cond_0
    if-nez v0, :cond_1

    .line 179
    invoke-static {}, Lcom/tapjoy/TJPoints;->access$500()Lcom/tapjoy/TapjoyAwardPointsNotifier;

    move-result-object v0

    const-string v1, "Failed to award points."

    invoke-interface {v0, v1}, Lcom/tapjoy/TapjoyAwardPointsNotifier;->getAwardPointsResponseFailed(Ljava/lang/String;)V

    .line 180
    :cond_1
    return-void
.end method
