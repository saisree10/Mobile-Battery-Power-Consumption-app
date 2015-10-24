.class public Lcom/dianxinos/powermanager/SaverActivity;
.super Lrd;
.source "SaverActivity.java"


# static fields
.field public static v:Ljava/lang/String;


# instance fields
.field private w:Laby;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "display_smart_page"

    sput-object v0, Lcom/dianxinos/powermanager/SaverActivity;->v:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lrd;-><init>()V

    .line 26
    return-void
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/SaverActivity;)Lcom/dianxinos/common/ui/fragment/TitleIndicator;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/dianxinos/powermanager/SaverActivity;->s:Lcom/dianxinos/common/ui/fragment/TitleIndicator;

    return-object v0
.end method

.method public static synthetic b(Lcom/dianxinos/powermanager/SaverActivity;)Lcom/dianxinos/common/ui/fragment/TitleIndicator;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/dianxinos/powermanager/SaverActivity;->s:Lcom/dianxinos/common/ui/fragment/TitleIndicator;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/util/ArrayList;)I
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 37
    new-instance v0, Laby;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Laby;-><init>(Lcom/dianxinos/powermanager/SaverActivity;Labx;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/SaverActivity;->w:Laby;

    .line 38
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 39
    sget-object v1, Lcom/dianxinos/powermanager/SaverActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/dianxinos/powermanager/SaverActivity;->w:Laby;

    invoke-virtual {p0, v1, v0}, Lcom/dianxinos/powermanager/SaverActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 42
    new-instance v0, Lcom/dianxinos/common/ui/fragment/TabInfo;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a025c

    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/SaverActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;

    invoke-direct {v0, v4, v1, v2}, Lcom/dianxinos/common/ui/fragment/TabInfo;-><init>(ILjava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v0, Lcom/dianxinos/common/ui/fragment/TabInfo;

    const/4 v1, 0x1

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0234

    invoke-virtual {p0, v2}, Lcom/dianxinos/powermanager/SaverActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;

    invoke-direct {v0, v1, v2, v3}, Lcom/dianxinos/common/ui/fragment/TabInfo;-><init>(ILjava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    return v4
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/SaverActivity;->getParent()Landroid/app/Activity;

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
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/SaverActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dianxinos/powermanager/SaverActivity;->w:Laby;

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/SaverActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 58
    invoke-super {p0}, Lrd;->onDestroy()V

    .line 59
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/SaverActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a024d

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->setTitle(I)V

    .line 52
    invoke-super {p0}, Lrd;->onResume()V

    .line 53
    return-void
.end method
