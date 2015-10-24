.class public Lapo;
.super Landroid/content/BroadcastReceiver;
.source "OperationConfigActivity.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 455
    iput-object p1, p0, Lapo;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 458
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 459
    const-string v1, "purchase_changed_action"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 460
    const-string v0, "product_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 461
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    invoke-static {}, Laoj;->b()Laoj;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoj;->a(Ljava/lang/String;)Laev;

    move-result-object v0

    .line 465
    if-eqz v0, :cond_0

    .line 466
    iget-object v1, p0, Lapo;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    iget-wide v2, v0, Laev;->u:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->a(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 469
    :cond_2
    const-string v1, "use_default_skin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lapo;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->b(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;)V

    goto :goto_0
.end method
