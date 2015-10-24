.class public abstract Lrd;
.super Laan;
.source "DxFragmentActivity.java"

# interfaces
.implements Lem;


# instance fields
.field protected n:I

.field protected o:I

.field protected p:Ljava/util/ArrayList;

.field protected q:Lrf;

.field protected r:Landroid/support/v4/view/ViewPager;

.field protected s:Lcom/dianxinos/common/ui/fragment/TitleIndicator;

.field protected t:Lcom/dianxinos/powermanager/ui/MainTitle;

.field protected u:Landroid/view/View;

.field private v:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Laan;-><init>()V

    .line 30
    iput v1, p0, Lrd;->n:I

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lrd;->o:I

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrd;->p:Ljava/util/ArrayList;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lrd;->q:Lrf;

    .line 40
    iput-boolean v1, p0, Lrd;->v:Z

    .line 46
    return-void
.end method

.method private final i()V
    .locals 4

    .prologue
    .line 121
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070018

    invoke-virtual {p0, v0}, Lrd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/MainTitle;

    iput-object v0, p0, Lrd;->t:Lcom/dianxinos/powermanager/ui/MainTitle;

    .line 122
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700ed

    invoke-virtual {p0, v0}, Lrd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lrd;->u:Landroid/view/View;

    .line 124
    iget-object v0, p0, Lrd;->p:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lrd;->a(Ljava/util/ArrayList;)I

    move-result v0

    iput v0, p0, Lrd;->n:I

    .line 125
    invoke-virtual {p0}, Lrd;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_0

    .line 127
    const-string v1, "tab"

    iget v2, p0, Lrd;->n:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lrd;->n:I

    .line 129
    :cond_0
    new-instance v0, Lrf;

    invoke-virtual {p0}, Lrd;->e()Lt;

    move-result-object v1

    iget-object v2, p0, Lrd;->p:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v1, v2}, Lrf;-><init>(Lrd;Landroid/content/Context;Lt;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lrd;->q:Lrf;

    .line 132
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700ef

    invoke-virtual {p0, v0}, Lrd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lrd;->r:Landroid/support/v4/view/ViewPager;

    .line 133
    iget-object v0, p0, Lrd;->r:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lrd;->q:Lrf;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Ldd;)V

    .line 134
    iget-object v0, p0, Lrd;->r:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Lem;)V

    .line 135
    iget-object v0, p0, Lrd;->r:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lrd;->p:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 137
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700ee

    invoke-virtual {p0, v0}, Lrd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;

    iput-object v0, p0, Lrd;->s:Lcom/dianxinos/common/ui/fragment/TitleIndicator;

    .line 138
    iget-object v0, p0, Lrd;->s:Lcom/dianxinos/common/ui/fragment/TitleIndicator;

    iget v1, p0, Lrd;->n:I

    iget-object v2, p0, Lrd;->p:Ljava/util/ArrayList;

    iget-object v3, p0, Lrd;->r:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1, v2, v3}, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->a(ILjava/util/List;Landroid/support/v4/view/ViewPager;)V

    .line 140
    iget-object v0, p0, Lrd;->r:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lrd;->n:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 141
    invoke-virtual {p0}, Lrd;->g()Landroid/os/Message;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_1

    .line 143
    iget-object v1, p0, Lrd;->r:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lre;

    invoke-direct {v2, p0, v0}, Lre;-><init>(Lrd;Landroid/os/Message;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->post(Ljava/lang/Runnable;)Z

    .line 150
    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/util/ArrayList;)I
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Lrd;->s:Lcom/dianxinos/common/ui/fragment/TitleIndicator;

    invoke-virtual {v0, p1}, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->b(I)V

    .line 187
    iput p1, p0, Lrd;->n:I

    .line 188
    return-void
.end method

.method public a(IFI)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lrd;->s:Lcom/dianxinos/common/ui/fragment/TitleIndicator;

    iget-object v1, p0, Lrd;->r:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v1

    iget-object v2, p0, Lrd;->r:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getPageMargin()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v1, p1

    add-int/2addr v1, p3

    invoke-virtual {v0, v1}, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->a(I)V

    .line 176
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lrd;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 177
    iget-object v0, p0, Lrd;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/common/ui/fragment/TabInfo;

    .line 178
    iget-object v2, v0, Lcom/dianxinos/common/ui/fragment/TabInfo;->b:Lrc;

    if-eqz v2, :cond_0

    .line 179
    iget-object v0, v0, Lcom/dianxinos/common/ui/fragment/TabInfo;->b:Lrc;

    invoke-virtual {v0}, Lrc;->e()V

    .line 176
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 182
    :cond_1
    return-void
.end method

