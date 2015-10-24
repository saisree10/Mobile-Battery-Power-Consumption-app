.class public Lbcd;
.super Ljava/lang/Object;
.source "HostnameVerifierVerbose.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field private a:Lbck;


# direct methods
.method public constructor <init>(Lbck;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lbcd;->a:Lbck;

    .line 17
    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 22
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 24
    iget-object v1, p0, Lbcd;->a:Lbck;

    iput-boolean v0, v1, Lbck;->b:Z

    .line 25
    const/4 v0, 0x0

    .line 28
    :cond_0
    return v0
.end method
