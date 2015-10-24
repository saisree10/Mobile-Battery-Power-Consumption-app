.class public Lbdq;
.super Ljava/lang/Object;
.source "TouchHandlerOld.java"

# interfaces
.implements Lbdo;


# instance fields
.field private a:Lbef;

.field private b:F

.field private c:F

.field private d:Landroid/graphics/RectF;

.field private e:Lbep;

.field private f:Lbdm;


# direct methods
.method public constructor <init>(Lbdm;Lbdr;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lbdq;->d:Landroid/graphics/RectF;

    .line 53
    iput-object p1, p0, Lbdq;->f:Lbdm;

    .line 54
    iget-object v0, p0, Lbdq;->f:Lbdm;

    invoke-virtual {v0}, Lbdm;->getZoomRectangle()Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lbdq;->d:Landroid/graphics/RectF;

    .line 55
    instance-of v0, p2, Lbdz;

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 56
    check-cast v0, Lbdz;

    invoke-virtual {v0}, Lbdz;->c()Lbei;

    move-result-object v0

    iput-object v0, p0, Lbdq;->a:Lbef;

    .line 60
    :goto_0
    iget-object v0, p0, Lbdq;->a:Lbef;

    invoke-virtual {v0}, Lbef;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Lbep;

    invoke-direct {v0, p2}, Lbep;-><init>(Lbdr;)V

    iput-object v0, p0, Lbdq;->e:Lbep;

    .line 63
    :cond_0
    return-void

    :cond_1
    move-object v0, p2

    .line 58
    check-cast v0, Lbdw;

    invoke-virtual {v0}, Lbdw;->a()Lbef;

    move-result-object v0

    iput-object v0, p0, Lbdq;->a:Lbef;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/high16 v5, 0x4040

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 67
    iget-object v2, p0, Lbdq;->a:Lbef;

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 68
    iget v1, p0, Lbdq;->b:F

    cmpl-float v1, v1, v3

    if-gez v1, :cond_0

    iget v1, p0, Lbdq;->c:F

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_7

    .line 69
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 70
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 71
    iget-object v3, p0, Lbdq;->a:Lbef;

    invoke-virtual {v3}, Lbef;->B()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    iget-object v3, p0, Lbdq;->e:Lbep;

    iget v4, p0, Lbdq;->b:F

    iget v5, p0, Lbdq;->c:F

    invoke-virtual {v3, v4, v5, v1, v2}, Lbep;->a(FFFF)V

    .line 74
    :cond_1
    iput v1, p0, Lbdq;->b:F

    .line 75
    iput v2, p0, Lbdq;->c:F

    .line 76
    iget-object v1, p0, Lbdq;->f:Lbdm;

    invoke-virtual {v1}, Lbdm;->d()V

    .line 96
    :cond_2
    :goto_0
    return v0

    .line 79
    :cond_3
    if-nez v1, :cond_6

    .line 80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lbdq;->b:F

    .line 81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lbdq;->c:F

    .line 82
    iget-object v1, p0, Lbdq;->a:Lbef;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lbdq;->a:Lbef;

    invoke-virtual {v1}, Lbef;->x()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lbdq;->d:Landroid/graphics/RectF;

    iget v2, p0, Lbdq;->b:F

    iget v3, p0, Lbdq;->c:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 83
    iget v1, p0, Lbdq;->b:F

    iget-object v2, p0, Lbdq;->d:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lbdq;->d:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    .line 84
    iget-object v1, p0, Lbdq;->f:Lbdm;

    invoke-virtual {v1}, Lbdm;->a()V

    goto :goto_0

    .line 85
    :cond_4
    iget v1, p0, Lbdq;->b:F

    iget-object v2, p0, Lbdq;->d:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lbdq;->d:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x4000

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    .line 86
    iget-object v1, p0, Lbdq;->f:Lbdm;

    invoke-virtual {v1}, Lbdm;->b()V

    goto :goto_0

    .line 88
    :cond_5
    iget-object v1, p0, Lbdq;->f:Lbdm;

    invoke-virtual {v1}, Lbdm;->c()V

    goto :goto_0

    .line 92
    :cond_6
    if-ne v1, v0, :cond_7

    .line 93
    iput v3, p0, Lbdq;->b:F

    .line 94
    iput v3, p0, Lbdq;->c:F

    .line 96
    :cond_7
    iget-object v1, p0, Lbdq;->a:Lbef;

    invoke-virtual {v1}, Lbef;->C()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0
.end method
