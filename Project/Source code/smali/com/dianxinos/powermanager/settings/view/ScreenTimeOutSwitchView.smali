.class public Lcom/dianxinos/powermanager/settings/view/ScreenTimeOutSwitchView;
.super Laph;
.source "ScreenTimeOutSwitchView.java"

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
    invoke-virtual {p0, p0}, Lcom/dianxinos/powermanager/settings/view/ScreenTimeOutSwitchView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/settings/view/ScreenTimeOutSwitchView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f030076

    invoke-static {v0, v1, p0}, Lcom/dianxinos/powermanager/settings/view/ScreenTimeOutSwitchView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 30
    return-void
.end method

.method private setIcon(I)V
    .locals 2
    .parameter

    .prologue
    .line 85
    if-nez p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/ScreenTimeOutSwitchView;->h:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0203f2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    :goto_0
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/ScreenTimeOutSwitchView;->h:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0203f3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 89
    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/ScreenTimeOutSwitchView;->h:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0203f4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/ScreenTimeOutSwitchView;->h:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0203f5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setTextColor(I)V
    .locals 3
    .parameter

    .prologue
    .line 97
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/ScreenTimeOutSwitchView;->i:Landroid/widget/TextView;

    sget-object v1, Lcom/dianxinos/powermanager/settings/view/ScreenTimeOutSwitchView;->a:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/ScreenTimeOutSwitchView;->i:Landroid/widget/TextView;

    sget-object v1, Lcom/dianxinos/powermanager/settings/view/ScreenTimeOutSwitchView;->a:[I

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
    const/4 v2, 0x1

    .line 53
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/ScreenTimeOutSwitchView;->f:Lamh;

    invoke-virtual {v0, v2}, Lamh;->a(I)Lahp;

    move-result-object v0

    invoke-virtual {v0}, Lahp;->f()I

    move-result v0

    .line 54
    const/4 v1, -0x2

    if-eq p1, v1, :cond_0

    if-ne p1, v2, :cond_1

    .line 56
    :cond_0
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/settings/view/ScreenTimeOutSwitchView;->setIcon(I)V

    .line 58
    iget-boolean v1, p0, Lcom/dianxinos/powermanager/settings/view/ScreenTimeOutSwitchView;->c:Z

    if-nez v1, :cond_1

    .line 59
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/settings/view/ScreenTimeOutSwitchView;->setTextColor(I)V

    .line 61
    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Laph;->onAttachedToWindow()V

    .line 72
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/ScreenTimeOutSwitchView;->g:Laoy;

    invoke-virtual {v0, p0}, Laoy;->a(Lapa;)V

    .line 73
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/ScreenTimeOutSwitchView;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/dianxinos/powermanager/settings/view/ScreenTimeOutSwitchView;->f:Lamh;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lamh;->a(I)Lahp;

    move-result-object v1

    invoke-static {v0, v1}, Lapb;->b(Landroid/content/Context;Lahp;)V

    .line 66
    invoke-super {p0, p1}, Laph;->onClick(Landroid/view/View;)V

    .line 67
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Laph;->onDetachedFromWindow()V

    .line 78
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/ScreenTimeOutSwitchView;->g:Laoy;

    invoke-virtual {v0, p0}, Laoy;->b(Lapa;)V

    .line 79
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 34
    invoke-super {p0}, Laph;->onFinishInflate()V

    .line 36
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/ScreenTimeOutSwitchView;->f:Lamh;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lamh;->a(I)Lahp;

    move-result-object v0

    invoke-virtual {v0}, Lahp;->f()I

    move-result v1

    .line 37
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070014

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/settings/view/ScreenTimeOutSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/settings/view/ScreenTimeOutSwitchView;->h:Landroid/widget/ImageView;

    .line 38
    invoke-direct {p0, v1}, Lcom/dianxinos/powermanager/settings/view/ScreenTimeOutSwitchView;->setIcon(I)V

    .line 40
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/settings/view/ScreenTimeOutSwitchView;->c:Z

    if-nez v0, :cond_0

    .line 41
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701e9

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/settings/view/ScreenTimeOutSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/settings/view/ScreenTimeOutSwitchView;->i:Landroid/widget/TextView;

    .line 42
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/ScreenTimeOutSwitchView;->i:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 43
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/ScreenTimeOutSwitchView;->i:Landroid/widget/TextView;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a00d5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 44
    invoke-direct {p0, v1}, Lcom/dianxinos/powermanager/settings/view/ScreenTimeOutSwitchView;->setTextColor(I)V

    .line 46
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47
    iget-object v1, p0, Lcom/dianxinos/powermanager/settings/view/ScreenTimeOutSwitchView;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    :cond_0
    return-void
.end method
