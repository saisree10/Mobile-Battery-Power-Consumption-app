.class public Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;
.super Landroid/view/ViewGroup;
.source "SkinShopViewPager.java"


# static fields
.field private static final af:Lare;

.field private static final c:[I

.field private static final d:Ljava/util/Comparator;

.field private static final e:Landroid/view/animation/Interpolator;


# instance fields
.field private A:Z

.field private B:Z

.field private C:I

.field private D:I

.field private E:I

.field private F:F

.field private G:F

.field private H:F

.field private I:I

.field private J:Landroid/view/VelocityTracker;

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:Z

.field private R:Lfl;

.field private S:Lfl;

.field private T:Z

.field private U:Z

.field private V:I

.field private W:Lara;

.field private Z:Lara;

.field private a:F

.field private aa:Laqz;

.field private ab:Larb;

.field private ac:Ljava/lang/reflect/Method;

.field private ad:I

.field private ae:Ljava/util/ArrayList;

.field private final ag:Ljava/lang/Runnable;

.field private ah:Z

.field private ai:I

.field private b:Z

.field private final f:Ljava/util/ArrayList;

.field private final g:Laqw;

.field private final h:Landroid/graphics/Rect;

.field private i:Laqp;

.field private j:I

.field private k:I

.field private l:Landroid/os/Parcelable;

.field private m:Ljava/lang/ClassLoader;

.field private n:Landroid/widget/Scroller;

.field private o:Larc;

.field private p:I

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:I

.field private s:I

.field private t:F

.field private u:F

.field private v:I

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 94
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->c:[I

    .line 106
    new-instance v0, Laqq;

    invoke-direct {v0}, Laqq;-><init>()V

    sput-object v0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->d:Ljava/util/Comparator;

    .line 113
    new-instance v0, Laqr;

    invoke-direct {v0}, Laqr;-><init>()V

    sput-object v0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->e:Landroid/view/animation/Interpolator;

    .line 214
    new-instance v0, Lare;

    invoke-direct {v0}, Lare;-><init>()V

    sput-object v0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->af:Lare;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 347
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a:F

    .line 84
    iput-boolean v3, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->b:Z

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    .line 122
    new-instance v0, Laqw;

    invoke-direct {v0}, Laqw;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->g:Laqw;

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->h:Landroid/graphics/Rect;

    .line 128
    iput v2, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->k:I

    .line 129
    iput-object v4, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->l:Landroid/os/Parcelable;

    .line 130
    iput-object v4, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->m:Ljava/lang/ClassLoader;

    .line 142
    const v0, -0x800001

    iput v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->t:F

    .line 143
    const v0, 0x7f7fffff

    iput v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->u:F

    .line 151
    iput v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->z:I

    .line 168
    iput v2, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->I:I

    .line 199
    iput-boolean v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->T:Z

    .line 233
    new-instance v0, Laqs;

    invoke-direct {v0, p0}, Laqs;-><init>(Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->ag:Ljava/lang/Runnable;

    .line 241
    iput-boolean v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->ah:Z

    .line 243
    iput v3, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->ai:I

    .line 348
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a()V

    .line 349
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 352
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a:F

    .line 84
    iput-boolean v3, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->b:Z

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    .line 122
    new-instance v0, Laqw;

    invoke-direct {v0}, Laqw;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->g:Laqw;

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->h:Landroid/graphics/Rect;

    .line 128
    iput v2, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->k:I

    .line 129
    iput-object v4, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->l:Landroid/os/Parcelable;

    .line 130
    iput-object v4, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->m:Ljava/lang/ClassLoader;

    .line 142
    const v0, -0x800001

    iput v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->t:F

    .line 143
    const v0, 0x7f7fffff

    iput v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->u:F

    .line 151
    iput v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->z:I

    .line 168
    iput v2, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->I:I

    .line 199
    iput-boolean v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->T:Z

    .line 233
    new-instance v0, Laqs;

    invoke-direct {v0, p0}, Laqs;-><init>(Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->ag:Ljava/lang/Runnable;

    .line 241
    iput-boolean v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->ah:Z

    .line 243
    iput v3, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->ai:I

    .line 353
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a()V

    .line 354
    return-void
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;)F
    .locals 1
    .parameter

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getPageSpace()F

    move-result v0

    return v0
.end method

.method private a(IFII)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x3f00

    .line 2171
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->M:I

    if-le v0, v1, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->K:I

    if-le v0, v1, :cond_2

    .line 2172
    if-lez p3, :cond_1

    .line 2182
    :goto_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2183
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqw;

    .line 2184
    iget-object v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laqw;

    .line 2187
    iget v0, v0, Laqw;->b:I

    iget v1, v1, Laqw;->b:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2190
    :cond_0
    return p1

    .line 2172
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 2173
    :cond_2
    iget v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->O:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->O:I

    if-ge v0, p1, :cond_3

    cmpg-float v0, p2, v2

    if-gez v0, :cond_3

    .line 2174
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 2175
    :cond_3
    iget v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->P:I

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->P:I

    add-int/lit8 v1, p1, 0x1

    if-le v0, v1, :cond_4

    cmpl-float v0, p2, v2

    if-ltz v0, :cond_4

    .line 2177
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 2179
    :cond_4
    int-to-float v0, p1

    add-float/2addr v0, p2

    add-float/2addr v0, v2

    float-to-int p1, v0

    goto :goto_0
.end method

.method private a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2579
    if-nez p1, :cond_2

    .line 2580
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2582
    :goto_0
    if-nez p2, :cond_0

    .line 2583
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    move-object v0, v1

    .line 2601
    :goto_1
    return-object v0

    .line 2586
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 2587
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 2588
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 2589
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 2591
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2592
    :goto_2
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    if-eq v0, p0, :cond_1

    .line 2593
    check-cast v0, Landroid/view/ViewGroup;

    .line 2594
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 2595
    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 2596
    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 2597
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 2599
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    :cond_1
    move-object v0, v1

    .line 2601
    goto :goto_1

    :cond_2
    move-object v1, p1

    goto :goto_0
.end method

.method private a(IIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1481
    if-lez p2, :cond_1

    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1482
    add-int v0, p1, p3

    .line 1483
    add-int v1, p2, p4

    .line 1484
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getScrollX()I

    move-result v3

    .line 1485
    int-to-float v3, v3

    int-to-float v1, v1

    div-float v1, v3, v1

    .line 1486
    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v1, v0

    .line 1488
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->scrollTo(II)V

    .line 1489
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->n:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1492
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->n:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    iget-object v3, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->n:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->timePassed()I

    move-result v3

    sub-int v5, v0, v3

    .line 1493
    iget v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->j:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->b(I)Laqw;

    move-result-object v3

    .line 1494
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->n:Landroid/widget/Scroller;

    iget v3, v3, Laqw;->e:F

    int-to-float v4, p1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1506
    :cond_0
    :goto_0
    return-void

    .line 1498
    :cond_1
    iget v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->j:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->b(I)Laqw;

    move-result-object v0

    .line 1499
    if-eqz v0, :cond_2

    iget v0, v0, Laqw;->e:F

    iget v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->u:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1500
    :goto_1
    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1501
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getScrollX()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1502
    invoke-direct {p0, v2}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(Z)V

    .line 1503
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->scrollTo(II)V

    goto :goto_0

    .line 1499
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(IZIZ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 548
    invoke-virtual {p0, p1}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->b(I)Laqw;

    move-result-object v2

    .line 550
    if-eqz v2, :cond_b

    .line 551
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getWidth()I

    move-result v3

    .line 556
    iget v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->u:F

    const/4 v4, 0x0

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_0

    .line 557
    const/high16 v0, 0x4000

    iget v4, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a:F

    mul-float/2addr v0, v4

    neg-float v0, v0

    iput v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->u:F

    .line 564
    :cond_0
    int-to-float v0, v3

    iget v4, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->t:F

    iget v5, v2, Laqw;->e:F

    iget v6, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->u:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 567
    if-nez p1, :cond_1

    .line 569
    int-to-float v0, v3

    iget v4, v2, Laqw;->e:F

    iget v5, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->u:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 571
    :cond_1
    iget-object v4, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    invoke-virtual {v4}, Laqp;->c()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_2

    .line 573
    int-to-float v0, v3

    iget v2, v2, Laqw;->e:F

    iget v3, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->u:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v3, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a:F

    add-float/2addr v2, v3

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 578
    :cond_2
    :goto_0
    if-eqz p2, :cond_5

    .line 579
    invoke-virtual {p0, v0, v1, p3}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(III)V

    .line 580
    if-eqz p4, :cond_3

    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->W:Lara;

    if-eqz v0, :cond_3

    .line 581
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->W:Lara;

    invoke-interface {v0, p1}, Lara;->a(I)V

    .line 583
    :cond_3
    if-eqz p4, :cond_4

    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->Z:Lara;

    if-eqz v0, :cond_4

    .line 584
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->Z:Lara;

    invoke-interface {v0, p1}, Lara;->a(I)V

    .line 633
    :cond_4
    :goto_1
    return-void

    .line 587
    :cond_5
    if-eqz p4, :cond_6

    iget-object v2, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->W:Lara;

    if-eqz v2, :cond_6

    .line 588
    iget-object v2, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->W:Lara;

    invoke-interface {v2, p1}, Lara;->a(I)V

    .line 590
    :cond_6
    if-eqz p4, :cond_7

    iget-object v2, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->Z:Lara;

    if-eqz v2, :cond_7

    .line 591
    iget-object v2, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->Z:Lara;

    invoke-interface {v2, p1}, Lara;->a(I)V

    .line 593
    :cond_7
    invoke-direct {p0, v1}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(Z)V

    .line 595
    iget-boolean v2, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->b:Z

    if-eqz v2, :cond_a

    .line 599
    iget-object v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    invoke-virtual {v1}, Laqp;->c()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq p1, v1, :cond_8

    if-nez p1, :cond_9

    .line 601
    :cond_8
    new-instance v1, Laqt;

    invoke-direct {v1, p0, v0}, Laqt;-><init>(Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;I)V

    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 613
    :cond_9
    new-instance v1, Laqu;

    invoke-direct {v1, p0, v0}, Laqu;-><init>(Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;I)V

    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 629
    :cond_a
    invoke-virtual {p0, v0, v1}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->scrollTo(II)V

    goto :goto_1

    :cond_b
    move v0, v1

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter

    .prologue
    .line 2410
    invoke-static {p1}, Lcy;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 2411
    invoke-static {p1, v0}, Lcy;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 2412
    iget v2, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->I:I

    if-ne v1, v2, :cond_0

    .line 2415
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2416
    :goto_0
    invoke-static {p1, v0}, Lcy;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->G:F

    .line 2417
    invoke-static {p1, v0}, Lcy;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->I:I

    .line 2418
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->J:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2419
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->J:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2422
    :cond_0
    return-void

    .line 2415
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Laqw;ILaqw;)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v9, 0x3f80

    .line 1142
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    invoke-virtual {v0}, Laqp;->c()I

    move-result v6

    .line 1143
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getWidth()I

    move-result v0

    .line 1144
    if-lez v0, :cond_0

    iget v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->p:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    move v5, v0

    .line 1146
    :goto_0
    if-eqz p3, :cond_6

    .line 1147
    iget v0, p3, Laqw;->b:I

    .line 1149
    iget v1, p1, Laqw;->b:I

    if-ge v0, v1, :cond_3

    .line 1150
    const/4 v1, 0x0

    .line 1152
    iget v2, p3, Laqw;->e:F

    iget v3, p3, Laqw;->d:F

    add-float/2addr v2, v3

    add-float v3, v2, v5

    .line 1153
    add-int/lit8 v2, v0, 0x1

    .line 1154
    :goto_1
    iget v0, p1, Laqw;->b:I

    if-gt v2, v0, :cond_6

    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 1155
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqw;

    .line 1156
    :goto_2
    iget v4, v0, Laqw;->b:I

    if-le v2, v4, :cond_1

    iget-object v4, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_1

    .line 1157
    add-int/lit8 v1, v1, 0x1

    .line 1158
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqw;

    goto :goto_2

    .line 1144
    :cond_0
    const/4 v0, 0x0

    move v5, v0

    goto :goto_0

    .line 1160
    :cond_1
    :goto_3
    iget v4, v0, Laqw;->b:I

    if-ge v2, v4, :cond_2

    .line 1163
    iget-object v4, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    invoke-virtual {v4, v2}, Laqp;->a(I)F

    move-result v4

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 1164
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1166
    :cond_2
    iput v3, v0, Laqw;->e:F

    .line 1167
    iget v0, v0, Laqw;->d:F

    add-float/2addr v0, v5

    add-float/2addr v3, v0

    .line 1154
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1169
    :cond_3
    iget v1, p1, Laqw;->b:I

    if-le v0, v1, :cond_6

    .line 1170
    iget-object v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1172
    iget v3, p3, Laqw;->e:F

    .line 1173
    add-int/lit8 v2, v0, -0x1

    :goto_4
    iget v0, p1, Laqw;->b:I

    if-lt v2, v0, :cond_6

    if-ltz v1, :cond_6

    .line 1174
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqw;

    .line 1175
    :goto_5
    iget v4, v0, Laqw;->b:I

    if-ge v2, v4, :cond_4

    if-lez v1, :cond_4

    .line 1176
    add-int/lit8 v1, v1, -0x1

    .line 1177
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqw;

    goto :goto_5

    .line 1179
    :cond_4
    :goto_6
    iget v4, v0, Laqw;->b:I

    if-le v2, v4, :cond_5

    .line 1182
    iget-object v4, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    invoke-virtual {v4, v2}, Laqp;->a(I)F

    move-result v4

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    .line 1183
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 1185
    :cond_5
    iget v4, v0, Laqw;->d:F

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    .line 1186
    iput v3, v0, Laqw;->e:F

    .line 1173
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 1192
    :cond_6
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1193
    iget v2, p1, Laqw;->e:F

    .line 1194
    iget v0, p1, Laqw;->b:I

    add-int/lit8 v1, v0, -0x1

    .line 1195
    iget v0, p1, Laqw;->b:I

    if-nez v0, :cond_7

    iget v0, p1, Laqw;->e:F

    :goto_7
    iput v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->t:F

    .line 1196
    iget v0, p1, Laqw;->b:I

    add-int/lit8 v3, v6, -0x1

    if-ne v0, v3, :cond_8

    iget v0, p1, Laqw;->e:F

    iget v3, p1, Laqw;->d:F

    add-float/2addr v0, v3

    sub-float/2addr v0, v9

    :goto_8
    iput v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->u:F

    .line 1199
    add-int/lit8 v0, p2, -0x1

    move v4, v0

    :goto_9
    if-ltz v4, :cond_b

    .line 1200
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqw;

    move v3, v2

    .line 1201
    :goto_a
    iget v2, v0, Laqw;->b:I

    if-le v1, v2, :cond_9

    .line 1202
    iget-object v8, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v8, v1}, Laqp;->a(I)F

    move-result v1

    add-float/2addr v1, v5

    sub-float v1, v3, v1

    move v3, v1

    move v1, v2

    goto :goto_a

    .line 1195
    :cond_7
    const v0, -0x800001

    goto :goto_7

    .line 1196
    :cond_8
    const v0, 0x7f7fffff

    goto :goto_8

    .line 1204
    :cond_9
    iget v2, v0, Laqw;->d:F

    add-float/2addr v2, v5

    sub-float v2, v3, v2

    .line 1205
    iput v2, v0, Laqw;->e:F

    .line 1206
    iget v0, v0, Laqw;->b:I

    if-nez v0, :cond_a

    .line 1207
    iput v2, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->t:F

    .line 1199
    :cond_a
    add-int/lit8 v0, v4, -0x1

    add-int/lit8 v1, v1, -0x1

    move v4, v0

    goto :goto_9

    .line 1209
    :cond_b
    iget v0, p1, Laqw;->e:F

    iget v1, p1, Laqw;->d:F

    add-float/2addr v0, v1

    add-float v2, v0, v5

    .line 1210
    iget v0, p1, Laqw;->b:I

    add-int/lit8 v1, v0, 0x1

    .line 1212
    add-int/lit8 v0, p2, 0x1

    move v4, v0

    :goto_b
    if-ge v4, v7, :cond_e

    .line 1213
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqw;

    move v3, v2

    .line 1214
    :goto_c
    iget v2, v0, Laqw;->b:I

    if-ge v1, v2, :cond_c

    .line 1215
    iget-object v8, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v8, v1}, Laqp;->a(I)F

    move-result v1

    add-float/2addr v1, v5

    add-float/2addr v1, v3

    move v3, v1

    move v1, v2

    goto :goto_c

    .line 1217
    :cond_c
    iget v2, v0, Laqw;->b:I

    add-int/lit8 v8, v6, -0x1

    if-ne v2, v8, :cond_d

    .line 1218
    iget v2, v0, Laqw;->d:F

    add-float/2addr v2, v3

    sub-float/2addr v2, v9

    iput v2, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->u:F

    .line 1220
    :cond_d
    iput v3, v0, Laqw;->e:F

    .line 1221
    iget v0, v0, Laqw;->d:F

    add-float/2addr v0, v5

    add-float v2, v3, v0

    .line 1212
    add-int/lit8 v0, v4, 0x1

    add-int/lit8 v1, v1, 0x1

    move v4, v0

    goto :goto_b

    .line 1223
    :cond_e
    return-void
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->setScrollState(I)V

    return-void
.end method

.method private a(Z)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1756
    iget v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->ai:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    move v0, v4

    .line 1757
    :goto_0
    if-eqz v0, :cond_1

    .line 1759
    invoke-direct {p0, v2}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->setScrollingCacheEnabled(Z)V

    .line 1760
    iget-object v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->n:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1761
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getScrollX()I

    move-result v1

    .line 1762
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getScrollY()I

    move-result v3

    .line 1763
    iget-object v5, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->n:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1764
    iget-object v6, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->n:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 1765
    if-ne v1, v5, :cond_0

    if-eq v3, v6, :cond_1

    .line 1766
    :cond_0
    invoke-virtual {p0, v5, v6}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->scrollTo(II)V

    .line 1769
    :cond_1
    iput-boolean v2, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->y:Z

    move v1, v2

    move v3, v0

    .line 1770
    :goto_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1771
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqw;

    .line 1772
    iget-boolean v5, v0, Laqw;->c:Z

    if-eqz v5, :cond_2

    .line 1774
    iput-boolean v2, v0, Laqw;->c:Z

    move v3, v4

    .line 1770
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v0, v2

    .line 1756
    goto :goto_0

    .line 1777
    :cond_4
    if-eqz v3, :cond_5

    .line 1778
    if-eqz p1, :cond_6

    .line 1779
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->ag:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Ldj;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1784
    :cond_5
    :goto_2
    return-void

    .line 1781
    :cond_6
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->ag:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_2
.end method

.method private a(FF)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1787
    iget v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->D:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v2

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->D:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    cmpg-float v0, p2, v2

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic b(Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;)Laqp;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    return-object v0
.end method

.method private b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1797
    return-void
.end method

.method private b(F)Z
    .locals 11
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2061
    .line 2062
    iget v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->G:F

    sub-float/2addr v0, p1

    .line 2063
    iput p1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->G:F

    .line 2065
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    .line 2066
    add-float v6, v1, v0

    .line 2068
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getWidth()I

    move-result v7

    .line 2069
    int-to-float v0, v7

    iget v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->t:F

    mul-float v4, v0, v1

    .line 2070
    int-to-float v0, v7

    iget v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->u:F

    mul-float v5, v0, v1

    .line 2075
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqw;

    .line 2076
    iget-object v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laqw;

    .line 2077
    iget v8, v0, Laqw;->b:I

    if-eqz v8, :cond_7

    .line 2079
    iget v0, v0, Laqw;->e:F

    int-to-float v4, v7

    mul-float/2addr v0, v4

    move v4, v0

    move v0, v2

    .line 2081
    :goto_0
    iget v8, v1, Laqw;->b:I

    iget-object v9, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    invoke-virtual {v9}, Laqp;->c()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-eq v8, v9, :cond_6

    .line 2083
    iget v1, v1, Laqw;->e:F

    int-to-float v3, v7

    mul-float/2addr v1, v3

    move v3, v2

    .line 2091
    :goto_1
    iget-boolean v5, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->b:Z

    if-eqz v5, :cond_5

    .line 2092
    iget v5, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->j:I

    if-nez v5, :cond_0

    .line 2093
    invoke-direct {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getPageSpace()F

    move-result v5

    sub-float/2addr v4, v5

    .line 2095
    :cond_0
    iget v5, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->j:I

    iget-object v8, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    invoke-virtual {v8}, Laqp;->c()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_5

    .line 2096
    invoke-direct {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getPageSpace()F

    move-result v5

    add-float/2addr v1, v5

    move v10, v1

    move v1, v4

    move v4, v10

    .line 2101
    :goto_2
    cmpg-float v5, v6, v1

    if-gez v5, :cond_2

    .line 2102
    if-eqz v0, :cond_1

    .line 2103
    sub-float v0, v1, v6

    .line 2104
    iget-object v2, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->R:Lfl;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v3, v7

    div-float/2addr v0, v3

    invoke-virtual {v2, v0}, Lfl;->a(F)Z

    move-result v2

    :cond_1
    move v0, v1

    .line 2115
    :goto_3
    iget v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->G:F

    float-to-int v3, v0

    int-to-float v3, v3

    sub-float v3, v0, v3

    add-float/2addr v1, v3

    iput v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->G:F

    .line 2116
    float-to-int v1, v0

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getScrollY()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->scrollTo(II)V

    .line 2117
    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->d(I)Z

    .line 2119
    return v2

    .line 2107
    :cond_2
    cmpl-float v0, v6, v4

    if-lez v0, :cond_4

    .line 2108
    if-eqz v3, :cond_3

    .line 2109
    sub-float v0, v6, v4

    .line 2110
    iget-object v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->S:Lfl;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v2, v7

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lfl;->a(F)Z

    move-result v2

    :cond_3
    move v0, v4

    .line 2112
    goto :goto_3

    :cond_4
    move v0, v6

    goto :goto_3

    :cond_5
    move v10, v1

    move v1, v4

    move v4, v10

    goto :goto_2

    :cond_6
    move v1, v5

    goto :goto_1

    :cond_7
    move v0, v3

    goto :goto_0
.end method

.method public static synthetic c(Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;)I
    .locals 1
    .parameter

    .prologue
    .line 76
    iget v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->j:I

    return v0
.end method

.method private d(I)Z
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1640
    iget-object v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 1641
    iput-boolean v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->U:Z

    .line 1642
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(IFI)V

    .line 1643
    iget-boolean v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->U:Z

    if-nez v1, :cond_2

    .line 1644
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1649
    :cond_0
    invoke-direct {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i()Laqw;

    move-result-object v1

    .line 1650
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getWidth()I

    move-result v2

    .line 1651
    iget v3, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->p:I

    add-int/2addr v3, v2

    .line 1652
    iget v4, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->p:I

    int-to-float v4, v4

    int-to-float v5, v2

    div-float/2addr v4, v5

    .line 1653
    iget v5, v1, Laqw;->b:I

    .line 1654
    int-to-float v6, p1

    int-to-float v2, v2

    div-float v2, v6, v2

    iget v6, v1, Laqw;->e:F

    sub-float/2addr v2, v6

    iget v1, v1, Laqw;->d:F

    add-float/2addr v1, v4

    div-float v1, v2, v1

    .line 1656
    int-to-float v2, v3

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 1658
    iput-boolean v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->U:Z

    .line 1659
    invoke-virtual {p0, v5, v1, v2}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(IFI)V

    .line 1660
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->U:Z

    if-nez v0, :cond_1

    .line 1661
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1664
    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static synthetic g()[I
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->c:[I

    return-object v0
.end method

.method private getPageSpace()F
    .locals 2

    .prologue
    .line 2889
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 456
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 457
    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 458
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Laqx;

    .line 459
    iget-boolean v0, v0, Laqx;->a:Z

    if-nez v0, :cond_0

    .line 460
    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->removeViewAt(I)V

    .line 461
    add-int/lit8 v1, v1, -0x1

    .line 456
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 464
    :cond_1
    return-void
.end method

.method private i()Laqw;
    .locals 13

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2128
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getWidth()I

    move-result v1

    .line 2129
    if-lez v1, :cond_3

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    int-to-float v4, v1

    div-float/2addr v0, v4

    move v9, v0

    .line 2130
    :goto_0
    if-lez v1, :cond_4

    iget v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->p:I

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    move v1, v0

    .line 2131
    :goto_1
    const/4 v5, -0x1

    .line 2134
    const/4 v4, 0x1

    .line 2136
    const/4 v0, 0x0

    move v6, v2

    move v7, v2

    move v8, v5

    move v2, v3

    move v5, v4

    move-object v4, v0

    .line 2137
    :goto_2
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 2138
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqw;

    .line 2140
    if-nez v5, :cond_6

    iget v10, v0, Laqw;->b:I

    add-int/lit8 v11, v8, 0x1

    if-eq v10, v11, :cond_6

    .line 2142
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->g:Laqw;

    .line 2143
    add-float/2addr v6, v7

    add-float/2addr v6, v1

    iput v6, v0, Laqw;->e:F

    .line 2144
    add-int/lit8 v6, v8, 0x1

    iput v6, v0, Laqw;->b:I

    .line 2145
    iget-object v6, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    iget v7, v0, Laqw;->b:I

    invoke-virtual {v6, v7}, Laqp;->a(I)F

    move-result v6

    iput v6, v0, Laqw;->d:F

    .line 2146
    add-int/lit8 v2, v2, -0x1

    move-object v12, v0

    move v0, v2

    move-object v2, v12

    .line 2148
    :goto_3
    iget v6, v2, Laqw;->e:F

    .line 2151
    iget v7, v2, Laqw;->d:F

    add-float/2addr v7, v6

    add-float/2addr v7, v1

    .line 2152
    if-nez v5, :cond_0

    cmpl-float v5, v9, v6

    if-ltz v5, :cond_2

    .line 2153
    :cond_0
    cmpg-float v4, v9, v7

    if-ltz v4, :cond_1

    iget-object v4, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_5

    :cond_1
    move-object v4, v2

    .line 2166
    :cond_2
    return-object v4

    :cond_3
    move v9, v2

    .line 2129
    goto :goto_0

    :cond_4
    move v1, v2

    .line 2130
    goto :goto_1

    .line 2160
    :cond_5
    iget v5, v2, Laqw;->b:I

    .line 2162
    iget v4, v2, Laqw;->d:F

    .line 2137
    add-int/lit8 v0, v0, 0x1

    move v7, v6

    move v8, v5

    move v5, v3

    move v6, v4

    move-object v4, v2

    move v2, v0

    goto :goto_2

    :cond_6
    move-object v12, v0

    move v0, v2

    move-object v2, v12

    goto :goto_3
.end method

.method private j()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2425
    iput-boolean v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->A:Z

    .line 2426
    iput-boolean v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->B:Z

    .line 2428
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->J:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2429
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->J:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2430
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->J:Landroid/view/VelocityTracker;

    .line 2432
    :cond_0
    return-void
.end method

.method private setCurrentItem(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 487
    iput-boolean v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->y:Z

    .line 488
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->T:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(IZZ)V

    .line 489
    return-void

    :cond_0
    move v0, v1

    .line 488
    goto :goto_0
.end method

.method private setScrollState(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 390
    iget v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->ai:I

    if-ne v1, p1, :cond_1

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    iput p1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->ai:I

    .line 395
    if-ne p1, v0, :cond_2

    .line 396
    const/4 v1, -0x1

    iput v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->P:I

    iput v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->O:I

    .line 398
    :cond_2
    iget-object v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->ab:Larb;

    if-eqz v1, :cond_3

    .line 401
    if-eqz p1, :cond_4

    :goto_1
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->b(Z)V

    .line 403
    :cond_3
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->W:Lara;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->W:Lara;

    invoke-interface {v0, p1}, Lara;->b(I)V

    goto :goto_0

    .line 401
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2435
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->x:Z

    if-eq v0, p1, :cond_0

    .line 2436
    iput-boolean p1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->x:Z

    .line 2447
    :cond_0
    return-void
.end method


# virtual methods
.method a(F)F
    .locals 4
    .parameter

    .prologue
    .line 826
    const/high16 v0, 0x3f00

    sub-float v0, p1, v0

    .line 827
    float-to-double v0, v0

    const-wide v2, 0x3fde28c7460698c7L

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 828
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method a(II)Laqw;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 892
    new-instance v0, Laqw;

    invoke-direct {v0}, Laqw;-><init>()V

    .line 893
    iput p1, v0, Laqw;->b:I

    .line 894
    iget-object v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    invoke-virtual {v1, p0, p1}, Laqp;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Laqw;->a:Ljava/lang/Object;

    .line 895
    iget-object v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    invoke-virtual {v1, p1}, Laqp;->a(I)F

    move-result v1

    iput v1, v0, Laqw;->d:F

    .line 896
    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 897
    :cond_0
    iget-object v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 901
    :goto_0
    return-object v0

    .line 899
    :cond_1
    iget-object v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method a(Landroid/view/View;)Laqw;
    .locals 4
    .parameter

    .prologue
    .line 1336
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1337
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqw;

    .line 1338
    iget-object v2, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    iget-object v3, v0, Laqw;->a:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Laqp;->a(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1342
    :goto_1
    return-object v0

    .line 1336
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1342
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 357
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->setWillNotDraw(Z)V

    .line 358
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->setDescendantFocusability(I)V

    .line 359
    invoke-virtual {p0, v3}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->setFocusable(Z)V

    .line 360
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 361
    new-instance v1, Landroid/widget/Scroller;

    sget-object v2, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->e:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->n:Landroid/widget/Scroller;

    .line 362
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 363
    invoke-static {v1}, Ldz;->a(Landroid/view/ViewConfiguration;)I

    move-result v2

    iput v2, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->E:I

    .line 364
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->K:I

    .line 365
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->L:I

    .line 366
    new-instance v1, Lfl;

    invoke-direct {v1, v0}, Lfl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->R:Lfl;

    .line 367
    new-instance v1, Lfl;

    invoke-direct {v1, v0}, Lfl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->S:Lfl;

    .line 369
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 370
    const/high16 v1, 0x41c8

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->M:I

    .line 371
    const/high16 v1, 0x4000

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->N:I

    .line 372
    const/high16 v1, 0x4180

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->C:I

    .line 374
    new-instance v0, Laqy;

    invoke-direct {v0, p0}, Laqy;-><init>(Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;)V

    invoke-static {p0, v0}, Ldj;->a(Landroid/view/View;Lbz;)V

    .line 376
    invoke-static {p0}, Ldj;->c(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 378
    invoke-static {p0, v3}, Ldj;->b(Landroid/view/View;I)V

    .line 381
    :cond_0
    return-void
.end method

.method a(I)V
    .locals 14
    .parameter

    .prologue
    .line 979
    const/4 v0, 0x0

    .line 980
    iget v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->j:I

    if-eq v1, p1, :cond_23

    .line 981
    iget v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->j:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->b(I)Laqw;

    move-result-object v0

    .line 982
    iput p1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->j:I

    move-object v1, v0

    .line 985
    :goto_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    if-nez v0, :cond_1

    .line 1139
    :cond_0
    return-void

    .line 993
    :cond_1
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->y:Z

    if-nez v0, :cond_0

    .line 1000
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1004
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    invoke-virtual {v0, p0}, Laqp;->a(Landroid/view/ViewGroup;)V

    .line 1006
    iget v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->z:I

    .line 1007
    const/4 v2, 0x0

    iget v3, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->j:I

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1008
    iget-object v2, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    invoke-virtual {v2}, Laqp;->c()I

    move-result v8

    .line 1009
    add-int/lit8 v2, v8, -0x1

    iget v3, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->j:I

    add-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1013
    const/4 v3, 0x0

    .line 1014
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_22

    .line 1015
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqw;

    .line 1016
    iget v4, v0, Laqw;->b:I

    iget v5, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->j:I

    if-lt v4, v5, :cond_8

    .line 1017
    iget v4, v0, Laqw;->b:I

    iget v5, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->j:I

    if-ne v4, v5, :cond_22

    .line 1023
    :goto_2
    if-nez v0, :cond_21

    if-lez v8, :cond_21

    .line 1024
    iget v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->j:I

    invoke-virtual {p0, v0, v2}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(II)Laqw;

    move-result-object v0

    move-object v6, v0

    .line 1030
    :goto_3
    if-eqz v6, :cond_4

    .line 1031
    const/4 v5, 0x0

    .line 1032
    add-int/lit8 v4, v2, -0x1

    .line 1033
    if-ltz v4, :cond_9

    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqw;

    .line 1034
    :goto_4
    const/high16 v3, 0x4000

    iget v10, v6, Laqw;->d:F

    sub-float v10, v3, v10

    .line 1035
    iget v3, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->j:I

    add-int/lit8 v3, v3, -0x1

    move v12, v3

    move v3, v5

    move v5, v12

    move v13, v4

    move v4, v2

    move v2, v13

    :goto_5
    if-ltz v5, :cond_2

    .line 1036
    cmpl-float v11, v3, v10

    if-ltz v11, :cond_d

    if-ge v5, v7, :cond_d

    .line 1037
    if-nez v0, :cond_a

    .line 1059
    :cond_2
    iget v3, v6, Laqw;->d:F

    .line 1060
    add-int/lit8 v5, v4, 0x1

    .line 1061
    const/high16 v0, 0x4000

    cmpg-float v0, v3, v0

    if-gez v0, :cond_3

    .line 1062
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_11

    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqw;

    .line 1063
    :goto_6
    iget v2, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->j:I

    add-int/lit8 v2, v2, 0x1

    move v12, v2

    move v2, v3

    move v3, v5

    move v5, v12

    :goto_7
    if-ge v5, v8, :cond_3

    .line 1064
    const/high16 v7, 0x4000

    cmpl-float v7, v2, v7

    if-ltz v7, :cond_14

    if-le v5, v9, :cond_14

    .line 1065
    if-nez v0, :cond_12

    .line 1086
    :cond_3
    invoke-direct {p0, v6, v4, v1}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(Laqw;ILaqw;)V

    .line 1089
    :cond_4
    iget-object v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    iget v2, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->j:I

    if-eqz v6, :cond_18

    iget-object v0, v6, Laqw;->a:Ljava/lang/Object;

    :goto_8
    invoke-virtual {v1, p0, v2, v0}, Laqp;->b(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1091
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    invoke-virtual {v0, p0}, Laqp;->b(Landroid/view/ViewGroup;)V

    .line 1095
    iget v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->ad:I

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    move v2, v0

    .line 1096
    :goto_9
    if-eqz v2, :cond_5

    .line 1097
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->ae:Ljava/util/ArrayList;

    if-nez v0, :cond_1a

    .line 1098
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->ae:Ljava/util/ArrayList;

    .line 1103
    :cond_5
    :goto_a
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getChildCount()I

    move-result v3

    .line 1104
    const/4 v0, 0x0

    move v1, v0

    :goto_b
    if-ge v1, v3, :cond_1b

    .line 1105
    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1106
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Laqx;

    .line 1107
    iput v1, v0, Laqx;->f:I

    .line 1108
    iget-boolean v5, v0, Laqx;->a:Z

    if-nez v5, :cond_6

    iget v5, v0, Laqx;->c:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_6

    .line 1111
    invoke-virtual {p0, v4}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(Landroid/view/View;)Laqw;

    move-result-object v5

    .line 1112
    if-eqz v5, :cond_6

    .line 1113
    iget v6, v5, Laqw;->d:F

    iput v6, v0, Laqx;->c:F

    .line 1114
    iget v5, v5, Laqw;->b:I

    iput v5, v0, Laqx;->e:I

    .line 1117
    :cond_6
    if-eqz v2, :cond_7

    .line 1118
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->ae:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1104
    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    .line 1014
    :cond_8
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    .line 1033
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 1040
    :cond_a
    iget v11, v0, Laqw;->b:I

    if-ne v5, v11, :cond_b

    iget-boolean v11, v0, Laqw;->c:Z

    if-nez v11, :cond_b

    .line 1041
    iget-object v11, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1042
    iget-object v11, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    iget-object v0, v0, Laqw;->a:Ljava/lang/Object;

    invoke-virtual {v11, p0, v5, v0}, Laqp;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1043
    add-int/lit8 v2, v2, -0x1

    .line 1044
    add-int/lit8 v4, v4, -0x1

    .line 1045
    if-ltz v2, :cond_c

    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqw;

    .line 1035
    :cond_b
    :goto_c
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_5

    .line 1045
    :cond_c
    const/4 v0, 0x0

    goto :goto_c

    .line 1047
    :cond_d
    if-eqz v0, :cond_f

    iget v11, v0, Laqw;->b:I

    if-ne v5, v11, :cond_f

    .line 1048
    iget v0, v0, Laqw;->d:F

    add-float/2addr v3, v0

    .line 1049
    add-int/lit8 v2, v2, -0x1

    .line 1050
    if-ltz v2, :cond_e

    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqw;

    goto :goto_c

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    .line 1052
    :cond_f
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v5, v0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(II)Laqw;

    move-result-object v0

    .line 1053
    iget v0, v0, Laqw;->d:F

    add-float/2addr v3, v0

    .line 1054
    add-int/lit8 v4, v4, 0x1

    .line 1055
    if-ltz v2, :cond_10

    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqw;

    goto :goto_c

    :cond_10
    const/4 v0, 0x0

    goto :goto_c

    .line 1062
    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 1068
    :cond_12
    iget v7, v0, Laqw;->b:I

    if-ne v5, v7, :cond_20

    iget-boolean v7, v0, Laqw;->c:Z

    if-nez v7, :cond_20

    .line 1069
    iget-object v7, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1070
    iget-object v7, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    iget-object v0, v0, Laqw;->a:Ljava/lang/Object;

    invoke-virtual {v7, p0, v5, v0}, Laqp;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1071
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_13

    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqw;

    :goto_d
    move v12, v2

    move-object v2, v0

    move v0, v12

    .line 1063
    :goto_e
    add-int/lit8 v5, v5, 0x1

    move v12, v0

    move-object v0, v2

    move v2, v12

    goto/16 :goto_7

    .line 1071
    :cond_13
    const/4 v0, 0x0

    goto :goto_d

    .line 1073
    :cond_14
    if-eqz v0, :cond_16

    iget v7, v0, Laqw;->b:I

    if-ne v5, v7, :cond_16

    .line 1074
    iget v0, v0, Laqw;->d:F

    add-float/2addr v2, v0

    .line 1075
    add-int/lit8 v3, v3, 0x1

    .line 1076
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_15

    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqw;

    :goto_f
    move v12, v2

    move-object v2, v0

    move v0, v12

    goto :goto_e

    :cond_15
    const/4 v0, 0x0

    goto :goto_f

    .line 1078
    :cond_16
    invoke-virtual {p0, v5, v3}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(II)Laqw;

    move-result-object v0

    .line 1079
    add-int/lit8 v3, v3, 0x1

    .line 1080
    iget v0, v0, Laqw;->d:F

    add-float/2addr v2, v0

    .line 1081
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_17

    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqw;

    :goto_10
    move v12, v2

    move-object v2, v0

    move v0, v12

    goto :goto_e

    :cond_17
    const/4 v0, 0x0

    goto :goto_10

    .line 1089
    :cond_18
    const/4 v0, 0x0

    goto/16 :goto_8

    .line 1095
    :cond_19
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_9

    .line 1100
    :cond_1a
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->ae:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_a

    .line 1120
    :cond_1b
    if-eqz v2, :cond_1c

    .line 1121
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->ae:Ljava/util/ArrayList;

    sget-object v1, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->af:Lare;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1124
    :cond_1c
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1125
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1126
    if-eqz v0, :cond_1f

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->b(Landroid/view/View;)Laqw;

    move-result-object v0

    .line 1127
    :goto_11
    if-eqz v0, :cond_1d

    iget v0, v0, Laqw;->b:I

    iget v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->j:I

    if-eq v0, v1, :cond_0

    .line 1128
    :cond_1d
    const/4 v0, 0x0

    :goto_12
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1129
    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1130
    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(Landroid/view/View;)Laqw;

    move-result-object v2

    .line 1131
    if-eqz v2, :cond_1e

    iget v2, v2, Laqw;->b:I

    iget v3, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->j:I

    if-ne v2, v3, :cond_1e

    .line 1132
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1128
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 1126
    :cond_1f
    const/4 v0, 0x0

    goto :goto_11

    :cond_20
    move v12, v2

    move-object v2, v0

    move v0, v12

    goto/16 :goto_e

    :cond_21
    move-object v6, v0

    goto/16 :goto_3

    :cond_22
    move-object v0, v3

    goto/16 :goto_2

    :cond_23
    move-object v1, v0

    goto/16 :goto_0
.end method

.method protected a(IFI)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1683
    iget v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->V:I

    if-lez v0, :cond_2

    .line 1684
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getScrollX()I

    move-result v5

    .line 1685
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getPaddingLeft()I

    move-result v1

    .line 1686
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getPaddingRight()I

    move-result v2

    .line 1687
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getWidth()I

    move-result v6

    .line 1688
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getChildCount()I

    move-result v7

    move v4, v3

    .line 1689
    :goto_0
    if-ge v4, v7, :cond_2

    .line 1690
    invoke-virtual {p0, v4}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1691
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Laqx;

    .line 1692
    iget-boolean v9, v0, Laqx;->a:Z

    if-nez v9, :cond_1

    move v10, v2

    move v2, v1

    move v1, v10

    .line 1689
    :cond_0
    :goto_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v10, v1

    move v1, v2

    move v2, v10

    goto :goto_0

    .line 1695
    :cond_1
    iget v0, v0, Laqx;->b:I

    and-int/lit8 v0, v0, 0x7

    .line 1697
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    move v10, v2

    move v2, v1

    move v1, v10

    .line 1714
    :goto_2
    add-int/2addr v0, v5

    .line 1716
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int/2addr v0, v9

    .line 1717
    if-eqz v0, :cond_0

    .line 1718
    invoke-virtual {v8, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1

    .line 1703
    :pswitch_1
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v1

    move v10, v1

    move v1, v2

    move v2, v0

    move v0, v10

    .line 1704
    goto :goto_2

    .line 1706
    :pswitch_2
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v6, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v10, v2

    move v2, v1

    move v1, v10

    .line 1708
    goto :goto_2

    .line 1710
    :pswitch_3
    sub-int v0, v6, v2

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v0, v9

    .line 1711
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v2, v9

    move v10, v2

    move v2, v1

    move v1, v10

    goto :goto_2

    .line 1723
    :cond_2
    iget v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->O:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->O:I

    if-ge p1, v0, :cond_4

    .line 1724
    :cond_3
    iput p1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->O:I

    .line 1726
    :cond_4
    iget v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->P:I

    if-ltz v0, :cond_5

    int-to-float v0, p1

    add-float/2addr v0, p2

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    iget v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->P:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 1727
    :cond_5
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->P:I

    .line 1730
    :cond_6
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->W:Lara;

    if-eqz v0, :cond_7

    .line 1731
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->W:Lara;

    invoke-interface {v0, p1, p2, p3}, Lara;->a(IFI)V

    .line 1733
    :cond_7
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->Z:Lara;

    if-eqz v0, :cond_8

    .line 1734
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->Z:Lara;

    invoke-interface {v0, p1, p2, p3}, Lara;->a(IFI)V

    .line 1737
    :cond_8
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->ab:Larb;

    if-eqz v0, :cond_a

    .line 1738
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getScrollX()I

    move-result v2

    .line 1739
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getChildCount()I

    move-result v4

    move v1, v3

    .line 1740
    :goto_3
    if-ge v1, v4, :cond_a

    .line 1741
    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1742
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Laqx;

    .line 1744
    iget-boolean v0, v0, Laqx;->a:Z

    if-eqz v0, :cond_9

    .line 1740
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 1747
    :cond_9
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v0, v5

    .line 1748
    iget-object v5, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->ab:Larb;

    invoke-interface {v5, v3, v0}, Larb;->a(Landroid/view/View;F)V

    goto :goto_4

    .line 1752
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->U:Z

    .line 1753
    return-void

    .line 1697
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method a(III)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/high16 v8, 0x3f80

    .line 850
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 852
    invoke-direct {p0, v5}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->setScrollingCacheEnabled(Z)V

    .line 889
    :goto_0
    return-void

    .line 855
    :cond_0
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getScrollX()I

    move-result v1

    .line 856
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getScrollY()I

    move-result v2

    .line 857
    sub-int v3, p1, v1

    .line 858
    sub-int v4, p2, v2

    .line 859
    if-nez v3, :cond_1

    if-nez v4, :cond_1

    .line 860
    invoke-direct {p0, v5}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(Z)V

    .line 861
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->c()V

    .line 862
    invoke-direct {p0, v5}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->setScrollState(I)V

    goto :goto_0

    .line 866
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->setScrollingCacheEnabled(Z)V

    .line 867
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->setScrollState(I)V

    .line 869
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getWidth()I

    move-result v0

    .line 870
    div-int/lit8 v5, v0, 0x2

    .line 871
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    int-to-float v7, v0

    div-float/2addr v6, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 872
    int-to-float v7, v5

    int-to-float v5, v5

    invoke-virtual {p0, v6}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(F)F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    .line 876
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 877
    if-lez v6, :cond_2

    .line 878
    const/high16 v0, 0x447a

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 884
    :goto_1
    const/16 v5, 0x258

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 886
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->n:Landroid/widget/Scroller;

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 888
    invoke-static {p0}, Ldj;->b(Landroid/view/View;)V

    goto :goto_0

    .line 880
    :cond_2
    int-to-float v0, v0

    iget-object v5, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    iget v6, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->j:I

    invoke-virtual {v5, v6}, Laqp;->a(I)F

    move-result v5

    mul-float/2addr v0, v5

    .line 881
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->p:I

    int-to-float v6, v6

    add-float/2addr v0, v6

    div-float v0, v5, v0

    .line 882
    add-float/2addr v0, v8

    const/high16 v5, 0x42c8

    mul-float/2addr v0, v5

    float-to-int v0, v0

    goto :goto_1
.end method

.method public a(IZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 505
    iput-boolean v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->y:Z

    .line 506
    invoke-virtual {p0, p1, p2, v0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(IZZ)V

    .line 507
    return-void
.end method

.method a(IZZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 514
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(IZZI)V

    .line 515
    return-void
.end method

.method a(IZZI)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 518
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    invoke-virtual {v0}, Laqp;->c()I

    move-result v0

    if-gtz v0, :cond_1

    .line 519
    :cond_0
    invoke-direct {p0, v1}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->setScrollingCacheEnabled(Z)V

    .line 544
    :goto_0
    return-void

    .line 522
    :cond_1
    if-nez p3, :cond_2

    iget v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->j:I

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 523
    invoke-direct {p0, v1}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 527
    :cond_2
    if-gez p1, :cond_5

    move p1, v1

    .line 532
    :cond_3
    :goto_1
    iget v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->z:I

    .line 533
    iget v2, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->j:I

    add-int/2addr v2, v0

    if-gt p1, v2, :cond_4

    iget v2, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->j:I

    sub-int v0, v2, v0

    if-ge p1, v0, :cond_6

    :cond_4
    move v2, v1

    .line 537
    :goto_2
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 538
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqw;

    iput-boolean v3, v0, Laqw;->c:Z

    .line 537
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 529
    :cond_5
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    invoke-virtual {v0}, Laqp;->c()I

    move-result v0

    if-lt p1, v0, :cond_3

    .line 530
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    invoke-virtual {v0}, Laqp;->c()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_1

    .line 541
    :cond_6
    iget v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->j:I

    if-eq v0, p1, :cond_7

    move v1, v3

    .line 542
    :cond_7
    invoke-virtual {p0, p1}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(I)V

    .line 543
    invoke-direct {p0, p1, p2, p4, v1}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(IZIZ)V

    goto :goto_0
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 2505
    const/4 v0, 0x0

    .line 2506
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 2507
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2529
    :cond_0
    :goto_0
    return v0

    .line 2509
    :sswitch_0
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->c(I)Z

    move-result v0

    goto :goto_0

    .line 2512
    :sswitch_1
    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->c(I)Z

    move-result v0

    goto :goto_0

    .line 2515
    :sswitch_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 2520
    invoke-static {p1}, Lcr;->a(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2521
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->c(I)Z

    move-result v0

    goto :goto_0

    .line 2522
    :cond_1
    invoke-static {p1, v3}, Lcr;->a(Landroid/view/KeyEvent;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2523
    invoke-virtual {p0, v3}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->c(I)Z

    move-result v0

    goto :goto_0

    .line 2507
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method protected a(Landroid/view/View;ZIII)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 2463
    instance-of v0, p1, Landroid/widget/Gallery;

    if-eqz v0, :cond_1

    .line 2487
    :cond_0
    :goto_0
    return v2

    .line 2467
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    move-object v6, p1

    .line 2468
    check-cast v6, Landroid/view/ViewGroup;

    .line 2469
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v8

    .line 2470
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v9

    .line 2471
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2474
    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_1
    if-ltz v7, :cond_3

    .line 2477
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2478
    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt v0, v3, :cond_2

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge v0, v3, :cond_2

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt v0, v3, :cond_2

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge v0, v3, :cond_2

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2474
    :cond_2
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_1

    .line 2487
    :cond_3
    if-eqz p2, :cond_4

    neg-int v0, p3

    invoke-static {p1, v0}, Ldj;->a(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2625
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2627
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getDescendantFocusability()I

    move-result v2

    .line 2629
    const/high16 v0, 0x6

    if-eq v2, v0, :cond_1

    .line 2630
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2631
    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2632
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 2633
    invoke-virtual {p0, v3}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(Landroid/view/View;)Laqw;

    move-result-object v4

    .line 2634
    if-eqz v4, :cond_0

    iget v4, v4, Laqw;->b:I

    iget v5, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->j:I

    if-ne v4, v5, :cond_0

    .line 2635
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2630
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2646
    :cond_1
    const/high16 v0, 0x4

    if-ne v2, v0, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v1, v0, :cond_3

    .line 2651
    :cond_2
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2662
    :cond_3
    :goto_1
    return-void

    .line 2654
    :cond_4
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2658
    :cond_5
    if-eqz p1, :cond_3

    .line 2659
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4
    .parameter

    .prologue
    .line 2672
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2673
    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2674
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 2675
    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(Landroid/view/View;)Laqw;

    move-result-object v2

    .line 2676
    if-eqz v2, :cond_0

    iget v2, v2, Laqw;->b:I

    iget v3, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->j:I

    if-ne v2, v3, :cond_0

    .line 2677
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2672
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2681
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1311
    invoke-virtual {p0, p3}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1312
    invoke-virtual {p0, p3}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 1314
    check-cast v0, Laqx;

    .line 1315
    iget-boolean v2, v0, Laqx;->a:Z

    instance-of v3, p1, Laqv;

    or-int/2addr v2, v3

    iput-boolean v2, v0, Laqx;->a:Z

    .line 1316
    iget-boolean v2, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->w:Z

    if-eqz v2, :cond_1

    .line 1317
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Laqx;->a:Z

    if-eqz v2, :cond_0

    .line 1318
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add pager decor view during layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1320
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Laqx;->d:Z

    .line 1321
    invoke-virtual {p0, p1, p2, v1}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1333
    :goto_1
    return-void

    .line 1323
    :cond_1
    invoke-super {p0, p1, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    move-object v1, p3

    goto :goto_0
.end method

.method b(I)Laqw;
    .locals 3
    .parameter

    .prologue
    .line 1357
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1358
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqw;

    .line 1359
    iget v2, v0, Laqw;->b:I

    if-ne v2, p1, :cond_0

    .line 1363
    :goto_1
    return-object v0

    .line 1357
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1363
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method b(Landroid/view/View;)Laqw;
    .locals 2
    .parameter

    .prologue
    .line 1347
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_2

    .line 1348
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 1349
    :cond_0
    const/4 v0, 0x0

    .line 1353
    :goto_1
    return-object v0

    .line 1351
    :cond_1
    check-cast v0, Landroid/view/View;

    move-object p1, v0

    goto :goto_0

    .line 1353
    :cond_2
    invoke-virtual {p0, p1}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(Landroid/view/View;)Laqw;

    move-result-object v0

    goto :goto_1
.end method

.method public b()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 908
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->z:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    if-ge v0, v3, :cond_0

    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    invoke-virtual {v3}, Laqp;->c()I

    move-result v3

    if-ge v0, v3, :cond_0

    move v0, v1

    .line 910
    :goto_0
    iget v3, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->j:I

    move v4, v2

    move v5, v3

    move v6, v0

    move v3, v2

    .line 913
    :goto_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 914
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqw;

    .line 915
    iget-object v7, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    iget-object v8, v0, Laqw;->a:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Laqp;->a(Ljava/lang/Object;)I

    move-result v7

    .line 917
    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v6

    .line 913
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v0

    goto :goto_1

    :cond_0
    move v0, v2

    .line 908
    goto :goto_0

    .line 921
    :cond_1
    const/4 v8, -0x2

    if-ne v7, v8, :cond_3

    .line 922
    iget-object v6, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 923
    add-int/lit8 v3, v3, -0x1

    .line 925
    if-nez v4, :cond_2

    .line 926
    iget-object v4, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    invoke-virtual {v4, p0}, Laqp;->a(Landroid/view/ViewGroup;)V

    move v4, v1

    .line 930
    :cond_2
    iget-object v6, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    iget v7, v0, Laqw;->b:I

    iget-object v8, v0, Laqw;->a:Ljava/lang/Object;

    invoke-virtual {v6, p0, v7, v8}, Laqp;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 933
    iget v6, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->j:I

    iget v0, v0, Laqw;->b:I

    if-ne v6, v0, :cond_b

    .line 935
    iget v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->j:I

    iget-object v5, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    invoke-virtual {v5}, Laqp;->c()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v1

    .line 936
    goto :goto_2

    .line 941
    :cond_3
    iget v8, v0, Laqw;->b:I

    if-eq v8, v7, :cond_a

    .line 942
    iget v6, v0, Laqw;->b:I

    iget v8, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->j:I

    if-ne v6, v8, :cond_4

    move v5, v7

    .line 947
    :cond_4
    iput v7, v0, Laqw;->b:I

    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v1

    .line 948
    goto :goto_2

    .line 952
    :cond_5
    if-eqz v4, :cond_6

    .line 953
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    invoke-virtual {v0, p0}, Laqp;->b(Landroid/view/ViewGroup;)V

    .line 956
    :cond_6
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    sget-object v3, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->d:Ljava/util/Comparator;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 958
    if-eqz v6, :cond_9

    .line 960
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getChildCount()I

    move-result v4

    move v3, v2

    .line 961
    :goto_3
    if-ge v3, v4, :cond_8

    .line 962
    invoke-virtual {p0, v3}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 963
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Laqx;

    .line 964
    iget-boolean v6, v0, Laqx;->a:Z

    if-nez v6, :cond_7

    .line 965
    const/4 v6, 0x0

    iput v6, v0, Laqx;->c:F

    .line 961
    :cond_7
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    .line 969
    :cond_8
    invoke-virtual {p0, v5, v2, v1}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(IZZ)V

    .line 970
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->requestLayout()V

    .line 972
    :cond_9
    return-void

    :cond_a
    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v6

    goto/16 :goto_2

    :cond_b
    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v1

    goto/16 :goto_2
.end method

.method public c()V
    .locals 1

    .prologue
    .line 975
    iget v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->j:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(I)V

    .line 976
    return-void
.end method

.method public c(I)Z
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x42

    const/16 v3, 0x11

    .line 2533
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2534
    if-ne v0, p0, :cond_0

    .line 2535
    const/4 v0, 0x0

    .line 2537
    :cond_0
    const/4 v1, 0x0

    .line 2539
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 2541
    if-eqz v2, :cond_5

    if-eq v2, v0, :cond_5

    .line 2542
    if-ne p1, v3, :cond_3

    .line 2546
    iget-object v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->h:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 2547
    iget-object v3, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->h:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 2548
    if-eqz v0, :cond_2

    if-lt v1, v3, :cond_2

    .line 2549
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->d()Z

    move-result v0

    .line 2572
    :goto_0
    if-eqz v0, :cond_1

    .line 2573
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->playSoundEffect(I)V

    .line 2575
    :cond_1
    return v0

    .line 2551
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_0

    .line 2553
    :cond_3
    if-ne p1, v4, :cond_9

    .line 2557
    iget-object v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->h:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 2558
    iget-object v3, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->h:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 2559
    if-eqz v0, :cond_4

    if-gt v1, v3, :cond_4

    .line 2560
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->e()Z

    move-result v0

    goto :goto_0

    .line 2562
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_0

    .line 2565
    :cond_5
    if-eq p1, v3, :cond_6

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    .line 2567
    :cond_6
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->d()Z

    move-result v0

    goto :goto_0

    .line 2568
    :cond_7
    if-eq p1, v4, :cond_8

    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    .line 2570
    :cond_8
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->e()Z

    move-result v0

    goto :goto_0

    :cond_9
    move v0, v1

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter

    .prologue
    .line 2751
    instance-of v0, p1, Laqx;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 4

    .prologue
    .line 1616
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->n:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->n:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1617
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getScrollX()I

    move-result v0

    .line 1618
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getScrollY()I

    move-result v1

    .line 1619
    iget-object v2, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->n:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1620
    iget-object v3, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->n:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1622
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 1623
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->scrollTo(II)V

    .line 1624
    invoke-direct {p0, v2}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->d(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1625
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->n:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1626
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->scrollTo(II)V

    .line 1631
    :cond_1
    invoke-static {p0}, Ldj;->b(Landroid/view/View;)V

    .line 1637
    :goto_0
    return-void

    .line 1636
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(Z)V

    goto :goto_0
.end method

.method d()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2605
    iget v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->j:I

    if-lez v1, :cond_0

    .line 2606
    iget v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->j:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(IZ)V

    .line 2609
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 2493
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2724
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getChildCount()I

    move-result v2

    move v1, v0

    .line 2725
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2726
    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2727
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 2728
    invoke-virtual {p0, v3}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(Landroid/view/View;)Laqw;

    move-result-object v4

    .line 2729
    if-eqz v4, :cond_1

    iget v4, v4, Laqw;->b:I

    iget v5, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->j:I

    if-ne v4, v5, :cond_1

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2731
    const/4 v0, 0x1

    .line 2736
    :cond_0
    return v0

    .line 2725
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 2195
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2196
    const/4 v0, 0x0

    .line 2198
    invoke-static {p0}, Ldj;->a(Landroid/view/View;)I

    move-result v1

    .line 2199
    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    invoke-virtual {v1}, Laqp;->c()I

    move-result v1

    if-le v1, v2, :cond_4

    .line 2202
    :cond_0
    iget-object v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->R:Lfl;

    invoke-virtual {v1}, Lfl;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2203
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2204
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2205
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getWidth()I

    move-result v3

    .line 2207
    const/high16 v4, 0x4387

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2208
    neg-int v4, v2

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->t:F

    int-to-float v6, v3

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2209
    iget-object v4, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->R:Lfl;

    invoke-virtual {v4, v2, v3}, Lfl;->a(II)V

    .line 2210
    iget-object v2, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->R:Lfl;

    invoke-virtual {v2, p1}, Lfl;->a(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 2211
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2213
    :cond_1
    iget-object v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->S:Lfl;

    invoke-virtual {v1}, Lfl;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2214
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2215
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getWidth()I

    move-result v2

    .line 2216
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2218
    const/high16 v4, 0x42b4

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2219
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->u:F

    const/high16 v6, 0x3f80

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2220
    iget-object v4, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->S:Lfl;

    invoke-virtual {v4, v3, v2}, Lfl;->a(II)V

    .line 2221
    iget-object v2, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->S:Lfl;

    invoke-virtual {v2, p1}, Lfl;->a(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 2222
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2229
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 2231
    invoke-static {p0}, Ldj;->b(Landroid/view/View;)V

    .line 2233
    :cond_3
    return-void

    .line 2225
    :cond_4
    iget-object v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->R:Lfl;

    invoke-virtual {v1}, Lfl;->b()V

    .line 2226
    iget-object v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->S:Lfl;

    invoke-virtual {v1}, Lfl;->b()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 811
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 812
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->q:Landroid/graphics/drawable/Drawable;

    .line 813
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 814
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 816
    :cond_0
    return-void
.end method

.method e()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2613
    iget-object v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->j:I

    iget-object v2, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    invoke-virtual {v2}, Laqp;->c()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 2614
    iget v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->j:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(IZ)V

    .line 2617
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()V
    .locals 3

    .prologue
    .line 2881
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->b:Z

    .line 2884
    const/high16 v0, 0x3f80

    iget-object v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Laqp;->a(I)F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a:F

    .line 2885
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 2741
    new-instance v0, Laqx;

    invoke-direct {v0}, Laqx;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter

    .prologue
    .line 2756
    new-instance v0, Laqx;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Laqx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 2746
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Laqp;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 696
    iget v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->ad:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, -0x1

    sub-int p2, v0, p2

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->ae:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Laqx;

    iget v0, v0, Laqx;->f:I

    .line 698
    return v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 510
    iget v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->j:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .prologue
    .line 722
    iget v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->z:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .prologue
    .line 779
    iget v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->p:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1368
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->T:Z

    .line 1370
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->ag:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 386
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 387
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .parameter

    .prologue
    .line 2237
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2240
    move-object/from16 v0, p0

    iget v1, v0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->p:I

    if-lez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    if-eqz v1, :cond_2

    .line 2241
    invoke-virtual/range {p0 .. p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getScrollX()I

    move-result v6

    .line 2242
    invoke-virtual/range {p0 .. p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getWidth()I

    move-result v7

    .line 2244
    move-object/from16 v0, p0

    iget v1, v0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->p:I

    int-to-float v1, v1

    int-to-float v2, v7

    div-float v8, v1, v2

    .line 2245
    const/4 v5, 0x0

    .line 2246
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laqw;

    .line 2247
    iget v4, v1, Laqw;->e:F

    .line 2248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 2249
    iget v3, v1, Laqw;->b:I

    .line 2250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    add-int/lit8 v10, v9, -0x1

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laqw;

    iget v10, v2, Laqw;->b:I

    move v2, v5

    move v5, v3

    .line 2251
    :goto_0
    if-ge v5, v10, :cond_2

    .line 2252
    :goto_1
    iget v3, v1, Laqw;->b:I

    if-le v5, v3, :cond_0

    if-ge v2, v9, :cond_0

    .line 2253
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laqw;

    goto :goto_1

    .line 2257
    :cond_0
    iget v3, v1, Laqw;->b:I

    if-ne v5, v3, :cond_3

    .line 2258
    iget v3, v1, Laqw;->e:F

    iget v4, v1, Laqw;->d:F

    add-float/2addr v3, v4

    int-to-float v4, v7

    mul-float/2addr v3, v4

    .line 2259
    iget v4, v1, Laqw;->e:F

    iget v11, v1, Laqw;->d:F

    add-float/2addr v4, v11

    add-float/2addr v4, v8

    .line 2266
    :goto_2
    move-object/from16 v0, p0

    iget v11, v0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->p:I

    int-to-float v11, v11

    add-float/2addr v11, v3

    int-to-float v12, v6

    cmpl-float v11, v11, v12

    if-lez v11, :cond_1

    .line 2267
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->q:Landroid/graphics/drawable/Drawable;

    float-to-int v12, v3

    move-object/from16 v0, p0

    iget v13, v0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->r:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->p:I

    int-to-float v14, v14

    add-float/2addr v14, v3

    const/high16 v15, 0x3f00

    add-float/2addr v14, v15

    float-to-int v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->s:I

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2269
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->q:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2272
    :cond_1
    add-int v11, v6, v7

    int-to-float v11, v11

    cmpl-float v3, v3, v11

    if-lez v3, :cond_4

    .line 2277
    :cond_2
    return-void

    .line 2261
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    invoke-virtual {v3, v5}, Laqp;->a(I)F

    move-result v11

    .line 2262
    add-float v3, v4, v11

    int-to-float v12, v7

    mul-float/2addr v3, v12

    .line 2263
    add-float/2addr v11, v8

    add-float/2addr v4, v11

    goto :goto_2

    .line 2251
    :cond_4
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v12, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 1807
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 1810
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-ne v0, v6, :cond_2

    .line 1812
    :cond_0
    iput-boolean v2, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->A:Z

    .line 1813
    iput-boolean v2, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->B:Z

    .line 1814
    iput v3, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->I:I

    .line 1815
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->J:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 1816
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->J:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1817
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->J:Landroid/view/VelocityTracker;

    .line 1933
    :cond_1
    :goto_0
    return v2

    .line 1824
    :cond_2
    if-eqz v0, :cond_4

    .line 1825
    iget-boolean v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->A:Z

    if-eqz v1, :cond_3

    move v2, v6

    .line 1826
    goto :goto_0

    .line 1828
    :cond_3
    iget-boolean v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->B:Z

    if-nez v1, :cond_1

    .line 1833
    :cond_4
    sparse-switch v0, :sswitch_data_0

    .line 1924
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->J:Landroid/view/VelocityTracker;

    if-nez v0, :cond_6

    .line 1925
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->J:Landroid/view/VelocityTracker;

    .line 1927
    :cond_6
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->J:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1933
    iget-boolean v2, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->A:Z

    goto :goto_0

    .line 1845
    :sswitch_0
    iget v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->I:I

    .line 1846
    if-eq v0, v3, :cond_5

    .line 1852
    invoke-static {p1, v0}, Lcy;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1853
    invoke-static {p1, v0}, Lcy;->c(Landroid/view/MotionEvent;I)F

    move-result v7

    .line 1854
    iget v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->G:F

    sub-float v8, v7, v1

    .line 1855
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 1856
    invoke-static {p1, v0}, Lcy;->d(Landroid/view/MotionEvent;I)F

    move-result v10

    .line 1857
    iget v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->H:F

    sub-float v0, v10, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 1859
    cmpl-float v0, v8, v12

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->G:F

    invoke-direct {p0, v0, v8}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(FF)Z

    move-result v0

    if-nez v0, :cond_7

    float-to-int v3, v8

    float-to-int v4, v7

    float-to-int v5, v10

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1863
    iput v7, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->G:F

    iput v7, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->F:F

    .line 1864
    iput v10, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->H:F

    .line 1865
    iput-boolean v6, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->B:Z

    goto :goto_0

    .line 1868
    :cond_7
    iget v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->E:I

    int-to-float v0, v0

    cmpl-float v0, v9, v0

    if-lez v0, :cond_a

    cmpl-float v0, v9, v11

    if-lez v0, :cond_a

    .line 1869
    iput-boolean v6, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->A:Z

    .line 1870
    invoke-direct {p0, v6}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->setScrollState(I)V

    .line 1871
    cmpl-float v0, v8, v12

    if-lez v0, :cond_9

    iget v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->F:F

    iget v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->E:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_2
    iput v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->G:F

    .line 1873
    invoke-direct {p0, v6}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->setScrollingCacheEnabled(Z)V

    .line 1883
    :cond_8
    :goto_3
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->A:Z

    if-eqz v0, :cond_5

    .line 1885
    invoke-direct {p0, v7}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->b(F)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1886
    invoke-static {p0}, Ldj;->b(Landroid/view/View;)V

    goto :goto_1

    .line 1871
    :cond_9
    iget v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->F:F

    iget v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->E:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_2

    .line 1875
    :cond_a
    iget v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->E:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_8

    .line 1880
    iput-boolean v6, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->B:Z

    goto :goto_3

    .line 1897
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->F:F

    iput v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->G:F

    .line 1898
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->H:F

    .line 1899
    invoke-static {p1, v2}, Lcy;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->I:I

    .line 1900
    iput-boolean v2, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->B:Z

    .line 1902
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->n:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1903
    iget v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->ai:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->n:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->n:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->N:I

    if-le v0, v1, :cond_b

    .line 1906
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->n:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1907
    iput-boolean v2, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->y:Z

    .line 1908
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->c()V

    .line 1909
    iput-boolean v6, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->A:Z

    .line 1910
    invoke-direct {p0, v6}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->setScrollState(I)V

    goto/16 :goto_1

    .line 1912
    :cond_b
    invoke-direct {p0, v2}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(Z)V

    .line 1913
    iput-boolean v2, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->A:Z

    goto/16 :goto_1

    .line 1920
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1833
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1510
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->w:Z

    .line 1511
    invoke-virtual/range {p0 .. p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->c()V

    .line 1512
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->w:Z

    .line 1514
    invoke-virtual/range {p0 .. p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getChildCount()I

    move-result v9

    .line 1515
    sub-int v10, p4, p2

    .line 1516
    sub-int v11, p5, p3

    .line 1517
    invoke-virtual/range {p0 .. p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getPaddingLeft()I

    move-result v6

    .line 1518
    invoke-virtual/range {p0 .. p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getPaddingTop()I

    move-result v2

    .line 1519
    invoke-virtual/range {p0 .. p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getPaddingRight()I

    move-result v5

    .line 1520
    invoke-virtual/range {p0 .. p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getPaddingBottom()I

    move-result v3

    .line 1521
    invoke-virtual/range {p0 .. p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getScrollX()I

    move-result v12

    .line 1523
    const/4 v4, 0x0

    .line 1527
    const/4 v1, 0x0

    move v8, v1

    :goto_0
    if-ge v8, v9, :cond_0

    .line 1528
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1529
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v7, 0x8

    if-eq v1, v7, :cond_4

    .line 1530
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Laqx;

    .line 1533
    iget-boolean v7, v1, Laqx;->a:Z

    if-eqz v7, :cond_4

    .line 1534
    iget v7, v1, Laqx;->b:I

    and-int/lit8 v7, v7, 0x7

    .line 1535
    iget v1, v1, Laqx;->b:I

    and-int/lit8 v14, v1, 0x70

    .line 1536
    packed-switch v7, :pswitch_data_0

    :pswitch_0
    move v7, v6

    .line 1553
    :goto_1
    sparse-switch v14, :sswitch_data_0

    move v1, v2

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    .line 1570
    :goto_2
    add-int/2addr v7, v12

    .line 1571
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v7

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v1

    invoke-virtual {v13, v7, v1, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 1574
    add-int/lit8 v1, v4, 0x1

    move v4, v3

    move v3, v2

    move v2, v5

    move v5, v6

    .line 1527
    :goto_3
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    move v6, v5

    move v5, v2

    move v2, v4

    move v4, v1

    goto :goto_0

    .line 1542
    :pswitch_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v6

    move v7, v6

    move v6, v1

    .line 1543
    goto :goto_1

    .line 1545
    :pswitch_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v10, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v7, v1

    .line 1547
    goto :goto_1

    .line 1549
    :pswitch_3
    sub-int v1, v10, v5

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v1, v7

    .line 1550
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v5, v7

    move v7, v1

    goto :goto_1

    .line 1559
    :sswitch_0
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v2

    move/from16 v16, v2

    move v2, v3

    move v3, v1

    move/from16 v1, v16

    .line 1560
    goto :goto_2

    .line 1562
    :sswitch_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v1, v11, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    .line 1564
    goto :goto_2

    .line 1566
    :sswitch_2
    sub-int v1, v11, v3

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v1, v14

    .line 1567
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v3, v14

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    goto :goto_2

    .line 1581
    :cond_0
    const/4 v1, 0x0

    move v7, v1

    :goto_4
    if-ge v7, v9, :cond_3

    .line 1582
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1583
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v12, 0x8

    if-eq v1, v12, :cond_2

    .line 1584
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Laqx;

    .line 1586
    iget-boolean v12, v1, Laqx;->a:Z

    if-nez v12, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(Landroid/view/View;)Laqw;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 1587
    int-to-float v13, v10

    iget v12, v12, Laqw;->e:F

    mul-float/2addr v12, v13

    float-to-int v12, v12

    .line 1588
    add-int/2addr v12, v6

    .line 1590
    iget-boolean v13, v1, Laqx;->d:Z

    if-eqz v13, :cond_1

    .line 1593
    const/4 v13, 0x0

    iput-boolean v13, v1, Laqx;->d:Z

    .line 1594
    sub-int v13, v10, v6

    sub-int/2addr v13, v5

    int-to-float v13, v13

    iget v1, v1, Laqx;->c:F

    mul-float/2addr v1, v13

    float-to-int v1, v1

    const/high16 v13, 0x4000

    invoke-static {v1, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1597
    sub-int v13, v11, v2

    sub-int/2addr v13, v3

    const/high16 v14, 0x4000

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1600
    invoke-virtual {v8, v1, v13}, Landroid/view/View;->measure(II)V

    .line 1602
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v12

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v2

    invoke-virtual {v8, v12, v2, v1, v13}, Landroid/view/View;->layout(IIII)V

    .line 1581
    :cond_2
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_4

    .line 1608
    :cond_3
    move-object/from16 v0, p0

    iput v2, v0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->r:I

    .line 1609
    sub-int v1, v11, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->s:I

    .line 1610
    move-object/from16 v0, p0

    iput v4, v0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->V:I

    .line 1611
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->T:Z

    .line 1612
    return-void

    :cond_4
    move v1, v4

    move v4, v2

    move v2, v5

    move v5, v6

    goto/16 :goto_3

    .line 1536
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1553
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 13
    .parameter
    .parameter

    .prologue
    .line 1379
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getDefaultSize(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, p2}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->setMeasuredDimension(II)V

    .line 1382
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getMeasuredWidth()I

    move-result v0

    .line 1383
    div-int/lit8 v1, v0, 0xa

    .line 1384
    iget v2, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->C:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->D:I

    .line 1387
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getPaddingRight()I

    move-result v1

    sub-int v3, v0, v1

    .line 1388
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getPaddingBottom()I

    move-result v1

    sub-int v5, v0, v1

    .line 1395
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getChildCount()I

    move-result v9

    .line 1396
    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v9, :cond_8

    .line 1397
    invoke-virtual {p0, v8}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1398
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    .line 1399
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Laqx;

    .line 1400
    if-eqz v0, :cond_3

    iget-boolean v1, v0, Laqx;->a:Z

    if-eqz v1, :cond_3

    .line 1401
    iget v1, v0, Laqx;->b:I

    and-int/lit8 v6, v1, 0x7

    .line 1402
    iget v1, v0, Laqx;->b:I

    and-int/lit8 v4, v1, 0x70

    .line 1403
    const/high16 v2, -0x8000

    .line 1404
    const/high16 v1, -0x8000

    .line 1405
    const/16 v7, 0x30

    if-eq v4, v7, :cond_0

    const/16 v7, 0x50

    if-ne v4, v7, :cond_4

    :cond_0
    const/4 v4, 0x1

    move v7, v4

    .line 1406
    :goto_1
    const/4 v4, 0x3

    if-eq v6, v4, :cond_1

    const/4 v4, 0x5

    if-ne v6, v4, :cond_5

    :cond_1
    const/4 v4, 0x1

    move v6, v4

    .line 1408
    :goto_2
    if-eqz v7, :cond_6

    .line 1409
    const/high16 v2, 0x4000

    .line 1416
    :cond_2
    :goto_3
    iget v4, v0, Laqx;->width:I

    const/4 v11, -0x2

    if-eq v4, v11, :cond_f

    .line 1417
    const/high16 v4, 0x4000

    .line 1418
    iget v2, v0, Laqx;->width:I

    const/4 v11, -0x1

    if-eq v2, v11, :cond_e

    .line 1419
    iget v2, v0, Laqx;->width:I

    .line 1422
    :goto_4
    iget v11, v0, Laqx;->height:I

    const/4 v12, -0x2

    if-eq v11, v12, :cond_d

    .line 1423
    const/high16 v1, 0x4000

    .line 1424
    iget v11, v0, Laqx;->height:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_d

    .line 1425
    iget v0, v0, Laqx;->height:I

    .line 1428
    :goto_5
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1429
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1430
    invoke-virtual {v10, v2, v0}, Landroid/view/View;->measure(II)V

    .line 1432
    if-eqz v7, :cond_7

    .line 1433
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v5, v0

    .line 1396
    :cond_3
    :goto_6
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 1405
    :cond_4
    const/4 v4, 0x0

    move v7, v4

    goto :goto_1

    .line 1406
    :cond_5
    const/4 v4, 0x0

    move v6, v4

    goto :goto_2

    .line 1410
    :cond_6
    if-eqz v6, :cond_2

    .line 1411
    const/high16 v1, 0x4000

    goto :goto_3

    .line 1434
    :cond_7
    if-eqz v6, :cond_3

    .line 1435
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v3, v0

    goto :goto_6

    .line 1441
    :cond_8
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->ah:Z

    if-eqz v0, :cond_9

    .line 1443
    const/high16 v0, 0x4000

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->v:I

    .line 1450
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->w:Z

    .line 1451
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->c()V

    .line 1452
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->w:Z

    .line 1455
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getChildCount()I

    move-result v2

    .line 1456
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v2, :cond_c

    .line 1457
    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1458
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v5, 0x8

    if-eq v0, v5, :cond_b

    .line 1459
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Laqx;

    .line 1460
    if-eqz v0, :cond_a

    iget-boolean v5, v0, Laqx;->a:Z

    if-nez v5, :cond_b

    .line 1461
    :cond_a
    int-to-float v5, v3

    iget v0, v0, Laqx;->c:F

    mul-float/2addr v0, v5

    float-to-int v0, v0

    const/high16 v5, 0x4000

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1463
    iget v5, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->v:I

    invoke-virtual {v4, v0, v5}, Landroid/view/View;->measure(II)V

    .line 1456
    :cond_b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 1468
    :cond_c
    return-void

    :cond_d
    move v0, v5

    goto :goto_5

    :cond_e
    move v2, v3

    goto/16 :goto_4

    :cond_f
    move v4, v2

    move v2, v3

    goto/16 :goto_4
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 2692
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getChildCount()I

    move-result v0

    .line 2693
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_0

    move v1, v2

    move v3, v4

    .line 2702
    :goto_0
    if-eq v3, v0, :cond_2

    .line 2703
    invoke-virtual {p0, v3}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2704
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 2705
    invoke-virtual {p0, v5}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(Landroid/view/View;)Laqw;

    move-result-object v6

    .line 2706
    if-eqz v6, :cond_1

    iget v6, v6, Laqw;->b:I

    iget v7, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->j:I

    if-ne v6, v7, :cond_1

    .line 2707
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2713
    :goto_1
    return v2

    .line 2698
    :cond_0
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v0, v1

    .line 2700
    goto :goto_0

    .line 2702
    :cond_1
    add-int/2addr v3, v1

    goto :goto_0

    :cond_2
    move v2, v4

    .line 2713
    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter

    .prologue
    .line 1291
    instance-of v0, p1, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager$SavedState;

    if-nez v0, :cond_0

    .line 1292
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1307
    :goto_0
    return-void

    .line 1296
    :cond_0
    check-cast p1, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager$SavedState;

    .line 1297
    invoke-virtual {p1}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1299
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    if-eqz v0, :cond_1

    .line 1300
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    iget-object v1, p1, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager$SavedState;->b:Landroid/os/Parcelable;

    iget-object v2, p1, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager$SavedState;->c:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Laqp;->a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1301
    iget v0, p1, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager$SavedState;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(IZZ)V

    goto :goto_0

    .line 1303
    :cond_1
    iget v0, p1, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager$SavedState;->a:I

    iput v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->k:I

    .line 1304
    iget-object v0, p1, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager$SavedState;->b:Landroid/os/Parcelable;

    iput-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->l:Landroid/os/Parcelable;

    .line 1305
    iget-object v0, p1, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager$SavedState;->c:Ljava/lang/ClassLoader;

    iput-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->m:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1280
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1281
    new-instance v1, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager$SavedState;

    invoke-direct {v1, v0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1282
    iget v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->j:I

    iput v0, v1, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager$SavedState;->a:I

    .line 1283
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    if-eqz v0, :cond_0

    .line 1284
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    invoke-virtual {v0}, Laqp;->d()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager$SavedState;->b:Landroid/os/Parcelable;

    .line 1286
    :cond_0
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1472
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1475
    if-eq p1, p3, :cond_0

    .line 1476
    iget v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->p:I

    iget v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->p:I

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(IIII)V

    .line 1478
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1938
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->Q:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 2057
    :goto_0
    return v0

    .line 1945
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 1949
    goto :goto_0

    .line 1952
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    invoke-virtual {v0}, Laqp;->c()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v0, v2

    .line 1954
    goto :goto_0

    .line 1957
    :cond_3
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->J:Landroid/view/VelocityTracker;

    if-nez v0, :cond_4

    .line 1958
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->J:Landroid/view/VelocityTracker;

    .line 1960
    :cond_4
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->J:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1962
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1965
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 2054
    :cond_5
    :goto_1
    :pswitch_0
    if-eqz v2, :cond_6

    .line 2055
    invoke-static {p0}, Ldj;->b(Landroid/view/View;)V

    :cond_6
    move v0, v1

    .line 2057
    goto :goto_0

    .line 1967
    :pswitch_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->n:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1968
    iput-boolean v2, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->y:Z

    .line 1969
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->c()V

    .line 1970
    iput-boolean v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->A:Z

    .line 1971
    invoke-direct {p0, v1}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->setScrollState(I)V

    .line 1974
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->F:F

    iput v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->G:F

    .line 1976
    invoke-static {p1, v2}, Lcy;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->I:I

    goto :goto_1

    .line 1981
    :pswitch_2
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->A:Z

    if-nez v0, :cond_7

    .line 1983
    iget v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->I:I

    invoke-static {p1, v0}, Lcy;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1985
    invoke-static {p1, v0}, Lcy;->c(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 1986
    iget v4, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->G:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 1987
    invoke-static {p1, v0}, Lcy;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 1988
    iget v5, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->H:F

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1989
    iget v5, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->E:I

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_7

    cmpl-float v0, v4, v0

    if-lez v0, :cond_7

    .line 1990
    iput-boolean v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->A:Z

    .line 1991
    iget v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->F:F

    sub-float v0, v3, v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_8

    iget v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->F:F

    iget v3, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->E:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    :goto_2
    iput v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->G:F

    .line 1993
    invoke-direct {p0, v1}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->setScrollState(I)V

    .line 1994
    invoke-direct {p0, v1}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->setScrollingCacheEnabled(Z)V

    .line 1998
    :cond_7
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->A:Z

    if-eqz v0, :cond_5

    .line 2000
    iget v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->I:I

    invoke-static {p1, v0}, Lcy;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 2002
    invoke-static {p1, v0}, Lcy;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 2003
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->b(F)Z

    move-result v0

    or-int/2addr v2, v0

    .line 2004
    goto :goto_1

    .line 1991
    :cond_8
    iget v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->F:F

    iget v3, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->E:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    goto :goto_2

    .line 2007
    :pswitch_3
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->A:Z

    if-eqz v0, :cond_5

    .line 2008
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->J:Landroid/view/VelocityTracker;

    .line 2009
    const/16 v2, 0x3e8

    iget v3, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->L:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2010
    iget v2, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->I:I

    invoke-static {v0, v2}, Lde;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    .line 2012
    iput-boolean v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->y:Z

    .line 2013
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getWidth()I

    move-result v2

    .line 2014
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getScrollX()I

    move-result v3

    .line 2015
    invoke-direct {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i()Laqw;

    move-result-object v4

    .line 2016
    iget v5, v4, Laqw;->b:I

    .line 2017
    int-to-float v3, v3

    int-to-float v2, v2

    div-float v2, v3, v2

    iget v3, v4, Laqw;->e:F

    sub-float/2addr v2, v3

    iget v3, v4, Laqw;->d:F

    div-float/2addr v2, v3

    .line 2019
    iget v3, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->I:I

    invoke-static {p1, v3}, Lcy;->a(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 2021
    invoke-static {p1, v3}, Lcy;->c(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 2022
    iget v4, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->F:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 2023
    invoke-direct {p0, v5, v2, v0, v3}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(IFII)I

    move-result v2

    .line 2025
    invoke-virtual {p0, v2, v1, v1, v0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(IZZI)V

    .line 2027
    iput v6, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->I:I

    .line 2028
    invoke-direct {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->j()V

    .line 2029
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->R:Lfl;

    invoke-virtual {v0}, Lfl;->c()Z

    move-result v0

    iget-object v2, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->S:Lfl;

    invoke-virtual {v2}, Lfl;->c()Z

    move-result v2

    or-int/2addr v2, v0

    .line 2030
    goto/16 :goto_1

    .line 2033
    :pswitch_4
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->A:Z

    if-eqz v0, :cond_5

    .line 2034
    iget v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->j:I

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(IZIZ)V

    .line 2035
    iput v6, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->I:I

    .line 2036
    invoke-direct {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->j()V

    .line 2037
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->R:Lfl;

    invoke-virtual {v0}, Lfl;->c()Z

    move-result v0

    iget-object v2, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->S:Lfl;

    invoke-virtual {v2}, Lfl;->c()Z

    move-result v2

    or-int/2addr v2, v0

    goto/16 :goto_1

    .line 2041
    :pswitch_5
    invoke-static {p1}, Lcy;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 2042
    invoke-static {p1, v0}, Lcy;->c(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 2044
    iput v3, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->G:F

    .line 2045
    invoke-static {p1, v0}, Lcy;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->I:I

    goto/16 :goto_1

    .line 2049
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(Landroid/view/MotionEvent;)V

    .line 2050
    iget v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->I:I

    invoke-static {p1, v0}, Lcy;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Lcy;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->G:F

    goto/16 :goto_1

    .line 1965
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setAdapter(Laqp;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 414
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    iget-object v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->o:Larc;

    invoke-virtual {v0, v1}, Laqp;->b(Landroid/database/DataSetObserver;)V

    .line 416
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    invoke-virtual {v0, p0}, Laqp;->a(Landroid/view/ViewGroup;)V

    move v1, v2

    .line 417
    :goto_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqw;

    .line 419
    iget-object v3, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    iget v4, v0, Laqw;->b:I

    iget-object v0, v0, Laqw;->a:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v0}, Laqp;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 417
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    invoke-virtual {v0, p0}, Laqp;->b(Landroid/view/ViewGroup;)V

    .line 422
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 423
    invoke-direct {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->h()V

    .line 424
    iput v2, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->j:I

    .line 425
    invoke-virtual {p0, v2, v2}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->scrollTo(II)V

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    .line 429
    iput-object p1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    .line 431
    iget-object v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    if-eqz v1, :cond_3

    .line 432
    iget-object v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->o:Larc;

    if-nez v1, :cond_2

    .line 433
    new-instance v1, Larc;

    invoke-direct {v1, p0, v5}, Larc;-><init>(Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;Laqq;)V

    iput-object v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->o:Larc;

    .line 435
    :cond_2
    iget-object v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    iget-object v3, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->o:Larc;

    invoke-virtual {v1, v3}, Laqp;->a(Landroid/database/DataSetObserver;)V

    .line 436
    iput-boolean v2, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->y:Z

    .line 437
    iput-boolean v6, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->T:Z

    .line 438
    iget v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->k:I

    if-ltz v1, :cond_5

    .line 439
    iget-object v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->i:Laqp;

    iget-object v3, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->l:Landroid/os/Parcelable;

    iget-object v4, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->m:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v3, v4}, Laqp;->a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 440
    iget v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->k:I

    invoke-virtual {p0, v1, v2, v6}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(IZZ)V

    .line 441
    const/4 v1, -0x1

    iput v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->k:I

    .line 442
    iput-object v5, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->l:Landroid/os/Parcelable;

    .line 443
    iput-object v5, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->m:Ljava/lang/ClassLoader;

    .line 449
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->aa:Laqz;

    if-eqz v1, :cond_4

    if-eq v0, p1, :cond_4

    .line 450
    iget-object v1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->aa:Laqz;

    invoke-interface {v1, v0, p1}, Laqz;->a(Laqp;Laqp;)V

    .line 453
    :cond_4
    return-void

    .line 445
    :cond_5
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->c()V

    goto :goto_1
.end method

.method setChildrenDrawingOrderEnabledCompat(Z)V
    .locals 5
    .parameter

    .prologue
    .line 679
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->ac:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 681
    :try_start_0
    const-class v0, Landroid/view/ViewGroup;

    const-string v1, "setChildrenDrawingOrderEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->ac:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 689
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->ac:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 692
    :goto_1
    return-void

    .line 690
    :catch_0
    move-exception v0

    goto :goto_1

    .line 685
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setCurrentItemInCenter(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 493
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->setCurrentItem(I)V

    .line 494
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->T:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(IZIZ)V

    .line 495
    return-void

    :cond_0
    move v0, v1

    .line 494
    goto :goto_0
.end method

.method public setOffscreenPageLimit(I)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 746
    if-ge p1, v0, :cond_0

    move p1, v0

    .line 749
    :cond_0
    iget v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->z:I

    if-eq p1, v0, :cond_1

    .line 750
    iput p1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->z:I

    .line 751
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->c()V

    .line 753
    :cond_1
    return-void
.end method

.method setOnAdapterChangeListener(Laqz;)V
    .locals 0
    .parameter

    .prologue
    .line 476
    iput-object p1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->aa:Laqz;

    .line 477
    return-void
.end method

.method public setOnPageChangeListener(Lara;)V
    .locals 0
    .parameter

    .prologue
    .line 642
    iput-object p1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->W:Lara;

    .line 643
    return-void
.end method

.method public setPageMargin(I)V
    .locals 2
    .parameter

    .prologue
    .line 764
    iget v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->p:I

    .line 765
    iput p1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->p:I

    .line 767
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getWidth()I

    move-result v1

    .line 768
    invoke-direct {p0, v1, v1, p1, v0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->a(IIII)V

    .line 770
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->requestLayout()V

    .line 771
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1
    .parameter

    .prologue
    .line 801
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 802
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 788
    iput-object p1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->q:Landroid/graphics/drawable/Drawable;

    .line 789
    if-eqz p1, :cond_0

    .line 790
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->refreshDrawableState()V

    .line 791
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->setWillNotDraw(Z)V

    .line 792
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->invalidate()V

    .line 793
    return-void

    .line 791
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setmMatchChildHeightToViewPager(Z)V
    .locals 0
    .parameter

    .prologue
    .line 2911
    iput-boolean p1, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->ah:Z

    .line 2912
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter

    .prologue
    .line 806
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->q:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
