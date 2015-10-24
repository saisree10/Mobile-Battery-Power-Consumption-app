.class public Lagd;
.super Landroid/view/animation/Animation;
.source "Rotate3DAnimation.java"


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:F

.field private final e:F

.field private final f:Z

.field private g:Landroid/graphics/Camera;

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(FFFFFZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 39
    iput p1, p0, Lagd;->a:F

    .line 40
    iput p2, p0, Lagd;->b:F

    .line 41
    iput p3, p0, Lagd;->c:F

    .line 42
    iput p4, p0, Lagd;->d:F

    .line 43
    iput p5, p0, Lagd;->e:F

    .line 44
    iput-boolean p6, p0, Lagd;->f:Z

    .line 45
    return-void
.end method

.method public static a(Lafv;IZ)Lagd;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lagd;->a(Lafv;IZZ)Lagd;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lafv;IZZ)Lagd;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/high16 v3, -0x4080

    .line 125
    new-instance v0, Lagd;

    if-eqz p2, :cond_0

    const/high16 v2, 0x42b4

    :goto_0
    move v4, v3

    move v5, v1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lagd;-><init>(FFFFFZ)V

    .line 127
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lagd;->setDuration(J)V

    .line 128
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lagd;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 129
    new-instance v1, Lage;

    invoke-direct {v1, p3, p0, p2, p1}, Lage;-><init>(ZLafv;ZI)V

    .line 231
    invoke-virtual {v0, v1}, Lagd;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 232
    return-object v0

    .line 125
    :cond_0
    const/high16 v2, -0x3d4c

    goto :goto_0
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x4000

    const v5, 0x3f8ccccd

    const/high16 v3, -0x4080

    const/4 v7, 0x0

    .line 57
    iget v0, p0, Lagd;->a:F

    .line 58
    iget v1, p0, Lagd;->b:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float v2, v0, v1

    .line 60
    iget v0, p0, Lagd;->c:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    iget v0, p0, Lagd;->h:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    .line 61
    :goto_0
    iget v1, p0, Lagd;->d:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    iget v1, p0, Lagd;->i:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    .line 62
    :goto_1
    iget-object v3, p0, Lagd;->g:Landroid/graphics/Camera;

    .line 64
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    .line 65
    invoke-virtual {v4, v5, v5, v0, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 67
    invoke-virtual {v3}, Landroid/graphics/Camera;->save()V

    .line 68
    iget-boolean v5, p0, Lagd;->f:Z

    if-eqz v5, :cond_2

    .line 69
    iget v5, p0, Lagd;->e:F

    mul-float/2addr v5, p1

    invoke-virtual {v3, v7, v7, v5}, Landroid/graphics/Camera;->translate(FFF)V

    .line 81
    :goto_2
    invoke-virtual {v3, v2}, Landroid/graphics/Camera;->rotateY(F)V

    .line 82
    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 83
    invoke-virtual {v3}, Landroid/graphics/Camera;->restore()V

    .line 85
    neg-float v2, v0

    neg-float v3, v1

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 86
    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 87
    return-void

    .line 60
    :cond_0
    iget v0, p0, Lagd;->c:F

    goto :goto_0

    .line 61
    :cond_1
    iget v1, p0, Lagd;->d:F

    goto :goto_1

    .line 71
    :cond_2
    iget v5, p0, Lagd;->e:F

    const/high16 v6, 0x3f80

    sub-float/2addr v6, p1

    mul-float/2addr v5, v6

    invoke-virtual {v3, v7, v7, v5}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_2
.end method

.method public initialize(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 50
    iput p1, p0, Lagd;->h:I

    .line 51
    iput p2, p0, Lagd;->i:I

    .line 52
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lagd;->g:Landroid/graphics/Camera;

    .line 53
    return-void
.end method
