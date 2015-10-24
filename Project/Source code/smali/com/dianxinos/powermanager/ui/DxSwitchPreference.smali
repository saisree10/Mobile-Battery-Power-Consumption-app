.class public Lcom/dianxinos/powermanager/ui/DxSwitchPreference;
.super Lavg;
.source "DxSwitchPreference.java"


# static fields
.field private static i:[I


# instance fields
.field private j:[I

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->i:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lavg;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->j:[I

    .line 27
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->d()V

    .line 28
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->a()V

    .line 29
    return-void
.end method

.method private d()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 37
    sget-object v1, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->i:[I

    sget-object v2, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v2, 0x7f090023

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v1, v3

    .line 38
    sget-object v1, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->i:[I

    sget-object v2, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v2, 0x7f090025

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    aput v0, v1, v4

    .line 40
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->j:[I

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00cf

    aput v1, v0, v3

    .line 41
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->j:[I

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00d0

    aput v1, v0, v4

    .line 42
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f030036

    invoke-static {v0, v1, p0}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 33
    return-void
.end method

.method public a(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 92
    if-nez p2, :cond_0

    .line 93
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->m:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 96
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->m:Landroid/widget/TextView;

    sget-object v1, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->i:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    return-void
.end method

.method public b(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->j:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 102
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->j:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 103
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->a:Lavh;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->a:Lavh;

    invoke-interface {v0, p0}, Lavh;->a(Lavg;)V

    .line 71
    :cond_0
    return-void
.end method

.method public getEnabled()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->d:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 46
    invoke-super {p0}, Lavg;->onFinishInflate()V

    .line 48
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07001f

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->k:Landroid/widget/TextView;

    .line 49
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget v0, p0, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->f:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->k:Landroid/widget/TextView;

    const/4 v1, 0x0

    iget v2, p0, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->f:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->k:Landroid/widget/TextView;

    iget v1, p0, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070020

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->l:Landroid/widget/TextView;

    .line 55
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070021

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->m:Landroid/widget/TextView;

    .line 58
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f0201f0

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->setBackgroundResource(I)V

    .line 60
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->d:Z

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->setEnabled(Z)V

    .line 61
    invoke-virtual {p0, v3}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->setClickable(Z)V

    .line 62
    invoke-virtual {p0, v3}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->setFocusable(Z)V

    .line 63
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->setDescendantFocusability(I)V

    .line 64
    return-void
.end method

.method public setBgRID(I)V
    .locals 0
    .parameter

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->setBackgroundResource(I)V

    .line 107
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    iput-boolean p1, p0, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->d:Z

    .line 79
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->d:Z

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->m:Landroid/widget/TextView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0203e4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 81
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->m:Landroid/widget/TextView;

    sget-object v1, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->i:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->j:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 88
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->m:Landroid/widget/TextView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0203e3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 85
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->m:Landroid/widget/TextView;

    sget-object v1, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->i:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->j:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
