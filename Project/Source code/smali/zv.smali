.class public Lzv;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# static fields
.field private static final a:Z

.field private static b:Landroid/net/ConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lxy;->a:Z

    sput-boolean v0, Lzv;->a:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x6

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x2

    .line 68
    invoke-static {p0}, Lzv;->d(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v4

    .line 69
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 70
    if-eqz v4, :cond_8

    .line 71
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    .line 72
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v4

    .line 73
    sget-boolean v6, Lzv;->a:Z

    if-eqz v6, :cond_0

    const-string v6, "NetworkUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "network type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lxz;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_0
    if-eq v5, v3, :cond_1

    if-eq v5, v9, :cond_1

    const/16 v6, 0x9

    if-ne v5, v6, :cond_3

    :cond_1
    move v0, v3

    .line 104
    :cond_2
    :goto_0
    return v0

    .line 78
    :cond_3
    if-eqz v5, :cond_4

    const/4 v3, 0x7

    if-ne v5, v3, :cond_6

    if-lez v4, :cond_6

    .line 85
    :cond_4
    if-eq v4, v2, :cond_5

    const/4 v1, 0x5

    if-eq v4, v1, :cond_5

    if-eq v4, v9, :cond_5

    const/16 v1, 0x8

    if-eq v4, v1, :cond_5

    const/16 v1, 0x9

    if-eq v4, v1, :cond_5

    const/16 v1, 0xa

    if-eq v4, v1, :cond_5

    const/16 v1, 0xc

    if-eq v4, v1, :cond_5

    const/16 v1, 0xd

    if-eq v4, v1, :cond_5

    const/16 v1, 0xe

    if-eq v4, v1, :cond_5

    const/16 v1, 0xf

    if-ne v4, v1, :cond_2

    :cond_5
    move v0, v2

    .line 95
    goto :goto_0

    .line 98
    :cond_6
    if-eq v5, v0, :cond_7

    const/4 v2, 0x7

    if-ne v5, v2, :cond_2

    :cond_7
    move v0, v1

    .line 100
    goto :goto_0

    :cond_8
    move v0, v1

    .line 104
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 183
    const/4 v0, 0x0

    .line 185
    invoke-static {p0}, Lzv;->e(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    invoke-static {p0, p1}, Lgi;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 187
    invoke-static {p0, p1}, Lgi;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 189
    :goto_0
    if-eqz v2, :cond_0

    if-eq v0, v1, :cond_0

    .line 191
    :try_start_0
    new-instance v1, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, v2, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v3, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 193
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_1
    return-object v0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    const-string v1, "NetworkUtils"

    const-string v2, "Unexpected exception: "

    invoke-static {v1, v2, v0}, Lxz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 200
    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_1

    :cond_1
    move-object v2, v0

    move v0, v1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x4

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 112
    invoke-static {p0}, Lzv;->d(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v3

    .line 113
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 114
    if-eqz v3, :cond_4

    .line 115
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 116
    if-eq v3, v2, :cond_0

    const/4 v4, 0x6

    if-eq v3, v4, :cond_0

    const/16 v4, 0x9

    if-ne v3, v4, :cond_2

    :cond_0
    move v0, v2

    .line 128
    :cond_1
    :goto_0
    return v0

    .line 119
    :cond_2
    if-eqz v3, :cond_1

    .line 121
    const/4 v2, 0x2

    if-eq v3, v2, :cond_3

    const/4 v2, 0x7

    if-ne v3, v2, :cond_1

    :cond_3
    move v0, v1

    .line 122
    goto :goto_0

    :cond_4
    move v0, v1

    .line 128
    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 135
    invoke-static {p0}, Lzv;->d(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter

    .prologue
    .line 55
    sget-object v0, Lzv;->b:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 56
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lzv;->b:Landroid/net/ConnectivityManager;

    .line 59
    :cond_0
    sget-object v0, Lzv;->b:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private static e(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 204
    invoke-static {p0}, Lzv;->d(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v1

    .line 205
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 206
    if-eqz v1, :cond_0

    .line 207
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 209
    :cond_0
    return v0
.end method
