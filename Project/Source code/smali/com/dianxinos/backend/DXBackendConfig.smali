.class public Lcom/dianxinos/backend/DXBackendConfig;
.super Ljava/lang/Object;
.source "DXBackendConfig.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "prod"

    sput-object v0, Lcom/dianxinos/backend/DXBackendConfig;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 47
    sget-object v0, Lcom/dianxinos/backend/DXBackendConfig;->a:Ljava/lang/String;

    invoke-static {v0}, Lit;->a(Ljava/lang/String;)V

    .line 49
    const-string v0, "com.android.vending"

    invoke-static {p0, v0}, Lazy;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    invoke-static {p0}, Lka;->a(Landroid/content/Context;)Lka;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lka;->b(Z)V

    .line 54
    :cond_0
    invoke-static {p0}, Lhq;->a(Landroid/content/Context;)Lhq;

    move-result-object v0

    sget-object v1, Lcom/dianxinos/backend/DXBackendConfig;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lhq;->b(Ljava/lang/String;)V

    .line 55
    sget-object v0, Lcom/dianxinos/backend/DXBackendConfig;->a:Ljava/lang/String;

    invoke-static {v0}, Laij;->a(Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/dianxinos/backend/DXBackendConfig;->a:Ljava/lang/String;

    invoke-static {v0}, Laof;->a(Ljava/lang/String;)V

    .line 57
    sget-object v0, Lcom/dianxinos/backend/DXBackendConfig;->a:Ljava/lang/String;

    invoke-static {v0}, Lmy;->a(Ljava/lang/String;)V

    .line 58
    sget-object v0, Lcom/dianxinos/backend/DXBackendConfig;->a:Ljava/lang/String;

    invoke-static {v0}, Lkl;->a(Ljava/lang/String;)V

    .line 59
    sget-object v0, Lcom/dianxinos/backend/DXBackendConfig;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/dianxinos/common/coins/CoinManager;->a(Ljava/lang/String;)V

    .line 60
    invoke-static {p0}, Lcom/dianxinos/backend/DXBackendConfig;->b(Landroid/content/Context;)V

    .line 62
    sget-object v0, Lcom/dianxinos/backend/DXBackendConfig;->a:Ljava/lang/String;

    invoke-static {v0}, Lank;->a(Ljava/lang/String;)V

    .line 63
    sget-object v0, Lcom/dianxinos/backend/DXBackendConfig;->a:Ljava/lang/String;

    invoke-static {v0}, Laoi;->a(Ljava/lang/String;)V

    .line 64
    sget-object v0, Lcom/dianxinos/backend/DXBackendConfig;->a:Ljava/lang/String;

    invoke-static {v0}, Lanw;->a(Ljava/lang/String;)V

    .line 65
    sget-object v0, Lcom/dianxinos/backend/DXBackendConfig;->a:Ljava/lang/String;

    invoke-static {v0}, Lanv;->a(Ljava/lang/String;)V

    .line 66
    sget-object v0, Lcom/dianxinos/backend/DXBackendConfig;->a:Ljava/lang/String;

    invoke-static {v0}, Laoh;->a(Ljava/lang/String;)V

    .line 67
    invoke-static {p0}, Lun;->a(Landroid/content/Context;)Lun;

    move-result-object v0

    sget-object v1, Lcom/dianxinos/backend/DXBackendConfig;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lun;->a(Ljava/lang/String;)Z

    .line 69
    sget-object v0, Lcom/dianxinos/backend/DXBackendConfig;->a:Ljava/lang/String;

    invoke-static {v0}, Lpa;->a(Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/dianxinos/backend/DXBackendConfig;->a:Ljava/lang/String;

    invoke-static {v0}, Lzf;->a(Ljava/lang/String;)V

    .line 71
    invoke-static {}, Laob;->a()Laob;

    move-result-object v0

    .line 72
    sget-object v1, Lcom/dianxinos/backend/DXBackendConfig;->a:Ljava/lang/String;

    invoke-static {v1}, Lyy;->a(Ljava/lang/String;)V

    .line 73
    invoke-static {p0}, Lyy;->a(Landroid/content/Context;)Lyy;

    move-result-object v1

    invoke-virtual {v0, v1}, Laob;->a(Lanz;)V

    .line 75
    sget-object v0, Lcom/dianxinos/backend/DXBackendConfig;->a:Ljava/lang/String;

    invoke-static {v0}, Lany;->a(Ljava/lang/String;)V

    .line 78
    :try_start_0
    sget-object v0, Lcom/dianxinos/backend/DXBackendConfig;->a:Ljava/lang/String;

    invoke-static {v0}, Lsh;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    sget-object v0, Lcom/dianxinos/backend/DXBackendConfig;->a:Ljava/lang/String;

    invoke-static {v0}, Lnl;->a(Ljava/lang/String;)V

    .line 84
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    const-string v0, "DXBackendConfig"

    const-string v1, " Error. "

    invoke-static {v0, v1}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    .line 87
    invoke-static {p0}, Lgt;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 88
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 89
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "op"

    invoke-static {p0}, Lgy;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    const-string v0, "com.android.vending"

    invoke-static {p0, v0}, Lazy;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 91
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "play"

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "china"

    const-string v4, "0"

    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v2, v1}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {p0}, Lkl;->a(Landroid/content/Context;)Lkl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lkl;->b(Ljava/lang/String;)V

    .line 95
    return-void

    .line 91
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method
