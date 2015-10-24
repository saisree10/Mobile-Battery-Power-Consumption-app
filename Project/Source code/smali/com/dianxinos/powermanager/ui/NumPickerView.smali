.class public Lcom/dianxinos/powermanager/ui/NumPickerView;
.super Landroid/widget/ScrollView;
.source "NumPickerView.java"


# static fields
.field private static c:Ljava/lang/String;


# instance fields
.field private A:Z

.field private B:I

.field private C:I

.field private D:F

.field private E:F

.field private F:F

.field private G:F

.field private H:F

.field private I:Landroid/graphics/drawable/NinePatchDrawable;

.field private J:I

.field public a:Z

.field public b:I

.field private d:Lavz;

.field private e:I

.field private f:J

.field private g:J

.field private h:I

.field private i:I

.field private j:Landroid/view/animation/DecelerateInterpolator;

.field private k:Landroid/graphics/Paint;

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Landroid/view/VelocityTracker;

.field private t:I

.field private u:I

.field private v:I

.field private final w:F

.field private x:I

.field private y:[Ljava/lang/String;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "NumPickerView"

    sput-object v0, Lcom/dianxinos/powermanager/ui/NumPickerView;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->e:I

    .line 37
    iput-boolean v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->a:Z

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->k:Landroid/graphics/Paint;

    .line 50
    iput v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->o:I

    .line 54
    iput v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->q:I

    .line 55
    iput v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->r:I

    .line 65
    iput v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->x:I

    .line 79
    iput v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->z:I

    .line 80
    iput v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->b:I

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->A:Z

    .line 94
    invoke-super {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->t:I

    .line 96
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->u:I

    .line 97
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->v:I

    .line 99
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->j:Landroid/view/animation/DecelerateInterpolator;

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4320

    mul-float/2addr v0, v1

    .line 101
    const v1, 0x43c10b3d

    mul-float/2addr v0, v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->w:F

    .line 105
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/NumPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0203c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->I:Landroid/graphics/drawable/NinePatchDrawable;

    .line 107
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/NumPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v1, 0x7f08014b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->G:F

    .line 109
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/NumPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v1, 0x7f08014a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->H:F

    .line 111
    return-void
.end method

.method private a(I)I
    .locals 5
    .parameter

    .prologue
    const-wide/16 v1, 0x12c

    const/4 v4, 0x1

    .line 304
    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->e:I

    packed-switch v0, :pswitch_data_0

    .line 366
    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->A:Z

    if-nez v0, :cond_1

    .line 368
    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->i:I

    iget v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->C:I

    if-le v0, v1, :cond_5

    .line 370
    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->C:I

    iput v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->i:I

    .line 377
    :cond_1
    :goto_1
    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->i:I

    :goto_2
    return v0

    .line 307
    :pswitch_1
    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->x:I

    iget v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->r:I

    iget v2, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->q:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->x:I

    .line 308
    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->r:I

    iput v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->q:I

    .line 309
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->A:Z

    if-nez v0, :cond_2

    .line 311
    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->x:I

    iget v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->C:I

    if-le v0, v1, :cond_3

    .line 313
    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->C:I

    iput v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->x:I

    .line 322
    :cond_2
    :goto_3
    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->x:I

    goto :goto_2

    .line 316
    :cond_3
    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->x:I

    iget v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->B:I

    if-ge v0, v1, :cond_2

    .line 318
    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->B:I

    iput v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->x:I

    goto :goto_3

    .line 324
    :pswitch_2
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 326
    mul-int v0, p1, p1

    int-to-float v0, v0

    const/high16 v1, 0x4000

    iget v2, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->w:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 328
    if-gez p1, :cond_4

    .line 330
    neg-double v0, v0

    .line 332
    :cond_4
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-float v2, v2

    iget v3, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->w:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->g:J

    .line 333
    iput-boolean v4, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->a:Z

    .line 334
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->f:J

    .line 335
    iget v2, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->x:I

    iput v2, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->h:I

    .line 336
    iget v2, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->x:I

    int-to-double v2, v2

    add-double/2addr v0, v2

    iget v2, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->n:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->n:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->i:I

    goto :goto_0

    .line 342
    :pswitch_3
    iput-wide v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->g:J

    .line 343
    iput-boolean v4, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->a:Z

    .line 344
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->f:J

    .line 345
    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->x:I

    iput v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->h:I

    .line 346
    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->x:I

    int-to-double v0, v0

    iget v2, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->n:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->n:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->i:I

    goto/16 :goto_0

    .line 350
    :pswitch_4
    iput-wide v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->g:J

    .line 351
    iput-boolean v4, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->a:Z

    .line 352
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->f:J

    .line 353
    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->x:I

    iput v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->h:I

    .line 354
    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->x:I

    int-to-double v0, v0

    iget v2, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->n:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->n:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->i:I

    goto/16 :goto_0

    .line 358
    :pswitch_5
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->g:J

    .line 359
    iput-boolean v4, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->a:Z

    .line 360
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->f:J

    .line 361
    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->x:I

    iput v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->h:I

    .line 362
    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->x:I

    iget v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->n:I

    add-int/2addr v0, v1

    int-to-double v0, v0

    iget v2, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->n:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->n:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->i:I

    goto/16 :goto_0

    .line 372
    :cond_5
    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->i:I

    iget v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->B:I

    if-ge v0, v1, :cond_1

    .line 374
    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->B:I

    iput v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->i:I

    goto/16 :goto_1

    .line 304
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private a()V
    .locals 7

    .prologue
    .line 381
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->f:J

    sub-long/2addr v0, v2

    .line 382
    iget-wide v2, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->g:J

    sub-long/2addr v2, v0

    .line 383
    iget v4, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->i:I

    iget v5, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->h:I

    sub-int/2addr v4, v5

    .line 385
    const-wide/16 v5, 0x0

    cmp-long v2, v2, v5

    if-gtz v2, :cond_0

    .line 386
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->a:Z

    .line 394
    :goto_0
    return-void

    .line 390
    :cond_0
    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->j:Landroid/view/animation/DecelerateInterpolator;

    long-to-float v0, v0

    iget-wide v5, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->g:J

    long-to-float v1, v5

    div-float/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    .line 392
    iget v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->h:I

    int-to-float v2, v4

    mul-float/2addr v0, v2

    float-to-int v0, v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->x:I

    .line 393
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/NumPickerView;->invalidate()V

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter

    .prologue
    const/high16 v3, 0x4000

    .line 149
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 150
    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->E:F

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->I:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/NinePatchDrawable;->getMinimumHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    .line 151
    iget v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->E:F

    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->I:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/NinePatchDrawable;->getMinimumHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    .line 152
    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->I:Landroid/graphics/drawable/NinePatchDrawable;

    const/4 v3, 0x0

    float-to-int v0, v0

    iget v4, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->F:F

    float-to-int v4, v4

    float-to-int v1, v1

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 153
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->I:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 155
    return-void
.end method

.method private getIndexFromOffset()I
    .locals 2

    .prologue
    .line 159
    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->x:I

    if-gez v0, :cond_0

    .line 161
    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->x:I

    iget v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->n:I

    div-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 168
    :goto_0
    return v0

    .line 163
    :cond_0
    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->x:I

    if-lez v0, :cond_1

    .line 165
    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->x:I

    iget v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->o:I

    sub-int/2addr v0, v1

    .line 166
    iget v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->n:I

    div-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0

    .line 168
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPositionFromOffset()I
    .locals 3

    .prologue
    .line 185
    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->x:I

    if-gez v0, :cond_0

    .line 186
    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->x:I

    iget v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->x:I

    iget v2, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->n:I

    div-int/2addr v1, v2

    iget v2, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->n:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->m:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->p:I

    add-int/2addr v0, v1

    .line 194
    :goto_0
    return v0

    .line 189
    :cond_0
    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->x:I

    if-lez v0, :cond_1

    .line 191
    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->x:I

    iget v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->o:I

    sub-int/2addr v0, v1

    .line 192
    iget v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->n:I

    div-int v1, v0, v1

    iget v2, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->n:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->m:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->p:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 194
    :cond_1
    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->m:I

    iget v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->p:I

    add-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;II)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x4000

    .line 203
    :goto_0
    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->m:I

    neg-int v0, v0

    iget v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->p:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_3

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/NumPickerView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->m:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->p:I

    add-int/2addr v0, v1

    if-ge p3, v0, :cond_3

    .line 205
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->k:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 206
    int-to-float v0, p3

    iget v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->E:F

    iget v2, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->G:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->m:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    int-to-float v0, p3

    iget v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->E:F

    iget v2, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->G:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->m:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    div-float/2addr v1, v4

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    .line 209
    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->b:I

    if-eq v0, p2, :cond_0

    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->d:Lavz;

    if-eqz v0, :cond_0

    .line 210
    iput p2, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->b:I

    .line 211
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->d:Lavz;

    iget v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->b:I

    invoke-interface {v0, p0, v1}, Lavz;->a(Lcom/dianxinos/powermanager/ui/NumPickerView;I)V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->k:Landroid/graphics/Paint;

    iget v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->G:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 214
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->y:[Ljava/lang/String;

    aget-object v0, v0, p2

    iget v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->D:F

    int-to-float v2, p3

    iget-object v3, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 220
    :goto_1
    add-int/lit8 p2, p2, 0x1

    .line 221
    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->l:I

    if-ne p2, v0, :cond_1

    .line 223
    const/4 p2, 0x0

    .line 226
    :cond_1
    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->n:I

    add-int/2addr p3, v0

    goto :goto_0

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->k:Landroid/graphics/Paint;

    iget v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->H:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 217
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->y:[Ljava/lang/String;

    aget-object v0, v0, p2

    iget v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->D:F

    int-to-float v2, p3

    iget-object v3, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 228
    :cond_3
    return-void
.end method

.method public a([Ljava/lang/String;Landroid/graphics/Paint;II)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->y:[Ljava/lang/String;

    .line 116
    iput-object p2, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->k:Landroid/graphics/Paint;

    .line 117
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->y:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->l:I

    .line 118
    invoke-virtual {p2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->p:I

    .line 119
    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->p:I

    int-to-float v0, v0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->G:F

    .line 120
    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->p:I

    int-to-float v0, v0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->H:F

    .line 122
    iput p4, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->z:I

    .line 123
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 129
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->A:Z

    if-nez v0, :cond_0

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->C:I

    .line 131
    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->n:I

    neg-int v0, v0

    mul-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->B:I

    .line 134
    :cond_0
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->a:Z

    if-eqz v0, :cond_1

    .line 135
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/NumPickerView;->a()V

    .line 138
    :cond_1
    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->x:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->o:I

    if-lt v0, v1, :cond_2

    .line 139
    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->x:I

    iget v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->x:I

    iget v2, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->o:I

    div-int/2addr v1, v2

    iget v2, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->o:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->x:I

    .line 142
    :cond_2
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/NumPickerView;->getIndexFromOffset()I

    move-result v0

    .line 143
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/NumPickerView;->getPositionFromOffset()I

    move-result v1

    .line 144
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/ui/NumPickerView;->a(Landroid/graphics/Canvas;)V

    .line 145
    invoke-virtual {p0, p1, v0, v1}, Lcom/dianxinos/powermanager/ui/NumPickerView;->a(Landroid/graphics/Canvas;II)V

    .line 146
    return-void
.end method

.method public onMeasure(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x4000

    .line 403
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    .line 404
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/NumPickerView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->E:F

    .line 405
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/NumPickerView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->F:F

    .line 406
    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->E:F

    iget v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->G:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->H:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x4040

    div-float/2addr v0, v1

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->m:I

    .line 408
    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->F:F

    iget v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->p:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->D:F

    .line 409
    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->m:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->p:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->n:I

    .line 410
    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->n:I

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->y:[Ljava/lang/String;

    array-length v1, v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->o:I

    .line 411
    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->z:I

    if-eqz v0, :cond_0

    .line 412
    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->z:I

    neg-int v0, v0

    iget v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->n:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->x:I

    .line 413
    const/4 v0, 0x0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->z:I

    .line 417
    :goto_0
    return-void

    .line 415
    :cond_0
    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->n:I

    neg-int v0, v0

    iget v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->J:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->x:I

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 233
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 235
    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->s:Landroid/view/VelocityTracker;

    if-nez v2, :cond_0

    .line 237
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->s:Landroid/view/VelocityTracker;

    .line 239
    :cond_0
    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->s:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 241
    packed-switch v0, :pswitch_data_0

    .line 299
    :cond_1
    :goto_0
    return v5

    .line 243
    :pswitch_0
    iput v4, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->e:I

    .line 244
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->a:Z

    if-eqz v0, :cond_2

    .line 246
    iput-boolean v3, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->a:Z

    .line 248
    :cond_2
    float-to-int v0, v1

    iput v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->q:I

    goto :goto_0

    .line 251
    :pswitch_1
    float-to-int v0, v1

    iput v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->r:I

    .line 252
    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->e:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->r:I

    iget v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->q:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->v:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->e:I

    if-ne v0, v4, :cond_1

    .line 256
    :cond_3
    iput v3, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->e:I

    .line 257
    invoke-direct {p0, v3}, Lcom/dianxinos/powermanager/ui/NumPickerView;->a(I)I

    .line 258
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/NumPickerView;->invalidate()V

    goto :goto_0

    .line 262
    :pswitch_2
    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->e:I

    if-ne v0, v4, :cond_5

    .line 264
    const/4 v0, 0x3

    iput v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->e:I

    .line 265
    invoke-direct {p0, v3}, Lcom/dianxinos/powermanager/ui/NumPickerView;->a(I)I

    .line 266
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/NumPickerView;->invalidate()V

    .line 294
    :cond_4
    :goto_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->e:I

    .line 295
    iput v3, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->q:I

    .line 296
    iput v3, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->r:I

    goto :goto_0

    .line 270
    :cond_5
    iput v5, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->e:I

    .line 271
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->s:Landroid/view/VelocityTracker;

    .line 272
    const/16 v1, 0x3e8

    iget v2, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->u:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 273
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 275
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->t:I

    if-le v1, v2, :cond_6

    .line 277
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/ui/NumPickerView;->a(I)I

    .line 278
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/NumPickerView;->invalidate()V

    .line 280
    :cond_6
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->s:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_7

    .line 282
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->s:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->s:Landroid/view/VelocityTracker;

    .line 287
    :cond_7
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->a:Z

    if-nez v0, :cond_4

    .line 289
    const/4 v0, 0x5

    iput v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->e:I

    .line 290
    invoke-direct {p0, v3}, Lcom/dianxinos/powermanager/ui/NumPickerView;->a(I)I

    .line 291
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/NumPickerView;->invalidate()V

    goto :goto_1

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setCurrentSelected(I)V
    .locals 1
    .parameter

    .prologue
    .line 173
    if-nez p1, :cond_0

    .line 174
    iget v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->l:I

    iput v0, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->J:I

    .line 176
    :cond_0
    iput p1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->J:I

    .line 177
    return-void
.end method

.method public setObserver(Lavz;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/dianxinos/powermanager/ui/NumPickerView;->d:Lavz;

    .line 181
    return-void
.end method
