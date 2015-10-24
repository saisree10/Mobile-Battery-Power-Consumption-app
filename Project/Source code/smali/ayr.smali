.class public Layr;
.super Ljava/lang/Object;
.source "HwPowerUsageDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Layr;->a:Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 199
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 201
    const-string v1, "HwPowerUsageDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check details for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    if-eqz v0, :cond_0

    .line 203
    invoke-static {v0}, Lazf;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 204
    iget-object v1, p0, Layr;->a:Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;

    invoke-virtual {v1, v0}, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->startActivity(Landroid/content/Intent;)V

    .line 206
    :cond_0
    return-void
.end method
