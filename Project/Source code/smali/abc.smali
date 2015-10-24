.class public Labc;
.super Landroid/os/Handler;
.source "PowerMgrHomeActivity.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/PowerMgrHomeActivity;


# direct methods
.method private constructor <init>(Lcom/dianxinos/powermanager/PowerMgrHomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Labc;->a:Lcom/dianxinos/powermanager/PowerMgrHomeActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dianxinos/powermanager/PowerMgrHomeActivity;Laba;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 198
    invoke-direct {p0, p1}, Labc;-><init>(Lcom/dianxinos/powermanager/PowerMgrHomeActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 201
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v0, :cond_1

    .line 203
    iget-object v1, p0, Labc;->a:Lcom/dianxinos/powermanager/PowerMgrHomeActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->a(Lcom/dianxinos/powermanager/PowerMgrHomeActivity;)Laff;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v0, p0, Labc;->a:Lcom/dianxinos/powermanager/PowerMgrHomeActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->b(Lcom/dianxinos/powermanager/PowerMgrHomeActivity;)Z

    move-result v0

    .line 207
    :cond_0
    :goto_0
    iget-object v1, p0, Labc;->a:Lcom/dianxinos/powermanager/PowerMgrHomeActivity;

    iget-object v2, p0, Labc;->a:Lcom/dianxinos/powermanager/PowerMgrHomeActivity;

    invoke-static {v2}, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->c(Lcom/dianxinos/powermanager/PowerMgrHomeActivity;)Ladd;

    move-result-object v2

    iget v2, v2, Ladd;->j:I

    invoke-static {v1, v2, v0}, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->a(Lcom/dianxinos/powermanager/PowerMgrHomeActivity;IZ)V

    .line 208
    iget-object v0, p0, Labc;->a:Lcom/dianxinos/powermanager/PowerMgrHomeActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->d(Lcom/dianxinos/powermanager/PowerMgrHomeActivity;)Lcom/dianxinos/powermanager/ui/BatteryInfoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->a()V

    .line 210
    :cond_1
    return-void

    .line 203
    :cond_2
    iget-object v1, p0, Labc;->a:Lcom/dianxinos/powermanager/PowerMgrHomeActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->b(Lcom/dianxinos/powermanager/PowerMgrHomeActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Labc;->a:Lcom/dianxinos/powermanager/PowerMgrHomeActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->a(Lcom/dianxinos/powermanager/PowerMgrHomeActivity;)Laff;

    move-result-object v1

    invoke-virtual {v1}, Laff;->e()I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Labc;->a:Lcom/dianxinos/powermanager/PowerMgrHomeActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->a(Lcom/dianxinos/powermanager/PowerMgrHomeActivity;)Laff;

    move-result-object v1

    invoke-virtual {v1}, Laff;->e()I

    move-result v1

    const/16 v2, 0x67

    if-ne v1, v2, :cond_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
