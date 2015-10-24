.class public Labo;
.super Ljava/lang/Object;
.source "PowerMgrTabActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Labo;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 244
    iget-object v0, p0, Labo;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v0}, Lcom/dianxinos/common/coins/CoinManager;->a(Landroid/content/Context;)Lcom/dianxinos/common/coins/CoinManager;

    move-result-object v0

    .line 246
    iget-object v1, p0, Labo;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->l(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "11"

    invoke-virtual {v0, v1, v2}, Lcom/dianxinos/common/coins/CoinManager;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/dianxinos/common/coins/CoinManager$RequestResult;

    move-result-object v1

    .line 248
    invoke-virtual {v1}, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    iget v2, v1, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->a:I

    invoke-virtual {v0, v2}, Lcom/dianxinos/common/coins/CoinManager;->a(I)V

    .line 251
    :cond_0
    iget-object v0, p0, Labo;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v0, v1}, Lcom/dianxinos/common/coins/CoinManager;->b(Landroid/content/Context;Lcom/dianxinos/common/coins/CoinManager$RequestResult;)V

    .line 252
    return-void
.end method
