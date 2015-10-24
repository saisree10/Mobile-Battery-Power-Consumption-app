.class public Larc;
.super Landroid/database/DataSetObserver;
.source "SkinShopViewPager.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;


# direct methods
.method private constructor <init>(Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;)V
    .locals 0
    .parameter

    .prologue
    .line 2805
    iput-object p1, p0, Larc;->a:Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;Laqq;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2805
    invoke-direct {p0, p1}, Larc;-><init>(Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 2808
    iget-object v0, p0, Larc;->a:Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->b()V

    .line 2809
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 2813
    iget-object v0, p0, Larc;->a:Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->b()V

    .line 2814
    return-void
.end method
