.class public Lcom/dianxinos/powermanager/PackageAddReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PackageAddReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    invoke-static {p1}, Lka;->a(Landroid/content/Context;)Lka;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lka;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 22
    invoke-static {p1, p2}, Lwi;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 23
    invoke-static {p1}, Lazr;->a(Landroid/content/Context;)Lazr;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lazr;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-static {p1, p2}, Lpa;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 28
    :cond_0
    invoke-static {}, Lazi;->a()Lazi;

    move-result-object v0

    new-instance v1, Laas;

    invoke-direct {v1, p0, p1, p2}, Laas;-><init>(Lcom/dianxinos/powermanager/PackageAddReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lazi;->a(Ljava/lang/Runnable;)V

    .line 48
    :cond_1
    return-void
.end method
