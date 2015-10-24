.class public Laxw;
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
    .line 213
    iput-object p1, p0, Laxw;->a:Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Laxw;->a:Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;

    invoke-static {v0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->a(Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lazf;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 216
    iget-object v1, p0, Laxw;->a:Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;

    invoke-virtual {v1, v0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->startActivity(Landroid/content/Intent;)V

    .line 217
    return-void
.end method
