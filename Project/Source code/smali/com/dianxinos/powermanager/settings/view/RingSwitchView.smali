.class public Lcom/dianxinos/powermanager/settings/view/RingSwitchView;
.super Laph;
.source "RingSwitchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lapa;


# instance fields
.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/TextView;

.field private j:Lapi;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Laph;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-static {p1}, Lapi;->a(Landroid/content/Context;)Lapi;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/settings/view/RingSwitchView;->j:Lapi;

    .line 29
    invoke-virtual {p0, p0}, Lcom/dianxinos/powermanager/settings/view/RingSwitchView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/settings/view/RingSwitchView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f030076

    invoke-static {v0, v1, p0}, Lcom/dianxinos/powermanager/settings/view/RingSwitchView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 31
    return-void
.end method

.method private setIcon(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 87
    if-eq p1, v2, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/RingSwitchView;->h:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0203ec

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    iput v2, p0, Lcom/dianxinos/powermanager/settings/view/RingSwitchView;->b:I

    .line 94
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/RingSwitchView;->h:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0203eb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/dianxinos/powermanager/settings/view/RingSwitchView;->b:I

    goto :goto_0
.end method

.method private setTextColor(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 97
    if-eq p1, v2, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/RingSwitchView;->i:Landroid/widget/TextView;

    sget-object v1, Lcom/dianxinos/powermanager/settings/view/RingSwitchView;->a:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/RingSwitchView;->i:Landroid/widget/TextView;

    sget-object v1, Lcom/dianxinos/powermanager/settings/view/RingSwitchView;->a:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/RingSwitchView;->j:Lapi;

    invoke-virtual {v0}, Lapi;->b()I

    move-result v0

    .line 74
    const/4 v1, -0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-ne p1, v1, :cond_1

    .line 76
    :cond_0
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/settings/view/RingSwitchView;->setIcon(I)V

    .line 78
    iget-boolean v1, p0, Lcom/dianxinos/powermanager/settings/view/RingSwitchView;->c:Z

    if-nez v1, :cond_1

    .line 79
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/settings/view/RingSwitchView;->setTextColor(I)V

    .line 81
    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Laph;->onAttachedToWindow()V

    .line 62
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/RingSwitchView;->g:Laoy;

    invoke-virtual {v0, p0}, Laoy;->a(Lapa;)V

    .line 63
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/RingSwitchView;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/dianxinos/powermanager/settings/view/RingSwitchView;->j:Lapi;

    iget-object v2, p0, Lcom/dianxinos/powermanager/settings/view/RingSwitchView;->d:Landroid/content/Context;

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a019b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lapb;->b(Landroid/content/Context;Lapi;Ljava/lang/String;)V

    .line 56
    invoke-super {p0, p1}, Laph;->onClick(Landroid/view/View;)V

    .line 57
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Laph;->onDetachedFromWindow()V

    .line 68
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/RingSwitchView;->g:Laoy;

    invoke-virtual {v0, p0}, Laoy;->b(Lapa;)V

    .line 69
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 35
    invoke-super {p0}, Laph;->onFinishInflate()V

    .line 37
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/RingSwitchView;->j:Lapi;

    invoke-virtual {v0}, Lapi;->b()I

    move-result v1

    .line 38
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070014

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/settings/view/RingSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/settings/view/RingSwitchView;->h:Landroid/widget/ImageView;

    .line 39
    invoke-direct {p0, v1}, Lcom/dianxinos/powermanager/settings/view/RingSwitchView;->setIcon(I)V

    .line 41
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/settings/view/RingSwitchView;->c:Z

    if-nez v0, :cond_0

    .line 42
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701e9

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/settings/view/RingSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/settings/view/RingSwitchView;->i:Landroid/widget/TextView;

    .line 43
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/RingSwitchView;->i:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/RingSwitchView;->i:Landroid/widget/TextView;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a019b

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 45
    invoke-direct {p0, v1}, Lcom/dianxinos/powermanager/settings/view/RingSwitchView;->setTextColor(I)V

    .line 47
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 48
    iget-object v1, p0, Lcom/dianxinos/powermanager/settings/view/RingSwitchView;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    :cond_0
    return-void
.end method
