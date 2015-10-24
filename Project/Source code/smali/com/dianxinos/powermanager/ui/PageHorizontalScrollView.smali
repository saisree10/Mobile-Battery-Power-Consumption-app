.class public Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;
.super Landroid/widget/FrameLayout;
.source "PageHorizontalScrollView.java"


# static fields
.field private static p:I


# instance fields
.field private A:Z

.field private B:Z

.field private C:I

.field private D:Z

.field private a:J

.field private final b:Landroid/graphics/Rect;

.field private c:Lawb;

.field private d:Z

.field private e:F

.field private f:Z

.field private g:Landroid/view/View;

.field private h:Z

.field private i:Landroid/view/VelocityTracker;

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private q:Z

.field private r:F

.field private s:I

.field private t:I

.field private final u:F

.field private final v:F

.field private final w:F

.field private x:I

.field private y:Lawa;

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 189
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->b:Landroid/graphics/Rect;

    .line 87
    iput-boolean v1, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->f:Z

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->g:Landroid/view/View;

    .line 101
    iput-boolean v2, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->h:Z

    .line 117
    iput-boolean v1, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->k:Z

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->o:I

    .line 137
    iput-boolean v1, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->q:Z

    .line 146
    const/4 v0, 0x0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->r:F

    .line 148
    iput v2, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->s:I

    .line 149
    iput v2, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->t:I

    .line 150
    const v0, 0x3f866666

    iput v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->u:F

    .line 151
    const v0, 0x3f8f5c29

    iput v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->v:F

    .line 152
    const/high16 v0, 0x3fc0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->w:F

    .line 154
    iput v2, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->x:I

    .line 156
    iput v2, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->z:I

    .line 157
    iput-boolean v2, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->A:Z

    .line 163
    iput-boolean v1, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->B:Z

    .line 171
    iput v2, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->C:I

    .line 178
    iput-boolean v1, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->D:Z

    .line 190
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->a()V

    .line 192
    sget-object v0, Lly;->k:Lcom/dianxinos/dxbs/R$styleable;

    sget-object v0, Lcom/dianxinos/dxbs/R$styleable;->PageHorizontalScrollView:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 195
    sget-object v1, Lly;->k:Lcom/dianxinos/dxbs/R$styleable;

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->setFillViewport(Z)V

    .line 197
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 199
    return-void
.end method

.method private a(ZII)Landroid/view/View;
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 832
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v6

    .line 833
    const/4 v3, 0x0

    .line 842
    const/4 v2, 0x0

    .line 844
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 845
    const/4 v0, 0x0

    move v5, v0

    :goto_0
    if-ge v5, v7, :cond_7

    .line 846
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 847
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 848
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    .line 850
    if-ge p2, v8, :cond_8

    if-ge v4, p3, :cond_8

    .line 856
    if-ge p2, v4, :cond_0

    if-ge v8, p3, :cond_0

    const/4 v1, 0x1

    .line 859
    :goto_1
    if-nez v3, :cond_1

    move v10, v1

    move-object v1, v0

    move v0, v10

    .line 845
    :goto_2
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move-object v3, v1

    move v2, v0

    goto :goto_0

    .line 856
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 864
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v9

    if-lt v4, v9, :cond_3

    :cond_2
    if-nez p1, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v4

    if-le v8, v4, :cond_4

    :cond_3
    const/4 v4, 0x1

    .line 868
    :goto_3
    if-eqz v2, :cond_5

    .line 869
    if-eqz v1, :cond_8

    if-eqz v4, :cond_8

    move-object v1, v0

    move v0, v2

    .line 875
    goto :goto_2

    .line 864
    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    .line 878
    :cond_5
    if-eqz v1, :cond_6

    .line 881
    const/4 v1, 0x1

    move v10, v1

    move-object v1, v0

    move v0, v10

    goto :goto_2

    .line 882
    :cond_6
    if-eqz v4, :cond_8

    move-object v1, v0

    move v0, v2

    .line 887
    goto :goto_2

    .line 894
    :cond_7
    return-object v3

    :cond_8
    move v0, v2

    move-object v1, v3

    goto :goto_2
