.class Laqk;
.super Ljava/lang/Object;
.source "SkinShopAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Laqj;


# direct methods
.method constructor <init>(Laqj;)V
    .locals 0
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Laqk;->a:Laqj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 303
    iget-object v0, p0, Laqk;->a:Laqj;

    invoke-static {v0}, Laqj;->a(Laqj;)Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Laqk;->a:Laqj;

    invoke-static {v2}, Laqj;->a(Laqj;)Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    move-result-object v2

    const-class v3, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->startActivity(Landroid/content/Intent;)V

    .line 304
    return-void
.end method
