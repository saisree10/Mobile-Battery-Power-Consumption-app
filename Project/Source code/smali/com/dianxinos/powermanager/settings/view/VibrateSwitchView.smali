.class public Lcom/dianxinos/powermanager/settings/view/VibrateSwitchView;
.super Laph;
.source "VibrateSwitchView.java"

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
    .line 27
    invoke-direct {p0, p1, p2}, Laph;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-static {p1}, Lapi;->a(Landroid/content/Context;)Lapi;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/settings/view/VibrateSwitchView;->j:Lapi;

    .line 30
    invoke-virtual {p0, p0}, Lcom/dianxinos/powermanager/settings/view/VibrateSwitchView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/settings/view/VibrateSwitchView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f030076

    invoke-static {v0, v1, p0}, Lcom/dianxinos/powermanager/settings/view/VibrateSwitchView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 32
    return-void
.end method

.method private setIcon(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 92
    if-eq p1, v2, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/VibrateSwitchView;->h:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0203f7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/dianxinos/powermanager/settings/view/VibrateSwitchView;->b:I

    .line 99
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/VibrateSwitchView;->h:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0203f8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    iput v2, p0, Lcom/dianxinos/powermanager/settings/view/VibrateSwitchView;->b:I

    goto :goto_0
.end method

.method private setTextColor(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 102
    if-eq p1, v2, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/VibrateSwitchView;->i:Landroid/widget/TextView;

    sget-object v1, Lcom/dianxinos/powermanager/settings/view/VibrateSwitchView;->a:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/VibrateSwitchView;->i:Landroid/widget/TextView;

    sget-object v1, Lcom/dianxinos/powermanager/settings/view/VibrateSwitchView;->a:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/VibrateSwitchView;->j:Lapi;

    invoke-virtual {v0}, Lapi;->b()I

    move-result v0

    .line 79
    const/4 v1, -0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-ne p1, v1, :cond_1

    .line 81
    :cond_0
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/settings/view/VibrateSwitchView;->setIcon(I)V

    .line 83
    iget-boolean v1, p0, Lcom/dianxinos/powermanager/settings/view/VibrateSwitchView;->c:Z

    if-nez v1, :cond_1

    .line 84
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/settings/view/VibrateSwitchView;->setTextColor(I)V

    .line 86
    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Laph;->onAttachedToWindow()V

    .line 67
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/VibrateSwitchView;->g:Laoy;

    invoke-virtual {v0, p0}, Laoy;->a(Lapa;)V

    .line 68
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/VibrateSwitchView;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/dianxinos/powermanager/settings/view/VibrateSwitchView;->j:Lapi;

    iget-object v2, p0, Lcom/dianxinos/powermanager/settings/view/VibrateSwitchView;->d:Landroid/content/Context;

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a019a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lapb;->a(Landroid/content/Context;Lapi;Ljava/lang/String;)V

    .line 57
    iget v0, p0, Lcom/dianxinos/powermanager/settings/view/VibrateSwitchView;->b:I

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/VibrateSwitchView;->d:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 59
    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 61
    :cond_0
    invoke-super {p0, p1}, Laph;->onClick(Landroid/view/View;)V

    .line 62
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Laph;->onDetachedFromWindow()V

    .line 73
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/VibrateSwitchView;->g:Laoy;

    invoke-virtual {v0, p0}, Laoy;->b(Lapa;)V

    .line 74
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 36
    invoke-super {p0}, Laph;->onFinishInflate()V

    .line 38
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/VibrateSwitchView;->j:Lapi;

    invoke-virtual {v0}, Lapi;->b()I

    move-result v1

    .line 39
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070014

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/settings/view/VibrateSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/settings/view/VibrateSwitchView;->h:Landroid/widget/ImageView;

    .line 40
    invoke-direct {p0, v1}, Lcom/dianxinos/powermanager/settings/view/VibrateSwitchView;->setIcon(I)V

    .line 42
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/settings/view/VibrateSwitchView;->c:Z

    if-nez v0, :cond_0

    .line 43
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701e9

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/settings/view/VibrateSwitchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/settings/view/VibrateSwitchView;->i:Landroid/widget/TextView;

    .line 44
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/VibrateSwitchView;->i:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/view/VibrateSwitchView;->i:Landroid/widget/TextView;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a019a

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 46
    invoke-direct {p0, v1}, Lcom/dianxinos/powermanager/settings/view/VibrateSwitchView;->setTextColor(I)V

    .line 48
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 49
    iget-object v1, p0, Lcom/dianxinos/powermanager/settings/view/VibrateSwitchView;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    :cond_0
    return-void
.end method
