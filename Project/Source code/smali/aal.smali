.class public Laal;
.super Ljava/lang/Object;
.source "ConnectivityChangedReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lcom/dianxinos/powermanager/ConnectivityChangedReceiver;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/ConnectivityChangedReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Laal;->c:Lcom/dianxinos/powermanager/ConnectivityChangedReceiver;

    iput-object p2, p0, Laal;->a:Landroid/content/Context;

    iput-object p3, p0, Laal;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 31
    iget-object v0, p0, Laal;->a:Landroid/content/Context;

    invoke-static {v0}, Lazr;->a(Landroid/content/Context;)Lazr;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lazr;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Laal;->a:Landroid/content/Context;

    iget-object v2, p0, Laal;->b:Landroid/content/Intent;

    invoke-static {v0, v2}, Lpa;->b(Landroid/content/Context;Landroid/content/Intent;)V

    .line 37
    :cond_0
    iget-object v0, p0, Laal;->a:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 39
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 42
    if-nez v2, :cond_2

    move v2, v1

    .line 43
    :goto_0
    if-eqz v2, :cond_3

    .line 44
    invoke-static {}, Laob;->a()Laob;

    move-result-object v0

    invoke-virtual {v0}, Laob;->b()V

    .line 45
    invoke-static {}, Laoj;->b()Laoj;

    move-result-object v0

    invoke-virtual {v0}, Laoj;->d()V

    .line 46
    invoke-static {}, Laoj;->b()Laoj;

    move-result-object v0

    invoke-virtual {v0}, Laoj;->f()V

    .line 57
    :cond_1
    :goto_1
    return-void

    .line 42
    :cond_2
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    goto :goto_0

    .line 50
    :cond_3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 51
    if-nez v0, :cond_4

    move v0, v1

    .line 52
    :goto_2
    if-eqz v0, :cond_1

    .line 53
    invoke-static {}, Laob;->a()Laob;

    move-result-object v0

    invoke-virtual {v0}, Laob;->b()V

    .line 54
    invoke-static {}, Laoj;->b()Laoj;

    move-result-object v0

    invoke-virtual {v0}, Laoj;->d()V

    goto :goto_1

    .line 51
    :cond_4
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    goto :goto_2
.end method
