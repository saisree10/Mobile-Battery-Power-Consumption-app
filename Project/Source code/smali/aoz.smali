.class Laoz;
.super Landroid/content/BroadcastReceiver;
.source "SettingsActionListener.java"


# instance fields
.field final synthetic a:Laoy;


# direct methods
.method constructor <init>(Laoy;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Laoz;->a:Laoy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 48
    const-string v1, "com.dianxinos.dxbs.MODEMODIFIED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    const-string v0, "command"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 50
    if-eq v0, v2, :cond_0

    .line 51
    iget-object v1, p0, Laoz;->a:Laoy;

    invoke-static {v1, v0}, Laoy;->a(Laoy;I)V

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    const-string v1, "com.dianxinos.dxbs.MODECHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Laoz;->a:Laoy;

    const/4 v1, -0x2

    invoke-static {v0, v1}, Laoy;->a(Laoy;I)V

    goto :goto_0
.end method
