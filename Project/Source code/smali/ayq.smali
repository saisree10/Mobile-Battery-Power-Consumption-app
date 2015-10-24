.class public Layq;
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
    .line 142
    iput-object p1, p0, Layq;->a:Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Layq;->a:Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;

    iget-object v1, p0, Layq;->a:Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;

    invoke-static {v1}, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->a(Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->a(Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;I)V

    .line 146
    return-void
.end method
