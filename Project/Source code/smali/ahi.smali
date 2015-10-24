.class public Lahi;
.super Lahp;
.source "BkDataCommand.java"


# instance fields
.field private a:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lahp;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lahi;->f:Z

    .line 18
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lahi;->a:Landroid/net/ConnectivityManager;

    .line 19
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-boolean v0, p0, Lahi;->f:Z

    if-nez v0, :cond_0

    .line 27
    :goto_0
    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lahi;->a:Landroid/net/ConnectivityManager;

    invoke-static {v0, p1}, Lazv;->a(Landroid/net/ConnectivityManager;Z)Z

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lahi;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    iput-boolean v0, p0, Lahi;->g:Z

    .line 32
    iget-boolean v0, p0, Lahi;->g:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lahi;->d:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00c1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "BkDataCommand "

    return-object v0
.end method
