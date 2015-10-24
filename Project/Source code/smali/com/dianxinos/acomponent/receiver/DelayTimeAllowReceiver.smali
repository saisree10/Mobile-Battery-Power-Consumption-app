.class public Lcom/dianxinos/acomponent/receiver/DelayTimeAllowReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DelayTimeAllowReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 18
    if-eqz p2, :cond_0

    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 20
    const-string v1, "com.dianxinos.acomponent.NOTIFICATION_CHECK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    const-string v0, "show_notification_flag"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lip;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 22
    const-string v1, "DelayTimeAllowReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " get delay_time broadcasr receiver notification flag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    if-lez v0, :cond_0

    .line 25
    invoke-static {p1}, Lhn;->c(Landroid/content/Context;)Lhn;

    move-result-object v0

    invoke-virtual {v0, p1, v4, v4}, Lhn;->a(Landroid/content/Context;ZZ)V

    .line 29
    :cond_0
    return-void
.end method
