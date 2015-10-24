.class public abstract Lmc;
.super Landroid/content/BroadcastReceiver;
.source "CoinManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 620
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/dianxinos/common/coins/CoinManager$RequestResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 641
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/dianxinos/common/coins/CoinManager$RequestResult;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 649
    return-void
.end method

.method public b(Landroid/content/Context;Lcom/dianxinos/common/coins/CoinManager$RequestResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 645
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 623
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 624
    const-string v0, "result_data"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/common/coins/CoinManager$RequestResult;

    .line 626
    const-string v2, "com.dianxinos.common.toolbox.ACTION_COIN_CONSUME"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 627
    invoke-virtual {p0, p1, v0}, Lmc;->a(Landroid/content/Context;Lcom/dianxinos/common/coins/CoinManager$RequestResult;)V

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 628
    :cond_1
    const-string v2, "com.dianxinos.common.toolbox.ACTION_COIN_GAIN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 629
    invoke-virtual {p0, p1, v0}, Lmc;->b(Landroid/content/Context;Lcom/dianxinos/common/coins/CoinManager$RequestResult;)V

    goto :goto_0

    .line 630
    :cond_2
    const-string v2, "com.dianxinos.common.toolbox.ACTION_COIN_SYNC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 631
    const-string v1, "result_type"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 632
    if-nez v1, :cond_3

    .line 633
    const-string v1, "__TOTAL__"

    .line 635
    :cond_3
    invoke-virtual {p0, p1, v0, v1}, Lmc;->a(Landroid/content/Context;Lcom/dianxinos/common/coins/CoinManager$RequestResult;Ljava/lang/String;)V

    goto :goto_0
.end method
