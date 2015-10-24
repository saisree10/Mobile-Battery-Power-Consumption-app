.class public Layp;
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
    .line 109
    iput-object p1, p0, Layp;->a:Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Layp;->a:Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/usage/HwPowerUsageDetails;->finish()V

    .line 112
    return-void
.end method
