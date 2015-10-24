.class public Lqb;
.super Lpj;
.source "ToolboxClickHandler.java"


# instance fields
.field private c:Landroid/content/Context;

.field private d:Landroid/app/Activity;

.field private e:Landroid/webkit/WebView;

.field private f:Lqg;

.field private g:Lpo;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 330
    invoke-direct {p0, p1}, Lpj;-><init>(Landroid/app/Activity;)V

    .line 331
    iput-object p1, p0, Lqb;->c:Landroid/content/Context;

    .line 332
    iput-object p1, p0, Lqb;->d:Landroid/app/Activity;

    .line 333
    return-void
.end method

.method static synthetic a(Lqb;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lqb;->d:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lqb;Lpo;)Lpo;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lqb;->g:Lpo;

    return-object p1
.end method

.method static synthetic b(Lqb;)Lpo;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lqb;->g:Lpo;

    return-object v0
.end method

.method static synthetic c(Lqb;)Lpo;
    .locals 1
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lqb;->f()Lpo;

    move-result-object v0

    return-object v0
.end method

.method private d(Lou;)V
    .locals 4
    .parameter

    .prologue
    .line 378
    iget-object v0, p0, Lqb;->c:Landroid/content/Context;

    const-string v1, "com.android.vending"

    invoke-static {v0, v1}, Lpi;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 379
    const-string v1, "ToolboxClickHandler"

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

    .line 380
    if-eqz v0, :cond_1

    .line 381
    iget-object v0, p1, Lou;->m:Ljava/lang/String;

    .line 382
    invoke-static {v0}, Lqb;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    invoke-virtual {p0, p1, v0}, Lqb;->c(Lou;Ljava/lang/String;)V

    .line 392
    :goto_0
    return-void

    .line 385
    :cond_0
    sget v1, Lok;->toolbox_loading_switch_google_play_des:I

    invoke-virtual {p0, v1}, Lqb;->b(I)V

    .line 386
    invoke-virtual {p0, p1, v0}, Lqb;->d(Lou;Ljava/lang/String;)V

    goto :goto_0

    .line 390
    :cond_1
    iget-object v0, p1, Lou;->m:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lqb;->b(Lou;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private e(Lou;)V
    .locals 3
    .parameter

    .prologue
    .line 395
    const-string v0, "ToolboxClickHandler"

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

    .line 396
    iget-object v0, p0, Lqb;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lop;->c(Landroid/content/Context;Lou;)V

    .line 397
    iget-object v0, p1, Lou;->m:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lqb;->b(Lou;Ljava/lang/String;)V

    .line 398
    return-void
.end method

.method private f()Lpo;
    .locals 3

    .prologue
    .line 317
    new-instance v0, Lpo;

    iget-object v1, p0, Lqb;->d:Landroid/app/Activity;

    sget v2, Lol;->Dialog_Fullscreen:I

    invoke-direct {v0, v1, v2}, Lpo;-><init>(Landroid/content/Context;I)V

    .line 318
    new-instance v1, Lqe;

    invoke-direct {v1, p0}, Lqe;-><init>(Lqb;)V

    invoke-virtual {v0, v1}, Lpo;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 326
    return-object v0
.end method


# virtual methods
.method public a(Lou;)V
    .locals 1
    .parameter

    .prologue
    .line 337
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lqb;->a(Lou;Z)V

    .line 338
    return-void
.end method

.method public a(Lou;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 341
    iget-object v0, p0, Lqb;->c:Landroid/content/Context;

    iget-object v1, p1, Lou;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lpi;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 342
    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {p0, p1}, Lqb;->b(Lou;)V

    .line 371
    :goto_0
    return-void

    .line 345
    :cond_0
    if-eqz p2, :cond_1

    .line 346
    iget-object v0, p0, Lqb;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lop;->b(Landroid/content/Context;Lou;)V

    .line 348
    :cond_1
    iget-object v0, p0, Lqb;->c:Landroid/content/Context;

    invoke-static {v0}, Lpi;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 349
    invoke-virtual {p0, p1}, Lqb;->c(Lou;)V

    goto :goto_0

    .line 352
    :cond_2
    iget v0, p1, Lou;->j:I

    if-nez v0, :cond_3

    .line 353
    iget-object v0, p1, Lou;->n:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lqb;->a(Lou;Ljava/lang/String;)V

    goto :goto_0

    .line 357
    :cond_3
    iget v0, p1, Lou;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 358
    const-string v0, "ToolboxClickHandler"

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

    .line 359
    invoke-static {}, Lpa;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 360
    invoke-direct {p0, p1}, Lqb;->d(Lou;)V

    goto :goto_0

    .line 362
    :cond_4
    invoke-direct {p0, p1}, Lqb;->e(Lou;)V

    goto :goto_0

    .line 368
    :cond_5
    const-string v0, "ToolboxClickHandler"

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
    .line 271
    iget-object v0, p0, Lqb;->a:Landroid/os/Handler;

    new-instance v1, Lqc;

    invoke-direct {v1, p0, p1}, Lqc;-><init>(Lqb;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 284
    return-void
.end method

.method protected c()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lqb;->a:Landroid/os/Handler;

    new-instance v1, Lqd;

    invoke-direct {v1, p0}, Lqd;-><init>(Lqb;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 314
    return-void
.end method

.method protected d()V
    .locals 0

    .prologue
    .line 374
    invoke-virtual {p0}, Lqb;->e()V

    .line 375
    return-void
.end method

.method protected d(Lou;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 401
    invoke-static {}, Lpi;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    const-string v0, "ToolboxClickHandler"

    const-string v1, "Newer OS, use WebView redirect."

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0, p1, p2}, Lqb;->f(Lou;Ljava/lang/String;)V

    .line 414
    :goto_0
    return-void

    .line 405
    :cond_0
    const-string v0, "ToolboxClickHandler"

    const-string v1, "Older OS, use Http redirect."

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-static {}, Lra;->a()Lra;

    move-result-object v0

    new-instance v1, Lqf;

    invoke-direct {v1, p0, p1, p2}, Lqf;-><init>(Lqb;Lou;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lra;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected e()V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lqb;->f:Lqg;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lqb;->f:Lqg;

    invoke-interface {v0}, Lqg;->a()V

    .line 462
    :cond_0
    return-void
.end method

.method protected e(Lou;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 417
    invoke-static {}, Lqb;->b()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    .line 419
    new-instance v1, Lqh;

    invoke-direct {v1, p0, p1}, Lqh;-><init>(Lqb;Lou;)V

    .line 420
    iput-object v1, p0, Lqb;->f:Lqg;

    .line 421
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 423
    const-string v1, "ToolboxClickHandler"

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

    .line 425
    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 426
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const/16 v3, 0x2710

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 427
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const/16 v3, 0x4e20

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 428
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 429
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    :goto_0
    return-void

    .line 430
    :catch_0
    move-exception v0

    .line 433
    const-string v1, "ToolboxClickHandler"

    const-string v2, "[Http] Others error: "

    invoke-static {v1, v2, v0}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 434
    invoke-virtual {p0, p1, p2}, Lqb;->b(Lou;Ljava/lang/String;)V

    .line 435
    invoke-virtual {p0}, Lqb;->c()V

    goto :goto_0
.end method

.method protected f(Lou;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 442
    iget-object v0, p0, Lqb;->e:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 443
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lqb;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lqb;->e:Landroid/webkit/WebView;

    .line 444
    iget-object v0, p0, Lqb;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 445
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 446
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 447
    const-string v1, "dianxinosdxbs/3.2 (Linux; Android; Tapas OTA)"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 449
    :cond_0
    iget-object v0, p0, Lqb;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 450
    new-instance v0, Lqi;

    invoke-direct {v0, p0, p1}, Lqi;-><init>(Lqb;Lou;)V

    .line 451
    iput-object v0, p0, Lqb;->f:Lqg;

    .line 452
    iget-object v1, p0, Lqb;->e:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 454
    const-string v0, "ToolboxClickHandler"

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

    .line 455
    iget-object v0, p0, Lqb;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 456
    return-void
.end method
