.class public abstract Lbcw;
.super Ljava/lang/Object;
.source "BasicRequestHandler.java"

# interfaces
.implements Lbde;


# instance fields
.field private final a:Lbdf;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lbcx;

    invoke-direct {v0}, Lbcx;-><init>()V

    invoke-direct {p0, v0}, Lbcw;-><init>(Lbdf;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lbdf;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lbcw;->a:Lbdf;

    .line 40
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 1
    .parameter

    .prologue
    .line 44
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 46
    return-object v0
.end method

.method public a(Ljava/io/OutputStream;[B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 66
    return-void
.end method

.method public a(Ljava/net/HttpURLConnection;Lbcz;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-virtual {p2}, Lbcz;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Lbcz;->b()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 55
    invoke-virtual {p2}, Lbcz;->a()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 56
    if-eqz p3, :cond_0

    .line 57
    const-string v0, "Content-Type"

    invoke-virtual {p1, v0, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_0
    const-string v0, "Accept-Charset"

    const-string v1, "UTF-8"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public a(Lbdb;)Z
    .locals 3
    .parameter

    .prologue
    .line 83
    invoke-virtual {p1}, Lbdb;->a()Lbdc;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lbcw;->a:Lbdf;

    invoke-interface {v1}, Lbdf;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lbcw;->a:Lbdf;

    const-string v2, "BasicRequestHandler.onError got"

    invoke-interface {v1, v2}, Lbdf;->a(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Lbdb;->printStackTrace()V

    .line 88
    :cond_0
    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {v0}, Lbdc;->a()I

    move-result v0

    .line 90
    if-lez v0, :cond_1

    .line 92
    const/4 v0, 0x1

    .line 96
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/io/InputStream;)[B
    .locals 4
    .parameter

    .prologue
    .line 71
    const/16 v0, 0x4000

    new-array v0, v0, [B

    .line 72
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 74
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 75
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 78
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
