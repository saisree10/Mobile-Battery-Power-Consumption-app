.class public Lapl;
.super Landroid/os/Handler;
.source "MySkinActivity.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/skinshop/MySkinActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/skinshop/MySkinActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lapl;->a:Lcom/dianxinos/powermanager/skinshop/MySkinActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x444

    if-ne v0, v1, :cond_0

    .line 72
    iget-object v0, p0, Lapl;->a:Lcom/dianxinos/powermanager/skinshop/MySkinActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/skinshop/MySkinActivity;->a(Lcom/dianxinos/powermanager/skinshop/MySkinActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lapl;->a:Lcom/dianxinos/powermanager/skinshop/MySkinActivity;

    const-class v2, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    const-string v1, "from_arc"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    iget-object v1, p0, Lapl;->a:Lcom/dianxinos/powermanager/skinshop/MySkinActivity;

    invoke-virtual {v1, v0}, Lcom/dianxinos/powermanager/skinshop/MySkinActivity;->startActivity(Landroid/content/Intent;)V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lapl;->a:Lcom/dianxinos/powermanager/skinshop/MySkinActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/skinshop/MySkinActivity;->b(Lcom/dianxinos/powermanager/skinshop/MySkinActivity;)V

    goto :goto_0
.end method
