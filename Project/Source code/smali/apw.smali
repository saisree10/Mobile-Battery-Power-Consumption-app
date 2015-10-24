.class public Lapw;
.super Ljava/lang/Object;
.source "OperationConfigActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lapw;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 242
    iget-object v0, p0, Lapw;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    const-string v1, "stmc"

    const-string v2, "stm"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 246
    iget-object v0, p0, Lapw;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->d(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lapw;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->finish()V

    .line 254
    :goto_0
    return-void

    .line 249
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lapw;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    const-class v2, Lcom/dianxinos/powermanager/skinshop/MySkinActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 250
    iget-object v1, p0, Lapw;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    const/16 v2, 0x104

    invoke-virtual {v1, v0, v2}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 251
    iget-object v0, p0, Lapw;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    sget-object v1, Lly;->a:Lcom/dianxinos/dxbs/R$anim;

    const v1, 0x7f040006

    sget-object v2, Lly;->a:Lcom/dianxinos/dxbs/R$anim;

    const v2, 0x7f040007

    invoke-virtual {v0, v1, v2}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method
