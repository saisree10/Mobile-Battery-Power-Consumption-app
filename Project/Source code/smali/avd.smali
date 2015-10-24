.class public Lavd;
.super Lauu;
.source "DashiRecommendDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lou;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Lqb;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 25
    invoke-direct {p0, p1}, Lauu;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p1, p0, Lavd;->c:Landroid/content/Context;

    .line 27
    new-instance v1, Lqb;

    iget-object v0, p0, Lavd;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lqb;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lavd;->g:Lqb;

    .line 28
    invoke-virtual {p0}, Lavd;->h()V

    .line 29
    invoke-virtual {p0}, Lavd;->i()V

    .line 31
    invoke-virtual {p0}, Lavd;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f03002f

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 32
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070026

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070018

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a038c

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 34
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070014

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f020189

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 35
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700a8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a02bb

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 36
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700af

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    invoke-virtual {p0, v1}, Lavd;->b(Landroid/view/View;)V

    .line 39
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700ab

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lavd;->e:Landroid/view/View;

    .line 40
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700ac

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lavd;->f:Landroid/view/View;

    .line 41
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700b0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 42
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 44
    new-instance v0, Lou;

    invoke-direct {v0}, Lou;-><init>()V

    iput-object v0, p0, Lavd;->d:Lou;

    .line 45
    iget-object v0, p0, Lavd;->d:Lou;

    const-string v1, "DASHI"

    iput-object v1, v0, Lou;->q:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lavd;->d:Lou;

    const-string v1, "https://play.google.com/store/apps/details?id=com.dianxinos.optimizer.duplay"

    iput-object v1, v0, Lou;->m:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lavd;->d:Lou;

    const-string v1, "DU Speed Booster"

    iput-object v1, v0, Lou;->e:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lavd;->d:Lou;

    const-string v1, "com.dianxinos.optimizer.duplay"

    iput-object v1, v0, Lou;->f:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lavd;->d:Lou;

    const/4 v1, 0x1

    iput v1, v0, Lou;->j:I

    .line 50
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 53
    iget-object v0, p0, Lavd;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lavd;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f070026

    if-ne v0, v1, :cond_1

    .line 60
    invoke-virtual {p0}, Lavd;->dismiss()V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0700af

    if-ne v0, v1, :cond_0

    .line 62
    iget-object v0, p0, Lavd;->d:Lou;

    iget-object v1, p0, Lavd;->c:Landroid/content/Context;

    iget-object v2, p0, Lavd;->d:Lou;

    iget-object v2, v2, Lou;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lazy;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lou;->t:Z

    .line 63
    iget-object v0, p0, Lavd;->g:Lqb;

    iget-object v1, p0, Lavd;->d:Lou;

    invoke-virtual {v0, v1}, Lqb;->a(Lou;)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter

    .prologue
    .line 69
    invoke-super {p0, p1}, Lauu;->onWindowFocusChanged(Z)V

    .line 70
    if-nez p1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lavd;->d:Lou;

    iget-object v1, p0, Lavd;->c:Landroid/content/Context;

    iget-object v2, p0, Lavd;->d:Lou;

    iget-object v2, v2, Lou;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lazy;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lou;->t:Z

    .line 74
    iget-object v0, p0, Lavd;->c:Landroid/content/Context;

    iget-object v1, p0, Lavd;->d:Lou;

    iget-object v1, v1, Lou;->q:Ljava/lang/String;

    invoke-static {v0, v1}, Lop;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lavd;->c:Landroid/content/Context;

    iget-object v1, p0, Lavd;->d:Lou;

    invoke-static {v0, v1}, Lop;->a(Landroid/content/Context;Lou;)V

    goto :goto_0
.end method
