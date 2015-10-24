.class public Lave;
.super Lauu;
.source "DiagnosticADDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lou;

.field private e:Lqb;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lou;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 25
    invoke-direct {p0, p1}, Lauu;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p1, p0, Lave;->c:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lave;->d:Lou;

    .line 28
    invoke-virtual {p0}, Lave;->h()V

    .line 29
    invoke-virtual {p0}, Lave;->i()V

    .line 31
    new-instance v0, Lqb;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1}, Lqb;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lave;->e:Lqb;

    .line 33
    invoke-virtual {p0}, Lave;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f03002f

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 34
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070026

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070018

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a02a3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 37
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070014

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f02018c

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 39
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700a8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a02a4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 41
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700ad

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 42
    invoke-static {}, Lov;->a()Lov;

    move-result-object v2

    iget-object v3, p2, Lou;->l:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lov;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 44
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700ae

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p2, Lou;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700af

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700b0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 47
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 48
    invoke-virtual {p0, v1}, Lave;->b(Landroid/view/View;)V

    .line 49
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f070026

    if-ne v0, v1, :cond_1

    .line 54
    invoke-virtual {p0}, Lave;->dismiss()V

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0700af

    if-ne v0, v1, :cond_0

    .line 56
    iget-object v0, p0, Lave;->d:Lou;

    iget-object v1, p0, Lave;->c:Landroid/content/Context;

    iget-object v2, p0, Lave;->d:Lou;

    iget-object v2, v2, Lou;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lazy;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lou;->t:Z

    .line 57
    iget-object v0, p0, Lave;->e:Lqb;

    iget-object v1, p0, Lave;->d:Lou;

    invoke-virtual {v0, v1}, Lqb;->a(Lou;)V

    .line 58
    iget-object v0, p0, Lave;->c:Landroid/content/Context;

    invoke-static {v0}, Laje;->a(Landroid/content/Context;)Laje;

    move-result-object v0

    iget-object v1, p0, Lave;->d:Lou;

    iget-object v1, v1, Lou;->f:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Laje;->a(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 65
    invoke-super {p0, p1}, Lauu;->onWindowFocusChanged(Z)V

    .line 66
    if-nez p1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lave;->c:Landroid/content/Context;

    iget-object v1, p0, Lave;->d:Lou;

    iget-object v1, v1, Lou;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lazy;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lave;->d:Lou;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lou;->t:Z

    .line 71
    iget-object v0, p0, Lave;->c:Landroid/content/Context;

    invoke-static {v0}, Laje;->a(Landroid/content/Context;)Laje;

    move-result-object v0

    invoke-virtual {v0}, Laje;->c()V

    .line 73
    :cond_1
    iget-object v0, p0, Lave;->c:Landroid/content/Context;

    iget-object v1, p0, Lave;->d:Lou;

    invoke-static {v0, v1}, Lop;->a(Landroid/content/Context;Lou;)V

    .line 74
    iget-object v0, p0, Lave;->c:Landroid/content/Context;

    iget-object v1, p0, Lave;->d:Lou;

    iget-object v1, v1, Lou;->q:Ljava/lang/String;

    invoke-static {v0, v1}, Lop;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
