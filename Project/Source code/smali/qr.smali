.class Lqr;
.super Landroid/os/AsyncTask;
.source "ToolboxListGoldActivity.java"


# instance fields
.field final synthetic a:Lqp;


# direct methods
.method private constructor <init>(Lqp;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lqr;->a:Lqp;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lqp;Lqq;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lqr;-><init>(Lqp;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-virtual {p0}, Lqr;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, -0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 67
    :goto_0
    return-object v0

    .line 51
    :cond_0
    iget-object v0, p0, Lqr;->a:Lqp;

    invoke-virtual {v0}, Lqp;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lom;->b(Landroid/content/Context;J)V

    .line 54
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lom;->a(Landroid/content/Context;Z)V

    .line 56
    invoke-static {v0}, Lpf;->b(Landroid/content/Context;)V

    .line 57
    invoke-static {v0}, Lcom/dianxinos/common/coins/CoinManager;->a(Landroid/content/Context;)Lcom/dianxinos/common/coins/CoinManager;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Lcom/dianxinos/common/coins/CoinManager;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dianxinos/common/coins/CoinManager$RequestResult;

    move-result-object v1

    .line 59
    const/16 v2, 0xc8

    iget v3, v1, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->c:I

    if-ne v2, v3, :cond_1

    iget v2, v1, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->a:I

    if-ltz v2, :cond_1

    .line 60
    invoke-static {v0}, Lcom/dianxinos/common/coins/CoinManager;->a(Landroid/content/Context;)Lcom/dianxinos/common/coins/CoinManager;

    move-result-object v2

    iget v3, v1, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->a:I

    invoke-virtual {v2, v3}, Lcom/dianxinos/common/coins/CoinManager;->a(I)V

    .line 61
    const-string v2, "__TOTAL__"

    invoke-static {v0, v1, v2}, Lcom/dianxinos/common/coins/CoinManager;->a(Landroid/content/Context;Lcom/dianxinos/common/coins/CoinManager$RequestResult;Ljava/lang/String;)V

    .line 64
    invoke-static {v0}, Lpf;->c(Landroid/content/Context;)V

    .line 65
    iget v0, v1, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 67
    :cond_1
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 5
    .parameter

    .prologue
    .line 73
    invoke-virtual {p0}, Lqr;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lqr;->a:Lqp;

    invoke-virtual {v0}, Lqp;->j()V

    .line 77
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_1

    .line 78
    iget-object v0, p0, Lqr;->a:Lqp;

    iget-object v1, p0, Lqr;->a:Lqp;

    sget v2, Lok;->check_total_coin_changed:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lqp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqp;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p0, Lqr;->a:Lqp;

    sget v1, Lok;->check_sync_failed:I

    invoke-virtual {v0, v1}, Lqp;->b(I)V

    goto :goto_0
.end method

.method public a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0}, Lqr;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lqr;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Lqr;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 35
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lqr;->a([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lqr;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lqr;->a:Lqp;

    sget v1, Lok;->check_syncing:I

    invoke-virtual {v0, v1}, Lqp;->a(I)V

    .line 39
    return-void
.end method
