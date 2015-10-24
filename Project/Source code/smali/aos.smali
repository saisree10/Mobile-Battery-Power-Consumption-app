.class public Laos;
.super Lauu;
.source "OneKeySwitchDialog.java"


# instance fields
.field private c:Landroid/view/LayoutInflater;

.field private d:Lcom/dianxinos/powermanager/settings/view/GpsSwitchView;

.field private e:Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lauu;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-virtual {p0}, Laos;->j()V

    .line 24
    invoke-virtual {p0}, Laos;->i()V

    .line 26
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a01d2

    invoke-virtual {p0, v0}, Laos;->setTitle(I)V

    .line 28
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Laos;->c:Landroid/view/LayoutInflater;

    .line 29
    iget-object v0, p0, Laos;->c:Landroid/view/LayoutInflater;

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f030059

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 30
    invoke-virtual {p0}, Laos;->g()V

    .line 31
    invoke-virtual {p0, v1}, Laos;->a(Landroid/view/View;)V

    .line 33
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070173

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/settings/view/GpsSwitchView;

    iput-object v0, p0, Laos;->d:Lcom/dianxinos/powermanager/settings/view/GpsSwitchView;

    .line 34
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070172

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;

    iput-object v0, p0, Laos;->e:Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;

    .line 35
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 50
    invoke-virtual {p0}, Laos;->dismiss()V

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-super {p0, p1}, Lauu;->onWindowFocusChanged(Z)V

    .line 41
    if-eqz p1, :cond_0

    .line 43
    iget-object v0, p0, Laos;->d:Lcom/dianxinos/powermanager/settings/view/GpsSwitchView;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/settings/view/GpsSwitchView;->a()V

    .line 44
    iget-object v0, p0, Laos;->e:Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;->a()V

    .line 46
    :cond_0
    return-void
.end method
