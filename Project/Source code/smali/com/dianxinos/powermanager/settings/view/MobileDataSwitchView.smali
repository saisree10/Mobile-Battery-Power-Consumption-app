.class public Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;
.super Laph;
.source "MobileDataSwitchView.java"

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
    .line 26
    invoke-direct {p0, p1, p2}, Laph;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-virtual {p0, p0}, Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f030076

    invoke-static {v0, v1, p0}, Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 30
    return-void
.end method

.method private setIcon(Z)V
    .locals 2
    .parameter

    .prologue
    .line 95
    invoke-static {}, Lazf;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;->f:Lamh;

    invoke-virtual {v0}, Lamh;->l()Lahd;

    move-result-object v0

    invoke-virtual {v0}, Lahd;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;->h:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0203ff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;->b:I

    .line 103
    :goto_0
    return-void

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;->h:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020400

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    const/4 v0, 0x1

    iput v0, p0, Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;->b:I

    goto :goto_0
.end method

.method private setTextColor(Z)V
    .locals 3
    .parameter

    .prologue
    .line 106
    invoke-static {}, Lazf;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;->f:Lamh;

    invoke-virtual {v0}, Lamh;->l()Lahd;

    move-result-object v0

    invoke-virtual {v0}, Lahd;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;->i:Landroid/widget/TextView;

    sget-object v1, Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;->a:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;->i:Landroid/widget/TextView;

    sget-object v1, Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;->a:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;->f:Lamh;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lamh;->a(I)Lahp;

    move-result-object v0

    invoke-virtual {v0}, Lahp;->a()Z

    move-result v0

    .line 88
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;->setIcon(Z)V

    .line 90
    iget-boolean v1, p0, Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;->c:Z

    if-nez v1, :cond_0

    .line 91
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;->setTextColor(Z)V

    .line 92
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x4

    .line 72
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;->f:Lamh;

    invoke-virtual {v0, v2}, Lamh;->a(I)Lahp;

    move-result-object v0

    invoke-virtual {v0}, Lahp;->a()Z

    move-result v0

    .line 73
    const/4 v1, -0x2

    if-eq p1, v1, :cond_0

    if-eq p1, v2, :cond_0

    invoke-static {}, Lazf;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xd

    if-ne p1, v1, :cond_1

    .line 76
    :cond_0
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;->setIcon(Z)V

    .line 78
    iget-boolean v1, p0, Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;->c:Z

    if-nez v1, :cond_1

    .line 79
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;->setTextColor(Z)V

    .line 81
    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Laph;->onAttachedToWindow()V

    .line 61
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;->g:Laoy;

    invoke-virtual {v0, p0}, Laoy;->a(Lapa;)V

    .line 62
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;->f:Lamh;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lamh;->a(I)Lahp;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;->d:Landroid/content/Context;

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a019d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lapb;->b(Landroid/content/Context;Lahp;Ljava/lang/String;)Z

    .line 55
    invoke-super {p0, p1}, Laph;->onClick(Landroid/view/View;)V

    .line 56
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Laph;->onDetachedFromWindow()V

    .line 67
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;->g:Laoy;

    invoke-virtual {v0, p0}, Laoy;->b(Lapa;)V

    .line 68
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 34
    invoke-super {p0}, Laph;->onFinishInflate()V

    .line 36
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;->f:Lamh;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lamh;->a(I)Lahp;

    move-result-object v0

    invoke-virtual {v0}, Lahp;->a()Z

    move-result v1

    .line 37
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070014

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;->h:Landroid/widget/ImageView;

    .line 38
    invoke-direct {p0, v1}, Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;->setIcon(Z)V

    .line 40
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;->c:Z

    if-nez v0, :cond_0

    .line 41
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701e9

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;->i:Landroid/widget/TextView;

    .line 42
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;->i:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 43
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;->i:Landroid/widget/TextView;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a019d

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 44
    invoke-direct {p0, v1}, Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;->setTextColor(Z)V

    .line 46
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47
    iget-object v1, p0, Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    :cond_0
    return-void
.end method
