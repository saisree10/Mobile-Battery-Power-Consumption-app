.class public Labs;
.super Ljava/lang/Object;
.source "PowerMgrTabActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 494
    iput-object p1, p0, Labs;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Labs;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    const/16 v1, 0xfa

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->b(Lcom/dianxinos/powermanager/PowerMgrTabActivity;I)V

    .line 498
    return-void
.end method
