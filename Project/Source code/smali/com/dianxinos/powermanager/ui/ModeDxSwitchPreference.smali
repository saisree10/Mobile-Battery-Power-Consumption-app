.class public Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;
.super Lavg;
.source "ModeDxSwitchPreference.java"


# static fields
.field private static i:[I


# instance fields
.field private j:[I

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Lahb;

.field private o:Landroid/view/View;

.field private p:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->i:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lavg;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->j:[I

    .line 35
    new-instance v0, Lahb;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->h:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lahb;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->n:Lahb;

    .line 36
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->d()V

    .line 37
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->a()V

    .line 38
    return-void
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;)Lahb;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->n:Lahb;

    return-object v0
.end method

.method private d()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 46
    sget-object v1, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->i:[I

    sget-object v2, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v2, 0x7f090023

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v1, v3

    .line 47
    sget-object v1, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->i:[I

    sget-object v2, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v2, 0x7f090025

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    aput v0, v1, v4

    .line 49
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->j:[I

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00cf

    aput v1, v0, v3

    .line 50
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->j:[I

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00d0

    aput v1, v0, v4

    .line 51
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f03004b

    invoke-static {v0, v1, p0}, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 42
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 135
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->o:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->n:Lahb;

    invoke-virtual {v0}, Lahb;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->o:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    return-void

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->n:Lahb;

    invoke-virtual {v1}, Lahb;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->n:Lahb;

    invoke-virtual {v0}, Lahb;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->a:Lavh;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->a:Lavh;

    invoke-interface {v0, p0}, Lavh;->a(Lavg;)V

    .line 94
    :cond_1
    :goto_0
    return-void

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->n:Lahb;

    invoke-virtual {v0}, Lahb;->e()V

    goto :goto_0
.end method

.method public getEnabled()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->d:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 55
    invoke-super {p0}, Lavg;->onFinishInflate()V

    .line 57
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070145

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->o:Landroid/view/View;

    .line 58
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700b0

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->p:Landroid/widget/TextView;

    .line 59
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07001f

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->k:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->f:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->k:Landroid/widget/TextView;

    const/4 v1, 0x0

    iget v2, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->f:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->k:Landroid/widget/TextView;

    iget v1, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070020

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->l:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070021

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->m:Landroid/widget/TextView;

    .line 69
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f0201f0

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->setBackgroundResource(I)V

    .line 71
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->d:Z

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->setEnabled(Z)V

    .line 72
    invoke-virtual {p0, v3}, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->setClickable(Z)V

    .line 73
    invoke-virtual {p0, v3}, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->setFocusable(Z)V

    .line 74
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->setDescendantFocusability(I)V

    .line 75
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->b()V

    .line 76
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->o:Landroid/view/View;

    new-instance v1, Lavy;

    invoke-direct {v1, p0}, Lavy;-><init>(Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-void
.end method

.method public setBgRID(I)V
    .locals 0
    .parameter

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->setBackgroundResource(I)V

    .line 131
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 102
    iput-boolean p1, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->d:Z

    .line 103
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->d:Z

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->m:Landroid/widget/TextView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0203e4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 105
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->m:Landroid/widget/TextView;

    sget-object v1, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->i:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->j:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 112
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->m:Landroid/widget/TextView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0203e3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 109
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->m:Landroid/widget/TextView;

    sget-object v1, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->i:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/ModeDxSwitchPreference;->j:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
