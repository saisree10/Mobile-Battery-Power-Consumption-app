.class public Lapm;
.super Lmc;
.source "OperationConfigActivity.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lapm;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-direct {p0}, Lmc;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/dianxinos/common/coins/CoinManager$RequestResult;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-virtual {p2}, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lapm;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    iget-object v1, p2, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->a(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lapm;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->d()V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Lapm;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->a(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;)Ladp;

    move-result-object v0

    invoke-virtual {v0}, Ladp;->m()J

    move-result-wide v0

    .line 100
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lapm;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->a(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;)Ladp;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Ladp;->b(J)V

    .line 102
    iget-object v0, p0, Lapm;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->a(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;)Ladp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ladp;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/dianxinos/common/coins/CoinManager$RequestResult;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    invoke-virtual {p2}, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lapm;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    iget-object v1, p2, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->a(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lapm;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->d()V

    .line 113
    :cond_0
    return-void
.end method
