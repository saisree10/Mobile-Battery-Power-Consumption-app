.class final Lcom/tapjoy/TapjoyConnectFlag$1;
.super Ljava/util/Hashtable;
.source "TapjoyConnectFlag.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    .line 110
    const-string v0, "TJC_SERVICE_URL"

    const-string v1, "https://ws.tapjoyads.com/"

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/TapjoyConnectFlag$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v0, "TJC_EVENT_SERVICE_URL"

    const-string v1, "https://events.tapjoy.com/"

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/TapjoyConnectFlag$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    return-void
.end method
