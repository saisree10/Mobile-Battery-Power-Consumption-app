.class public Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;
.super Lqp;
.source "ToolboxActivity.java"


# instance fields
.field private h:Lmc;

.field private i:Lauk;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lqp;-><init>()V

    .line 24
    new-instance v0, Laun;

    invoke-direct {v0, p0}, Laun;-><init>(Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;->h:Lmc;

    return-void
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;->h()V

    return-void
.end method

.method public static synthetic b(Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;->h()V

    return-void
.end method

.method public static synthetic c(Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;->h()V

    return-void
.end method

.method public static synthetic d(Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public static synthetic e(Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public static synthetic f(Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public static synthetic g(Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;->a:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)Z
    .locals 1
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;->i:Lauk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;->i:Lauk;

    invoke-virtual {v0}, Lauk;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-static {p0}, Loa;->a(Landroid/content/Context;)I

    move-result v0

    .line 125
    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;->i:Lauk;

    invoke-virtual {v0}, Lauk;->dismiss()V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;->i:Lauk;

    .line 130
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;->a:Landroid/app/Activity;

    invoke-static {v0}, Lpf;->g(Landroid/content/Context;)V

    .line 74
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;->c()I

    move-result v0

    .line 75
    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lauk;

    invoke-direct {v0, p0}, Lauk;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;->i:Lauk;

    .line 78
    iget-object v0, p0, Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;->i:Lauk;

    invoke-virtual {v0}, Lauk;->show()V

    .line 79
    iget-object v0, p0, Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;->a:Landroid/app/Activity;

    invoke-static {v0}, Lpf;->i(Landroid/content/Context;)V

    .line 86
    :goto_0
    return-void

    .line 82
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected f()V
    .locals 1

    .prologue
    .line 118
    new-instance v0, Laui;

    invoke-direct {v0, p0}, Laui;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Laui;->show()V

    .line 119
    return-void
.end method

.method protected l()Lpj;
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lauo;

    invoke-direct {v0, p0, p0}, Lauo;-><init>(Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;Landroid/app/Activity;)V

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    invoke-super {p0, p1}, Lqp;->onCreate(Landroid/os/Bundle;)V

    .line 46
    iget-object v0, p0, Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;->h:Lmc;

    invoke-static {p0, v0}, Lcom/dianxinos/common/coins/CoinManager;->a(Landroid/content/Context;Lmc;)V

    .line 47
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Lqp;->onDestroy()V

    .line 58
    iget-object v0, p0, Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;->h:Lmc;

    invoke-static {p0, v0}, Lcom/dianxinos/common/coins/CoinManager;->b(Landroid/content/Context;Lmc;)V

    .line 59
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Lqp;->onResume()V

    .line 52
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0269

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->setTitle(I)V

    .line 53
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 115
    return-void
.end method
