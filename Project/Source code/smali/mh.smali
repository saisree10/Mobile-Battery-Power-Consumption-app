.class public Lmh;
.super Ljava/lang/Object;
.source "TapjoyHelper.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "f47ac16f-1ef2-4ca2-8b5f-93b584fbc8d1"

    sput-object v0, Lmh;->a:Ljava/lang/String;

    .line 31
    const-string v0, "dMb3KvVej6vwuTuq1E1A"

    sput-object v0, Lmh;->b:Ljava/lang/String;

    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnect;->showOffers()V

    .line 43
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 17
    const-string v0, "TapjoyHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    sget-object v0, Lmh;->a:Ljava/lang/String;

    sget-object v1, Lmh;->b:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/tapjoy/TapjoyConnect;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 19
    const-string v0, ""

    .line 21
    :try_start_0
    invoke-static {p1}, Llz;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 26
    :goto_0
    const-string v1, "TapjoyHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tjoy uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tapjoy/TapjoyConnect;->setUserID(Ljava/lang/String;)V

    .line 28
    return-void

    .line 22
    :catch_0
    move-exception v1

    .line 23
    const-string v1, "TapjoyHelper"

    const-string v2, "Encode failed."

    invoke-static {v1, v2}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    sput-object p0, Lmh;->a:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    sput-object p0, Lmh;->b:Ljava/lang/String;

    .line 39
    return-void
.end method
