.class public Lcom/dianxinos/powermanager/skinshop/MySkinActivity;
.super Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;
.source "MySkinActivity.java"

# interfaces
.implements Laeu;


# instance fields
.field private d:Landroid/os/Handler;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/skinshop/MySkinActivity;->e:Z

    return-void
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/skinshop/MySkinActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/skinshop/MySkinActivity;->e:Z

    return v0
.end method

.method public static synthetic b(Lcom/dianxinos/powermanager/skinshop/MySkinActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-super {p0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/ArrayList;
    .locals 6

    .prologue
    .line 90
    new-instance v1, Laon;

    invoke-direct {v1}, Laon;-><init>()V

    .line 91
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a038b

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/skinshop/MySkinActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Laon;->b:Ljava/lang/String;

    .line 92
    const-string v0, ""

    iput-object v0, v1, Laon;->c:Ljava/lang/String;

    .line 93
    const-string v0, "MySkinBannerImageUrl"

    iput-object v0, v1, Laon;->d:Ljava/lang/String;

    .line 94
    invoke-static {}, Laoj;->b()Laoj;

    move-result-object v0

    invoke-virtual {v0}, Laoj;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 95
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 96
    if-eqz v2, :cond_0

    .line 97
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 98
    iget-object v4, v1, Laon;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    return-object v3
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->finish()V

    .line 108
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/skinshop/MySkinActivity;->e:Z

    if-nez v0, :cond_0

    .line 109
    sget-object v0, Lly;->a:Lcom/dianxinos/dxbs/R$anim;

    const v0, 0x7f040004

    sget-object v1, Lly;->a:Lcom/dianxinos/dxbs/R$anim;

    const v1, 0x7f040005

    invoke-virtual {p0, v0, v1}, Lcom/dianxinos/powermanager/skinshop/MySkinActivity;->overridePendingTransition(II)V

    .line 111
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v0, 0x444

    .line 124
    invoke-super {p0, p1, p2, p3}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 125
    if-ne p1, v0, :cond_0

    if-ne p2, v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/MySkinActivity;->finish()V

    .line 128
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 30
    invoke-super {p0, p1}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/MySkinActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    const-string v1, "from_arc"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/skinshop/MySkinActivity;->e:Z

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/MySkinActivity;->a:Lcom/dianxinos/powermanager/ui/MainTitle;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a02bc

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setTitleText(I)V

    .line 37
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/MySkinActivity;->a:Lcom/dianxinos/powermanager/ui/MainTitle;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/ui/MainTitle;->a()V

    .line 38
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/MySkinActivity;->a:Lcom/dianxinos/powermanager/ui/MainTitle;

    new-instance v1, Lapj;

    invoke-direct {v1, p0}, Lapj;-><init>(Lcom/dianxinos/powermanager/skinshop/MySkinActivity;)V

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setLeftButtonOnclickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/MySkinActivity;->a:Lcom/dianxinos/powermanager/ui/MainTitle;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020409

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setRightButtonIcon(I)V

    .line 46
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/MySkinActivity;->a:Lcom/dianxinos/powermanager/ui/MainTitle;

    new-instance v1, Lapk;

    invoke-direct {v1, p0}, Lapk;-><init>(Lcom/dianxinos/powermanager/skinshop/MySkinActivity;)V

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setRightButtonOnclickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    new-instance v0, Lapl;

    invoke-direct {v0, p0}, Lapl;-><init>(Lcom/dianxinos/powermanager/skinshop/MySkinActivity;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/skinshop/MySkinActivity;->d:Landroid/os/Handler;

    .line 84
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/MySkinActivity;->b:Laqj;

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iget-object v1, p0, Lcom/dianxinos/powermanager/skinshop/MySkinActivity;->d:Landroid/os/Handler;

    const/16 v2, 0x444

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Laqj;->a(Landroid/os/Message;)V

    .line 85
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/MySkinActivity;->c:Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;

    invoke-virtual {v0, v3}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->setCurrentItemInCenter(I)V

    .line 86
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/MySkinActivity;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/MySkinActivity;->d:Landroid/os/Handler;

    const/16 v1, 0x444

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/powermanager/skinshop/MySkinActivity;->d:Landroid/os/Handler;

    .line 119
    :cond_0
    invoke-super {p0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->onDestroy()V

    .line 120
    return-void
.end method
