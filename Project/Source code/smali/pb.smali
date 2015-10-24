.class final Lpb;
.super Ljava/lang/Object;
.source "ToolboxManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lns;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lns;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lpb;->a:Lns;

    iput-object p2, p0, Lpb;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lns;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 280
    iget-wide v0, p2, Lns;->d:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-static {p1}, Lmf;->a(Landroid/content/Context;)Lmf;

    move-result-object v1

    .line 283
    invoke-static {p1}, Loq;->a(Landroid/content/Context;)Loq;

    move-result-object v2

    .line 284
    const-string v3, "22"

    invoke-virtual {v1, v0, v3}, Lmf;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 285
    const-string v4, "ToolboxManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Try Gain coin pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lns;->f:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";points="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lns;->e:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";isGained="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    if-nez v3, :cond_3

    .line 289
    invoke-static {p1}, Lcom/dianxinos/common/coins/CoinManager;->a(Landroid/content/Context;)Lcom/dianxinos/common/coins/CoinManager;

    move-result-object v3

    .line 290
    const-string v4, "22"

    invoke-virtual {v3, v0, v4}, Lcom/dianxinos/common/coins/CoinManager;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/dianxinos/common/coins/CoinManager$RequestResult;

    move-result-object v4

    .line 292
    invoke-virtual {v4}, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->c()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 293
    iget v5, v4, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->a:I

    invoke-virtual {v3, v5}, Lcom/dianxinos/common/coins/CoinManager;->a(I)V

    .line 297
    :cond_0
    iget v3, v4, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->c:I

    const/16 v5, 0x19c

    if-eq v3, v5, :cond_1

    iget v3, v4, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->c:I

    const/16 v5, 0xc8

    if-ne v3, v5, :cond_2

    .line 300
    :cond_1
    const-string v3, "22"

    invoke-virtual {v1, v0, v3}, Lmf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v0, p2, Lns;->f:Ljava/lang/String;

    invoke-virtual {v2, v0}, Loq;->h(Ljava/lang/String;)V

    .line 306
    :cond_2
    invoke-static {p1, v4}, Lcom/dianxinos/common/coins/CoinManager;->b(Landroid/content/Context;Lcom/dianxinos/common/coins/CoinManager$RequestResult;)V

    .line 311
    :goto_0
    return-void

    .line 309
    :cond_3
    iget-object v0, p2, Lns;->f:Ljava/lang/String;

    invoke-virtual {v2, v0}, Loq;->h(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 260
    iget-object v0, p0, Lpb;->a:Lns;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lpb;->b:Landroid/content/Context;

    iget-object v1, p0, Lpb;->a:Lns;

    invoke-virtual {p0, v0, v1}, Lpb;->a(Landroid/content/Context;Lns;)V

    .line 263
    invoke-static {}, Lpa;->f()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 266
    :cond_0
    invoke-static {}, Lpa;->g()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 268
    :try_start_0
    iget-object v0, p0, Lpb;->b:Landroid/content/Context;

    invoke-static {v0}, Loq;->a(Landroid/content/Context;)Loq;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Loq;->c()Ljava/util/List;

    move-result-object v0

    .line 271
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lns;

    .line 272
    iget-object v3, p0, Lpb;->b:Landroid/content/Context;

    invoke-virtual {p0, v3, v0}, Lpb;->a(Landroid/content/Context;Lns;)V

    .line 273
    invoke-static {}, Lpa;->f()I

    move-result v0

    int-to-long v3, v0

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    return-void
.end method
