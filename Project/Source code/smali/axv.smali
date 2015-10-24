.class public Laxv;
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
    .line 155
    iput-object p1, p0, Laxv;->a:Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Laxv;->a:Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;->finish()V

    .line 158
    return-void
.end method
