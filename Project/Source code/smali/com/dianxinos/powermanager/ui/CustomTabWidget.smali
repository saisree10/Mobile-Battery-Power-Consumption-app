.class public Lcom/dianxinos/powermanager/ui/CustomTabWidget;
.super Landroid/widget/TabWidget;
.source "CustomTabWidget.java"

# interfaces
.implements Lakq;


# instance fields
.field private a:I

.field private b:Landroid/content/Context;

.field private c:Lakx;

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance v0, Lavb;

    invoke-direct {v0, p0}, Lavb;-><init>(Lcom/dianxinos/powermanager/ui/CustomTabWidget;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/CustomTabWidget;->d:Landroid/os/Handler;

    .line 40
    sget-object v0, Lly;->k:Lcom/dianxinos/dxbs/R$styleable;

    sget-object v0, Lcom/dianxinos/dxbs/R$styleable;->Feature:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 41
    sget-object v1, Lly;->k:Lcom/dianxinos/dxbs/R$styleable;

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/dianxinos/powermanager/ui/CustomTabWidget;->a:I

    .line 42
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 44
    iput-object p1, p0, Lcom/dianxinos/powermanager/ui/CustomTabWidget;->b:Landroid/content/Context;

    .line 45
    invoke-static {p1}, Lakx;->a(Landroid/content/Context;)Lakx;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/CustomTabWidget;->c:Lakx;

    .line 46
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/CustomTabWidget;->d:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 107
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter

    .prologue
    const v8, 0x7f020206

    const/4 v7, 0x2

    .line 50
    invoke-super {p0, p1}, Landroid/widget/TabWidget;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 52
    iget v0, p0, Lcom/dianxinos/powermanager/ui/CustomTabWidget;->a:I

    const v1, 0xffff

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/CustomTabWidget;->getWidth()I

    move-result v1

    .line 56
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/CustomTabWidget;->getTabCount()I

    move-result v2

    .line 58
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/CustomTabWidget;->b:Landroid/content/Context;

    const/16 v3, 0x1f

    invoke-static {v0, v3}, Laxb;->a(Landroid/content/Context;I)I

    move-result v3

    .line 59
    const/4 v0, 0x0

    .line 61
    iget v4, p0, Lcom/dianxinos/powermanager/ui/CustomTabWidget;->a:I

    and-int/lit8 v4, v4, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_2

    .line 62
    iget-object v4, p0, Lcom/dianxinos/powermanager/ui/CustomTabWidget;->b:Landroid/content/Context;

    invoke-static {v4}, Lakx;->a(Landroid/content/Context;)Lakx;

    move-result-object v4

    invoke-virtual {v4}, Lakx;->b()Z

    move-result v4

    if-nez v4, :cond_2

    .line 63
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/CustomTabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v4, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v4, 0x7f0203b7

    invoke-static {v0, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 64
    mul-int/lit8 v4, v1, 0x3

    div-int/2addr v4, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    div-int/lit8 v5, v5, 0x3

    sub-int/2addr v4, v5

    .line 65
    int-to-float v4, v4

    int-to-float v5, v3

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 66
    const/4 v0, 0x1

    .line 70
    :cond_2
    if-nez v0, :cond_3

    iget v0, p0, Lcom/dianxinos/powermanager/ui/CustomTabWidget;->a:I

    and-int/lit8 v0, v0, 0x4

    const/4 v4, 0x4

    if-ne v0, v4, :cond_3

    .line 71
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/CustomTabWidget;->b:Landroid/content/Context;

    invoke-static {v0}, Lbaj;->a(Landroid/content/Context;)Lbaj;

    move-result-object v0

    invoke-virtual {v0}, Lbaj;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 73
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/CustomTabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v4, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-static {v0, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 74
    mul-int/lit8 v4, v1, 0x3

    div-int v2, v4, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v2, v4

    .line 75
    int-to-float v2, v2

    int-to-float v4, v3

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v7}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p1, v0, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 79
    :cond_3
    iget v0, p0, Lcom/dianxinos/powermanager/ui/CustomTabWidget;->a:I

    and-int/lit8 v0, v0, 0x20

    const/16 v2, 0x20

    if-ne v0, v2, :cond_0

    .line 81
    new-instance v0, Laxl;

    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/CustomTabWidget;->b:Landroid/content/Context;

    invoke-direct {v0, v2}, Laxl;-><init>(Landroid/content/Context;)V

    .line 82
    invoke-virtual {v0}, Laxl;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/CustomTabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-static {v0, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x3

    .line 86
    int-to-float v1, v1

    int-to-float v2, v3

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v7}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Landroid/widget/TabWidget;->onAttachedToWindow()V

    .line 95
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/CustomTabWidget;->c:Lakx;

    invoke-virtual {v0, p0}, Lakx;->a(Lakq;)V

    .line 96
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Landroid/widget/TabWidget;->onDetachedFromWindow()V

    .line 101
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/CustomTabWidget;->c:Lakx;

    invoke-virtual {v0, p0}, Lakx;->b(Lakq;)V

    .line 102
    return-void
.end method
