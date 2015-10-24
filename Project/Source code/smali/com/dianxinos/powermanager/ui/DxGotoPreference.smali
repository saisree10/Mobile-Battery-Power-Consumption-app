.class public Lcom/dianxinos/powermanager/ui/DxGotoPreference;
.super Lavg;
.source "DxGotoPreference.java"


# instance fields
.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lavg;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->a()V

    .line 27
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f030034

    invoke-static {v0, v1, p0}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 31
    return-void
.end method

.method public a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 93
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    if-nez p2, :cond_0

    .line 95
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->k:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 101
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 99
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    const v1, 0x7f0700d5

    .line 109
    if-eqz p1, :cond_0

    .line 110
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->j:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    :cond_0
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->d:Z

    if-nez v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->k:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    :cond_1
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->a:Lavh;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->a:Lavh;

    invoke-interface {v0, p0}, Lavh;->a(Lavg;)V

    .line 86
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 35
    invoke-super {p0}, Lavg;->onFinishInflate()V

    .line 37
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07001f

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->i:Landroid/widget/TextView;

    .line 38
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070020

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->j:Landroid/widget/TextView;

    .line 39
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700d3

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->k:Landroid/widget/TextView;

    .line 40
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700d4

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->l:Landroid/widget/ImageView;

    .line 42
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->b()V

    .line 43
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f0201f0

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setBackgroundResource(I)V

    .line 45
    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setClickable(Z)V

    .line 46
    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setFocusable(Z)V

    .line 47
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setDescendantFocusability(I)V

    .line 48
    return-void
.end method

.method public setBgRID(I)V
    .locals 0
    .parameter

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setBackgroundResource(I)V

    .line 90
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter

    .prologue
    .line 64
    if-eqz p1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a00cf

    invoke-static {v1, v2}, Laxb;->b(Landroid/content/Context;I)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->k:Landroid/widget/TextView;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00d0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public setEnabledSpanned(Landroid/text/Spanned;)V
    .locals 2
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->j:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    return-void
.end method

.method public setEnabledString(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->j:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->j:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->l:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 106
    return-void
.end method
