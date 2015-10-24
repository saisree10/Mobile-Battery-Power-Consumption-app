.class public Lawb;
.super Ljava/lang/Object;
.source "PageScroller.java"


# static fields
.field private static w:F

.field private static x:F


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:J

.field private m:I

.field private n:F

.field private o:F

.field private p:F

.field private q:Z

.field private r:Landroid/view/animation/Interpolator;

.field private s:F

.field private t:F

.field private u:F

.field private final v:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    .line 55
    const/high16 v0, 0x4100

    sput v0, Lawb;->w:F

    .line 57
    sput v1, Lawb;->x:F

    .line 58
    invoke-static {v1}, Lawb;->a(F)F

    move-result v0

    div-float v0, v1, v0

    sput v0, Lawb;->x:F

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lawb;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lawb;->s:F

    .line 41
    const/high16 v0, 0x3f80

    iput v0, p0, Lawb;->t:F

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lawb;->q:Z

    .line 74
    iput-object p2, p0, Lawb;->r:Landroid/view/animation/Interpolator;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4320

    mul-float/2addr v0, v1

    .line 76
    const v1, 0x43c10b3d

    mul-float/2addr v0, v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lawb;->v:F

    .line 80
    return-void
.end method

.method static a(F)F
    .locals 5
    .parameter

    .prologue
    const/high16 v4, 0x3f80

    .line 356
    sget v0, Lawb;->w:F

    mul-float/2addr v0, p0

    .line 357
    cmpg-float v1, v0, v4

    if-gez v1, :cond_0

    .line 358
    neg-float v1, v0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v1, v4, v1

    sub-float/2addr v0, v1

    .line 364
    :goto_0
    sget v1, Lawb;->x:F

    mul-float/2addr v0, v1

    .line 365
    return v0

    .line 360
    :cond_0
    const v1, 0x3ebc5ab2

    .line 361
    sub-float v0, v4, v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v0, v2

    sub-float v0, v4, v0

    .line 362
    sub-float v2, v4, v1

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(IF)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x4000

    .line 347
    if-lez p1, :cond_0

    .line 348
    float-to-double v0, p2

    iget v2, p0, Lawb;->v:F

    mul-float/2addr v2, v3

    int-to-float v3, p1

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 350
    :goto_0
    return v0

    :cond_0
    float-to-double v0, p2

    iget v2, p0, Lawb;->v:F

    mul-float/2addr v2, v3

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    rsub-int/lit8 v0, v0, 0x0

    goto :goto_0
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 413
    iput p1, p0, Lawb;->d:I

    .line 414
    iget v0, p0, Lawb;->d:I

    iget v1, p0, Lawb;->b:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lawb;->o:F

    .line 415
    const/4 v0, 0x0

    iput-boolean v0, p0, Lawb;->q:Z

    .line 416
    return-void
.end method

