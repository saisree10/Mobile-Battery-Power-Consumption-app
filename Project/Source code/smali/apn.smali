.class public Lapn;
.super Ljava/lang/Object;
.source "OperationConfigActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 421
    iput-object p1, p0, Lapn;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lapn;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->e(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;)Laet;

    move-result-object v0

    invoke-interface {v0}, Laet;->a()V

    .line 425
    return-void
.end method
