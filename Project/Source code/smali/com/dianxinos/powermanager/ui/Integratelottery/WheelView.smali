.class public Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;
.super Landroid/view/View;
.source "WheelView.java"


# static fields
.field private static final c:[I


# instance fields
.field a:Z

.field private b:Lavq;

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/graphics/drawable/GradientDrawable;

.field private i:Landroid/graphics/drawable/GradientDrawable;

.field private j:Lavo;

.field private k:Z

.field private l:I

.field private m:Landroid/widget/LinearLayout;

.field private n:I

.field private o:Lavn;

.field private p:Lavw;

.field private q:Ljava/util/List;

.field private r:Ljava/util/List;

.field private s:Landroid/database/DataSetObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->c:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x11t 0x11t 0x11t 0xfft
        0xaat 0xaat 0xaat 0x0t
        0xaat 0xaat 0xaat 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 225
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 147
    new-instance v0, Lavr;

    invoke-direct {v0, p0}, Lavr;-><init>(Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->b:Lavq;

    .line 193
    iput v1, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->d:I

    .line 194
    const/4 v0, 0x3

    iput v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->e:I

    .line 196
    iput v1, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->f:I

    .line 206
    iput-boolean v1, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->a:Z

    .line 210
    new-instance v0, Lavw;

    invoke-direct {v0, p0, p0}, Lavw;-><init>(Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->p:Lavw;

    .line 211
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->q:Ljava/util/List;

    .line 212
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->r:Ljava/util/List;

    .line 237
    new-instance v0, Lavs;

    invoke-direct {v0, p0}, Lavs;-><init>(Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->s:Landroid/database/DataSetObserver;

    .line 226
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->a(Landroid/content/Context;)V

    .line 227
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 220
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 147
    new-instance v0, Lavr;

    invoke-direct {v0, p0}, Lavr;-><init>(Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->b:Lavq;

    .line 193
    iput v1, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->d:I

    .line 194
    const/4 v0, 0x3

    iput v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->e:I

    .line 196
    iput v1, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->f:I

    .line 206
    iput-boolean v1, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->a:Z

    .line 210
    new-instance v0, Lavw;

    invoke-direct {v0, p0, p0}, Lavw;-><init>(Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->p:Lavw;

    .line 211
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->q:Ljava/util/List;

    .line 212
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->r:Ljava/util/List;

    .line 237
    new-instance v0, Lavs;

    invoke-direct {v0, p0}, Lavs;-><init>(Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->s:Landroid/database/DataSetObserver;

    .line 221
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->a(Landroid/content/Context;)V

    .line 222
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 215
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 147
    new-instance v0, Lavr;

    invoke-direct {v0, p0}, Lavr;-><init>(Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->b:Lavq;

    .line 193
    iput v1, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->d:I

    .line 194
    const/4 v0, 0x3

    iput v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->e:I

    .line 196
    iput v1, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->f:I

    .line 206
    iput-boolean v1, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->a:Z

    .line 210
    new-instance v0, Lavw;

    invoke-direct {v0, p0, p0}, Lavw;-><init>(Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->p:Lavw;

    .line 211
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->q:Ljava/util/List;

    .line 212
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->r:Ljava/util/List;

    .line 237
    new-instance v0, Lavs;

    invoke-direct {v0, p0}, Lavs;-><init>(Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->s:Landroid/database/DataSetObserver;

    .line 216
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->a(Landroid/content/Context;)V

    .line 217
    return-void
.end method

.method private a(Landroid/widget/LinearLayout;)I
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 385
    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->f:I

    .line 389
    :cond_0
    iget v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->f:I

    iget v1, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->e:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->f:I

    mul-int/lit8 v1, v1, 0xa

    div-int/lit8 v1, v1, 0x32

    sub-int/2addr v0, v1

    .line 391
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;)I
    .locals 1
    .parameter

    .prologue
    .line 21
    iget v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->l:I

    return v0
.end method

.method private a(I)V
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 513
    iget v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->l:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->l:I

    .line 515
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->getItemHeight()I

    move-result v4

    .line 516
    iget v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->l:I

    div-int v3, v0, v4

    .line 518
    iget v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->d:I

    sub-int v2, v0, v3

    .line 519
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->o:Lavn;

    invoke-virtual {v0}, Lavn;->a()I

    move-result v5

    .line 521
    iget v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->l:I

    rem-int/2addr v0, v4

    .line 522
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    div-int/lit8 v7, v4, 0x2

    if-gt v6, v7, :cond_0

    move v0, v1

    .line 525
    :cond_0
    iget-boolean v6, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->a:Z

    if-eqz v6, :cond_4

    if-lez v5, :cond_4

    .line 526
    if-lez v0, :cond_1

    .line 527
    add-int/lit8 v2, v2, -0x1

    .line 528
    add-int/lit8 v3, v3, 0x1

    move v0, v2

    move v2, v3

    .line 534
    :goto_0
    if-gez v0, :cond_2

    .line 535
    add-int/2addr v0, v5

    goto :goto_0

    .line 529
    :cond_1
    if-gez v0, :cond_a

    .line 530
    add-int/lit8 v2, v2, 0x1

    .line 531
    add-int/lit8 v3, v3, -0x1

    move v0, v2

    move v2, v3

    goto :goto_0

    .line 537
    :cond_2
    rem-int/2addr v0, v5

    .line 554
    :goto_1
    iget v3, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->l:I

    .line 555
    iget v5, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->d:I

    if-eq v0, v5, :cond_8

    .line 556
    invoke-virtual {p0, v0, v1}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->a(IZ)V

    .line 562
    :goto_2
    mul-int v0, v2, v4

    sub-int v0, v3, v0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->l:I

    .line 563
    iget v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->l:I

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 564
    iget v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->l:I

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->getHeight()I

    move-result v1

    rem-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->l:I

    .line 566
    :cond_3
    return-void

    .line 539
    :cond_4
    if-gez v2, :cond_5

    .line 540
    iget v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->d:I

    move v2, v0

    move v0, v1

    .line 541
    goto :goto_1

    .line 542
    :cond_5
    if-lt v2, v5, :cond_6

    .line 543
    iget v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->d:I

    sub-int/2addr v0, v5

    add-int/lit8 v2, v0, 0x1

    .line 544
    add-int/lit8 v0, v5, -0x1

    goto :goto_1

    .line 545
    :cond_6
    if-lez v2, :cond_7

    if-lez v0, :cond_7

    .line 546
    add-int/lit8 v0, v2, -0x1

    .line 547
    add-int/lit8 v2, v3, 0x1

    goto :goto_1

    .line 548
    :cond_7
    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_9

    if-gez v0, :cond_9

    .line 549
    add-int/lit8 v0, v2, 0x1

    .line 550
    add-int/lit8 v2, v3, -0x1

    goto :goto_1

    .line 558
    :cond_8
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->invalidate()V

    goto :goto_2

    :cond_9
    move v0, v2

    move v2, v3

    goto :goto_1

    :cond_a
    move v0, v2

    move v2, v3

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 230
    new-instance v0, Lavo;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->b:Lavq;

    invoke-direct {v0, v1, v2}, Lavo;-><init>(Landroid/content/Context;Lavq;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->j:Lavo;

    .line 231
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 486
    const-wide/high16 v0, 0x3ff8

    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->getItemHeight()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 487
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->h:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v4, v4, v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 488
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->h:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 490
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->i:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->getHeight()I

    move-result v2

    sub-int v0, v2, v0

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->getHeight()I

    move-result v3

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 491
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->i:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 492
    return-void
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->a(I)V

    return-void
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->k:Z

    return p1
.end method

.method public static synthetic b(Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput p1, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->l:I

    return p1
.end method

.method public static synthetic b(Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;)Lavo;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->j:Lavo;

    return-object v0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter

    .prologue
    .line 495
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 497
    iget v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->d:I

    iget v1, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->n:I

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->getItemHeight()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->getItemHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 499
    const/high16 v1, 0x4120

    neg-int v0, v0

    iget v2, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->l:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 501
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 503
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 504
    return-void
.end method

.method private b(I)Z
    .locals 1
    .parameter

    .prologue
    .line 685
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->o:Lavn;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->o:Lavn;

    invoke-virtual {v0}, Lavn;->a()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->a:Z

    if-nez v0, :cond_0

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->o:Lavn;

    invoke-virtual {v0}, Lavn;->a()I

    move-result v0

    if-ge p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(IZ)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 670
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->c(I)Landroid/view/View;

    move-result-object v1

    .line 671
    if-eqz v1, :cond_0

    .line 672
    if-eqz p2, :cond_1

    .line 673
    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 678
    :goto_0
    const/4 v0, 0x1

    .line 681
    :cond_0
    return v0

    .line 675
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private c(II)I
    .locals 5
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x4000

    const/4 v2, -0x2

    const/4 v3, 0x0

    .line 408
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->d()V

    .line 410
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->m:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->m:Landroid/widget/LinearLayout;

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 414
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    .line 416
    if-ne p2, v4, :cond_1

    .line 429
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->m:Landroid/widget/LinearLayout;

    add-int/lit8 v1, p1, -0x14

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 432
    return p1

    .line 419
    :cond_1
    add-int/lit8 v0, v0, 0x14

    .line 422
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 424
    const/high16 v1, -0x8000

    if-ne p2, v1, :cond_2

    if-lt p1, v0, :cond_0

    :cond_2
    move p1, v0

    goto :goto_0
.end method

.method private c(I)Landroid/view/View;
    .locals 4
    .parameter

    .prologue
    .line 690
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->o:Lavn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->o:Lavn;

    invoke-virtual {v0}, Lavn;->a()I

    move-result v0

    if-nez v0, :cond_1

    .line 691
    :cond_0
    const/4 v0, 0x0

    .line 703
    :goto_0
    return-object v0

    .line 693
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->o:Lavn;

    invoke-virtual {v0}, Lavn;->a()I

    move-result v0

    .line 694
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->b(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 695
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->o:Lavn;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->p:Lavw;

    invoke-virtual {v1}, Lavw;->b()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2}, Lavn;->a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 697
    :cond_2
    :goto_1
    if-gez p1, :cond_3

    .line 698
    add-int/2addr p1, v0

    goto :goto_1

    .line 702
    :cond_3
    rem-int v0, p1, v0

    .line 703
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->o:Lavn;

    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->p:Lavw;

    invoke-virtual {v2}, Lavw;->a()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v2, v3}, Lavn;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 508
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->g:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    add-int/lit8 v3, v0, -0xd

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->getWidth()I

    move-result v4

    add-int/lit8 v0, v0, 0xd

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 509
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 510
    return-void
.end method

.method public static synthetic c(Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;)Z
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->k:Z

    return v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 368
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->g:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 369
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0204a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->g:Landroid/graphics/drawable/Drawable;

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->h:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_1

    .line 374
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v2, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->c:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->h:Landroid/graphics/drawable/GradientDrawable;

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->i:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_2

    .line 378
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v2, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->c:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->i:Landroid/graphics/drawable/GradientDrawable;

    .line 381
    :cond_2
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020493

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->setBackgroundResource(I)V

    .line 382
    return-void
.end method

.method private d(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 466
    add-int/lit8 v0, p1, -0x14

    .line 468
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v2, v0, p2}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 469
    return-void
.end method

.method private e()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 600
    .line 601
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->getItemsRange()Lavt;

    move-result-object v4

    .line 602
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->m:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    .line 603
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->p:Lavw;

    iget-object v3, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->m:Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->n:I

    invoke-virtual {v0, v3, v5, v4}, Lavw;->a(Landroid/widget/LinearLayout;ILavt;)I

    move-result v3

    .line 604
    iget v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->n:I

    if-eq v0, v3, :cond_4

    move v0, v1

    .line 605
    :goto_0
    iput v3, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->n:I

    .line 611
    :goto_1
    if-nez v0, :cond_1

    .line 612
    iget v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->n:I

    invoke-virtual {v4}, Lavt;->a()I

    move-result v3

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    invoke-virtual {v4}, Lavt;->c()I

    move-result v3

    if-eq v0, v3, :cond_6

    :cond_0
    move v0, v1

    .line 616
    :cond_1
    :goto_2
    iget v3, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->n:I

    invoke-virtual {v4}, Lavt;->a()I

    move-result v5

    if-le v3, v5, :cond_8

    iget v3, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->n:I

    invoke-virtual {v4}, Lavt;->b()I

    move-result v5

    if-gt v3, v5, :cond_8

    .line 617
    iget v3, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->n:I

    add-int/lit8 v3, v3, -0x1

    :goto_3
    invoke-virtual {v4}, Lavt;->a()I

    move-result v5

    if-lt v3, v5, :cond_2

    .line 618
    invoke-direct {p0, v3, v1}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->b(IZ)Z

    move-result v5

    if-nez v5, :cond_7

    .line 627
    :cond_2
    :goto_4
    iget v3, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->n:I

    .line 628
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    :goto_5
    invoke-virtual {v4}, Lavt;->c()I

    move-result v5

    if-ge v1, v5, :cond_9

    .line 629
    iget v5, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->n:I

    add-int/2addr v5, v1

    invoke-direct {p0, v5, v2}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->b(IZ)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-nez v5, :cond_3

    .line 630
    add-int/lit8 v3, v3, 0x1

    .line 628
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_4
    move v0, v2

    .line 604
    goto :goto_0

    .line 607
    :cond_5
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->g()V

    move v0, v1

    .line 608
    goto :goto_1

    :cond_6
    move v0, v2

    .line 612
    goto :goto_2

    .line 621
    :cond_7
    iput v3, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->n:I

    .line 617
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 624
    :cond_8
    invoke-virtual {v4}, Lavt;->a()I

    move-result v1

    iput v1, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->n:I

    goto :goto_4

    .line 633
    :cond_9
    iput v3, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->n:I

    .line 635
    return v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 639
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->getWidth()I

    move-result v0

    const/high16 v1, 0x4000

    invoke-direct {p0, v0, v1}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->c(II)I

    .line 641
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->d(II)V

    .line 643
    :cond_0
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 646
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->m:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 647
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->m:Landroid/widget/LinearLayout;

    .line 648
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->m:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 650
    :cond_0
    return-void
.end method

.method private getItemHeight()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 395
    iget v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->f:I

    if-eqz v0, :cond_0

    .line 396
    iget v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->f:I

    .line 404
    :goto_0
    return v0

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->m:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->f:I

    .line 401
    iget v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->f:I

    goto :goto_0

    .line 404
    :cond_1
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->e:I

    div-int/2addr v0, v1

    goto :goto_0
.end method

.method private getItemsRange()Lavt;
    .locals 7

    .prologue
    .line 574
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->getItemHeight()I

    move-result v0

    if-nez v0, :cond_0

    .line 575
    const/4 v0, 0x0

    .line 596
    :goto_0
    return-object v0

    .line 578
    :cond_0
    iget v1, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->d:I

    .line 579
    const/4 v0, 0x1

    .line 581
    :goto_1
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->getItemHeight()I

    move-result v2

    mul-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 582
    add-int/lit8 v1, v1, -0x1

    .line 583
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 586
    :cond_1
    iget v2, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->l:I

    if-eqz v2, :cond_3

    .line 587
    iget v2, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->l:I

    if-lez v2, :cond_2

    .line 588
    add-int/lit8 v1, v1, -0x1

    .line 590
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 592
    iget v2, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->l:I

    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->getItemHeight()I

    move-result v3

    div-int/2addr v2, v3

    .line 593
    sub-int/2addr v1, v2

    .line 594
    int-to-double v3, v0

    int-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->asin(D)D

    move-result-wide v5

    add-double v2, v3, v5

    double-to-int v0, v2

    .line 596
    :cond_3
    new-instance v2, Lavt;

    invoke-direct {v2, p0, v1, v0}, Lavt;-><init>(Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;II)V

    move-object v0, v2

    goto :goto_0
.end method

.method private h()V
    .locals 4

    .prologue
    .line 654
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->m:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 655
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->p:Lavw;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->m:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->n:I

    new-instance v3, Lavt;

    invoke-direct {v3, p0}, Lavt;-><init>(Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;)V

    invoke-virtual {v0, v1, v2, v3}, Lavw;->a(Landroid/widget/LinearLayout;ILavt;)I

    .line 661
    :goto_0
    iget v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->e:I

    div-int/lit8 v1, v0, 0x2

    .line 662
    iget v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->d:I

    add-int/2addr v0, v1

    :goto_1
    iget v2, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->d:I

    sub-int/2addr v2, v1

    if-lt v0, v2, :cond_2

    .line 663
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->b(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 664
    iput v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->n:I

    .line 662
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 657
    :cond_1
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->g()V

    goto :goto_0

    .line 667
    :cond_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavv;

    .line 285
    invoke-interface {v0, p0}, Lavv;->a(Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;)V

    goto :goto_0

    .line 287
    :cond_0
    return-void
.end method

.method protected a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 270
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavu;

    .line 271
    invoke-interface {v0, p0, p1, p2}, Lavu;->a(Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;II)V

    goto :goto_0

    .line 273
    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 300
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->o:Lavn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->o:Lavn;

    invoke-virtual {v0}, Lavn;->a()I

    move-result v0

    if-nez v0, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->o:Lavn;

    invoke-virtual {v0}, Lavn;->a()I

    move-result v0

    .line 305
    if-ltz p1, :cond_2

    if-lt p1, v0, :cond_4

    .line 306
    :cond_2
    iget-boolean v1, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->a:Z

    if-eqz v1, :cond_0

    .line 307
    :goto_1
    if-gez p1, :cond_3

    .line 308
    add-int/2addr p1, v0

    goto :goto_1

    .line 310
    :cond_3
    rem-int/2addr p1, v0

    .line 315
    :cond_4
    iget v1, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->d:I

    if-eq p1, v1, :cond_0

    .line 316
    if-eqz p2, :cond_6

    .line 317
    iget v1, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->d:I

    sub-int v1, p1, v1

    .line 318
    iget-boolean v2, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->a:Z

    if-eqz v2, :cond_7

    .line 319
    iget v2, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->d:I

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->d:I

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v0, v2

    .line 321
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 322
    if-gez v1, :cond_5

    .line 325
    :goto_2
    invoke-virtual {p0, v0, v3}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->b(II)V

    goto :goto_0

    .line 322
    :cond_5
    neg-int v0, v0

    goto :goto_2

    .line 327
    :cond_6
    iput v3, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->l:I

    .line 329
    iget v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->d:I

    .line 330
    iput p1, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->d:I

    .line 332
    iget v1, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->d:I

    invoke-virtual {p0, v0, v1}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->a(II)V

    .line 334
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->invalidate()V

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_2
.end method

.method public a(Lavu;)V
    .locals 1
    .parameter

    .prologue
    .line 262
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    return-void
.end method

.method public a(Lavv;)V
    .locals 1
    .parameter

    .prologue
    .line 276
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->r:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    return-void
.end method

.method public a(Z)V
    .locals 4
    .parameter

    .prologue
    .line 353
    if-eqz p1, :cond_2

    .line 354
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->p:Lavw;

    invoke-virtual {v0}, Lavw;->c()V

    .line 355
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->m:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 358
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->l:I

    .line 364
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->invalidate()V

    .line 365
    return-void

    .line 359
    :cond_2
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->m:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->p:Lavw;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->m:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->n:I

    new-instance v3, Lavt;

    invoke-direct {v3, p0}, Lavt;-><init>(Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;)V

    invoke-virtual {v0, v1, v2, v3}, Lavw;->a(Landroid/widget/LinearLayout;ILavt;)I

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lavv;

    .line 291
    invoke-interface {v0, p0}, Lavv;->b(Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;)V

    goto :goto_0

    .line 293
    :cond_0
    return-void
.end method

.method public b(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 569
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->getItemHeight()I

    move-result v0

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->l:I

    sub-int/2addr v0, v1

    .line 570
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->j:Lavo;

    invoke-virtual {v1, v0, p2}, Lavo;->a(II)V

    .line 571
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->a:Z

    return v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->d:I

    return v0
.end method

.method public getViewAdapter()Lavn;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->o:Lavn;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter

    .prologue
    .line 473
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 475
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->o:Lavn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->o:Lavn;

    invoke-virtual {v0}, Lavn;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 476
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->f()V

    .line 478
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->b(Landroid/graphics/Canvas;)V

    .line 479
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->c(Landroid/graphics/Canvas;)V

    .line 482
    :cond_0
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->a(Landroid/graphics/Canvas;)V

    .line 483
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 462
    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-direct {p0, v0, v1}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->d(II)V

    .line 463
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 437
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 438
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 439
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 440
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 442
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->h()V

    .line 444
    invoke-direct {p0, v3, v1}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->c(II)I

    move-result v3

    .line 447
    const/high16 v1, 0x4000

    if-ne v2, v1, :cond_0

    .line 457
    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->setMeasuredDimension(II)V

    .line 458
    return-void

    .line 450
    :cond_0
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->m:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->a(Landroid/widget/LinearLayout;)I

    move-result v1

    .line 452
    const/high16 v4, -0x8000

    if-ne v2, v4, :cond_1

    .line 453
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public setCurrentItem(I)V
    .locals 1
    .parameter

    .prologue
    .line 340
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->a(IZ)V

    .line 341
    return-void
.end method

.method public setCyclic(Z)V
    .locals 1
    .parameter

    .prologue
    .line 348
    iput-boolean p1, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->a:Z

    .line 349
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->a(Z)V

    .line 350
    return-void
.end method

.method public setViewAdapter(Lavn;)V
    .locals 2
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->o:Lavn;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->o:Lavn;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->s:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lavn;->b(Landroid/database/DataSetObserver;)V

    .line 253
    :cond_0
    iput-object p1, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->o:Lavn;

    .line 254
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->o:Lavn;

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->o:Lavn;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->s:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lavn;->a(Landroid/database/DataSetObserver;)V

    .line 258
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->a(Z)V

    .line 259
    return-void
.end method
