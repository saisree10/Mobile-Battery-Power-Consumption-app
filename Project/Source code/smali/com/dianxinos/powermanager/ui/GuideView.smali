.class public Lcom/dianxinos/powermanager/ui/GuideView;
.super Landroid/view/View;
.source "GuideView.java"


# instance fields
.field public a:Landroid/graphics/Paint;

.field private b:F

.field private c:Landroid/content/Context;

.field private d:I

.field private e:I

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 24
    const/high16 v0, 0x40c0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/GuideView;->b:F

    .line 29
    iput v1, p0, Lcom/dianxinos/powermanager/ui/GuideView;->d:I

    .line 33
    iput v1, p0, Lcom/dianxinos/powermanager/ui/GuideView;->e:I

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/GuideView;->a:Landroid/graphics/Paint;

    .line 42
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/ui/GuideView;->a(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/high16 v0, 0x40c0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/GuideView;->b:F

    .line 29
    iput v1, p0, Lcom/dianxinos/powermanager/ui/GuideView;->d:I

    .line 33
    iput v1, p0, Lcom/dianxinos/powermanager/ui/GuideView;->e:I

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/GuideView;->a:Landroid/graphics/Paint;

    .line 48
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/ui/GuideView;->a(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/high16 v0, 0x40c0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/GuideView;->b:F

    .line 29
    iput v1, p0, Lcom/dianxinos/powermanager/ui/GuideView;->d:I

    .line 33
    iput v1, p0, Lcom/dianxinos/powermanager/ui/GuideView;->e:I

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/GuideView;->a:Landroid/graphics/Paint;

    .line 54
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/ui/GuideView;->a(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/dianxinos/powermanager/ui/GuideView;->c:Landroid/content/Context;

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/GuideView;->a:Landroid/graphics/Paint;

    .line 61
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/GuideView;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0201ce

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/GuideView;->f:Landroid/graphics/Bitmap;

    .line 62
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/GuideView;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0201cd

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/GuideView;->g:Landroid/graphics/Bitmap;

    .line 63
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/GuideView;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/GuideView;->b:F

    .line 64
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    const/high16 v4, 0x4000

    .line 69
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 70
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/GuideView;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v2, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v2, 0x7f08016e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/dianxinos/powermanager/ui/GuideView;->b:F

    mul-float/2addr v2, v4

    add-float v3, v0, v2

    .line 73
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/GuideView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/dianxinos/powermanager/ui/GuideView;->d:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v4

    iget v2, p0, Lcom/dianxinos/powermanager/ui/GuideView;->b:F

    sub-float/2addr v0, v2

    move v2, v0

    move v0, v1

    .line 76
    :goto_0
    iget v4, p0, Lcom/dianxinos/powermanager/ui/GuideView;->d:I

    if-ge v0, v4, :cond_1

    .line 77
    add-float/2addr v2, v3

    .line 79
    iget v4, p0, Lcom/dianxinos/powermanager/ui/GuideView;->e:I

    if-eq v0, v4, :cond_0

    .line 80
    iget-object v4, p0, Lcom/dianxinos/powermanager/ui/GuideView;->g:Landroid/graphics/Bitmap;

    int-to-float v5, v1

    iget-object v6, p0, Lcom/dianxinos/powermanager/ui/GuideView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v2, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 85
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    iget-object v4, p0, Lcom/dianxinos/powermanager/ui/GuideView;->f:Landroid/graphics/Bitmap;

    int-to-float v5, v1

    iget-object v6, p0, Lcom/dianxinos/powermanager/ui/GuideView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v2, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 87
    :cond_1
    return-void
.end method

.method public setSelectedId(I)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput p1, p0, Lcom/dianxinos/powermanager/ui/GuideView;->e:I

    .line 96
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/GuideView;->invalidate()V

    .line 97
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput p1, p0, Lcom/dianxinos/powermanager/ui/GuideView;->d:I

    .line 106
    return-void
.end method
