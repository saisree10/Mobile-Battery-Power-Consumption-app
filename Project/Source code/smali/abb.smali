.class public Labb;
.super Landroid/content/BroadcastReceiver;
.source "PowerMgrHomeActivity.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/PowerMgrHomeActivity;


# direct methods
.method private constructor <init>(Lcom/dianxinos/powermanager/PowerMgrHomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Labb;->a:Lcom/dianxinos/powermanager/PowerMgrHomeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dianxinos/powermanager/PowerMgrHomeActivity;Laba;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Labb;-><init>(Lcom/dianxinos/powermanager/PowerMgrHomeActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 49
    sget-object v0, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->a:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Labb;->a:Lcom/dianxinos/powermanager/PowerMgrHomeActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0228

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->setTitle(I)V

    .line 51
    iget-object v0, p0, Labb;->a:Lcom/dianxinos/powermanager/PowerMgrHomeActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Labb;->a:Lcom/dianxinos/powermanager/PowerMgrHomeActivity;

    const-class v3, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 53
    :cond_0
    return-void
.end method
