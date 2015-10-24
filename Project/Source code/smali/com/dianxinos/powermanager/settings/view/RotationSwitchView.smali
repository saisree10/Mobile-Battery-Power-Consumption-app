.class public Lcom/dianxinos/powermanager/settings/view/RotationSwitchView;
.super Laph;
.source "RotationSwitchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lapa;


# instance fields
.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Laph;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-virtual {p0, p0}, Lcom/dianxinos/powermanager/settings/view/RotationSwitchView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/settings/view/RotationSwitchView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f030076

    invoke-static {v0, v1, p0}, Lcom/dianxinos/powermanager/settings/view/RotationSwitchView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 29
    return-void
.end method

.method private setIcon(Z)V
    .locals 2
    .parameter

    .prologue
    .line 92
    if-eqz p1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/RotationSwitchView;->h:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0203ee

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    const/4 v0, 0x1

    iput v0, p0, Lcom/dianxinos/powermanager/settings/view/RotationSwitchView;->b:I

    .line 99
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/RotationSwitchView;->h:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0203ed

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/dianxinos/powermanager/settings/view/RotationSwitchView;->b:I

    goto :goto_0
.end method

.method private setTextColor(Z)V
    .locals 3
    .parameter

    .prologue
    .line 102
    if-eqz p1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/RotationSwitchView;->i:Landroid/widget/TextView;

    sget-object v1, Lcom/dianxinos/powermanager/settings/view/RotationSwitchView;->a:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/RotationSwitchView;->i:Landroid/widget/TextView;

    sget-object v1, Lcom/dianxinos/powermanager/settings/view/RotationSwitchView;->a:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0xc

    .line 71
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/RotationSwitchView;->f:Lamh;

    invoke-virtual {v0, v2}, Lamh;->a(I)Lahp;

    move-result-object v0

    invoke-virtual {v0}, Lahp;->a()Z

    move-result v0

    .line 72
    const/4 v1, -0x2

    if-eq p1, v1, :cond_0

    if-ne p1, v2, :cond_1

    .line 73
    :cond_0
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/settings/view/RotationSwitchView;->setIcon(Z)V

    .line 75
    iget-boolean v1, p0, Lcom/dianxinos/powermanager/settings/view/RotationSwitchView;->c:Z

    if-nez v1, :cond_1

    .line 76
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/settings/view/RotationSwitchView;->setTextColor(Z)V

    .line 78
    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Laph;->onAttachedToWindow()V

    .line 60
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/RotationSwitchView;->g:Laoy;

    invoke-virtual {v0, p0}, Laoy;->a(Lapa;)V

    .line 61
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/RotationSwitchView;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/dianxinos/powermanager/settings/view/RotationSwitchView;->f:Lamh;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lamh;->a(I)Lahp;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/powermanager/settings/view/RotationSwitchView;->d:Landroid/content/Context;

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a019c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lapb;->a(Landroid/content/Context;Lahp;Ljava/lang/String;)Z

    .line 54
    invoke-super {p0, p1}, Laph;->onClick(Landroid/view/View;)V

    .line 55
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Laph;->onDetachedFromWindow()V

    .line 66
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/RotationSwitchView;->g:Laoy;

    invoke-virtual {v0, p0}, Laoy;->b(Lapa;)V

    .line 67
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 33
    invoke-super {p0}, Laph;->onFinishInflate()V

    .line 35
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/RotationSwitchView;->f:Lamh;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lamh;->a(I)Lahp;

    move-result-object v0

    invoke-virtual {v0}, Lahp;->a()Z

    move-result v1

    .line 36
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070014

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/settings/view/RotationSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/settings/view/RotationSwitchView;->h:Landroid/widget/ImageView;

    .line 37
    invoke-direct {p0, v1}, Lcom/dianxinos/powermanager/settings/view/RotationSwitchView;->setIcon(Z)V

    .line 39
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/settings/view/RotationSwitchView;->c:Z

    if-nez v0, :cond_0

    .line 40
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701e9

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/settings/view/RotationSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/settings/view/RotationSwitchView;->i:Landroid/widget/TextView;

    .line 41
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/RotationSwitchView;->i:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 42
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/RotationSwitchView;->i:Landroid/widget/TextView;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a019c

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 43
    invoke-direct {p0, v1}, Lcom/dianxinos/powermanager/settings/view/RotationSwitchView;->setTextColor(Z)V

    .line 45
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 46
    iget-object v1, p0, Lcom/dianxinos/powermanager/settings/view/RotationSwitchView;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    :cond_0
    return-void
.end method
