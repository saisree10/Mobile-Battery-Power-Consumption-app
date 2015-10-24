.class public Labp;
.super Ljava/lang/Object;
.source "PowerMgrTabActivity.java"

# interfaces
.implements Lavj;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Labp;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Labp;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->c(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)Lcom/dianxinos/powermanager/ui/InverseTabHost;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/InverseTabHost;->setCurTabAnimSwitch(Z)V

    .line 285
    iget-object v0, p0, Labp;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->c(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)Lcom/dianxinos/powermanager/ui/InverseTabHost;

    move-result-object v0

    const-string v1, "tab_tag_toolbox"

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/InverseTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Labp;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->c(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)Lcom/dianxinos/powermanager/ui/InverseTabHost;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/InverseTabHost;->setCurTabAnimSwitch(Z)V

    .line 287
    return-void
.end method
