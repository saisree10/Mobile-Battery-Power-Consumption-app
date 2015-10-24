.class public Lmb;
.super Ljava/lang/Object;
.source "CoinManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dianxinos/common/coins/CoinManager;


# direct methods
.method public constructor <init>(Lcom/dianxinos/common/coins/CoinManager;)V
    .locals 0
    .parameter

    .prologue
    .line 519
    iput-object p1, p0, Lmb;->a:Lcom/dianxinos/common/coins/CoinManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 522
    iget-object v0, p0, Lmb;->a:Lcom/dianxinos/common/coins/CoinManager;

    invoke-virtual {v0, v1, v1}, Lcom/dianxinos/common/coins/CoinManager;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dianxinos/common/coins/CoinManager$RequestResult;

    move-result-object v0

    .line 523
    iget v1, v0, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->a:I

    if-ltz v1, :cond_0

    .line 524
    iget-object v1, p0, Lmb;->a:Lcom/dianxinos/common/coins/CoinManager;

    iget v2, v0, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->a:I

    invoke-virtual {v1, v2}, Lcom/dianxinos/common/coins/CoinManager;->a(I)V

    .line 525
    iget-object v1, p0, Lmb;->a:Lcom/dianxinos/common/coins/CoinManager;

    invoke-static {v1}, Lcom/dianxinos/common/coins/CoinManager;->a(Lcom/dianxinos/common/coins/CoinManager;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "__TOTAL__"

    invoke-static {v1, v0, v2}, Lcom/dianxinos/common/coins/CoinManager;->a(Landroid/content/Context;Lcom/dianxinos/common/coins/CoinManager$RequestResult;Ljava/lang/String;)V

    .line 529
    :cond_0
    return-void
.end method
