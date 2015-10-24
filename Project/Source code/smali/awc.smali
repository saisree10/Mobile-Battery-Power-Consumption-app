.class public Lawc;
.super Landroid/graphics/drawable/Drawable;
.source "PercentageBar.java"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:D

.field private d:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;D)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/high16 v0, 0x3ff0

    .line 15
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 13
    const/4 v2, -0x1

    iput v2, p0, Lawc;->d:I

    .line 16
    iput-object p1, p0, Lawc;->a:Landroid/graphics/drawable/Drawable;

    .line 17
    iput-object p2, p0, Lawc;->b:Landroid/graphics/drawable/Drawable;

    .line 18
    cmpl-double v2, p3, v0

    if-ltz v2, :cond_0

    move-wide p3, v0

    .line 20
    :cond_0
    iput-wide p3, p0, Lawc;->c:D

    .line 21
    return-void
.end method

.method private a()I
    .locals 4

    .prologue
    .line 50
    invoke-virtual {p0}, Lawc;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-double v0, v0

    iget-wide v2, p0, Lawc;->c:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 51
    iget-object v1, p0, Lawc;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 52
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 25
    iget-object v0, p0, Lawc;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lawc;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 26
    iget-object v0, p0, Lawc;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 27
    iget v0, p0, Lawc;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 28
    invoke-direct {p0}, Lawc;->a()I

    move-result v0

    iput v0, p0, Lawc;->d:I

    .line 29
    iget-object v0, p0, Lawc;->a:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lawc;->d:I

    iget-object v2, p0, Lawc;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 31
    :cond_0
    iget-object v0, p0, Lawc;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 32
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lawc;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter

    .prologue
    .line 37
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    return-void
.end method
