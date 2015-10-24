.class public Labu;
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
    .line 701
    iput-object p1, p0, Labu;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 704
    iget-object v0, p0, Labu;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    iget-object v1, p0, Labu;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v1}, Lpa;->a(Landroid/content/Context;)Lpa;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->a(Lcom/dianxinos/powermanager/PowerMgrTabActivity;Lpa;)Lpa;

    .line 705
    iget-object v0, p0, Labu;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->q(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)Lpa;

    move-result-object v0

    invoke-virtual {v0}, Lpa;->e()V

    .line 706
    iget-object v0, p0, Labu;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->r(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)Labw;

    move-result-object v0

    invoke-static {}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Labw;->sendEmptyMessage(I)Z

    .line 707
    return-void
.end method
