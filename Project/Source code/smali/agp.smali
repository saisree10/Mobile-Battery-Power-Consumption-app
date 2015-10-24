.class public abstract Lagp;
.super Ljava/lang/Object;
.source "BaseCoinPurchaseHandler.java"


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Ljava/lang/String;

.field protected c:I

.field protected d:Ljava/lang/String;

.field private e:Lcom/dianxinos/common/coins/CoinManager;

.field private f:Lbat;

.field private g:Lbat;

.field private h:Lavc;

.field private i:Landroid/widget/Toast;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lagp;->a:Landroid/content/Context;

    .line 50
    invoke-static {p1}, Lcom/dianxinos/common/coins/CoinManager;->a(Landroid/content/Context;)Lcom/dianxinos/common/coins/CoinManager;

    move-result-object v0

    iput-object v0, p0, Lagp;->e:Lcom/dianxinos/common/coins/CoinManager;

    .line 51
    return-void
.end method

.method static synthetic a(Lagp;Lbat;)Lbat;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lagp;->f:Lbat;

    return-object p1
.end method

.method static synthetic a(Lagp;)Lcom/dianxinos/common/coins/CoinManager;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lagp;->e:Lcom/dianxinos/common/coins/CoinManager;

    return-object v0
.end method

.method static synthetic a(Lagp;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lagp;->c(I)V

    return-void
.end method

.method static synthetic a(Lagp;Landroid/content/Context;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lagp;->b(Landroid/content/Context;II)V

    return-void
.end method

.method static synthetic a(Lagp;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lagp;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 330
    iget-object v0, p0, Lagp;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 331
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    :goto_0
    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lagp;->h:Lavc;

    if-nez v0, :cond_1

    .line 335
    new-instance v0, Lavc;

    iget-object v1, p0, Lagp;->a:Landroid/content/Context;

    sget-object v2, Lly;->j:Lcom/dianxinos/dxbs/R$style;

    const v2, 0x7f0b001a

    invoke-direct {v0, v1, v2}, Lavc;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lagp;->h:Lavc;

    .line 336
    iget-object v0, p0, Lagp;->h:Lavc;

    new-instance v1, Lags;

    invoke-direct {v1, p0}, Lags;-><init>(Lagp;)V

    invoke-virtual {v0, v1}, Lavc;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 351
    :cond_1
    iget-object v0, p0, Lagp;->h:Lavc;

    invoke-virtual {v0, p1}, Lavc;->a(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lagp;->h:Lavc;

    invoke-virtual {v0}, Lavc;->show()V

    goto :goto_0
.end method

.method static synthetic b(Lagp;Lbat;)Lbat;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lagp;->g:Lbat;

    return-object p1
.end method

.method private b(I)V
    .locals 2
    .parameter

    .prologue
    .line 318
    iget-object v0, p0, Lagp;->i:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lagp;->a:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lagp;->i:Landroid/widget/Toast;

    .line 321
    :cond_0
    iget-object v0, p0, Lagp;->i:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 322
    iget-object v0, p0, Lagp;->i:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 323
    return-void
.end method

.method static synthetic b(Lagp;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lagp;->d()V

    return-void
.end method

.method static synthetic b(Lagp;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lagp;->b(I)V

    return-void
.end method

.method private b(Landroid/content/Context;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lagp;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 86
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    new-instance v0, Lagx;

    iget-object v1, p0, Lagp;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p3}, Lagx;-><init>(Landroid/content/Context;II)V

    .line 90
    invoke-virtual {v0}, Lagx;->show()V

    goto :goto_0
.end method

.method static synthetic c(Lagp;)Lbat;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lagp;->f:Lbat;

    return-object v0
.end method

.method private c(I)V
    .locals 1
    .parameter

    .prologue
    .line 326
    iget-object v0, p0, Lagp;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lagp;->a(Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method static synthetic d(Lagp;)Lbat;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lagp;->g:Lbat;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lagp;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 357
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iget-object v0, p0, Lagp;->h:Lavc;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lagp;->h:Lavc;

    invoke-virtual {v0}, Lavc;->dismiss()V

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Lagu;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lagu;-><init>(Lagp;Lagq;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lagu;->c([Ljava/lang/Object;)Lbat;

    move-result-object v0

    iput-object v0, p0, Lagp;->f:Lbat;

    .line 78
    return-void
.end method

.method public a(I)V
    .locals 4
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lagp;->a:Landroid/content/Context;

    invoke-static {v0}, Lazx;->a(Landroid/content/Context;)I

    move-result v0

    .line 55
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 56
    iget-object v0, p0, Lagp;->a:Landroid/content/Context;

    iget-object v1, p0, Lagp;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lme;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a001a

    invoke-direct {p0, v0}, Lagp;->b(I)V

    .line 74
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lagp;->a:Landroid/content/Context;

    const-string v1, "ndpcc"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;II)V

    .line 65
    new-instance v0, Lawe;

    iget-object v1, p0, Lagp;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lagp;->c()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lagq;

    invoke-direct {v3, p0, p1}, Lagq;-><init>(Lagp;I)V

    invoke-direct {v0, v1, p1, v2, v3}, Lawe;-><init>(Landroid/content/Context;ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lawe;->show()V

    goto :goto_0
.end method

.method protected a(Landroid/content/Context;II)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lagp;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 96
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 99
    :cond_0
    new-instance v0, Lauu;

    iget-object v1, p0, Lagp;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lauu;-><init>(Landroid/content/Context;)V

    .line 100
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a02d4

    invoke-virtual {v0, v1}, Lauu;->setTitle(I)V

    .line 101
    invoke-virtual {v0}, Lauu;->e()V

    .line 102
    iget-object v1, p0, Lagp;->a:Landroid/content/Context;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a02d5

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lauu;->c(Ljava/lang/String;)V

    .line 103
    sget-object v1, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v1, 0x7f0900be

    invoke-virtual {v0, v1}, Lauu;->f(I)V

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v2, 0x7f0802a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lauu;->g(I)V

    .line 106
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0027

    new-instance v2, Lagr;

    invoke-direct {v2, p0}, Lagr;-><init>(Lagp;)V

    invoke-virtual {v0, v1, v2}, Lauu;->a(ILandroid/view/View$OnClickListener;)V

    .line 112
    invoke-virtual {v0}, Lauu;->d()V

    .line 114
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0115

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lauu;->b(ILandroid/view/View$OnClickListener;)V

    .line 115
    invoke-virtual {v0}, Lauu;->show()V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 312
    iget-object v0, p0, Lagp;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iput p2, p0, Lagp;->c:I

    .line 315
    :cond_0
    return-void
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Lagt;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lagt;-><init>(Lagp;Lagq;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lagt;->c([Ljava/lang/Object;)Lbat;

    move-result-object v0

    iput-object v0, p0, Lagp;->g:Lbat;

    .line 82
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lagp;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
