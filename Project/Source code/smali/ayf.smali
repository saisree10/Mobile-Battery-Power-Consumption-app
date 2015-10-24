.class public Layf;
.super Landroid/os/Handler;
.source "AppsPowerUsageHistory.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;)V
    .locals 0
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Layf;->a:Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 363
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 365
    :pswitch_0
    iget-object v0, p0, Layf;->a:Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->getActivity()Ln;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Layf;->a:Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->getActivity()Ln;

    move-result-object v0

    invoke-virtual {v0}, Ln;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    iget-object v0, p0, Layf;->a:Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;

    invoke-static {v0}, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->a(Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;)V

    goto :goto_0

    .line 363
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
