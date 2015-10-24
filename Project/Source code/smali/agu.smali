.class Lagu;
.super Lbat;
.source "BaseCoinPurchaseHandler.java"


# instance fields
.field final synthetic a:Lagp;


# direct methods
.method private constructor <init>(Lagp;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lagu;->a:Lagp;

    invoke-direct {p0}, Lbat;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lagp;Lagq;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lagu;-><init>(Lagp;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lagv;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 139
    new-array v0, v7, [Ljava/lang/Integer;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-virtual {p0, v0}, Lagu;->d([Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lagu;->a:Lagp;

    invoke-static {v0}, Lagp;->a(Lagp;)Lcom/dianxinos/common/coins/CoinManager;

    move-result-object v0

    iget-object v1, p0, Lagu;->a:Lagp;

    iget-object v1, v1, Lagp;->b:Ljava/lang/String;

    iget-object v2, p0, Lagu;->a:Lagp;

    iget-object v2, v2, Lagp;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/dianxinos/common/coins/CoinManager;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dianxinos/common/coins/CoinManager$RequestResult;

    move-result-object v0

    .line 141
    new-instance v1, Lagv;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lagv;-><init>(Lagq;)V

    .line 142
    iget v2, v0, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->c:I

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_1

    .line 144
    iget v0, v0, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->c:I

    const/16 v2, 0x194

    if-ne v0, v2, :cond_0

    const/16 v0, 0x1f

    :goto_0
    iput v0, v1, Lagv;->a:I

    move-object v0, v1

    .line 193
    :goto_1
    return-object v0

    .line 144
    :cond_0
    const/16 v0, 0x1e

    goto :goto_0

    .line 149
    :cond_1
    iget v2, v0, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->a:I

    .line 150
    iget-object v3, p0, Lagu;->a:Lagp;

    invoke-static {v3}, Lagp;->a(Lagp;)Lcom/dianxinos/common/coins/CoinManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dianxinos/common/coins/CoinManager;->a()I

    move-result v3

    .line 152
    iget-object v4, p0, Lagu;->a:Lagp;

    invoke-static {v4}, Lagp;->a(Lagp;)Lcom/dianxinos/common/coins/CoinManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/dianxinos/common/coins/CoinManager;->a(I)V

    .line 154
    invoke-virtual {p0}, Lagu;->d()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 155
    iput v5, v1, Lagv;->a:I

    move-object v0, v1

    .line 156
    goto :goto_1

    .line 159
    :cond_2
    if-eq v3, v2, :cond_3

    .line 160
    iget-object v3, p0, Lagu;->a:Lagp;

    iget-object v3, v3, Lagp;->a:Landroid/content/Context;

    invoke-static {v3}, Lme;->c(Landroid/content/Context;)V

    .line 161
    iget-object v3, p0, Lagu;->a:Lagp;

    iget-object v3, v3, Lagp;->a:Landroid/content/Context;

    const-string v4, "__TOTAL__"

    invoke-static {v3, v0, v4}, Lcom/dianxinos/common/coins/CoinManager;->a(Landroid/content/Context;Lcom/dianxinos/common/coins/CoinManager$RequestResult;Ljava/lang/String;)V

    .line 164
    new-array v3, v7, [Ljava/lang/Integer;

    const/16 v4, 0xb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v6

    invoke-virtual {p0, v3}, Lagu;->d([Ljava/lang/Object;)V

    .line 166
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 170
    :cond_3
    new-array v2, v7, [Ljava/lang/Integer;

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v2}, Lagu;->d([Ljava/lang/Object;)V

    .line 172
    iget v2, v0, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->g:I

    .line 173
    iget-object v3, p0, Lagu;->a:Lagp;

    iget v3, v3, Lagp;->c:I

    .line 175
    iget-object v4, p0, Lagu;->a:Lagp;

    iput v2, v4, Lagp;->c:I

    .line 177
    invoke-virtual {p0}, Lagu;->d()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 178
    iput v5, v1, Lagv;->a:I

    move-object v0, v1

    .line 179
    goto :goto_1

    .line 182
    :cond_4
    if-eq v2, v3, :cond_5

    .line 184
    iget-object v4, p0, Lagu;->a:Lagp;

    iget-object v4, v4, Lagp;->a:Landroid/content/Context;

    iget-object v5, p0, Lagu;->a:Lagp;

    iget-object v5, v5, Lagp;->d:Ljava/lang/String;

    invoke-static {v4, v0, v5}, Lcom/dianxinos/common/coins/CoinManager;->a(Landroid/content/Context;Lcom/dianxinos/common/coins/CoinManager$RequestResult;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lagu;->a:Lagp;

    iget-object v0, v0, Lagp;->a:Landroid/content/Context;

    invoke-static {v0}, Lme;->d(Landroid/content/Context;)V

    .line 187
    const/16 v0, 0x15

    iput v0, v1, Lagv;->a:I

    .line 188
    iput v3, v1, Lagv;->b:I

    .line 189
    iput v2, v1, Lagv;->c:I

    move-object v0, v1

    .line 190
    goto/16 :goto_1

    .line 192
    :cond_5
    const/16 v0, 0x16

    iput v0, v1, Lagv;->a:I

    move-object v0, v1

    .line 193
    goto/16 :goto_1
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 118
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lagu;->a([Ljava/lang/Void;)Lagv;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lagu;->a:Lagp;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0026

    invoke-static {v0, v1}, Lagp;->a(Lagp;I)V

    .line 134
    return-void
.end method

.method protected a(Lagv;)V
    .locals 4
    .parameter

    .prologue
    .line 222
    invoke-virtual {p0}, Lagu;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    :goto_0
    return-void

    .line 226
    :cond_0
    iget v0, p1, Lagv;->a:I

    .line 227
    const/16 v1, 0x16

    if-ne v0, v1, :cond_2

    .line 228
    iget-object v0, p0, Lagu;->a:Lagp;

    invoke-virtual {v0}, Lagp;->b()V

    .line 242
    :cond_1
    :goto_1
    iget-object v0, p0, Lagu;->a:Lagp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lagp;->a(Lagp;Lbat;)Lbat;

    goto :goto_0

    .line 229
    :cond_2
    const/16 v1, 0x15

    if-ne v0, v1, :cond_3

    .line 230
    iget v0, p1, Lagv;->b:I

    .line 231
    iget v1, p1, Lagv;->c:I

    .line 232
    iget-object v2, p0, Lagu;->a:Lagp;

    iget-object v3, p0, Lagu;->a:Lagp;

    iget-object v3, v3, Lagp;->a:Landroid/content/Context;

    invoke-virtual {v2, v3, v0, v1}, Lagp;->a(Landroid/content/Context;II)V

    .line 233
    iget-object v0, p0, Lagu;->a:Lagp;

    invoke-static {v0}, Lagp;->b(Lagp;)V

    goto :goto_1

    .line 234
    :cond_3
    const/16 v1, 0x1e

    if-ne v0, v1, :cond_4

    .line 235
    iget-object v0, p0, Lagu;->a:Lagp;

    invoke-static {v0}, Lagp;->b(Lagp;)V

    .line 236
    iget-object v0, p0, Lagu;->a:Lagp;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0029

    invoke-static {v0, v1}, Lagp;->b(Lagp;I)V

    goto :goto_1

    .line 237
    :cond_4
    const/16 v1, 0x1f

    if-ne v0, v1, :cond_1

    .line 238
    iget-object v0, p0, Lagu;->a:Lagp;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0028

    invoke-static {v0, v1}, Lagp;->b(Lagp;I)V

    .line 239
    iget-object v0, p0, Lagu;->a:Lagp;

    invoke-static {v0}, Lagp;->b(Lagp;)V

    goto :goto_1
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    check-cast p1, Lagv;

    invoke-virtual {p0, p1}, Lagu;->a(Lagv;)V

    return-void
.end method

.method protected varargs a([Ljava/lang/Integer;)V
    .locals 6
    .parameter

    .prologue
    const v2, 0x7f0a0026

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 202
    aget-object v0, p1, v5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 203
    aget-object v1, p1, v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 204
    sparse-switch v0, :sswitch_data_0

    .line 218
    :goto_0
    return-void

    .line 207
    :sswitch_0
    iget-object v0, p0, Lagu;->a:Lagp;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    invoke-static {v0, v2}, Lagp;->a(Lagp;I)V

    goto :goto_0

    .line 210
    :sswitch_1
    iget-object v0, p0, Lagu;->a:Lagp;

    iget-object v2, p0, Lagu;->a:Lagp;

    iget-object v2, v2, Lagp;->a:Landroid/content/Context;

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a002a

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lagp;->a(Lagp;Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :sswitch_2
    iget-object v0, p0, Lagu;->a:Lagp;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    invoke-static {v0, v2}, Lagp;->a(Lagp;I)V

    goto :goto_0

    .line 204
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xb -> :sswitch_1
        0x14 -> :sswitch_2
    .end sparse-switch
.end method

.method protected synthetic b([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lagu;->a([Ljava/lang/Integer;)V

    return-void
.end method
