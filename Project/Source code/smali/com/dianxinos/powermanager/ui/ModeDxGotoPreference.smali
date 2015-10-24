.class public Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;
.super Lavg;
.source "ModeDxGotoPreference.java"


# instance fields
.field private i:Z

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/view/View;

.field private q:Lahb;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lavg;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->i:Z

    .line 37
    new-instance v0, Lahb;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->h:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lahb;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->q:Lahb;

    .line 38
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->a()V

    .line 39
    return-void
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;)Lahb;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->q:Lahb;

    return-object v0
.end method

.method private d()Z
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->q:Lahb;

    invoke-virtual {v0}, Lahb;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->mContext:Landroid/content/Context;

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f03004a

    invoke-static {v0, v1, p0}, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 74
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->p:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    :cond_1
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->d:Z

    if-nez v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->l:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    :cond_2
    return-void

    .line 81
    :cond_3
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->p:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->q:Lahb;

    invoke-virtual {v1}, Lahb;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->a:Lavh;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->a:Lavh;

    invoke-interface {v0, p0}, Lavh;->a(Lavg;)V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->q:Lahb;

    invoke-virtual {v0}, Lahb;->e()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 47
    invoke-super {p0}, Lavg;->onFinishInflate()V

    .line 49
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070145

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->p:Landroid/view/View;

    .line 50
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700b0

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->o:Landroid/widget/TextView;

    .line 51
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07001f

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->j:Landroid/widget/TextView;

    .line 52
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070020

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->k:Landroid/widget/TextView;

    .line 53
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700d3

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->l:Landroid/widget/TextView;

    .line 54
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700d5

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->n:Landroid/widget/ImageView;

    .line 55
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700d4

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->m:Landroid/widget/ImageView;

    .line 57
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->b()V

    .line 58
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f0201f0

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->setBackgroundResource(I)V

    .line 60
    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->setClickable(Z)V

    .line 61
    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->setFocusable(Z)V

    .line 62
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->setDescendantFocusability(I)V

    .line 63
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->p:Landroid/view/View;

    new-instance v1, Lavx;

    invoke-direct {v1, p0}, Lavx;-><init>(Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-void
.end method

.method public setADUnlockStatus(Z)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->i:Z

    .line 160
    return-void
.end method

.method public setBgRID(I)V
    .locals 0
    .parameter

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->setBackgroundResource(I)V

    .line 132
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter

    .prologue
    .line 101
    if-eqz p1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->mContext:Landroid/content/Context;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a00cf

    invoke-static {v1, v2}, Laxb;->b(Landroid/content/Context;I)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->l:Landroid/widget/TextView;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00d0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public setEnabledSpanned(Landroid/text/Spanned;)V
    .locals 2
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->k:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    return-void
.end method

.method public setEnabledString(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->k:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->k:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->m:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/ModeDxGotoPreference;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 148
    return-void
.end method
