.class public Labt;
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
    .line 552
    iput-object p1, p0, Labt;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 555
    iget-object v0, p0, Labt;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->m(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)Lcom/dianxinos/common/coins/CoinManager;

    move-result-object v0

    sget-object v1, Loo;->a:Loo;

    invoke-virtual {v0, v1}, Lcom/dianxinos/common/coins/CoinManager;->a(Loo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Labt;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->m(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)Lcom/dianxinos/common/coins/CoinManager;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/dianxinos/common/coins/CoinManager;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dianxinos/common/coins/CoinManager$RequestResult;

    .line 558
    :cond_0
    iget-object v0, p0, Labt;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->m(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)Lcom/dianxinos/common/coins/CoinManager;

    move-result-object v0

    sget-object v1, Loo;->b:Loo;

    invoke-virtual {v0, v1}, Lcom/dianxinos/common/coins/CoinManager;->a(Loo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 559
    iget-object v0, p0, Labt;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v0}, Lpa;->a(Landroid/content/Context;)Lpa;

    iget-object v0, p0, Labt;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v0, v2}, Lpa;->a(Landroid/content/Context;Lns;)V

    .line 562
    :cond_1
    iget-object v0, p0, Labt;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->m(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)Lcom/dianxinos/common/coins/CoinManager;

    move-result-object v0

    sget-object v1, Loo;->c:Loo;

    invoke-virtual {v0, v1}, Lcom/dianxinos/common/coins/CoinManager;->a(Loo;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lazu;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 563
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 564
    iget-object v0, p0, Labt;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->m(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)Lcom/dianxinos/common/coins/CoinManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/common/coins/CoinManager;->f()Ljava/util/ArrayList;

    move-result-object v0

    .line 565
    if-eqz v0, :cond_2

    .line 566
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 568
    :try_start_0
    new-instance v3, Laev;

    invoke-direct {v3, v0}, Laev;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 569
    :catch_0
    move-exception v0

    goto :goto_0

    .line 574
    :cond_2
    iget-object v0, p0, Labt;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->n(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)Ladp;

    move-result-object v0

    invoke-virtual {v0}, Ladp;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 575
    iget-object v0, p0, Labt;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->n(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)Ladp;

    move-result-object v0

    invoke-virtual {v0}, Ladp;->p()V

    .line 576
    iget-object v0, p0, Labt;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->o(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)Laoj;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Laoj;->a(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 577
    iget-object v2, p0, Labt;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v2}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->p(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)Lmf;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmf;->a(Ljava/util/List;)V

    .line 579
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laev;

    .line 580
    iget-object v2, p0, Labt;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v2}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->p(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)Lmf;

    move-result-object v2

    iget-wide v3, v0, Laev;->u:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "9"

    invoke-virtual {v2, v3, v4}, Lmf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    iget-object v2, p0, Labt;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v2}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->o(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)Laoj;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoj;->a(Laev;)V

    goto :goto_1

    .line 586
    :cond_4
    iget-object v0, p0, Labt;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v0}, Lany;->a(Landroid/content/Context;)Lany;

    move-result-object v0

    invoke-virtual {v0}, Lany;->c()V

    .line 587
    return-void
.end method
