.class public Laqy;
.super Lbz;
.source "SkinShopViewPager.java"


# instance fields
.field final synthetic b:Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;)V
    .locals 0
    .parameter

    .prologue
    .line 2759
    iput-object p1, p0, Laqy;->b:Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;

    invoke-direct {p0}, Lbz;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ler;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 2769
    invoke-super {p0, p1, p2}, Lbz;->a(Landroid/view/View;Ler;)V

    .line 2770
    const-class v1, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ler;->a(Ljava/lang/CharSequence;)V

    .line 2771
    iget-object v1, p0, Laqy;->b:Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;

    invoke-static {v1}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->b(Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;)Laqp;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Laqy;->b:Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;

    invoke-static {v1}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->b(Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;)Laqp;

    move-result-object v1

    invoke-virtual {v1}, Laqp;->c()I

    move-result v1

    if-le v1, v0, :cond_2

    :goto_0
    invoke-virtual {p2, v0}, Ler;->a(Z)V

    .line 2772
    iget-object v0, p0, Laqy;->b:Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;

    invoke-static {v0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->b(Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;)Laqp;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laqy;->b:Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;

    invoke-static {v0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->c(Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Laqy;->b:Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;

    invoke-static {v0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->c(Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;)I

    move-result v0

    iget-object v1, p0, Laqy;->b:Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;

    invoke-static {v1}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->b(Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;)Laqp;

    move-result-object v1

    invoke-virtual {v1}, Laqp;->c()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 2773
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Ler;->a(I)V

    .line 2775
    :cond_0
    iget-object v0, p0, Laqy;->b:Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;

    invoke-static {v0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->b(Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;)Laqp;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Laqy;->b:Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;

    invoke-static {v0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->c(Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Laqy;->b:Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;

    invoke-static {v0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->c(Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;)I

    move-result v0

    iget-object v1, p0, Laqy;->b:Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;

    invoke-static {v1}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->b(Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;)Laqp;

    move-result-object v1

    invoke-virtual {v1}, Laqp;->c()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2776
    const/16 v0, 0x2000

    invoke-virtual {p2, v0}, Ler;->a(I)V

    .line 2778
    :cond_1
    return-void

    .line 2771
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2763
    invoke-super {p0, p1, p2}, Lbz;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2764
    const-class v0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2765
    return-void
.end method
