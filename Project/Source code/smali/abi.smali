.class public Labi;
.super Landroid/content/BroadcastReceiver;
.source "PowerMgrService.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/PowerMgrService;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/PowerMgrService;)V
    .locals 0
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Labi;->a:Lcom/dianxinos/powermanager/PowerMgrService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    .line 430
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 431
    const-string v1, "com.dianxinos.dxbs.KILLSELF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 432
    iget-object v0, p0, Labi;->a:Lcom/dianxinos/powermanager/PowerMgrService;

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMgrService;->e(Lcom/dianxinos/powermanager/PowerMgrService;)Labk;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Labk;->sendEmptyMessageDelayed(IJ)Z

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    const-string v1, "com.dianxinos.dxbs.ABORTKILL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 434
    iget-object v0, p0, Labi;->a:Lcom/dianxinos/powermanager/PowerMgrService;

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMgrService;->e(Lcom/dianxinos/powermanager/PowerMgrService;)Labk;

    move-result-object v0

    invoke-virtual {v0, v3}, Labk;->removeMessages(I)V

    goto :goto_0

    .line 435
    :cond_2
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Labi;->a:Lcom/dianxinos/powermanager/PowerMgrService;

    invoke-static {v1, v0}, Lcom/dianxinos/powermanager/PowerMgrService;->a(Lcom/dianxinos/powermanager/PowerMgrService;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 436
    iget-object v0, p0, Labi;->a:Lcom/dianxinos/powermanager/PowerMgrService;

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMgrService;->f(Lcom/dianxinos/powermanager/PowerMgrService;)Larr;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Larr;->a(Z)V

    .line 437
    iget-object v0, p0, Labi;->a:Lcom/dianxinos/powermanager/PowerMgrService;

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMgrService;->g(Lcom/dianxinos/powermanager/PowerMgrService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Labi;->a:Lcom/dianxinos/powermanager/PowerMgrService;

    invoke-static {v0, p1}, Lcom/dianxinos/powermanager/PowerMgrService;->a(Lcom/dianxinos/powermanager/PowerMgrService;Landroid/content/Context;)V

    .line 439
    iget-object v0, p0, Labi;->a:Lcom/dianxinos/powermanager/PowerMgrService;

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMgrService;->h(Lcom/dianxinos/powermanager/PowerMgrService;)V

    .line 440
    iget-object v0, p0, Labi;->a:Lcom/dianxinos/powermanager/PowerMgrService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/PowerMgrService;->a(Lcom/dianxinos/powermanager/PowerMgrService;Z)Z

    goto :goto_0

    .line 442
    :cond_3
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    iget-object v1, p0, Labi;->a:Lcom/dianxinos/powermanager/PowerMgrService;

    invoke-static {v1}, Lcom/dianxinos/powermanager/PowerMgrService;->f(Lcom/dianxinos/powermanager/PowerMgrService;)Larr;

    move-result-object v1

    invoke-virtual {v1}, Larr;->b()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Labi;->a:Lcom/dianxinos/powermanager/PowerMgrService;

    invoke-static {v1}, Lcom/dianxinos/powermanager/PowerMgrService;->f(Lcom/dianxinos/powermanager/PowerMgrService;)Larr;

    move-result-object v1

    invoke-virtual {v1}, Larr;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    iget-object v1, p0, Labi;->a:Lcom/dianxinos/powermanager/PowerMgrService;

    invoke-static {v1, v0}, Lcom/dianxinos/powermanager/PowerMgrService;->a(Lcom/dianxinos/powermanager/PowerMgrService;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Labi;->a:Lcom/dianxinos/powermanager/PowerMgrService;

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMgrService;->i(Lcom/dianxinos/powermanager/PowerMgrService;)V

    goto :goto_0
.end method
