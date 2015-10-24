.class public Lapj;
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
    .line 38
    iput-object p1, p0, Lapj;->a:Lcom/dianxinos/powermanager/skinshop/MySkinActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lapj;->a:Lcom/dianxinos/powermanager/skinshop/MySkinActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/skinshop/MySkinActivity;->setResult(I)V

    .line 42
    iget-object v0, p0, Lapj;->a:Lcom/dianxinos/powermanager/skinshop/MySkinActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/skinshop/MySkinActivity;->finish()V

    .line 43
    return-void
.end method
