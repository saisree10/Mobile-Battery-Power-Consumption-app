.class public Laxx;
.super Ljava/lang/Object;
.source "AppPowerUsageDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;)V
    .locals 0
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Laxx;->a:Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 317
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 318
    iget-object v1, p0, Laxx;->a:Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;

    invoke-static {v1, v0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->a(Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;I)V

    .line 319
    return-void
.end method
