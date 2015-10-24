.class public Lcom/dianxinos/powermanager/settings/view/WlanSwitchView;
.super Laph;
.source "WlanSwitchView.java"

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
    .line 27
    invoke-direct {p0, p1, p2}, Laph;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-virtual {p0, p0}, Lcom/dianxinos/powermanager/settings/view/WlanSwitchView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/settings/view/WlanSwitchView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f030076

    invoke-static {v0, v1, p0}, Lcom/dianxinos/powermanager/settings/view/WlanSwitchView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 31
    return-void
.end method

.method private setIcon(Z)V
    .locals 2
    .parameter

    .prologue
    .line 95
    if-eqz p1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/WlanSwitchView;->h:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0203fa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    const/4 v0, 0x1

    iput v0, p0, Lcom/dianxinos/powermanager/settings/view/WlanSwitchView;->b:I

    .line 102
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/WlanSwitchView;->h:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020404

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/dianxinos/powermanager/settings/view/WlanSwitchView;->b:I

    goto :goto_0
.end method

.method private setTextColor(Z)V
    .locals 3
    .parameter

    .prologue
    .line 105
    if-eqz p1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/WlanSwitchView;->i:Landroid/widget/TextView;

    sget-object v1, Lcom/dianxinos/powermanager/settings/view/WlanSwitchView;->a:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/WlanSwitchView;->i:Landroid/widget/TextView;

    sget-object v1, Lcom/dianxinos/powermanager/settings/view/WlanSwitchView;->a:[I

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
    const/4 v2, 0x2

    .line 82
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/WlanSwitchView;->f:Lamh;

    invoke-virtual {v0, v2}, Lamh;->a(I)Lahp;

    move-result-object v0

    invoke-virtual {v0}, Lahp;->a()Z

    move-result v0

    .line 83
    const/4 v1, -0x2

    if-eq p1, v1, :cond_0

    if-ne p1, v2, :cond_1

    .line 84
    :cond_0
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/settings/view/WlanSwitchView;->setIcon(Z)V

    .line 86
    iget-boolean v1, p0, Lcom/dianxinos/powermanager/settings/view/WlanSwitchView;->c:Z

    if-nez v1, :cond_1

    .line 87
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/settings/view/WlanSwitchView;->setTextColor(Z)V

    .line 89
    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Laph;->onAttachedToWindow()V

    .line 71
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/WlanSwitchView;->g:Laoy;

    invoke-virtual {v0, p0}, Laoy;->a(Lapa;)V

    .line 72
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/WlanSwitchView;->f:Lamh;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lamh;->a(I)Lahp;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lahp;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/dianxinos/powermanager/settings/view/WlanSwitchView;->h:Landroid/widget/ImageView;

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f0203f9

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 57
    iget-object v1, p0, Lcom/dianxinos/powermanager/settings/view/WlanSwitchView;->i:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/dianxinos/powermanager/settings/view/WlanSwitchView;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v3, 0x7f09001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    iget-object v1, p0, Lcom/dianxinos/powermanager/settings/view/WlanSwitchView;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/dianxinos/powermanager/settings/view/WlanSwitchView;->d:Landroid/content/Context;

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a0197

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lapb;->a(Landroid/content/Context;Lahp;Ljava/lang/String;)Z

    .line 65
    :goto_0
    invoke-super {p0, p1}, Laph;->onClick(Landroid/view/View;)V

    .line 66
    return-void

    .line 61
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 63
    iget-object v1, p0, Lcom/dianxinos/powermanager/settings/view/WlanSwitchView;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Laph;->onDetachedFromWindow()V

    .line 77
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/WlanSwitchView;->g:Laoy;

    invoke-virtual {v0, p0}, Laoy;->b(Lapa;)V

    .line 78
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 35
    invoke-super {p0}, Laph;->onFinishInflate()V

    .line 37
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/WlanSwitchView;->f:Lamh;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lamh;->a(I)Lahp;

    move-result-object v0

    invoke-virtual {v0}, Lahp;->a()Z

    move-result v1

    .line 38
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070014

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/settings/view/WlanSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/settings/view/WlanSwitchView;->h:Landroid/widget/ImageView;

    .line 39
    invoke-direct {p0, v1}, Lcom/dianxinos/powermanager/settings/view/WlanSwitchView;->setIcon(Z)V

    .line 41
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/settings/view/WlanSwitchView;->c:Z

    if-nez v0, :cond_0

    .line 42
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701e9

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/settings/view/WlanSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/settings/view/WlanSwitchView;->i:Landroid/widget/TextView;

    .line 43
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/WlanSwitchView;->i:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/WlanSwitchView;->i:Landroid/widget/TextView;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0197

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 45
    invoke-direct {p0, v1}, Lcom/dianxinos/powermanager/settings/view/WlanSwitchView;->setTextColor(Z)V

    .line 47
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 48
    iget-object v1, p0, Lcom/dianxinos/powermanager/settings/view/WlanSwitchView;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    :cond_0
    return-void
.end method
