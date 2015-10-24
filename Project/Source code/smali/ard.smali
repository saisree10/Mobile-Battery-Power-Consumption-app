.class public final Lard;
.super Ljava/lang/Object;
.source "SkinShopViewPager.java"

# interfaces
.implements Lbi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1255
    invoke-virtual {p0, p1, p2}, Lard;->b(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1255
    invoke-virtual {p0, p1}, Lard;->b(I)[Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager$SavedState;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1258
    new-instance v0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager$SavedState;

    invoke-direct {v0, p1, p2}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public b(I)[Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager$SavedState;
    .locals 1
    .parameter

    .prologue
    .line 1263
    new-array v0, p1, [Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager$SavedState;

    return-object v0
.end method
