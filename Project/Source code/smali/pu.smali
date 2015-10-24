.class final Lpu;
.super Ljava/lang/Object;
.source "RefreshBalanceBackgroundPuller.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lpu;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 40
    iget-object v2, p0, Lpu;->a:Landroid/content/Context;

    invoke-static {v2}, Lom;->f(Landroid/content/Context;)J

    move-result-wide v2

    .line 41
    iget-object v4, p0, Lpu;->a:Landroid/content/Context;

    invoke-static {v4}, Lom;->g(Landroid/content/Context;)Z

    move-result v5

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    .line 45
    if-eqz v5, :cond_0

    const-wide/32 v2, 0x1b7740

    move-wide v3, v2

    .line 46
    :goto_0
    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-lez v2, :cond_1

    move v2, v0

    :goto_1
    cmp-long v3, v8, v3

    if-gez v3, :cond_2

    :goto_2
    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    .line 47
    const-string v0, "RefreshBalanceBackgroundPuller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pull time limit, skip this request. tapjoy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lpt;->a()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 49
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lpt;->a(Z)Z

    .line 50
    monitor-exit v1

    .line 69
    :goto_3
    return-void

    .line 45
    :cond_0
    const-wide/32 v2, 0x6ddd00

    move-wide v3, v2

    goto :goto_0

    :cond_1
    move v2, v1

    .line 46
    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 54
    :cond_3
    iget-object v0, p0, Lpu;->a:Landroid/content/Context;

    invoke-static {v0, v6, v7}, Lom;->b(Landroid/content/Context;J)V

    .line 55
    iget-object v0, p0, Lpu;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lom;->a(Landroid/content/Context;Z)V

    .line 57
    iget-object v0, p0, Lpu;->a:Landroid/content/Context;

    invoke-static {v0}, Lpf;->a(Landroid/content/Context;)V

    .line 58
    iget-object v0, p0, Lpu;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/common/coins/CoinManager;->a(Landroid/content/Context;)Lcom/dianxinos/common/coins/CoinManager;

    move-result-object v0

    invoke-virtual {v0, v12, v12}, Lcom/dianxinos/common/coins/CoinManager;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dianxinos/common/coins/CoinManager$RequestResult;

    move-result-object v0

    .line 59
    const/16 v1, 0xc8

    iget v2, v0, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->c:I

    if-ne v1, v2, :cond_4

    .line 60
    iget-object v1, p0, Lpu;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/dianxinos/common/coins/CoinManager;->a(Landroid/content/Context;)Lcom/dianxinos/common/coins/CoinManager;

    move-result-object v1

    iget v2, v0, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->a:I

    invoke-virtual {v1, v2}, Lcom/dianxinos/common/coins/CoinManager;->a(I)V

    .line 61
    iget-object v1, p0, Lpu;->a:Landroid/content/Context;

    const-string v2, "__TOTAL__"

    invoke-static {v1, v0, v2}, Lcom/dianxinos/common/coins/CoinManager;->a(Landroid/content/Context;Lcom/dianxinos/common/coins/CoinManager$RequestResult;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lpu;->a:Landroid/content/Context;

    invoke-static {v0}, Lpf;->c(Landroid/content/Context;)V

    .line 65
    :cond_4
    const-string v0, "RefreshBalanceBackgroundPuller"

    const-string v1, "Refresh DU Coins in background end"

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lpt;->a()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 67
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Lpt;->a(Z)Z

    .line 68
    monitor-exit v1

    goto :goto_3

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method
