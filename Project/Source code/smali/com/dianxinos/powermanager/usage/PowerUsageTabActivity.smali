.class public Lcom/dianxinos/powermanager/usage/PowerUsageTabActivity;
.super Lrd;
.source "PowerUsageTabActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lrd;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/util/ArrayList;)I
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 25
    new-instance v0, Lcom/dianxinos/common/ui/fragment/TabInfo;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0053

    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/usage/PowerUsageTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;

    invoke-direct {v0, v4, v1, v2}, Lcom/dianxinos/common/ui/fragment/TabInfo;-><init>(ILjava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v0, Lcom/dianxinos/common/ui/fragment/TabInfo;

    const/4 v1, 0x1

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0054

    invoke-virtual {p0, v2}, Lcom/dianxinos/powermanager/usage/PowerUsageTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/dianxinos/powermanager/usage/HardwaresPowerUsageSummary;

    invoke-direct {v0, v1, v2, v3}, Lcom/dianxinos/common/ui/fragment/TabInfo;-><init>(ILjava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    return v4
.end method

.method public a(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 34
    invoke-super {p0, p1}, Lrd;->a(I)V

    .line 35
    if-nez p1, :cond_0

    .line 37
    const-string v0, "tab"

    const-string v1, "hw"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 47
    :goto_0
    return-void

    .line 43
    :cond_0
    const-string v0, "tab"

    const-string v1, "app"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/usage/PowerUsageTabActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 64
    :goto_0
    return-void

    .line 61
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.dianxinos.dxbs.CLOSE_APP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/usage/PowerUsageTabActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 62
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/usage/PowerUsageTabActivity;->finish()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Lrd;->onResume()V

    .line 52
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/usage/PowerUsageTabActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0051

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->setTitle(I)V

    .line 53
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/usage/PowerUsageTabActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 69
    return-void
.end method
