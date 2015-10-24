.class public Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;
.super Landroid/widget/FrameLayout;
.source "BatteryThemeItemView.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f03000f

    invoke-static {p1, v0, p0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 25
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07004f

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->a:Landroid/widget/ImageView;

    .line 26
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070051

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->b:Landroid/widget/ImageView;

    .line 27
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070050

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->c:Landroid/widget/TextView;

    .line 28
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070052

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->d:Landroid/widget/ImageView;

    .line 29
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 33
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->d:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    return-void
.end method

.method public setName(I)V
    .locals 2
    .parameter

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->c:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public setSelectedFlag(Z)V
    .locals 2
    .parameter

    .prologue
    .line 53
    iget-object v1, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->b:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->setVisibility(I)V

    .line 46
    return-void
.end method

.method public setThumbnail(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeItemView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    return-void
.end method
