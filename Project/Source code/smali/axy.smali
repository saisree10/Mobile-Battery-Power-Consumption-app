.class public Laxy;
.super Landroid/os/Handler;
.source "AppPowerUsageKitKatActivity.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Laxy;->a:Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 65
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_1

    .line 66
    iget-object v0, p0, Laxy;->a:Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->e(Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Laxy;->a:Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->f(Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Laxy;->a:Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->g(Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a008c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 69
    iget-object v0, p0, Laxy;->a:Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->e(Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Laxy;->a:Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->d(Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;)Layg;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    iget-object v0, p0, Laxy;->a:Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->h(Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;)Laxz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Laxy;->a:Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->h(Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;)Laxz;

    move-result-object v0

    invoke-virtual {v0, v3}, Laxz;->cancel(Z)Z

    .line 72
    iget-object v0, p0, Laxy;->a:Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->a(Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;Laxz;)Laxz;

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Laxy;->a:Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->e(Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Laxy;->a:Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->f(Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Laxy;->a:Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->g(Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a008b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