.method public b(I)V
    .locals 2
    .parameter

    .prologue
    .line 192
    if-nez p1, :cond_2

    .line 193
    iget v0, p0, Lrd;->o:I

    iget v1, p0, Lrd;->n:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lrd;->o:I

    if-ltz v0, :cond_0

    iget v0, p0, Lrd;->o:I

    iget-object v1, p0, Lrd;->p:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 194
    iget-object v0, p0, Lrd;->p:Ljava/util/ArrayList;

    iget v1, p0, Lrd;->o:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/common/ui/fragment/TabInfo;

    .line 195
    iget-object v1, v0, Lcom/dianxinos/common/ui/fragment/TabInfo;->b:Lrc;

    if-eqz v1, :cond_0

    .line 196
    iget-object v0, v0, Lcom/dianxinos/common/ui/fragment/TabInfo;->b:Lrc;

    invoke-virtual {v0}, Lrc;->a_()V

    .line 199
    :cond_0
    iget v0, p0, Lrd;->n:I

    iget v1, p0, Lrd;->o:I

    if-eq v0, v1, :cond_1

    .line 200
    iget-object v0, p0, Lrd;->p:Ljava/util/ArrayList;

    iget v1, p0, Lrd;->n:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/common/ui/fragment/TabInfo;

    .line 201
    iget-object v1, v0, Lcom/dianxinos/common/ui/fragment/TabInfo;->b:Lrc;

    if-eqz v1, :cond_1

    .line 202
    iget-object v0, v0, Lcom/dianxinos/common/ui/fragment/TabInfo;->b:Lrc;

    invoke-virtual {v0}, Lrc;->b_()V

    .line 205
    :cond_1
    iget v0, p0, Lrd;->n:I

    iput v0, p0, Lrd;->o:I

    .line 207
    :cond_2
    return-void
.end method

.method protected f()Z
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lrd;->p:Ljava/util/ArrayList;

    iget v1, p0, Lrd;->n:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/common/ui/fragment/TabInfo;

    .line 249
    iget-object v1, v0, Lcom/dianxinos/common/ui/fragment/TabInfo;->b:Lrc;

    if-eqz v1, :cond_0

    .line 250
    iget-object v0, v0, Lcom/dianxinos/common/ui/fragment/TabInfo;->b:Lrc;

    invoke-virtual {v0}, Lrc;->a()Z

    move-result v0

    .line 252
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 290
    invoke-super {p0}, Laan;->finish()V

    .line 291
    iget-boolean v0, p0, Lrd;->v:Z

    if-eqz v0, :cond_0

    .line 292
    sget-object v0, Lly;->a:Lcom/dianxinos/dxbs/R$anim;

    const v0, 0x7f04000d

    sget-object v1, Lly;->a:Lcom/dianxinos/dxbs/R$anim;

    const v1, 0x7f040010

    invoke-virtual {p0, v0, v1}, Lrd;->overridePendingTransition(II)V

    .line 294
    :cond_0
    return-void
.end method

.method protected g()Landroid/os/Message;
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    return-object v0
.end method

.method protected h()I
    .locals 1

    .prologue
    .line 277
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f03003e

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0}, Lrd;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    invoke-virtual {p0}, Lrd;->finish()V

    .line 260
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 91
    invoke-super {p0, p1}, Laan;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lrd;->requestWindowFeature(I)Z

    .line 95
    :try_start_0
    invoke-virtual {p0}, Lrd;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra.has_anim"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lrd;->v:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    invoke-virtual {p0}, Lrd;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lrd;->setContentView(I)V

    .line 101
    invoke-direct {p0}, Lrd;->i()V

    .line 103
    iget-object v0, p0, Lrd;->r:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lrd;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v2, 0x7f080109

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 104
    iget-object v0, p0, Lrd;->r:Landroid/support/v4/view/ViewPager;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(I)V

    .line 105
    return-void

    .line 96
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 109
    iget-object v0, p0, Lrd;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 110
    iput-object v1, p0, Lrd;->p:Ljava/util/ArrayList;

    .line 111
    iget-object v0, p0, Lrd;->q:Lrf;

    invoke-virtual {v0}, Lrf;->c()V

    .line 112
    iput-object v1, p0, Lrd;->q:Lrf;

    .line 113
    iget-object v0, p0, Lrd;->r:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Ldd;)V

    .line 114
    iput-object v1, p0, Lrd;->r:Landroid/support/v4/view/ViewPager;

    .line 115
    iput-object v1, p0, Lrd;->s:Lcom/dianxinos/common/ui/fragment/TitleIndicator;

    .line 117
    invoke-super {p0}, Laan;->onDestroy()V

    .line 118
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 3

    .prologue
    .line 211
    invoke-super {p0}, Laan;->onUserLeaveHint()V

    .line 212
    iget-object v0, p0, Lrd;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/common/ui/fragment/TabInfo;

    .line 213
    iget-object v2, v0, Lcom/dianxinos/common/ui/fragment/TabInfo;->b:Lrc;

    if-eqz v2, :cond_0

    .line 214
    iget-object v0, v0, Lcom/dianxinos/common/ui/fragment/TabInfo;->b:Lrc;

    invoke-virtual {v0}, Lrc;->d()V

    goto :goto_0

    .line 217
    :cond_1
    return-void
.end method
