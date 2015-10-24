.class public Lcom/tapjoy/TapjoyConnectCore$ConnectThread;
.super Ljava/lang/Object;
.source "TapjoyConnectCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyConnectCore;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TapjoyConnectCore;)V
    .locals 0
    .parameter

    .prologue
    .line 2059
    iput-object p1, p0, Lcom/tapjoy/TapjoyConnectCore$ConnectThread;->this$0:Lcom/tapjoy/TapjoyConnectCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/16 v6, 0xc8

    const/4 v5, 0x1

    .line 2063
    const-string v0, "TapjoyConnect"

    const-string v1, "starting connect call..."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2065
    const-string v0, "https://connect.tapjoy.com/"

    .line 2068
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://ws.tapjoyads.com/"

    if-eq v1, v2, :cond_0

    .line 2069
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v0

    .line 2072
    :cond_0
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->access$500()Lcom/tapjoy/TapjoyURLConnection;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "connect?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getURLParams()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/util/Map;)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v0

    .line 2075
    if-eqz v0, :cond_4

    iget v1, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    if-ne v1, v6, :cond_4

    .line 2077
    iget-object v0, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->response:Ljava/lang/String;

    #calls: Lcom/tapjoy/TapjoyConnectCore;->handleConnectResponse(Ljava/lang/String;)Z
    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->access$600(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2079
    const-string v0, "TapjoyConnect"

    const-string v1, "Successfully connected to tapjoy site."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2081
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->access$800()Lcom/tapjoy/TapjoyConnectNotifier;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2082
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->access$800()Lcom/tapjoy/TapjoyConnectNotifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/tapjoy/TapjoyConnectNotifier;->connectSuccess()V

    .line 2092
    :cond_1
    :goto_0
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->access$900()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 2094
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getGenericURLParams()Ljava/util/Map;

    move-result-object v0

    .line 2095
    const-string v1, "package_names"

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->access$900()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2098
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 2099
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->access$900()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/tapjoy/TapjoyConnectCore;->getPackageNamesVerifier(JLjava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/tapjoy/TapjoyConnectCore;->access$1000(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2100
    const-string v4, "timestamp"

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2101
    const-string v1, "verifier"

    invoke-static {v0, v1, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2103
    new-instance v1, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v1}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "apps_installed?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/tapjoy/TapjoyURLConnection;->getResponseFromURL(Ljava/lang/String;Ljava/util/Map;)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v0

    .line 2106
    if-eqz v0, :cond_2

    iget v0, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    if-ne v0, v6, :cond_2

    .line 2107
    const-string v0, "TapjoyConnect"

    const-string v1, "Successfully pinged sdkless api."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2116
    :cond_2
    :goto_1
    return-void

    .line 2087
    :cond_3
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->access$800()Lcom/tapjoy/TapjoyConnectNotifier;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2088
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->access$800()Lcom/tapjoy/TapjoyConnectNotifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/tapjoy/TapjoyConnectNotifier;->connectFail()V

    goto :goto_0

    .line 2113
    :cond_4
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->access$800()Lcom/tapjoy/TapjoyConnectNotifier;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2114
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->access$800()Lcom/tapjoy/TapjoyConnectNotifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/tapjoy/TapjoyConnectNotifier;->connectFail()V

    goto :goto_1
.end method
