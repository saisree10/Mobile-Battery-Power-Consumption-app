.class Lagt;
.super Lbat;
.source "BaseCoinPurchaseHandler.java"


# instance fields
.field final synthetic a:Lagp;


# direct methods
.method private constructor <init>(Lagp;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lagt;->a:Lagp;

    invoke-direct {p0}, Lbat;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lagp;Lagq;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lagt;-><init>(Lagp;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 258
    iget-object v0, p0, Lagt;->a:Lagp;

    invoke-static {v0}, Lagp;->a(Lagp;)Lcom/dianxinos/common/coins/CoinManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/common/coins/CoinManager;->a()I

    move-result v0

    .line 259
    iget-object v1, p0, Lagt;->a:Lagp;

    iget v1, v1, Lagp;->c:I

    if-le v1, v0, :cond_0

    .line 260
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 282
    :goto_0
    return-object v0

    .line 262
    :cond_0
    iget-object v0, p0, Lagt;->a:Lagp;

    invoke-static {v0}, Lagp;->a(Lagp;)Lcom/dianxinos/common/coins/CoinManager;

    move-result-object v0

    iget-object v1, p0, Lagt;->a:Lagp;

    iget-object v1, v1, Lagp;->b:Ljava/lang/String;

    iget-object v2, p0, Lagt;->a:Lagp;

    iget-object v2, v2, Lagp;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/dianxinos/common/coins/CoinManager;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/dianxinos/common/coins/CoinManager$RequestResult;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 266
    iget v1, v0, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->a:I

    .line 268
    iget-object v2, p0, Lagt;->a:Lagp;

    invoke-static {v2}, Lagp;->a(Lagp;)Lcom/dianxinos/common/coins/CoinManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/dianxinos/common/coins/CoinManager;->a(I)V

    .line 269
    iget-object v1, p0, Lagt;->a:Lagp;

    iget-object v1, v1, Lagp;->a:Landroid/content/Context;

    const-string v2, "__TOTAL__"

    invoke-static {v1, v0, v2}, Lcom/dianxinos/common/coins/CoinManager;->a(Landroid/content/Context;Lcom/dianxinos/common/coins/CoinManager$RequestResult;Ljava/lang/String;)V

    .line 274
    :cond_1
    iget-object v1, p0, Lagt;->a:Lagp;

    iget-object v1, v1, Lagp;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/dianxinos/common/coins/CoinManager;->a(Landroid/content/Context;Lcom/dianxinos/common/coins/CoinManager$RequestResult;)V

    .line 275
    invoke-virtual {v0}, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 276
    iget-object v0, p0, Lagt;->a:Lagp;

    iget-object v0, v0, Lagp;->a:Landroid/content/Context;

    iget-object v1, p0, Lagt;->a:Lagp;

    iget-object v1, v1, Lagp;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lme;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 277
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 278
    :cond_2
    iget v0, v0, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->c:I

    const/16 v1, 0x1a4

    if-ne v0, v1, :cond_3

    .line 279
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 281
    :cond_3
    iget-object v0, p0, Lagt;->a:Lagp;

    iget-object v0, v0, Lagp;->a:Landroid/content/Context;

    iget-object v1, p0, Lagt;->a:Lagp;

    iget-object v1, v1, Lagp;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lme;->g(Landroid/content/Context;Ljava/lang/String;)V

    .line 282
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 246
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lagt;->a([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lagt;->a:Lagp;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a02da

    invoke-static {v0, v1}, Lagp;->a(Lagp;I)V

    .line 254
    return-void
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 4
    .parameter

    .prologue
    .line 288
    invoke-virtual {p0}, Lagt;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    :goto_0
    return-void

    .line 292
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 293
    iget-object v0, p0, Lagt;->a:Lagp;

    invoke-static {v0}, Lagp;->a(Lagp;)Lcom/dianxinos/common/coins/CoinManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/common/coins/CoinManager;->a()I

    move-result v0

    .line 294
    iget-object v1, p0, Lagt;->a:Lagp;

    iget-object v1, v1, Lagp;->a:Landroid/content/Context;

    iget-object v2, p0, Lagt;->a:Lagp;

    iget-object v2, v2, Lagp;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lme;->f(Landroid/content/Context;Ljava/lang/String;)V

    .line 295
    iget-object v1, p0, Lagt;->a:Lagp;

    iget-object v2, p0, Lagt;->a:Lagp;

    iget-object v2, v2, Lagp;->a:Landroid/content/Context;

    iget-object v3, p0, Lagt;->a:Lagp;

    iget v3, v3, Lagp;->c:I

    sub-int/2addr v3, v0

    invoke-static {v1, v2, v3, v0}, Lagp;->a(Lagp;Landroid/content/Context;II)V

    .line 302
    :cond_1
    :goto_1
    iget-object v0, p0, Lagt;->a:Lagp;

    invoke-static {v0}, Lagp;->b(Lagp;)V

    .line 303
    iget-object v0, p0, Lagt;->a:Lagp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lagp;->b(Lagp;Lbat;)Lbat;

    goto :goto_0

    .line 296
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 297
    iget-object v0, p0, Lagt;->a:Lagp;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a02db

    invoke-static {v0, v1}, Lagp;->b(Lagp;I)V

    goto :goto_1

    .line 298
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 299
    iget-object v0, p0, Lagt;->a:Lagp;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a02dc

    invoke-static {v0, v1}, Lagp;->b(Lagp;I)V

    goto :goto_1
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lagt;->a(Ljava/lang/Integer;)V

    return-void
.end method