.end method

.method private a(ZILandroid/view/View;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 801
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 802
    add-int v1, p2, v0

    .line 803
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getWidth()I

    move-result v2

    add-int/2addr v2, p2

    sub-int v0, v2, v0

    .line 805
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v2

    if-ge v2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 811
    :goto_0
    return-object p3

    :cond_0
    invoke-direct {p0, p1, v1, v0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->a(ZII)Landroid/view/View;

    move-result-object p3

    goto :goto_0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 241
    new-instance v0, Lawb;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lawb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->c:Lawb;

    .line 242
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->setFocusable(Z)V

    .line 243
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->setDescendantFocusability(I)V

    .line 244
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->setWillNotDraw(Z)V

    .line 245
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->l:I

    .line 247
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f99999a

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->m:I

    .line 248
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->n:I

    .line 249
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter

    .prologue
    .line 752
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 754
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 755
    iget v2, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->o:I

    if-ne v1, v2, :cond_0

    .line 759
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 760
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->e:F

    .line 761
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->o:I

    .line 762
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->i:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->i:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 766
    :cond_0
    return-void

    .line 759
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(III)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 994
    .line 996
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getWidth()I

    move-result v0

    .line 997
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getScrollX()I

    move-result v4

    .line 998
    add-int v5, v4, v0

    .line 999
    const/16 v0, 0x11

    if-ne p1, v0, :cond_2

    move v0, v1

    .line 1001
    :goto_0
    invoke-direct {p0, v0, p2, p3}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->a(ZII)Landroid/view/View;

    move-result-object v3

    .line 1002
    if-nez v3, :cond_0

    move-object v3, p0

    .line 1008
    :cond_0
    if-lt p2, v4, :cond_3

    if-gt p3, v5, :cond_3

    move v0, v2

    .line 1016
    :goto_1
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v4

    if-eq v3, v4, :cond_1

    invoke-virtual {v3, p1}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1017
    iput-boolean v1, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->d:Z

    .line 1018
    iput-boolean v2, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->d:Z

    .line 1021
    :cond_1
    return v0

    :cond_2
    move v0, v2

    .line 999
    goto :goto_0

    .line 1011
    :cond_3
    if-eqz v0, :cond_4

    sub-int v0, p2, v4

    .line 1012
    :goto_2
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->e(I)V

    .line 1013
    add-int v0, p2, p3

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->g(I)V

    move v0, v1

    goto :goto_1

    .line 1011
    :cond_4
    sub-int v0, p3, v5

    goto :goto_2
.end method

.method private a(Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1280
    invoke-virtual {p0, p1}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->a(Landroid/graphics/Rect;)I

    move-result v2

    .line 1281
    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 1282
    :goto_0
    if-eqz v0, :cond_0

    .line 1283
    if-eqz p2, :cond_2

    .line 1284
    invoke-virtual {p0, v2, v1}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->scrollBy(II)V

    .line 1289
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v1

    .line 1281
    goto :goto_0

    .line 1286
    :cond_2
    invoke-virtual {p0, v2, v1}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->b(II)V

    goto :goto_1
.end method

.method private a(Landroid/view/View;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1088
    invoke-direct {p0, p1, v0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->a(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private a(Landroid/view/View;I)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1097
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1099
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getScrollX()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1463
    if-ne p1, p2, :cond_0

    .line 1468
    :goto_0
    return v1

    .line 1467
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1468
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0, p2}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b(III)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1570
    if-ge p2, p3, :cond_0

    if-gez p1, :cond_2

    .line 1571
    :cond_0
    const/4 p1, 0x0

    .line 1576
    :cond_1
    :goto_0
    return p1

    .line 1573
    :cond_2
    add-int v0, p2, p1

    if-le v0, p3, :cond_1

    .line 1574
    sub-int p1, p3, p2

    goto :goto_0
.end method

.method private b(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1262
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1264
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->a(Landroid/graphics/Rect;)I

    move-result v0

    .line 1266
    if-eqz v0, :cond_0

    .line 1267
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->scrollBy(II)V

    .line 1269
    :cond_0
    return-void
.end method

.method private b()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 287
    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 288
    if-eqz v1, :cond_0

    .line 289
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 290
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getPaddingRight()I

    move-result v3

    add-int/2addr v1, v3

    if-ge v2, v1, :cond_0

    const/4 v0, 0x1

    .line 292
    :cond_0
    return v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 746
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->f(I)I

    move-result v0

    .line 747
    const v1, 0x3f866666

    invoke-virtual {p0, v0, v1}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->a(IF)V

    .line 748
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->g(I)V

    .line 749
    return-void
.end method

.method private d(II)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 470
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 471
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getScrollX()I

    move-result v1

    .line 472
    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 473
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge p2, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt p1, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int v1, v2, v1

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    .line 478
    :cond_0
    return v0
.end method

.method private e(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1109
    if-eqz p1, :cond_0

    .line 1110
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->k:Z

    if-eqz v0, :cond_1

    .line 1111
    invoke-virtual {p0, p1, v1}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->b(II)V

    .line 1116
    :cond_0
    :goto_0
    return-void

    .line 1113
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private f(I)I
    .locals 3
    .parameter

    .prologue
    .line 1585
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getWidth()I

    move-result v0

    .line 1588
    iget-boolean v1, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->q:Z

    if-eqz v1, :cond_0

    .line 1589
    sget v0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->p:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    sget v1, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->p:I

    div-int/2addr v0, v1

    sget v1, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->p:I

    mul-int/2addr v0, v1

    .line 1594
    :goto_0
    return v0

    .line 1591
    :cond_0
    add-int v1, v0, p1

    sget v2, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->p:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->p:I

    div-int/2addr v1, v2

    sget v2, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->p:I

    mul-int/2addr v1, v2

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method private g(I)V
    .locals 2
    .parameter

    .prologue
    .line 1620
    sget v0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->p:I

    div-int v0, p1, v0

    .line 1621
    iget v1, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->x:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->z:I

    if-ge v0, v1, :cond_0

    .line 1622
    iput v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->x:I

    .line 1623
    iget v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->x:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->d(I)V

    .line 1625
    :cond_0
    return-void
.end method

.method private getScrollRange()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 769
    .line 770
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 771
    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 772
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 775
    :cond_0
    return v0
.end method


# virtual methods
.method protected a(Landroid/graphics/Rect;)I
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1301
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1355
    :goto_0
    return v2

    .line 1303
    :cond_0
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getWidth()I

    move-result v3

    .line 1304
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getScrollX()I

    move-result v0

    .line 1305
    add-int v1, v0, v3

    .line 1307
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v4

    .line 1310
    iget v5, p1, Landroid/graphics/Rect;->left:I

    if-lez v5, :cond_1

    .line 1311
    add-int/2addr v0, v4

    .line 1315
    :cond_1
    iget v5, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v2}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 1316
    sub-int/2addr v1, v4

    .line 1321
    :cond_2
    iget v4, p1, Landroid/graphics/Rect;->right:I

    if-le v4, v1, :cond_4

    iget v4, p1, Landroid/graphics/Rect;->left:I

    if-le v4, v0, :cond_4

    .line 1326
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-le v4, v3, :cond_3

    .line 1328
    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int v0, v3, v0

    add-int/2addr v0, v2

    .line 1335
    :goto_1
    invoke-virtual {p0, v2}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1336
    sub-int v1, v2, v1

    .line 1337
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_2
    move v2, v0

    .line 1355
    goto :goto_0

    .line 1331
    :cond_3
    iget v0, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    add-int/2addr v0, v2

    goto :goto_1

    .line 1339
    :cond_4
    iget v4, p1, Landroid/graphics/Rect;->left:I

    if-ge v4, v0, :cond_6

    iget v4, p1, Landroid/graphics/Rect;->right:I

    if-ge v4, v1, :cond_6

    .line 1344
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-le v4, v3, :cond_5

    .line 1346
    iget v0, p1, Landroid/graphics/Rect;->right:I

    sub-int v0, v1, v0

    sub-int v0, v2, v0

    .line 1353
    :goto_3
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getScrollX()I

    move-result v1

    neg-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    .line 1349
    :cond_5
    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    sub-int v0, v2, v0

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_2
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->D:Z

    if-eqz v0, :cond_0

    .line 339
    iput p1, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->C:I

    .line 341
    :cond_0
    iget v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->z:I

    if-ge p1, v0, :cond_3

    .line 342
    iget v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->x:I

    sub-int v0, p1, v0

    .line 343
    if-nez v0, :cond_1

    .line 354
    :goto_0
    return-void

    .line 346
    :cond_1
    if-gez v0, :cond_2

    .line 347
    const/16 v1, 0x11

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->a(II)Z

    goto :goto_0

    .line 349
    :cond_2
    const/16 v1, 0x42

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->a(II)Z

    goto :goto_0

    .line 352
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Item number beyond the total size."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(IF)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 1518
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1519
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->c:Lawb;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getScrollX()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1, p2}, Lawb;->a(IF)I

    move-result v3

    .line 1520
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getPaddingLeft()I

    move-result v1

    sub-int v5, v0, v1

    .line 1521
    invoke-virtual {p0, v4}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 1522
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->c:Lawb;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getScrollY()I

    move-result v2

    sub-int v5, v6, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v5, v4

    move v7, v4

    move v8, v4

    invoke-virtual/range {v0 .. v8}, Lawb;->a(IIIIIIII)V

    .line 1523
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->c:Lawb;

    invoke-virtual {v0, p1}, Lawb;->a(I)V

    .line 1524
    if-gtz v3, :cond_3

    move v0, v9

    :goto_0
    iput-boolean v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->q:Z

    .line 1526
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->c:Lawb;

    invoke-virtual {v0}, Lawb;->d()I

    move-result v0

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget v1, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->p:I

    if-ge v0, v1, :cond_4

    .line 1528
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getScrollY()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->c(II)V

    .line 1533
    :goto_1
    if-lez v3, :cond_5

    move v0, v9

    .line 1535
    :goto_2
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->c:Lawb;

    invoke-virtual {v1}, Lawb;->d()I

    move-result v1

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->a(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 1538
    if-nez v1, :cond_0

    move-object v1, p0

    .line 1542
    :cond_0
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v2

    if-eq v1, v2, :cond_1

    if-eqz v0, :cond_6

    const/16 v0, 0x42

    :goto_3
    invoke-virtual {v1, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1544
    iput-boolean v9, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->d:Z

    .line 1545
    iput-boolean v4, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->d:Z

    .line 1548
    :cond_1
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->invalidate()V

    .line 1550
    :cond_2
    return-void

    :cond_3
    move v0, v4

    .line 1524
    goto :goto_0

    .line 1530
    :cond_4
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->c:Lawb;

    invoke-virtual {v0, p1}, Lawb;->a(I)V

    goto :goto_1

    :cond_5
    move v0, v4

    .line 1533
    goto :goto_2

    .line 1542
    :cond_6
    const/16 v0, 0x11

    goto :goto_3
.end method

.method public a(II)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 928
    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    .line 929
    :goto_0
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getWidth()I

    move-result v2

    .line 930
    iget-object v3, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->b:Landroid/graphics/Rect;

    iget v4, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->x:I

    sget v5, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->p:I

    mul-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 931
    if-eqz v0, :cond_2

    .line 932
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->b:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    mul-int v4, v2, p2

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 933
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getChildCount()I

    move-result v0

    .line 934
    if-lez v0, :cond_0

    .line 935
    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 936
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-le v1, v3, :cond_0

    .line 937
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 946
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->b:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 948
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v0, v1}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->a(III)Z

    move-result v0

    return v0

    :cond_1
    move v0, v1

    .line 928
    goto :goto_0

    .line 941
    :cond_2
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->b:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    mul-int v4, v2, p2

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 942
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-gez v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->b:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_1
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter

    .prologue
    const/16 v0, 0x11

    const/4 v1, 0x0

    const/16 v2, 0x42

    .line 429
    iget-object v3, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 431
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->b()Z

    move-result v3

    if-nez v3, :cond_3

    .line 432
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 434
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 435
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, v2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 437
    if-eqz v0, :cond_2

    if-eq v0, p0, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    move v1, v0

    .line 466
    :cond_1
    :goto_1
    return v1

    :cond_2
    move v0, v1

    .line 437
    goto :goto_0

    .line 444
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 445
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    .line 447
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 448
    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->b(I)Z

    move-result v1

    goto :goto_1

    .line 450
    :cond_4
    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->c(I)Z

    move-result v1

    goto :goto_1

    .line 454
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 455
    invoke-virtual {p0, v2}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->b(I)Z

    move-result v1

    goto :goto_1

    .line 457
    :cond_5
    invoke-virtual {p0, v2}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->c(I)Z

    move-result v1

    goto :goto_1

    .line 461
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_2
    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->b(I)Z

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_2

    .line 445
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 254
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 257
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 262
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 265
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 278
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 281
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 270
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    return-void
.end method

.method public final b(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1125
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1146
    :goto_0
    return-void

    .line 1129
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->a:J

    sub-long/2addr v0, v2

    .line 1130
    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1131
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1132
    invoke-virtual {p0, v4}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1133
    sub-int v0, v1, v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1134
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getScrollX()I

    move-result v1

    .line 1135
    add-int v2, v1, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int/2addr v0, v1

    .line 1137
    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->c:Lawb;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getScrollY()I

    move-result v3

    invoke-virtual {v2, v1, v3, v0, v4}, Lawb;->a(IIII)V

    .line 1138
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->invalidate()V

    .line 1145
    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->a:J

    goto :goto_0

    .line 1140
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->c:Lawb;

    invoke-virtual {v0}, Lawb;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1141
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->c:Lawb;

    invoke-virtual {v0}, Lawb;->f()V

    .line 1143
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->scrollBy(II)V

    goto :goto_1
.end method

.method public b(I)Z
    .locals 1
    .parameter

    .prologue
    .line 910
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->a(II)Z

    move-result v0

    return v0
.end method

.method public final c(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1155
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getScrollX()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getScrollY()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->b(II)V

    .line 1156
    return-void
.end method

.method public c(I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 963
    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    .line 964
    :goto_0
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getWidth()I

    move-result v2

    .line 966
    iget-object v3, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->b:Landroid/graphics/Rect;

    iput v1, v3, Landroid/graphics/Rect;->left:I

    .line 967
    iget-object v3, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->b:Landroid/graphics/Rect;

    iput v2, v3, Landroid/graphics/Rect;->right:I

    .line 969
    if-eqz v0, :cond_0

    .line 970
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getChildCount()I

    move-result v0

    .line 971
    if-lez v0, :cond_0

    .line 972
    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 973
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 974
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->b:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 978
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v0, v1}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->a(III)Z

    move-result v0

    return v0

    :cond_1
    move v0, v1

    .line 963
    goto :goto_0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 2

    .prologue
    .line 1175
    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 3

    .prologue
    .line 1164
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getChildCount()I

    move-result v1

    .line 1165
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 1166
    if-nez v1, :cond_0

    .line 1170
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 7

    .prologue
    .line 1210
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->A:Z

    if-eqz v0, :cond_1

    .line 1251
    :cond_0
    :goto_0
    return-void

    .line 1214
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->c:Lawb;

    invoke-virtual {v0}, Lawb;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1231
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getScrollX()I

    move-result v0

    .line 1232
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getScrollY()I

    move-result v1

    .line 1233
    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->c:Lawb;

    invoke-virtual {v2}, Lawb;->b()I

    move-result v2

    .line 1234
    iget-object v3, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->c:Lawb;

    invoke-virtual {v3}, Lawb;->c()I

    move-result v3

    .line 1236
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 1237
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1238
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-direct {p0, v2, v5, v6}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->b(III)I

    move-result v2

    .line 1239
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-direct {p0, v3, v5, v4}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->b(III)I

    move-result v3

    .line 1240
    if-ne v2, v0, :cond_2

    if-eq v3, v1, :cond_3

    .line 1241
    :cond_2
    invoke-static {p0, v2}, Lazv;->a(Landroid/view/View;I)Z

    .line 1242
    invoke-static {p0, v3}, Lazv;->b(Landroid/view/View;I)Z

    .line 1243
    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->onScrollChanged(IIII)V

    .line 1246
    :cond_3
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->awakenScrollBars()Z

    .line 1249
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->postInvalidate()V

    goto :goto_0
.end method

.method public d(I)V
    .locals 1
    .parameter

    .prologue
    .line 1628
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->y:Lawa;

    if-eqz v0, :cond_0

    .line 1629
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->y:Lawa;

    invoke-interface {v0, p1}, Lawa;->a(I)V

    .line 1630
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 417
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->a(Landroid/view/KeyEvent;)Z

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

.method protected getLeftFadingEdgeStrength()F
    .locals 2

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 204
    const/4 v0, 0x0

    .line 212
    :goto_0
    return v0

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 208
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getScrollX()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 209
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_0

    .line 212
    :cond_1
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 236
    const/high16 v0, 0x3f00

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 4

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 218
    const/4 v0, 0x0

    .line 228
    :goto_0
    return v0

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 222
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 223
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v1, v2, v1

    .line 224
    if-ge v1, v0, :cond_1

    .line 225
    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_0

    .line 228
    :cond_1
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method public getScrollingEnabled()Z
    .locals 1

    .prologue
    .line 369
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->B:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1180
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1185
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v1, v0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1188
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1190
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1191
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1196
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1198
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p5

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v1, v2}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1201
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v2

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1204
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1205
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 494
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 495
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-boolean v3, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->h:Z

    if-eqz v3, :cond_0

    .line 567
    :goto_0
    return v0

    .line 499
    :cond_0
    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    .line 567
    :cond_1
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->h:Z

    goto :goto_0

    .line 510
    :pswitch_1
    iget v1, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->o:I

    .line 511
    if-eq v1, v4, :cond_1

    .line 516
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 517
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 518
    iget v2, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->e:F

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    .line 519
    iget v3, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->l:I

    if-le v2, v3, :cond_1

    .line 520
    iput-boolean v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->h:Z

    .line 521
    iput v1, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->e:F

    .line 522
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getScrollX()I

    move-result v1

    iput v1, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->t:I

    .line 523
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 529
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 530
    float-to-int v3, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v3, v4}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->d(II)Z

    move-result v3

    if-nez v3, :cond_2

    .line 531
    iput-boolean v1, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->h:Z

    goto :goto_1

    .line 539
    :cond_2
    iput v2, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->e:F

    .line 540
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->o:I

    .line 541
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getScrollX()I

    move-result v2

    iput v2, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->t:I

    .line 548
    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->c:Lawb;

    invoke-virtual {v2}, Lawb;->a()Z

    move-result v2

    if-nez v2, :cond_3

    :goto_2
    iput-boolean v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->h:Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    .line 555
    :pswitch_3
    iput-boolean v1, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->h:Z

    .line 556
    iput v4, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->o:I

    goto :goto_1

    .line 559
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->a(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 499
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1425
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1426
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getWidth()I

    move-result v0

    sput v0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->p:I

    .line 1427
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->D:Z

    if-eqz v0, :cond_0

    .line 1428
    iget v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->C:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->a(I)V

    .line 1429
    iput-boolean v1, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->D:Z

    .line 1431
    :cond_0
    iput-boolean v1, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->f:Z

    .line 1433
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->g:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->g:Landroid/view/View;

    invoke-direct {p0, v0, p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1434
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->g:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->b(Landroid/view/View;)V

    .line 1436
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->g:Landroid/view/View;

    .line 1437
    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->s:I

    .line 1439
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/high16 v7, 0x4000

    const/4 v3, 0x0

    .line 374
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 376
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->j:Z

    if-nez v0, :cond_1

    .line 412
    :cond_0
    return-void

    .line 380
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 381
    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 386
    invoke-virtual {p0, v3}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 387
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getMeasuredWidth()I

    move-result v2

    .line 388
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-ge v0, v2, :cond_2

    .line 389
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 391
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {p2, v4, v0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v4

    .line 393
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getPaddingLeft()I

    move-result v0

    sub-int v0, v2, v0

    .line 394
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 395
    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 396
    invoke-virtual {v1, v2, v4}, Landroid/view/View;->measure(II)V

    .line 398
    :goto_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move v2, v3

    move v3, v0

    :goto_1
    move-object v0, v1

    .line 399
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_0

    move-object v0, v1

    .line 400
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 401
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 403
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v5, v4}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v4

    .line 405
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v3, v5

    .line 406
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v3, v5

    .line 407
    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 408
    invoke-virtual {v0, v5, v4}, Landroid/view/View;->measure(II)V

    .line 399
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1385
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 1386
    const/16 p1, 0x42

    .line 1391
    :cond_0
    :goto_0
    if-nez p2, :cond_3

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 1396
    :goto_1
    if-nez v1, :cond_4

    .line 1404
    :cond_1
    :goto_2
    return v0

    .line 1387
    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1388
    const/16 p1, 0x11

    goto :goto_0

    .line 1391
    :cond_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    .line 1400
    :cond_4
    invoke-direct {p0, v1}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->a(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1404
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1443
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1445
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1446
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    .line 1457
    :cond_0
    :goto_0
    return-void

    .line 1449
    :cond_1
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1451
    invoke-direct {p0, v0, v1}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->a(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1452
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1453
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1454
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->a(Landroid/graphics/Rect;)I

    move-result v0

    .line 1455
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->e(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, -0x1

    const/high16 v6, 0x4100

    const/high16 v5, 0x3fc0

    const v4, 0x3f8f5c29

    const/4 v1, 0x0

    .line 573
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->B:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 697
    :goto_0
    return v0

    .line 576
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 579
    goto :goto_0

    .line 582
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->i:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2

    .line 583
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->i:Landroid/view/VelocityTracker;

    .line 585
    :cond_2
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->i:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 587
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 589
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 697
    :cond_3
    :goto_1
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 591
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 592
    float-to-int v2, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v2, v3}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->d(II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->h:Z

    if-nez v2, :cond_4

    move v0, v1

    .line 593
    goto :goto_0

    .line 600
    :cond_4
    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->c:Lawb;

    invoke-virtual {v2}, Lawb;->a()Z

    move-result v2

    if-nez v2, :cond_5

    .line 601
    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->c:Lawb;

    invoke-virtual {v2}, Lawb;->f()V

    .line 605
    :cond_5
    iput v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->r:F

    .line 606
    iput v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->e:F

    .line 607
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->t:I

    .line 608
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->o:I

    goto :goto_1

    .line 612
    :pswitch_2
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->h:Z

    if-eqz v0, :cond_3

    .line 614
    iget v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->o:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 615
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 616
    iget v2, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->e:F

    sub-float/2addr v2, v0

    float-to-int v2, v2

    .line 617
    iget v3, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->x:I

    iget v4, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->z:I

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_6

    iget v3, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->e:F

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_6

    .line 618
    iput v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->e:F

    goto :goto_1

    .line 621
    :cond_6
    iput v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->e:F

    .line 622
    iget v3, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->r:F

    add-float/2addr v3, v6

    cmpl-float v3, v0, v3

    if-lez v3, :cond_8

    .line 624
    iput v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->r:F

    .line 625
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->q:Z

    .line 632
    :cond_7
    :goto_2
    invoke-virtual {p0, v2, v1}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->scrollBy(II)V

    goto :goto_1

    .line 626
    :cond_8
    iget v3, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->r:F

    sub-float/2addr v3, v6

    cmpg-float v3, v0, v3

    if-gez v3, :cond_7

    .line 628
    iput v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->r:F

    .line 629
    iput-boolean v1, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->q:Z

    goto :goto_2

    .line 636
    :pswitch_3
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->h:Z

    if-eqz v0, :cond_3

    .line 637
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->i:Landroid/view/VelocityTracker;

    .line 638
    const/16 v2, 0x3e8

    iget v3, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->n:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 640
    invoke-static {}, Lazf;->g()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 641
    iget v2, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->o:I

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    .line 645
    :goto_3
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_e

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->m:I

    if-le v0, v2, :cond_e

    .line 647
    iget v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->t:I

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getScrollX()I

    move-result v2

    sub-int/2addr v0, v2

    .line 648
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 650
    if-lez v0, :cond_c

    .line 651
    iget v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->t:I

    sub-int/2addr v0, v2

    .line 652
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->f(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->g(I)V

    .line 653
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_b

    .line 654
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->f(I)I

    move-result v0

    invoke-virtual {p0, v0, v4}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->a(IF)V

    .line 674
    :cond_9
    :goto_4
    iput v7, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->o:I

    .line 675
    iput-boolean v1, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->h:Z

    .line 677
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->i:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_3

    .line 678
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->i:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 679
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->i:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 643
    :cond_a
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    float-to-int v0, v0

    goto :goto_3

    .line 656
    :cond_b
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->f(I)I

    move-result v0

    invoke-virtual {p0, v0, v5}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->a(IF)V

    goto :goto_4

    .line 658
    :cond_c
    if-gez v0, :cond_9

    .line 659
    iget v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->t:I

    add-int/2addr v0, v2

    .line 660
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->f(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->g(I)V

    .line 661
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_d

    .line 662
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->f(I)I

    move-result v0

    invoke-virtual {p0, v0, v4}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->a(IF)V

    goto :goto_4

    .line 664
    :cond_d
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->f(I)I

    move-result v0

    invoke-virtual {p0, v0, v5}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->a(IF)V

    goto :goto_4

    .line 669
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 671
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->c()V

    goto :goto_4

    .line 684
    :pswitch_4
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->h:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 685
    iput v7, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->o:I

    .line 686
    iput-boolean v1, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->h:Z

    .line 687
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->i:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_3

    .line 688
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->i:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 689
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->i:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 694
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 589
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1360
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->d:Z

    if-nez v0, :cond_0

    .line 1361
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->f:Z

    if-nez v0, :cond_1

    .line 1362
    invoke-direct {p0, p2}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->b(Landroid/view/View;)V

    .line 1368
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1369
    return-void

    .line 1365
    :cond_1
    iput-object p2, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->g:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1411
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1414
    invoke-direct {p0, p2, p3}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->a(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->f:Z

    .line 1420
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1421
    return-void
.end method

.method public scrollTo(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1559
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1560
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1561
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->b(III)I

    move-result v1

    .line 1562
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-direct {p0, p2, v2, v0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->b(III)I

    move-result v0

    .line 1563
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getScrollX()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getScrollY()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 1564
    :cond_0
    invoke-super {p0, v1, v0}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1567
    :cond_1
    return-void
.end method

.method public setChangeItemListener(Lawa;)V
    .locals 0
    .parameter

    .prologue
    .line 1634
    iput-object p1, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->y:Lawa;

    .line 1635
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1
    .parameter

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->j:Z

    if-eq p1, v0, :cond_0

    .line 313
    iput-boolean p1, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->j:Z

    .line 314
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->requestLayout()V

    .line 316
    :cond_0
    return-void
.end method

.method public setItemSize(I)V
    .locals 0
    .parameter

    .prologue
    .line 1616
    iput p1, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->z:I

    .line 1617
    return-void
.end method

.method public setScrollingEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 361
    iput-boolean p1, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->B:Z

    .line 362
    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 330
    iput-boolean p1, p0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->k:Z

    .line 331
    return-void
.end method
