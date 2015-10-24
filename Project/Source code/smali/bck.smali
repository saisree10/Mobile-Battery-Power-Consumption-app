.class public Lbck;
.super Lbcw;
.source "RequestHandlerError.java"


# instance fields
.field public a:Lbcq;

.field public b:Z

.field c:Lbcd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lbcw;-><init>()V

    .line 21
    sget-object v0, Lbcq;->b:Lbcq;

    iput-object v0, p0, Lbck;->a:Lbcq;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbck;->b:Z

    .line 23
    new-instance v0, Lbcd;

    invoke-direct {v0, p0}, Lbcd;-><init>(Lbck;)V

    iput-object v0, p0, Lbck;->c:Lbcd;

    .line 28
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 3
    .parameter

    .prologue
    .line 33
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 36
    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 38
    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 40
    iget-object v2, p0, Lbck;->c:Lbcd;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 43
    :cond_0
    return-object v0
.end method

.method public a(Lbdb;)Z
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-virtual {p1}, Lbdb;->a()Lbdc;

    move-result-object v0

    .line 49
    invoke-virtual {p1}, Lbdb;->printStackTrace()V

    .line 50
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Lbdc;->a()I

    move-result v0

    .line 52
    if-lez v0, :cond_0

    .line 54
    const/4 v0, 0x1

    .line 74
    :goto_0
    return v0

    .line 58
    :cond_0
    iget-boolean v0, p0, Lbck;->b:Z

    if-eqz v0, :cond_1

    .line 60
    sget-object v0, Lbcq;->g:Lbcq;

    iput-object v0, p0, Lbck;->a:Lbcq;

    .line 74
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p1}, Lbdb;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_2

    .line 64
    sget-object v0, Lbcq;->d:Lbcq;

    iput-object v0, p0, Lbck;->a:Lbcq;

    goto :goto_1

    .line 66
    :cond_2
    invoke-virtual {p1}, Lbdb;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_3

    .line 68
    sget-object v0, Lbcq;->e:Lbcq;

    iput-object v0, p0, Lbck;->a:Lbcq;

    goto :goto_1

    .line 72
    :cond_3
    sget-object v0, Lbcq;->c:Lbcq;

    iput-object v0, p0, Lbck;->a:Lbcq;

    goto :goto_1
.end method
