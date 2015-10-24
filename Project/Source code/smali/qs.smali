.class public Lqs;
.super Lpj;
.source "ToolboxTctbClickHandler.java"


# instance fields
.field private c:Landroid/content/Context;

.field private d:Landroid/app/Activity;

.field private e:Landroid/webkit/WebView;

.field private f:Lqv;

.field private g:Lpq;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 276
    invoke-direct {p0, p1}, Lpj;-><init>(Landroid/app/Activity;)V

    .line 277
    iput-object p1, p0, Lqs;->c:Landroid/content/Context;

    .line 278
    iput-object p1, p0, Lqs;->d:Landroid/app/Activity;

    .line 279
    return-void
.end method

.method static synthetic a(Lqs;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lqs;->d:Landroid/app/Activity;

    return-object v0
.end method

.method private d(Lou;)V
    .locals 4
    .parameter

    .prologue
    .line 385
    iget-object v0, p0, Lqs;->c:Landroid/content/Context;

    const-string v1, "com.android.vending"

    invoke-static {v0, v1}, Lpi;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 386
    const-string v1, "ToolboxTctbClickHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Click with Play installed? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p1, Lou;->m:Ljava/lang/String;

    .line 389
    invoke-static {v0}, Lqs;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 390
    invoke-virtual {p0, p1, v0}, Lqs;->c(Lou;Ljava/lang/String;)V

    .line 399
    :goto_0
    return-void

    .line 392
    :cond_0
    sget v1, Lok;->toolbox_loading_switch_google_play_des:I

    invoke-virtual {p0, v1}, Lqs;->b(I)V

    .line 393
    invoke-virtual {p0, p1, v0}, Lqs;->d(Lou;Ljava/lang/String;)V

    goto :goto_0

    .line 397
    :cond_1
    iget-object v0, p1, Lou;->m:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lqs;->b(Lou;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private e(Lou;)V
    .locals 3
    .parameter

    .prologue
    .line 402
    const-string v0, "ToolboxTctbClickHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHINA Click to download:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lou;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lqs;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lop;->c(Landroid/content/Context;Lou;)V

    .line 404
    iget-object v0, p1, Lou;->m:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lqs;->b(Lou;Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method private f()Lpq;
    .locals 3

    .prologue
    .line 551
    new-instance v0, Lpq;

    iget-object v1, p0, Lqs;->d:Landroid/app/Activity;

    sget v2, Lol;->Dialog_Fullscreen:I

    invoke-direct {v0, v1, v2}, Lpq;-><init>(Landroid/content/Context;I)V

    .line 553
    new-instance v1, Lqu;

    invoke-direct {v1, p0}, Lqu;-><init>(Lqs;)V

    invoke-virtual {v0, v1}, Lpq;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 561
    return-object v0
.end method


# virtual methods
.method public a(Lou;)V
    .locals 3
    .parameter

    .prologue
    .line 283
    iget-object v0, p0, Lqs;->c:Landroid/content/Context;

    iget-object v1, p1, Lou;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lpi;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 284
    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {p0, p1}, Lqs;->b(Lou;)V

    .line 311
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lqs;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lop;->b(Landroid/content/Context;Lou;)V

    .line 288
    iget-object v0, p0, Lqs;->c:Landroid/content/Context;

    invoke-static {v0}, Lpi;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    invoke-virtual {p0, p1}, Lqs;->c(Lou;)V

    goto :goto_0

    .line 292
    :cond_1
    iget v0, p1, Lou;->j:I

    if-nez v0, :cond_2

    .line 293
    iget-object v0, p1, Lou;->n:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lqs;->a(Lou;Ljava/lang/String;)V

    goto :goto_0

    .line 297
    :cond_2
    iget v0, p1, Lou;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 298
    const-string v0, "ToolboxTctbClickHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clicked URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lou;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-static {}, Lpa;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 300
    invoke-direct {p0, p1}, Lqs;->d(Lou;)V

    goto :goto_0

    .line 302
    :cond_3
    invoke-direct {p0, p1}, Lqs;->e(Lou;)V

    goto :goto_0

    .line 308
    :cond_4
    const-string v0, "ToolboxTctbClickHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Open type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lou;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected b(I)V
    .locals 2
    .parameter

    .prologue
    .line 476
    iget-object v0, p0, Lqs;->a:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 477
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 478
    iget-object v1, p0, Lqs;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 479
    return-void
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 381
    invoke-virtual {p0}, Lqs;->d()V

    .line 382
    return-void
.end method

.method protected d()V
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lqs;->f:Lqv;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lqs;->f:Lqv;

    invoke-interface {v0}, Lqv;->a()V

    .line 472
    :cond_0
    iget-object v0, p0, Lqs;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 473
    return-void
.end method

.method protected d(Lou;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 408
    invoke-static {}, Lpi;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    const-string v0, "ToolboxTctbClickHandler"

    const-string v1, "Newer OS, use WebView redirect."

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0, p1, p2}, Lqs;->f(Lou;Ljava/lang/String;)V

    .line 421
    :goto_0
    return-void

    .line 412
    :cond_0
    const-string v0, "ToolboxTctbClickHandler"

    const-string v1, "Older OS, use Http redirect."

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-static {}, Lra;->a()Lra;

    move-result-object v0

    new-instance v1, Lqt;

    invoke-direct {v1, p0, p1, p2}, Lqt;-><init>(Lqs;Lou;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lra;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected e()V
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Lqs;->a:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 548
    return-void
.end method

.method protected e(Lou;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 425
    :try_start_0
    invoke-static {}, Lqs;->b()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    .line 427
    new-instance v1, Lqw;

    invoke-direct {v1, p0, p1}, Lqw;-><init>(Lqs;Lou;)V

    .line 428
    iput-object v1, p0, Lqs;->f:Lqv;

    .line 429
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 431
    const-string v1, "ToolboxTctbClickHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Http] Decode URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 434
    const-string v2, "User-Agent"

    const-string v3, "dianxinosdxbs/3.2 (Linux; Android; Tapas OTA)"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const/16 v3, 0x2710

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 436
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const/16 v3, 0x4e20

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 438
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 439
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :goto_0
    return-void

    .line 440
    :catch_0
    move-exception v0

    .line 443
    const-string v1, "ToolboxTctbClickHandler"

    const-string v2, "[Http] Others error: "

    invoke-static {v1, v2, v0}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 444
    invoke-virtual {p0, p1, p2}, Lqs;->g(Lou;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected f(Lou;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 451
    iget-object v0, p0, Lqs;->e:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 452
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lqs;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lqs;->e:Landroid/webkit/WebView;

    .line 453
    iget-object v0, p0, Lqs;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 454
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 455
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 456
    const-string v1, "dianxinosdxbs/3.2 (Linux; Android; Tapas OTA)"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 458
    :cond_0
    iget-object v0, p0, Lqs;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 459
    new-instance v0, Lqx;

    invoke-direct {v0, p0, p1}, Lqx;-><init>(Lqs;Lou;)V

    .line 460
    iput-object v0, p0, Lqs;->f:Lqv;

    .line 461
    iget-object v1, p0, Lqs;->e:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 463
    const-string v0, "ToolboxTctbClickHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WebView] Decode URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lqs;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 465
    return-void
.end method

.method protected g(Lou;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 482
    const-string v1, "tctb"

    iget-object v2, p1, Lou;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 484
    const-string v0, "ToolboxTctbClickHandler"

    const-string v1, "Already in TCTB, DO NOTHING."

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    invoke-virtual {p0}, Lqs;->e()V

    .line 544
    :goto_0
    return-void

    .line 489
    :cond_0
    iget-object v1, p0, Lqs;->c:Landroid/content/Context;

    invoke-static {v1}, Lnl;->a(Landroid/content/Context;)Lnl;

    move-result-object v1

    invoke-virtual {v1}, Lnl;->f()Z

    move-result v1

    if-nez v1, :cond_1

    .line 490
    const-string v0, "ToolboxTctbClickHandler"

    const-string v1, "TCTB is DISABLED"

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    invoke-virtual {p0, p1, p2}, Lqs;->b(Lou;Ljava/lang/String;)V

    .line 492
    invoke-virtual {p0}, Lqs;->e()V

    goto :goto_0

    .line 496
    :cond_1
    iget-object v1, p0, Lqs;->b:Loq;

    const-string v2, "tctb"

    invoke-virtual {v1, v2}, Loq;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 497
    if-nez v1, :cond_2

    .line 498
    const-string v0, "ToolboxTctbClickHandler"

    const-string v1, "TCTB list is empty."

    invoke-static {v0, v1}, Lnz;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    invoke-virtual {p0, p1, p2}, Lqs;->b(Lou;Ljava/lang/String;)V

    .line 500
    invoke-virtual {p0}, Lqs;->e()V

    goto :goto_0

    .line 504
    :cond_2
    iget-object v2, p0, Lqs;->c:Landroid/content/Context;

    invoke-static {v2, v1}, Lpi;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    .line 505
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_3

    .line 506
    const-string v0, "ToolboxTctbClickHandler"

    const-string v1, "TCTB list is empty."

    invoke-static {v0, v1}, Lnz;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    invoke-virtual {p0, p1, p2}, Lqs;->b(Lou;Ljava/lang/String;)V

    .line 508
    invoke-virtual {p0}, Lqs;->e()V

    goto :goto_0

    .line 513
    :cond_3
    iget-object v2, p0, Lqs;->c:Landroid/content/Context;

    const-string v3, "tctb"

    invoke-static {v2, v3}, Lom;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 515
    iget-object v2, p0, Lqs;->c:Landroid/content/Context;

    const-string v3, "tctb"

    invoke-static {v2, v3, v0}, Lom;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 526
    :cond_4
    :goto_1
    iget-object v2, p0, Lqs;->c:Landroid/content/Context;

    invoke-static {v2, v0}, Lom;->b(Landroid/content/Context;I)V

    .line 528
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lou;

    .line 531
    iget-object v1, p0, Lqs;->a:Landroid/os/Handler;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 532
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 533
    iget-object v2, p0, Lqs;->a:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 535
    iget-object v1, v0, Lou;->m:Ljava/lang/String;

    invoke-static {v1}, Lqs;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 537
    iget-object v1, p0, Lqs;->a:Landroid/os/Handler;

    const/16 v2, 0x3ec

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 538
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 539
    iget-object v0, p0, Lqs;->a:Landroid/os/Handler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 518
    :cond_5
    iget-object v2, p0, Lqs;->c:Landroid/content/Context;

    invoke-static {v2}, Lom;->e(Landroid/content/Context;)I

    move-result v2

    .line 519
    if-ltz v2, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 523
    add-int/lit8 v0, v2, 0x1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v0, v2

    goto :goto_1

    .line 542
    :cond_6
    iget-object v1, v0, Lou;->m:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lqs;->d(Lou;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 320
    iget v0, p1, Landroid/os/Message;->what:I

    .line 321
    const/16 v2, 0x3ea

    if-ne v0, v2, :cond_2

    .line 322
    iget-object v0, p0, Lqs;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 377
    :goto_0
    return v0

    .line 325
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 326
    iget-object v2, p0, Lqs;->g:Lpq;

    if-nez v2, :cond_1

    .line 327
    invoke-direct {p0}, Lqs;->f()Lpq;

    move-result-object v2

    iput-object v2, p0, Lqs;->g:Lpq;

    .line 329
    :cond_1
    iget-object v2, p0, Lqs;->g:Lpq;

    invoke-virtual {v2, v0}, Lpq;->a(I)V

    move v0, v1

    .line 330
    goto :goto_0

    .line 333
    :cond_2
    const/16 v2, 0x3eb

    if-ne v0, v2, :cond_5

    .line 334
    iget-object v0, p0, Lqs;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 335
    goto :goto_0

    .line 338
    :cond_3
    iget-object v0, p0, Lqs;->g:Lpq;

    if-nez v0, :cond_4

    .line 339
    invoke-direct {p0}, Lqs;->f()Lpq;

    move-result-object v0

    iput-object v0, p0, Lqs;->g:Lpq;

    .line 342
    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lou;

    .line 343
    iget-object v2, p0, Lqs;->g:Lpq;

    invoke-virtual {v2, v0}, Lpq;->a(Lou;)V

    .line 346
    iget-object v2, p0, Lqs;->c:Landroid/content/Context;

    const-string v3, "tctb"

    invoke-static {v2, v3}, Lop;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 348
    iget-object v2, p0, Lqs;->c:Landroid/content/Context;

    invoke-static {v2, v0}, Lop;->a(Landroid/content/Context;Lou;)V

    move v0, v1

    .line 349
    goto :goto_0

    .line 352
    :cond_5
    const/16 v2, 0x3ec

    if-ne v0, v2, :cond_8

    .line 353
    iget-object v0, p0, Lqs;->g:Lpq;

    if-eqz v0, :cond_6

    .line 354
    iget-object v0, p0, Lqs;->g:Lpq;

    invoke-virtual {v0}, Lpq;->dismiss()V

    .line 357
    :cond_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lou;

    .line 358
    iget-object v2, p0, Lqs;->c:Landroid/content/Context;

    invoke-static {v2, v0}, Lop;->b(Landroid/content/Context;Lou;)V

    .line 359
    iget-object v2, p0, Lqs;->c:Landroid/content/Context;

    invoke-static {v2}, Lpi;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 360
    invoke-virtual {p0, v0}, Lqs;->c(Lou;)V

    :goto_1
    move v0, v1

    .line 364
    goto :goto_0

    .line 362
    :cond_7
    iget-object v2, v0, Lou;->m:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lqs;->c(Lou;Ljava/lang/String;)V

    goto :goto_1

    .line 367
    :cond_8
    const/16 v2, 0x3e9

    if-ne v0, v2, :cond_b

    .line 368
    iget-object v0, p0, Lqs;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    .line 369
    goto :goto_0

    .line 371
    :cond_9
    iget-object v0, p0, Lqs;->g:Lpq;

    if-eqz v0, :cond_a

    .line 372
    iget-object v0, p0, Lqs;->g:Lpq;

    invoke-virtual {v0}, Lpq;->dismiss()V

    :cond_a
    move v0, v1

    .line 374
    goto/16 :goto_0

    .line 377
    :cond_b
    invoke-super {p0, p1}, Lpj;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    goto/16 :goto_0
.end method
