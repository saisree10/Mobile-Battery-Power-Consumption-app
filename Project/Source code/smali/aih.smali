.class public Laih;
.super Lahp;
.source "WifiCommand.java"


# instance fields
.field private a:Landroid/net/wifi/WifiManager;

.field private h:I

.field private i:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lahp;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v0, Laii;

    invoke-direct {v0, p0}, Laii;-><init>(Laih;)V

    iput-object v0, p0, Laih;->i:Landroid/content/BroadcastReceiver;

    .line 29
    sget-boolean v0, Lazw;->l:Z

    iput-boolean v0, p0, Laih;->f:Z

    .line 30
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Laih;->a:Landroid/net/wifi/WifiManager;

    .line 31
    iget-boolean v0, p0, Laih;->f:Z

    if-nez v0, :cond_0

    .line 41
    :goto_0
    return-void

    .line 35
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Laih;->a()Z

    move-result v0

    invoke-virtual {p0, v0}, Laih;->a(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Laih;->f:Z

    goto :goto_0
.end method

.method static synthetic a(Laih;)I
    .locals 1
    .parameter

    .prologue
    .line 19
    iget v0, p0, Laih;->h:I

    return v0
.end method


# virtual methods
.method public a(Lahq;)V
    .locals 3
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Laih;->e:Lahq;

    .line 57
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 58
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Laih;->d:Landroid/content/Context;

    iget-object v2, p0, Laih;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 60
    return-void
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-boolean v0, p0, Laih;->f:Z

    if-nez v0, :cond_0

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    iput-boolean p1, p0, Laih;->g:Z

    .line 49
    iget-object v0, p0, Laih;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0
.end method

.method public a()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 98
    iget-object v2, p0, Laih;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    iput v2, p0, Laih;->h:I

    .line 100
    iget v2, p0, Laih;->h:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget v2, p0, Laih;->h:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 102
    :cond_0
    iput-boolean v1, p0, Laih;->g:Z

    move v0, v1

    .line 107
    :goto_0
    return v0

    .line 106
    :cond_1
    iput-boolean v0, p0, Laih;->g:Z

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Laih;->d:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00c4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    const-string v0, "WifiCommand"

    return-object v0
.end method
