.class public Laqx;
.super Landroid/view/ViewGroup$LayoutParams;
.source "SkinShopViewPager.java"


# instance fields
.field public a:Z

.field public b:I

.field public c:F

.field public d:Z

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 2856
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2837
    const/4 v0, 0x0

    iput v0, p0, Laqx;->c:F

    .line 2857
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2860
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2837
    const/4 v0, 0x0

    iput v0, p0, Laqx;->c:F

    .line 2862
    invoke-static {}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->g()[I

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2863
    const/4 v1, 0x0

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Laqx;->b:I

    .line 2864
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2865
    return-void
.end method
