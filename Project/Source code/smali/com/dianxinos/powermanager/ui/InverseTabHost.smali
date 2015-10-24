.class public Lcom/dianxinos/powermanager/ui/InverseTabHost;
.super Landroid/widget/TabHost;
.source "InverseTabHost.java"


# instance fields
.field private a:Z

.field private b:Landroid/view/animation/Animation;

.field private c:Landroid/view/animation/Animation;

.field private d:Landroid/view/animation/Animation;

.field private e:Landroid/view/animation/Animation;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/ui/InverseTabHost;->a:Z

    .line 28
    sget-object v0, Lly;->a:Lcom/dianxinos/dxbs/R$anim;

    const v0, 0x7f04000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/InverseTabHost;->b:Landroid/view/animation/Animation;

    .line 29
    sget-object v0, Lly;->a:Lcom/dianxinos/dxbs/R$anim;

    const v0, 0x7f04000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/InverseTabHost;->c:Landroid/view/animation/Animation;

    .line 30
    sget-object v0, Lly;->a:Lcom/dianxinos/dxbs/R$anim;

    const v0, 0x7f04000f

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/InverseTabHost;->d:Landroid/view/animation/Animation;

    .line 31
    sget-object v0, Lly;->a:Lcom/dianxinos/dxbs/R$anim;

    const v0, 0x7f040010

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/InverseTabHost;->e:Landroid/view/animation/Animation;

    .line 32
    return-void
.end method


# virtual methods
.method public addTab(Landroid/widget/TabHost$TabSpec;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/dianxinos/powermanager/ui/InverseTabHost;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dianxinos/powermanager/ui/InverseTabHost;->f:I

    .line 37
    invoke-super {p0, p1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 38
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 85
    invoke-super {p0, p1}, Landroid/widget/TabHost;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 87
    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x14

    if-ne v2, v3, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/InverseTabHost;->getCurrentView()Landroid/view/View;

    move-result-object v2

    .line 90
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/InverseTabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v3

    .line 91
    if-eqz v2, :cond_0

    invoke-static {v2}, Lazv;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x82

    invoke-virtual {v4, v5}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    .line 96
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 107
    :goto_0
    return v0

    .line 98
    :cond_0
    if-eqz v3, :cond_1

    invoke-static {v2}, Lazv;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public setCurTabAnimSwitch(Z)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/dianxinos/powermanager/ui/InverseTabHost;->a:Z

    .line 81
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 3
    .parameter

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/ui/InverseTabHost;->a:Z

    if-nez v0, :cond_1

    .line 43
    invoke-super {p0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/InverseTabHost;->getCurrentTab()I

    move-result v0

    .line 49
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/InverseTabHost;->getCurrentView()Landroid/view/View;

    move-result-object v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    iget v2, p0, Lcom/dianxinos/powermanager/ui/InverseTabHost;->f:I

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_3

    if-nez p1, :cond_3

    .line 53
    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/InverseTabHost;->e:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 63
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 65
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/InverseTabHost;->getCurrentView()Landroid/view/View;

    move-result-object v1

    .line 66
    if-eqz v1, :cond_0

    .line 67
    iget v2, p0, Lcom/dianxinos/powermanager/ui/InverseTabHost;->f:I

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_6

    if-nez p1, :cond_6

    .line 68
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/InverseTabHost;->b:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 54
    :cond_3
    if-nez v0, :cond_4

    iget v2, p0, Lcom/dianxinos/powermanager/ui/InverseTabHost;->f:I

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_4

    .line 55
    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/InverseTabHost;->c:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 56
    :cond_4
    if-le p1, v0, :cond_5

    .line 57
    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/InverseTabHost;->c:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 58
    :cond_5
    if-ge p1, v0, :cond_2

    .line 59
    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/InverseTabHost;->e:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 69
    :cond_6
    if-nez v0, :cond_7

    iget v2, p0, Lcom/dianxinos/powermanager/ui/InverseTabHost;->f:I

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_7

    .line 70
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/InverseTabHost;->d:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 71
    :cond_7
    if-le p1, v0, :cond_8

    .line 72
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/InverseTabHost;->d:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 73
    :cond_8
    if-ge p1, v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/InverseTabHost;->b:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
