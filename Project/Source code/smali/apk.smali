.class public Lapk;
.super Ljava/lang/Object;
.source "MySkinActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/skinshop/MySkinActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/skinshop/MySkinActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lapk;->a:Lcom/dianxinos/powermanager/skinshop/MySkinActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lapk;->a:Lcom/dianxinos/powermanager/skinshop/MySkinActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/skinshop/MySkinActivity;->a(Lcom/dianxinos/powermanager/skinshop/MySkinActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lapk;->a:Lcom/dianxinos/powermanager/skinshop/MySkinActivity;

    const-class v2, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    const-string v1, "from_arc"

    iget-object v2, p0, Lapk;->a:Lcom/dianxinos/powermanager/skinshop/MySkinActivity;

    invoke-static {v2}, Lcom/dianxinos/powermanager/skinshop/MySkinActivity;->a(Lcom/dianxinos/powermanager/skinshop/MySkinActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 53
    iget-object v1, p0, Lapk;->a:Lcom/dianxinos/powermanager/skinshop/MySkinActivity;

    const/16 v2, 0x444

    invoke-virtual {v1, v0, v2}, Lcom/dianxinos/powermanager/skinshop/MySkinActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 55
    iget-object v0, p0, Lapk;->a:Lcom/dianxinos/powermanager/skinshop/MySkinActivity;

    sget-object v1, Lly;->a:Lcom/dianxinos/dxbs/R$anim;

    const v1, 0x7f040006

    sget-object v2, Lly;->a:Lcom/dianxinos/dxbs/R$anim;

    const v2, 0x7f040007

    invoke-virtual {v0, v1, v2}, Lcom/dianxinos/powermanager/skinshop/MySkinActivity;->overridePendingTransition(II)V

    .line 62
    :goto_0
    iget-object v0, p0, Lapk;->a:Lcom/dianxinos/powermanager/skinshop/MySkinActivity;

    const-string v1, "stsc"

    const-string v2, "sts"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 66
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lapk;->a:Lcom/dianxinos/powermanager/skinshop/MySkinActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/skinshop/MySkinActivity;->finish()V

    goto :goto_0
.end method
