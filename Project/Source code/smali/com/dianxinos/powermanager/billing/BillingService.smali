.class public Lcom/dianxinos/powermanager/billing/BillingService;
.super Landroid/app/Service;
.source "BillingService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static a:Lgo;

.field private static b:Ljava/util/LinkedList;

.field private static c:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/dianxinos/powermanager/billing/BillingService;->b:Ljava/util/LinkedList;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/dianxinos/powermanager/billing/BillingService;->c:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 367
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 368
    return-void
.end method

.method public static synthetic a(Lgo;)Lgo;
    .locals 0
    .parameter

    .prologue
    .line 61
    sput-object p0, Lcom/dianxinos/powermanager/billing/BillingService;->a:Lgo;

    return-object p0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 529
    invoke-static {p2, p3}, Laeq;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 530
    if-nez v0, :cond_1

    .line 531
    const-string v0, "BillingService"

    const-string v1, "Purchase verify failed"

    invoke-static {v0, v1}, Lazt;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    :cond_0
    return-void

    .line 535
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 536
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 537
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laer;

    .line 538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Purchase state changed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Laer;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dianxinos/powermanager/billing/BillingService;->a(Ljava/lang/String;)V

    .line 539
    iget-object v1, v0, Laer;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 540
    iget-object v1, v0, Laer;->b:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    :cond_2
    iget-object v1, v0, Laer;->c:Ljava/lang/String;

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    iget-object v1, v0, Laer;->a:Laks;

    iget-object v2, v0, Laer;->c:Ljava/lang/String;

    iget-object v3, v0, Laer;->d:Ljava/lang/String;

    iget-wide v4, v0, Laer;->e:J

    iget-object v6, v0, Laer;->f:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Laeo;->a(Landroid/content/Context;Laks;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    .line 546
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 547
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 548
    invoke-direct {p0, p1, v0}, Lcom/dianxinos/powermanager/billing/BillingService;->a(I[Ljava/lang/String;)Z

    .line 552
    :cond_4
    invoke-static {p0}, Lcom/dianxinos/common/coins/CoinManager;->a(Landroid/content/Context;)Lcom/dianxinos/common/coins/CoinManager;

    move-result-object v0

    .line 553
    sget-object v1, Loo;->d:Loo;

    invoke-virtual {v0, v1}, Lcom/dianxinos/common/coins/CoinManager;->a(Loo;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lazu;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 554
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 555
    invoke-virtual {v0, v8}, Lcom/dianxinos/common/coins/CoinManager;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 556
    if-eqz v0, :cond_5

    .line 557
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 559
    :try_start_0
    new-instance v3, Laev;

    invoke-direct {v3, v0}, Laev;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 560
    :catch_0
    move-exception v0

    goto :goto_1

    .line 565
    :cond_5
    invoke-static {p0}, Ladp;->a(Landroid/content/Context;)Ladp;

    move-result-object v0

    .line 566
    invoke-static {}, Laoj;->b()Laoj;

    move-result-object v2

    .line 567
    invoke-static {p0}, Lmf;->a(Landroid/content/Context;)Lmf;

    move-result-object v3

    .line 568
    invoke-virtual {v0}, Ladp;->q()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 569
    invoke-virtual {v0}, Ladp;->r()V

    .line 570
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Laoj;->a(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 571
    invoke-virtual {v3, v0}, Lmf;->a(Ljava/util/List;)V

    .line 573
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laev;

    .line 574
    iget-wide v4, v0, Laev;->u:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "9"

    invoke-virtual {v3, v4, v5}, Lmf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    invoke-virtual {v2, v0}, Laoj;->a(Laev;)V

    goto :goto_2
.end method

.method private a(JLakt;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 595
    sget-object v0, Lcom/dianxinos/powermanager/billing/BillingService;->c:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laed;

    .line 596
    if-eqz v0, :cond_0

    .line 600
    invoke-virtual {v0, p3}, Laed;->a(Lakt;)V

    .line 602
    :cond_0
    sget-object v0, Lcom/dianxinos/powermanager/billing/BillingService;->c:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 677
    return-void
.end method

.method private a(I[Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 497
    new-instance v0, Laef;

    invoke-direct {v0, p0, p1, p2}, Laef;-><init>(Lcom/dianxinos/powermanager/billing/BillingService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Laef;->b()Z

    move-result v0

    return v0
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/billing/BillingService;)Z
    .locals 1
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/dianxinos/powermanager/billing/BillingService;->g()Z

    move-result v0

    return v0
.end method

.method private b(I[Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 515
    new-instance v0, Laeg;

    invoke-direct {v0, p0, p1, p2}, Laeg;-><init>(Lcom/dianxinos/powermanager/billing/BillingService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Laeg;->b()Z

    move-result v0

    return v0
.end method

.method public static synthetic d()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/dianxinos/powermanager/billing/BillingService;->b:Ljava/util/LinkedList;

    return-object v0
.end method

.method public static synthetic e()Lgo;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/dianxinos/powermanager/billing/BillingService;->a:Lgo;

    return-object v0
.end method

.method public static synthetic f()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/dianxinos/powermanager/billing/BillingService;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method private g()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 434
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.vending.billing.MarketBillingService.BIND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v1, p0, v2}, Lcom/dianxinos/powermanager/billing/BillingService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 438
    if-eqz v1, :cond_0

    .line 446
    :goto_0
    return v0

    .line 441
    :cond_0
    const-string v0, "BillingService"

    const-string v1, "Could not bind to service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 443
    :catch_0
    move-exception v0

    .line 444
    const-string v1, "BillingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private h()V
    .locals 3

    .prologue
    .line 610
    const/4 v0, -0x1

    move v1, v0

    .line 612
    :cond_0
    :goto_0
    sget-object v0, Lcom/dianxinos/powermanager/billing/BillingService;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laed;

    if-eqz v0, :cond_3

    .line 613
    invoke-virtual {v0}, Laed;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 615
    sget-object v2, Lcom/dianxinos/powermanager/billing/BillingService;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 619
    invoke-virtual {v0}, Laed;->a()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 620
    invoke-virtual {v0}, Laed;->a()I

    move-result v0

    move v1, v0

    goto :goto_0

    .line 625
    :cond_1
    invoke-direct {p0}, Lcom/dianxinos/powermanager/billing/BillingService;->g()Z

    .line 639
    :cond_2
    :goto_1
    return-void

    .line 633
    :cond_3
    if-ltz v1, :cond_2

    .line 637
    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/billing/BillingService;->stopSelf(I)V

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 371
    invoke-virtual {p0, p1}, Lcom/dianxinos/powermanager/billing/BillingService;->attachBaseContext(Landroid/content/Context;)V

    .line 372
    return-void
.end method

.method public a(Landroid/content/Intent;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 399
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 403
    const-string v1, "com.example.dungeons.CONFIRM_NOTIFICATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 404
    const-string v0, "notification_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 405
    invoke-direct {p0, p2, v0}, Lcom/dianxinos/powermanager/billing/BillingService;->a(I[Ljava/lang/String;)Z

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    const-string v1, "com.example.dungeons.GET_PURCHASE_INFORMATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 407
    const-string v0, "notification_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 408
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-direct {p0, p2, v1}, Lcom/dianxinos/powermanager/billing/BillingService;->b(I[Ljava/lang/String;)Z

    goto :goto_0

    .line 411
    :cond_2
    const-string v1, "com.android.vending.billing.PURCHASE_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 412
    const-string v0, "inapp_signed_data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 413
    const-string v1, "inapp_signature"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 414
    invoke-direct {p0, p2, v0, v1}, Lcom/dianxinos/powermanager/billing/BillingService;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 415
    :cond_3
    const-string v1, "com.android.vending.billing.RESPONSE_CODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    const-string v0, "request_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 417
    const-string v2, "response_code"

    sget-object v3, Lakt;->g:Lakt;

    invoke-virtual {v3}, Lakt;->ordinal()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 419
    invoke-static {v2}, Lakt;->a(I)Lakt;

    move-result-object v2

    .line 420
    invoke-direct {p0, v0, v1, v2}, Lcom/dianxinos/powermanager/billing/BillingService;->a(JLakt;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 455
    new-instance v0, Laee;

    invoke-direct {v0, p0}, Laee;-><init>(Lcom/dianxinos/powermanager/billing/BillingService;)V

    invoke-virtual {v0}, Laee;->b()Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 470
    new-instance v0, Laeh;

    invoke-direct {v0, p0, p1, p2}, Laeh;-><init>(Lcom/dianxinos/powermanager/billing/BillingService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Laeh;->b()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 481
    new-instance v0, Laei;

    invoke-direct {v0, p0}, Laei;-><init>(Lcom/dianxinos/powermanager/billing/BillingService;)V

    invoke-virtual {v0}, Laei;->b()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 667
    :try_start_0
    invoke-virtual {p0, p0}, Lcom/dianxinos/powermanager/billing/BillingService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    :goto_0
    return-void

    .line 668
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 379
    const/4 v0, 0x0

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 649
    invoke-static {p2}, Lgp;->a(Landroid/os/IBinder;)Lgo;

    move-result-object v0

    sput-object v0, Lcom/dianxinos/powermanager/billing/BillingService;->a:Lgo;

    .line 650
    invoke-direct {p0}, Lcom/dianxinos/powermanager/billing/BillingService;->h()V

    .line 651
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter

    .prologue
    .line 657
    const-string v0, "BillingService"

    const-string v1, "Billing service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    const/4 v0, 0x0

    sput-object v0, Lcom/dianxinos/powermanager/billing/BillingService;->a:Lgo;

    .line 659
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 384
    if-eqz p1, :cond_0

    .line 385
    invoke-virtual {p0, p1, p3}, Lcom/dianxinos/powermanager/billing/BillingService;->a(Landroid/content/Intent;I)V

    .line 387
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
