.class public Lavc;
.super Landroid/app/Dialog;
.source "DXProgressDialog.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/content/Context;

.field private c:Landroid/view/animation/RotateAnimation;

.field private d:Landroid/widget/TextView;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 24
    iput-object p1, p0, Lavc;->b:Landroid/content/Context;

    .line 25
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lavc;->e:Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Lavc;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lavc;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lavc;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 30
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f03006b

    invoke-virtual {p0, v0}, Lavc;->setContentView(I)V

    .line 31
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701d0

    invoke-virtual {p0, v0}, Lavc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lavc;->a:Landroid/widget/ImageView;

    .line 32
    iget-object v0, p0, Lavc;->b:Landroid/content/Context;

    sget-object v1, Lly;->a:Lcom/dianxinos/dxbs/R$anim;

    const v1, 0x7f04000a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/RotateAnimation;

    iput-object v0, p0, Lavc;->c:Landroid/view/animation/RotateAnimation;

    .line 33
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701d1

    invoke-virtual {p0, v0}, Lavc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lavc;->d:Landroid/widget/TextView;

    .line 34
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 38
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 39
    iget-object v0, p0, Lavc;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lavc;->c:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 40
    iget-object v0, p0, Lavc;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lavc;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    return-void
.end method
