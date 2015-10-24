.class public Laqt;
.super Ljava/lang/Object;
.source "SkinShopViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 601
    iput-object p1, p0, Laqt;->b:Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;

    iput p2, p0, Laqt;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 604
    iget v0, p0, Laqt;->a:I

    if-nez v0, :cond_0

    .line 605
    iget-object v0, p0, Laqt;->b:Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;

    iget v1, p0, Laqt;->a:I

    iget-object v2, p0, Laqt;->b:Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;

    invoke-static {v2}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1, v3}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->scrollTo(II)V

    .line 609
    :goto_0
    return-void

    .line 607
    :cond_0
    iget-object v0, p0, Laqt;->b:Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;

    iget v1, p0, Laqt;->a:I

    invoke-virtual {v0, v1, v3}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->scrollTo(II)V

    goto :goto_0
.end method
