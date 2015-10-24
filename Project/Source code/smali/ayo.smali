.class public Layo;
.super Landroid/os/Handler;
.source "HardwaresPowerUsageSummary.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/usage/HardwaresPowerUsageSummary;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/usage/HardwaresPowerUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Layo;->a:Lcom/dianxinos/powermanager/usage/HardwaresPowerUsageSummary;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 195
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 197
    :pswitch_0
    iget-object v0, p0, Layo;->a:Lcom/dianxinos/powermanager/usage/HardwaresPowerUsageSummary;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/usage/HardwaresPowerUsageSummary;->getActivity()Ln;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Layo;->a:Lcom/dianxinos/powermanager/usage/HardwaresPowerUsageSummary;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/usage/HardwaresPowerUsageSummary;->getActivity()Ln;

    move-result-object v0

    invoke-virtual {v0}, Ln;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Layo;->a:Lcom/dianxinos/powermanager/usage/HardwaresPowerUsageSummary;

    invoke-static {v0}, Lcom/dianxinos/powermanager/usage/HardwaresPowerUsageSummary;->a(Lcom/dianxinos/powermanager/usage/HardwaresPowerUsageSummary;)V

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
