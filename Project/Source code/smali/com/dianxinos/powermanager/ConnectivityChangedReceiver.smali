.class public Lcom/dianxinos/powermanager/ConnectivityChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityChangedReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-static {p1}, Lhq;->a(Landroid/content/Context;)Lhq;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lhq;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 26
    invoke-static {p1}, Lka;->a(Landroid/content/Context;)Lka;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lka;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 27
    invoke-static {p1}, Lmy;->a(Landroid/content/Context;)Lmy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmy;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 28
    invoke-static {}, Lazi;->a()Lazi;

    move-result-object v0

    new-instance v1, Laal;

    invoke-direct {v1, p0, p1, p2}, Laal;-><init>(Lcom/dianxinos/powermanager/ConnectivityChangedReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lazi;->b(Ljava/lang/Runnable;)V

    .line 60
    :cond_0
    return-void
.end method
