.class public Lahr;
.super Lahp;
.source "GpsCommand.java"


# instance fields
.field private a:Landroid/content/ContentResolver;

.field private h:Z

.field private i:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lahp;-><init>(Landroid/content/Context;)V

    .line 83
    new-instance v0, Lahs;

    invoke-direct {v0, p0}, Lahs;-><init>(Lahr;)V

    iput-object v0, p0, Lahr;->i:Landroid/content/BroadcastReceiver;

    .line 29
    invoke-static {p1}, Lazl;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lahr;->h:Z

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lahr;->f:Z

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lahr;->a:Landroid/content/ContentResolver;

    .line 35
    return-void
.end method


# virtual methods
.method public a(Lahq;)V
    .locals 3
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lahr;->e:Lahq;

    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 79
    const-string v1, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lahr;->d:Landroid/content/Context;

    iget-object v2, p0, Lahr;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 81
    return-void
.end method

.method public a(Z)V
    .locals 4
    .parameter

    .prologue
    .line 40
    iget-boolean v0, p0, Lahr;->f:Z

    if-nez v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-boolean v0, p0, Lahr;->h:Z

    if-eqz v0, :cond_1

    .line 44
    :try_start_0
    iget-object v0, p0, Lahr;->a:Landroid/content/ContentResolver;

    const-string v1, "gps"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    const-string v1, "GpsCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLocationProviderEnabled error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lazt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lazl;->a(Z)Z

    goto :goto_0

    .line 52
    :cond_1
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lazl;->a(Z)Z

    goto :goto_0
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lahr;->a:Landroid/content/ContentResolver;

    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lahr;->g:Z

    .line 110
    iget-boolean v0, p0, Lahr;->g:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lahr;->d:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00c7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    const-string v0, "GpsCommand "

    return-object v0
.end method
