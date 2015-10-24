.class public Laqs;
.super Ljava/lang/Object;
.source "SkinShopViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Laqs;->a:Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Laqs;->a:Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;I)V

    .line 237
    iget-object v0, p0, Laqs;->a:Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->c()V

    .line 238
    return-void
.end method
