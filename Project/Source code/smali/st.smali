.class Lst;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityChangeListener.java"


# instance fields
.field final synthetic a:Lss;


# direct methods
.method constructor <init>(Lss;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lst;->a:Lss;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lst;->a:Lss;

    invoke-static {v0}, Lss;->a(Lss;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 30
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 31
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 32
    iget-object v1, p0, Lst;->a:Lss;

    invoke-static {v1}, Lss;->a(Lss;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lsi;->a(Landroid/content/Context;)Lsi;

    move-result-object v1

    invoke-virtual {v1}, Lsi;->a()V

    .line 33
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_2

    .line 34
    sget-boolean v0, Lud;->c:Z

    if-eqz v0, :cond_0

    .line 35
    const-string v0, "stat.ConnectivityChangeListener"

    const-string v1, "Mobile data connection!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_0
    invoke-static {p1}, Ltn;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    invoke-static {p1}, Lse;->a(Landroid/content/Context;)Lse;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lse;->a(I)Z

    .line 53
    :cond_1
    :goto_0
    return-void

    .line 41
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 42
    sget-boolean v0, Lud;->c:Z

    if-eqz v0, :cond_3

    .line 43
    const-string v0, "stat.ConnectivityChangeListener"

    const-string v1, "Wifi data connection!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_3
    invoke-static {p1}, Ltn;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    invoke-static {p1}, Lse;->a(Landroid/content/Context;)Lse;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lse;->a(I)Z

    goto :goto_0

    .line 51
    :cond_4
    iget-object v0, p0, Lst;->a:Lss;

    invoke-static {v0}, Lss;->a(Lss;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lsi;->a(Landroid/content/Context;)Lsi;

    move-result-object v0

    invoke-virtual {v0}, Lsi;->b()V

    goto :goto_0
.end method
