.class public Lafc;
.super Lauu;
.source "BatteryChargeDetailsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lavh;
.implements Lawa;


# instance fields
.field private c:[I

.field private d:[I

.field private e:Lamb;

.field private f:Ljava/util/ArrayList;

.field private g:Ljava/util/ArrayList;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ImageView;

.field private o:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

.field private p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 53
    invoke-direct {p0, p1, v2}, Lauu;-><init>(Landroid/content/Context;Z)V

    .line 27
    new-array v0, v6, [I

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a017f

    aput v1, v0, v3

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a01ef

    aput v1, v0, v2

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a01f1

    aput v1, v0, v4

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a01f3

    aput v1, v0, v5

    iput-object v0, p0, Lafc;->c:[I

    .line 33
    new-array v0, v6, [I

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a01f5

    aput v1, v0, v3

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a01f0

    aput v1, v0, v2

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a01f2

    aput v1, v0, v4

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a01f4

    aput v1, v0, v5

    iput-object v0, p0, Lafc;->d:[I

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lafc;->f:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lafc;->g:Ljava/util/ArrayList;

    .line 54
    invoke-virtual {p0}, Lafc;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget-object v1, Lly;->j:Lcom/dianxinos/dxbs/R$style;

    const v1, 0x7f0b001b

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 55
    invoke-virtual {p0}, Lafc;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f030046

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 56
    invoke-virtual {p0, v0}, Lafc;->b(Landroid/view/View;)V

    .line 57
    invoke-virtual {p0}, Lafc;->h()V

    .line 58
    invoke-virtual {p0}, Lafc;->i()V

    .line 59
    invoke-direct {p0, v0}, Lafc;->c(Landroid/view/View;)V

    .line 60
    invoke-direct {p0, v0}, Lafc;->d(Landroid/view/View;)V

    .line 61
    invoke-direct {p0, p2}, Lafc;->h(I)V

    .line 62
    iget-object v0, p0, Lafc;->j:Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;

    invoke-virtual {v0, p2}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->a(I)V

    .line 63
    return-void
.end method

.method static synthetic a(Lafc;)Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lafc;->j:Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;

    return-object v0
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 133
    iget-object v0, p0, Lafc;->j:Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;

    invoke-virtual {v0, v3}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 134
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    iget-object v2, p0, Lafc;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 136
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 138
    iget-object v1, p0, Lafc;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    iget-object v1, p0, Lafc;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    iget-object v1, p0, Lafc;->j:Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->c(I)Z

    .line 141
    iget-object v1, p0, Lafc;->j:Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;

    invoke-virtual {v1, v4}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->setItemSize(I)V

    .line 142
    iget-object v1, p0, Lafc;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 143
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 146
    :cond_0
    return-void
.end method

.method private c(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lafc;->a:Landroid/content/Context;

    invoke-static {v0}, Lamb;->a(Landroid/content/Context;)Lamb;

    move-result-object v0

    iput-object v0, p0, Lafc;->e:Lamb;

    .line 78
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070125

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lafc;->n:Landroid/widget/ImageView;

    .line 79
    iget-object v0, p0, Lafc;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070128

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lafc;->k:Landroid/widget/ImageView;

    .line 81
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070129

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lafc;->l:Landroid/widget/ImageView;

    .line 82
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07012a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lafc;->m:Landroid/widget/ImageView;

    .line 84
    iget-object v0, p0, Lafc;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lafc;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lafc;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lafc;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lafc;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lafc;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070131

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    iput-object v0, p0, Lafc;->o:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    .line 89
    iget-object v0, p0, Lafc;->o:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->setOnPreferenceChangeListener(Lavh;)V

    .line 90
    return-void
.end method

.method private d(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 97
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07012e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;

    iput-object v0, p0, Lafc;->j:Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;

    .line 99
    invoke-virtual {p0}, Lafc;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 101
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x4

    if-ge v1, v0, :cond_0

    .line 102
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f030041

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 103
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07011b

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, p0, Lafc;->c:[I

    aget v4, v4, v1

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 105
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07011c

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, p0, Lafc;->d:[I

    aget v4, v4, v1

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 107
    iget-object v0, p0, Lafc;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 111
    :cond_0
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07012d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lafc;->h:Landroid/widget/ImageView;

    .line 113
    iget-object v0, p0, Lafc;->h:Landroid/widget/ImageView;

    new-instance v1, Lafd;

    invoke-direct {v1, p0}, Lafd;-><init>(Lafc;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07012c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lafc;->i:Landroid/widget/ImageView;

    .line 121
    iget-object v0, p0, Lafc;->i:Landroid/widget/ImageView;

    new-instance v1, Lafe;

    invoke-direct {v1, p0}, Lafe;-><init>(Lafc;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    invoke-direct {p0}, Lafc;->a()V

    .line 129
    iget-object v0, p0, Lafc;->j:Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->setChangeItemListener(Lawa;)V

    .line 130
    return-void
.end method

.method private h(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 170
    move v1, v2

    :goto_0
    iget-object v0, p0, Lafc;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 171
    if-nez p1, :cond_0

    .line 172
    iget-object v0, p0, Lafc;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 170
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 174
    :cond_0
    add-int/lit8 v0, p1, -0x1

    if-ne v1, v0, :cond_1

    .line 175
    iget-object v0, p0, Lafc;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 177
    :cond_1
    iget-object v0, p0, Lafc;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 182
    :cond_2
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 150
    iget-object v2, p0, Lafc;->h:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lafc;->i:Landroid/widget/ImageView;

    if-nez v2, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    invoke-direct {p0, p1}, Lafc;->h(I)V

    .line 155
    if-eqz p1, :cond_2

    move v2, v0

    .line 156
    :goto_1
    if-eqz v2, :cond_3

    .line 157
    iget-object v2, p0, Lafc;->i:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    :goto_2
    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    .line 162
    :goto_3
    if-eqz v0, :cond_5

    .line 163
    iget-object v0, p0, Lafc;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v2, v1

    .line 155
    goto :goto_1

    .line 159
    :cond_3
    iget-object v2, p0, Lafc;->i:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    move v0, v1

    .line 161
    goto :goto_3

    .line 165
    :cond_5
    iget-object v0, p0, Lafc;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Lavg;)V
    .locals 2
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lafc;->o:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    if-ne p1, v0, :cond_0

    .line 194
    iget-boolean v0, p0, Lafc;->p:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lafc;->p:Z

    .line 195
    iget-object v0, p0, Lafc;->o:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    iget-boolean v1, p0, Lafc;->p:Z

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->setEnabled(Z)V

    .line 196
    iget-object v0, p0, Lafc;->e:Lamb;

    iget-boolean v1, p0, Lafc;->p:Z

    invoke-virtual {v0, v1}, Lamb;->m(Z)V

    .line 198
    :cond_0
    return-void

    .line 194
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)V
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lafc;->j:Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;

    invoke-virtual {v0, p1}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->a(I)V

    .line 74
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Lafc;->n:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lafc;->dismiss()V

    .line 189
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lafc;->e:Lamb;

    invoke-virtual {v0}, Lamb;->q()Z

    move-result v0

    iput-boolean v0, p0, Lafc;->p:Z

    .line 68
    iget-object v0, p0, Lafc;->o:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    iget-boolean v1, p0, Lafc;->p:Z

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->setEnabled(Z)V

    .line 69
    invoke-super {p0}, Lauu;->show()V

    .line 70
    return-void
.end method
