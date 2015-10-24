.class Ltw;
.super Ljava/lang/Object;
.source "HwInfoService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Landroid/content/Intent;

.field final synthetic b:Lts;


# direct methods
.method public constructor <init>(Lts;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Ltw;->b:Lts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput-object p2, p0, Ltw;->a:Landroid/content/Intent;

    .line 302
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 306
    sget-boolean v0, Lud;->b:Z

    if-eqz v0, :cond_0

    .line 307
    const-string v0, "stat.HwInfoService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter in HandleWifiStateChange!\nAction received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltw;->a:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_0
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    iget-object v1, p0, Ltw;->a:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Ltw;->b:Lts;

    invoke-static {v0}, Lts;->f(Lts;)V

    .line 312
    :cond_1
    return-void
.end method
