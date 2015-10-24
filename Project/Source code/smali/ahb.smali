.class public Lahb;
.super Lagp;
.source "SmartSettingCoinPurchaseHandler.java"


# instance fields
.field private e:Laoe;

.field private f:Laut;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lagp;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-static {p2}, Laoe;->a(Ljava/lang/String;)Laoe;

    move-result-object v0

    iput-object v0, p0, Lahb;->e:Laoe;

    .line 23
    iget-object v0, p0, Lahb;->e:Laoe;

    invoke-virtual {v0}, Laoe;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lahb;->b:Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lahb;->e:Laoe;

    invoke-static {p1, v0}, Laod;->a(Landroid/content/Context;Laoe;)I

    move-result v0

    iput v0, p0, Lahb;->c:I

    .line 25
    const-string v0, "10"

    iput-object v0, p0, Lahb;->d:Ljava/lang/String;

    .line 26
    return-void
.end method

.method static synthetic a(Lahb;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Lahb;->f()V

    return-void
.end method

.method private a(Laoe;Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lahb;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 91
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 95
    :cond_0
    new-instance v0, Laut;

    iget-object v1, p0, Lahb;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Laut;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lahb;->f:Laut;

    .line 96
    iget-object v0, p0, Lahb;->f:Laut;

    invoke-virtual {p1}, Laoe;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Laut;->setTitle(I)V

    .line 97
    iget-object v0, p0, Lahb;->f:Laut;

    invoke-virtual {p1}, Laoe;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Laut;->b(I)V

    .line 98
    iget-object v0, p0, Lahb;->f:Laut;

    invoke-virtual {p1}, Laoe;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Laut;->a(I)V

    .line 99
    iget-object v0, p0, Lahb;->f:Laut;

    iget v1, p0, Lahb;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laut;->a(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lahb;->f:Laut;

    invoke-virtual {v0, p2}, Laut;->a(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lahb;->f:Laut;

    invoke-virtual {v0}, Laut;->show()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Laoe;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 52
    sget-object v0, Laoe;->a:Laoe;

    invoke-virtual {v0}, Laoe;->b()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {p0}, Lcom/dianxinos/common/coins/CoinManager;->a(Landroid/content/Context;)Lcom/dianxinos/common/coins/CoinManager;

    move-result-object v2

    .line 55
    const-string v3, "10"

    invoke-virtual {v2, v3, v0}, Lcom/dianxinos/common/coins/CoinManager;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 73
    :goto_0
    return v0

    .line 59
    :cond_0
    sget-object v0, Laoe;->a:Laoe;

    if-ne p1, v0, :cond_3

    .line 62
    invoke-static {}, Laoe;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoe;

    .line 63
    invoke-virtual {v0}, Laoe;->b()Ljava/lang/String;

    move-result-object v0

    .line 65
    const-string v4, "10"

    invoke-virtual {v2, v4, v0}, Lcom/dianxinos/common/coins/CoinManager;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 70
    goto :goto_0

    .line 72
    :cond_3
    invoke-virtual {p1}, Laoe;->b()Ljava/lang/String;

    move-result-object v0

    .line 73
    const-string v1, "10"

    invoke-virtual {v2, v1, v0}, Lcom/dianxinos/common/coins/CoinManager;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lahb;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 106
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lahb;->f:Laut;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lahb;->f:Laut;

    invoke-virtual {v0}, Laut;->dismiss()V

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/content/Context;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lahb;->a:Landroid/content/Context;

    iget-object v1, p0, Lahb;->e:Laoe;

    invoke-static {v0, v1, p3}, Laod;->a(Landroid/content/Context;Laoe;I)I

    .line 119
    iget-object v0, p0, Lahb;->e:Laoe;

    invoke-virtual {v0}, Laoe;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lahb;->a(Ljava/lang/String;I)V

    .line 120
    invoke-super {p0, p1, p2, p3}, Lagp;->a(Landroid/content/Context;II)V

    .line 121
    return-void
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lahb;->a:Landroid/content/Context;

    invoke-static {v0}, Lakx;->a(Landroid/content/Context;)Lakx;

    move-result-object v0

    invoke-virtual {v0}, Lakx;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x1

    .line 48
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lahb;->a:Landroid/content/Context;

    iget-object v1, p0, Lahb;->e:Laoe;

    invoke-static {v0, v1}, Lahb;->a(Landroid/content/Context;Laoe;)Z

    move-result v0

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lahb;->a:Landroid/content/Context;

    iget-object v1, p0, Lahb;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lme;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lahb;->e:Laoe;

    new-instance v1, Lahc;

    invoke-direct {v1, p0}, Lahc;-><init>(Lahb;)V

    invoke-direct {p0, v0, v1}, Lahb;->a(Laoe;Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method