.method public a(IIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 257
    const/16 v5, 0x28a

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lawb;->a(IIIII)V

    .line 258
    return-void
.end method

.method public a(IIIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 274
    iput v0, p0, Lawb;->a:I

    .line 275
    iput-boolean v0, p0, Lawb;->q:Z

    .line 276
    iput p5, p0, Lawb;->m:I

    .line 277
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lawb;->l:J

    .line 278
    iput p1, p0, Lawb;->b:I

    .line 279
    iput p2, p0, Lawb;->c:I

    .line 280
    add-int v0, p1, p3

    iput v0, p0, Lawb;->d:I

    .line 281
    add-int v0, p2, p4

    iput v0, p0, Lawb;->e:I

    .line 282
    int-to-float v0, p3

    iput v0, p0, Lawb;->o:F

    .line 283
    int-to-float v0, p4

    iput v0, p0, Lawb;->p:F

    .line 284
    const/high16 v0, 0x3f80

    iget v1, p0, Lawb;->m:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lawb;->n:F

    .line 285
    return-void
.end method

.method public a(IIIIIIII)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x3f80

    const/4 v6, 0x0

    .line 308
    const/4 v0, 0x1

    iput v0, p0, Lawb;->a:I

    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lawb;->q:Z

    .line 311
    int-to-double v2, p3

    int-to-double v4, p4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 313
    iput v2, p0, Lawb;->u:F

    .line 314
    const/high16 v0, 0x447a

    mul-float/2addr v0, v2

    iget v3, p0, Lawb;->v:F

    div-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lawb;->m:I

    .line 316
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lawb;->l:J

    .line 317
    iput p1, p0, Lawb;->b:I

    .line 318
    iput p2, p0, Lawb;->c:I

    .line 320
    cmpl-float v0, v2, v6

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lawb;->s:F

    .line 321
    cmpl-float v0, v2, v6

    if-nez v0, :cond_1

    :goto_1
    iput v1, p0, Lawb;->t:F

    .line 323
    mul-float v0, v2, v2

    const/high16 v1, 0x4000

    iget v2, p0, Lawb;->v:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 325
    iput p5, p0, Lawb;->f:I

    .line 326
    iput p6, p0, Lawb;->g:I

    .line 327
    iput p7, p0, Lawb;->h:I

    .line 328
    iput p8, p0, Lawb;->i:I

    .line 331
    int-to-float v1, v0

    iget v2, p0, Lawb;->s:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v1, p1

    iput v1, p0, Lawb;->d:I

    .line 333
    iget v1, p0, Lawb;->d:I

    iget v2, p0, Lawb;->g:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lawb;->d:I

    .line 334
    iget v1, p0, Lawb;->d:I

    iget v2, p0, Lawb;->f:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lawb;->d:I

    .line 336
    int-to-float v0, v0

    iget v1, p0, Lawb;->t:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, Lawb;->e:I

    .line 338
    iget v0, p0, Lawb;->e:I

    iget v1, p0, Lawb;->i:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lawb;->e:I

    .line 339
    iget v0, p0, Lawb;->e:I

    iget v1, p0, Lawb;->h:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lawb;->e:I

    .line 340
    return-void

    .line 320
    :cond_0
    int-to-float v0, p3

    div-float/2addr v0, v2

    goto :goto_0

    .line 321
    :cond_1
    int-to-float v0, p4

    div-float v1, v0, v2

    goto :goto_1
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lawb;->q:Z

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lawb;->j:I

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lawb;->k:I

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lawb;->d:I

    return v0
.end method

.method public e()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 181
    iget-boolean v0, p0, Lawb;->q:Z

    if-eqz v0, :cond_0

    .line 239
    :goto_0
    return v2

    .line 185
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lawb;->l:J

    sub-long/2addr v3, v5

    long-to-int v0, v3

    .line 187
    iget v3, p0, Lawb;->m:I

    if-ge v0, v3, :cond_4

    .line 188
    iget v3, p0, Lawb;->a:I

    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_1
    move v2, v1

    .line 239
    goto :goto_0

    .line 190
    :pswitch_0
    int-to-float v0, v0

    iget v2, p0, Lawb;->n:F

    mul-float/2addr v0, v2

    .line 192
    iget-object v2, p0, Lawb;->r:Landroid/view/animation/Interpolator;

    if-nez v2, :cond_2

    .line 193
    invoke-static {v0}, Lawb;->a(F)F

    move-result v0

    .line 197
    :goto_2
    iget v2, p0, Lawb;->b:I

    iget v3, p0, Lawb;->o:F

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lawb;->j:I

    .line 198
    iget v2, p0, Lawb;->c:I

    iget v3, p0, Lawb;->p:F

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lawb;->k:I

    goto :goto_1

    .line 195
    :cond_2
    iget-object v2, p0, Lawb;->r:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_2

    .line 201
    :pswitch_1
    int-to-float v0, v0

    const/high16 v3, 0x447a

    div-float/2addr v0, v3

    .line 202
    iget v3, p0, Lawb;->u:F

    mul-float/2addr v3, v0

    iget v4, p0, Lawb;->v:F

    mul-float/2addr v4, v0

    mul-float/2addr v0, v4

    const/high16 v4, 0x4000

    div-float/2addr v0, v4

    sub-float v0, v3, v0

    .line 205
    iget v3, p0, Lawb;->b:I

    iget v4, p0, Lawb;->s:F

    mul-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lawb;->j:I

    .line 207
    iget v3, p0, Lawb;->j:I

    iget v4, p0, Lawb;->g:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lawb;->j:I

    .line 208
    iget v3, p0, Lawb;->j:I

    iget v4, p0, Lawb;->f:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lawb;->j:I

    .line 210
    iget v3, p0, Lawb;->c:I

    iget v4, p0, Lawb;->t:F

    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, v3

    iput v0, p0, Lawb;->k:I

    .line 212
    iget v0, p0, Lawb;->k:I

    iget v3, p0, Lawb;->i:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lawb;->k:I

    .line 213
    iget v0, p0, Lawb;->k:I

    iget v3, p0, Lawb;->h:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lawb;->k:I

    .line 216
    iget v0, p0, Lawb;->j:I

    iget v3, p0, Lawb;->b:I

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v3, p0, Lawb;->d:I

    iget v4, p0, Lawb;->b:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-lt v0, v3, :cond_5

    .line 217
    iget v0, p0, Lawb;->d:I

    iput v0, p0, Lawb;->j:I

    move v0, v1

    .line 222
    :goto_3
    iget v3, p0, Lawb;->k:I

    iget v4, p0, Lawb;->c:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lawb;->e:I

    iget v5, p0, Lawb;->c:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-lt v3, v4, :cond_3

    .line 223
    iget v2, p0, Lawb;->e:I

    iput v2, p0, Lawb;->k:I

    move v2, v1

    .line 227
    :cond_3
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 228
    iput-boolean v1, p0, Lawb;->q:Z

    goto/16 :goto_1

    .line 235
    :cond_4
    iget v0, p0, Lawb;->d:I

    iput v0, p0, Lawb;->j:I

    .line 236
    iget v0, p0, Lawb;->e:I

    iput v0, p0, Lawb;->k:I

    .line 237
    iput-boolean v1, p0, Lawb;->q:Z

    goto/16 :goto_1

    :cond_5
    move v0, v2

    goto :goto_3

    .line 188
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public f()V
    .locals 1

    .prologue
    .line 376
    iget v0, p0, Lawb;->d:I

    iput v0, p0, Lawb;->j:I

    .line 377
    iget v0, p0, Lawb;->e:I

    iput v0, p0, Lawb;->k:I

    .line 378
    const/4 v0, 0x1

    iput-boolean v0, p0, Lawb;->q:Z

    .line 379
    return-void
.end method
