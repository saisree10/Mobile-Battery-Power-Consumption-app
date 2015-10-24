.class public Lamt;
.super Landroid/content/BroadcastReceiver;
.source "ModeMgrActivity.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/mode/ModeMgrActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 592
    iput-object p1, p0, Lamt;->a:Lcom/dianxinos/powermanager/mode/ModeMgrActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 595
    iget-object v0, p0, Lamt;->a:Lcom/dianxinos/powermanager/mode/ModeMgrActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->c(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;)Lamp;

    move-result-object v0

    invoke-virtual {v0}, Lamp;->b()I

    move-result v1

    .line 597
    iget-object v0, p0, Lamt;->a:Lcom/dianxinos/powermanager/mode/ModeMgrActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->d(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 603
    :goto_0
    return-void

    .line 600
    :cond_0
    iget-object v0, p0, Lamt;->a:Lcom/dianxinos/powermanager/mode/ModeMgrActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->d(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lamt;->a:Lcom/dianxinos/powermanager/mode/ModeMgrActivity;

    invoke-static {v2}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->e(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamn;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lamn;->setSelected(Z)V

    .line 601
    iget-object v0, p0, Lamt;->a:Lcom/dianxinos/powermanager/mode/ModeMgrActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->d(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamn;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lamn;->setSelected(Z)V

    .line 602
    iget-object v0, p0, Lamt;->a:Lcom/dianxinos/powermanager/mode/ModeMgrActivity;

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->b(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;I)I

    goto :goto_0
.end method
