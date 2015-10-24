.class public Lapv;
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
    .line 229
    iput-object p1, p0, Lapv;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 232
    iget-object v0, p0, Lapv;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    const/16 v1, 0x444

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->setResult(I)V

    .line 233
    iget-object v0, p0, Lapv;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->finish()V

    .line 234
    return-void
.end method
