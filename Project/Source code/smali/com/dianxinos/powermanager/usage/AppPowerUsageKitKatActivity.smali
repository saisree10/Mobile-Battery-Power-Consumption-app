.class public Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;
.super Laam;
.source "AppPowerUsageKitKatActivity.java"


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/app/ActivityManager;

.field private e:Ljava/util/List;

.field private f:Layg;

.field private g:Laxz;

.field private h:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Laam;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->e:Ljava/util/List;

    .line 61
    new-instance v0, Laxy;

    invoke-direct {v0, p0}, Laxy;-><init>(Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->h:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->h:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;Laxz;)Laxz;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->g:Laxz;

    return-object p1
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->e:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic b(Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;)Landroid/app/ActivityManager;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->d:Landroid/app/ActivityManager;

    return-object v0
.end method

.method public static synthetic c(Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->e:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic d(Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;)Layg;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->f:Layg;

    return-object v0
.end method

.method public static synthetic e(Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->a:Landroid/widget/ListView;

    return-object v0
.end method

.method public static synthetic f(Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->b:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic g(Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic h(Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;)Laxz;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->g:Laxz;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    const/16 v0, 0x1bc

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->d:Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 121
    new-instance v0, Laxz;

    invoke-direct {v0, p0}, Laxz;-><init>(Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->g:Laxz;

    .line 122
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->g:Laxz;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Laxz;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 124
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 85
    invoke-super {p0, p1}, Laam;->onCreate(Landroid/os/Bundle;)V

    .line 86
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->setContentView(I)V

    .line 87
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->d:Landroid/app/ActivityManager;

    .line 89
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070010

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->a:Landroid/widget/ListView;

    .line 90
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070011

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->b:Landroid/widget/LinearLayout;

    .line 91
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070012

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->c:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 93
    new-instance v0, Layg;

    invoke-direct {v0, p0}, Layg;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->f:Layg;

    .line 94
    new-instance v0, Laxz;

    invoke-direct {v0, p0}, Laxz;-><init>(Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->g:Laxz;

    .line 95
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->g:Laxz;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Laxz;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 96
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_0

    .line 102
    check-cast v0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0051

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->setTitle(I)V

    .line 104
    :cond_0
    invoke-super {p0}, Laam;->onResume()V

    .line 105
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 129
    return-void
.end method
