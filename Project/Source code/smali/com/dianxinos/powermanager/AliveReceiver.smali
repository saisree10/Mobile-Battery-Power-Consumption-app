.class public Lcom/dianxinos/powermanager/AliveReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AliveReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 23
    invoke-static {}, Lagj;->a()Lagj;

    move-result-object v1

    .line 24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 25
    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 26
    invoke-static {p1}, Lbal;->d(Landroid/content/Context;)V

    .line 27
    invoke-virtual {v1, v3}, Lagj;->a(I)V

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 29
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 30
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 31
    invoke-virtual {v1, v3}, Lagj;->a(I)V

    goto :goto_0

    .line 32
    :cond_2
    const-string v2, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lagj;->a(I)V

    goto :goto_0
.end method
