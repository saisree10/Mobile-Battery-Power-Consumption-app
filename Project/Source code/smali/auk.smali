.class public Lauk;
.super Lauu;
.source "NetworkOneKeySwitchDialog.java"


# instance fields
.field private c:Landroid/app/Activity;

.field private d:Landroid/view/LayoutInflater;

.field private e:Lcom/dianxinos/powermanager/settings/view/WlanSwitchView;

.field private f:Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lauu;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p1, p0, Lauk;->c:Landroid/app/Activity;

    .line 26
    invoke-virtual {p0}, Lauk;->j()V

    .line 27
    invoke-virtual {p0}, Lauk;->i()V

    .line 28
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0034

    invoke-virtual {p0, v0}, Lauk;->setTitle(I)V

    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lauk;->d:Landroid/view/LayoutInflater;

    .line 30
    iget-object v0, p0, Lauk;->d:Landroid/view/LayoutInflater;

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f030056

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 32
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07016b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/settings/view/WlanSwitchView;

    iput-object v0, p0, Lauk;->e:Lcom/dianxinos/powermanager/settings/view/WlanSwitchView;

    .line 33
    iget-object v0, p0, Lauk;->e:Lcom/dianxinos/powermanager/settings/view/WlanSwitchView;

    new-instance v2, Laul;

    invoke-direct {v2, p0}, Laul;-><init>(Lauk;)V

    invoke-virtual {v0, v2}, Lcom/dianxinos/powermanager/settings/view/WlanSwitchView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07016c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;

    iput-object v0, p0, Lauk;->f:Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;

    .line 42
    iget-object v0, p0, Lauk;->f:Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;

    new-instance v2, Laum;

    invoke-direct {v2, p0}, Laum;-><init>(Lauk;)V

    invoke-virtual {v0, v2}, Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-virtual {p0}, Lauk;->g()V

    .line 51
    invoke-virtual {p0, v1}, Lauk;->a(Landroid/view/View;)V

    .line 52
    return-void
.end method

.method static synthetic a(Lauk;)Lcom/dianxinos/powermanager/settings/view/WlanSwitchView;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lauk;->e:Lcom/dianxinos/powermanager/settings/view/WlanSwitchView;

    return-object v0
.end method

.method static synthetic b(Lauk;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lauk;->c:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lauk;)Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lauk;->f:Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;

    return-object v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 65
    invoke-virtual {p0}, Lauk;->dismiss()V

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter

    .prologue
    .line 56
    invoke-super {p0, p1}, Lauu;->onWindowFocusChanged(Z)V

    .line 58
    if-eqz p1, :cond_0

    .line 59
    iget-object v0, p0, Lauk;->f:Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;->a()V

    .line 61
    :cond_0
    return-void
.end method
