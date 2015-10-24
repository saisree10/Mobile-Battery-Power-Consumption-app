.class public Labq;
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
    .line 300
    iput-object p1, p0, Labq;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 304
    :try_start_0
    iget-object v0, p0, Labq;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 305
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 306
    iget-object v1, p0, Labq;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v1}, Lgx;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AppsFlyerLib;->b(Ljava/lang/String;)V

    .line 307
    iget-object v1, p0, Labq;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    const-string v2, "Dev_Key"

    invoke-static {v1, v2}, Lcom/appsflyer/AppsFlyerLib;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 308
    iget-object v1, p0, Labq;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    const-string v2, "Dev_Key"

    const-string v3, "home"

    const-string v4, ""

    invoke-static {v1, v2, v3, v4}, Lcom/appsflyer/AppsFlyerLib;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v1, p0, Labq;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-virtual {v1}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lazx;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    invoke-static {}, Lcom/dianxinos/powermanager/PowerMangerApplication;->a()Lcom/dianxinos/powermanager/PowerMangerApplication;

    move-result-object v1

    invoke-static {v1}, Lxc;->c(Landroid/content/Context;)V

    .line 313
    :cond_0
    invoke-static {}, Laoj;->b()Laoj;

    move-result-object v1

    invoke-virtual {v1}, Laoj;->d()V

    .line 314
    invoke-static {}, Laoj;->b()Laoj;

    move-result-object v1

    invoke-virtual {v1}, Laoj;->f()V

    .line 315
    invoke-static {v0}, Lcom/dianxinos/common/coins/CoinManager;->a(Landroid/content/Context;)Lcom/dianxinos/common/coins/CoinManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/common/coins/CoinManager;->e()V

    .line 316
    invoke-static {}, Laob;->a()Laob;

    move-result-object v0

    invoke-virtual {v0}, Laob;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 323
    iget-object v0, p0, Labq;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v0}, Lbal;->a(Landroid/content/Context;)V

    .line 324
    iget-object v0, p0, Labq;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v0}, Lbal;->b(Landroid/content/Context;)V

    .line 328
    iget-object v0, p0, Labq;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v0}, Lanx;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 330
    iget-object v0, p0, Labq;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v0}, Lbaj;->a(Landroid/content/Context;)Lbaj;

    move-result-object v0

    .line 331
    iget-object v1, p0, Labq;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v1}, Lakx;->a(Landroid/content/Context;)Lakx;

    move-result-object v1

    .line 333
    invoke-virtual {v1}, Lakx;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 334
    iget-object v1, p0, Labq;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-virtual {v0}, Lbaj;->d()I

    move-result v0

    invoke-static {v1, v0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->a(Lcom/dianxinos/powermanager/PowerMgrTabActivity;I)I

    .line 341
    :cond_1
    iget-object v0, p0, Labq;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Labq;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    const-class v3, Lcom/dianxinos/powermanager/PowerMgrService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 342
    iget-object v0, p0, Labq;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Labq;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    const-class v3, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 343
    iget-object v0, p0, Labq;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Labq;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    const-class v3, Lcom/dianxinos/powermanager/UpdateBatteryWidgetService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 344
    iget-object v0, p0, Labq;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    iget-object v1, p0, Labq;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v1}, Lacz;->a(Landroid/content/Context;)Lacz;

    move-result-object v1

    invoke-virtual {v1}, Lacz;->c()Ladd;

    move-result-object v1

    iget v1, v1, Ladd;->j:I

    iget-object v2, p0, Labq;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v2}, Lazx;->b(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lbal;->a(Landroid/content/Context;IZ)Z

    .line 349
    return-void

    .line 317
    :catch_0
    move-exception v0

    goto :goto_0
.end method
