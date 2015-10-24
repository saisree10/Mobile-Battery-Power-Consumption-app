.class public Lcom/dianxinos/common/coins/CoinManager;
.super Ljava/lang/Object;
.source "CoinManager.java"


# static fields
.field private static a:J

.field private static b:Lcom/dianxinos/common/coins/CoinManager;


# instance fields
.field private final c:Ljava/lang/String;

.field private d:Landroid/content/Context;

.field private e:Llz;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 211
    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/dianxinos/common/coins/CoinManager;->a:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput-object p1, p0, Lcom/dianxinos/common/coins/CoinManager;->d:Landroid/content/Context;

    .line 248
    iget-object v0, p0, Lcom/dianxinos/common/coins/CoinManager;->d:Landroid/content/Context;

    invoke-static {v0}, Lgx;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/common/coins/CoinManager;->c:Ljava/lang/String;

    .line 249
    new-instance v0, Llz;

    invoke-direct {v0, p1}, Llz;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dianxinos/common/coins/CoinManager;->e:Llz;

    .line 250
    invoke-direct {p0}, Lcom/dianxinos/common/coins/CoinManager;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/common/coins/CoinManager;->f:Ljava/lang/String;

    .line 251
    return-void
.end method

.method public static synthetic a(Lcom/dianxinos/common/coins/CoinManager;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dianxinos/common/coins/CoinManager;->d:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/dianxinos/common/coins/CoinManager;
    .locals 2
    .parameter

    .prologue
    .line 236
    sget-object v0, Lcom/dianxinos/common/coins/CoinManager;->b:Lcom/dianxinos/common/coins/CoinManager;

    if-nez v0, :cond_1

    .line 237
    const-class v1, Lcom/dianxinos/common/coins/CoinManager;

    monitor-enter v1

    .line 238
    :try_start_0
    sget-object v0, Lcom/dianxinos/common/coins/CoinManager;->b:Lcom/dianxinos/common/coins/CoinManager;

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Lcom/dianxinos/common/coins/CoinManager;

    invoke-direct {v0, p0}, Lcom/dianxinos/common/coins/CoinManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dianxinos/common/coins/CoinManager;->b:Lcom/dianxinos/common/coins/CoinManager;

    .line 241
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    :cond_1
    sget-object v0, Lcom/dianxinos/common/coins/CoinManager;->b:Lcom/dianxinos/common/coins/CoinManager;

    return-object v0

    .line 241
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;Lcom/dianxinos/common/coins/CoinManager$RequestResult;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 540
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 543
    :cond_1
    const-string v0, "CoinManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Consume mid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.dianxinos.common.toolbox.ACTION_COIN_CONSUME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 545
    const-string v1, "result_data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 547
    invoke-static {p0}, Lbc;->a(Landroid/content/Context;)Lbc;

    move-result-object v1

    .line 548
    invoke-virtual {v1, v0}, Lbc;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/dianxinos/common/coins/CoinManager$RequestResult;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 576
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 579
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.dianxinos.common.toolbox.ACTION_COIN_SYNC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 580
    const-string v1, "result_data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 581
    const-string v1, "result_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 583
    invoke-static {p0}, Lbc;->a(Landroid/content/Context;)Lbc;

    move-result-object v1

    .line 584
    invoke-virtual {v1, v0}, Lbc;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lmc;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 595
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 598
    :cond_1
    invoke-static {p0}, Lbc;->a(Landroid/content/Context;)Lbc;

    move-result-object v0

    .line 599
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 600
    const-string v2, "com.dianxinos.common.toolbox.ACTION_COIN_CONSUME"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 601
    const-string v2, "com.dianxinos.common.toolbox.ACTION_COIN_GAIN"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 602
    const-string v2, "com.dianxinos.common.toolbox.ACTION_COIN_SYNC"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 603
    invoke-virtual {v0, p1, v1}, Lbc;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 714
    const-string v0, "integralmax"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 715
    invoke-static {p0, v0}, Lma;->a(Landroid/content/Context;I)V

    .line 717
    const-string v0, "function"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 718
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 719
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 720
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 721
    const-string v4, "mid"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 722
    const-string v5, "score"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 723
    const-string v6, "type"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 724
    invoke-static {p0}, Lmf;->a(Landroid/content/Context;)Lmf;

    move-result-object v6

    .line 725
    invoke-virtual {v6, v4, v3, v5}, Lmf;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 719
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 727
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    invoke-static {p0}, Llz;->a(Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 817
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 818
    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 819
    const/4 v0, 0x0

    .line 820
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 821
    const/4 v0, 0x0

    aget-object v0, v1, v0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 822
    invoke-static {v0}, Llx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 824
    :cond_0
    return-object v0
.end method

.method public static b(Landroid/content/Context;Lcom/dianxinos/common/coins/CoinManager$RequestResult;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 558
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.dianxinos.common.toolbox.ACTION_COIN_GAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 562
    const-string v1, "result_data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 564
    invoke-static {p0}, Lbc;->a(Landroid/content/Context;)Lbc;

    move-result-object v1

    .line 565
    invoke-virtual {v1, v0}, Lbc;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Lmc;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 613
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 618
    :cond_0
    :goto_0
    return-void

    .line 616
    :cond_1
    invoke-static {p0}, Lbc;->a(Landroid/content/Context;)Lbc;

    move-result-object v0

    .line 617
    invoke-virtual {v0, p1}, Lbc;->a(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method private b(Loo;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 325
    iget-object v0, p0, Lcom/dianxinos/common/coins/CoinManager;->d:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lom;->a(Landroid/content/Context;Loo;Z)V

    .line 326
    iget-object v0, p0, Lcom/dianxinos/common/coins/CoinManager;->d:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lom;->b(Landroid/content/Context;Loo;Z)V

    .line 327
    iget-object v0, p0, Lcom/dianxinos/common/coins/CoinManager;->d:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, p1, v1, v2}, Lom;->a(Landroid/content/Context;Loo;J)V

    .line 328
    return-void
.end method

.method private c(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 654
    :try_start_0
    const-string v0, "http"

    sget-object v1, Llz;->c:Ljava/lang/String;

    sget v2, Llz;->d:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Llz;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/integral/config"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/apache/http/client/utils/URIUtils;->createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 657
    iget-object v1, p0, Lcom/dianxinos/common/coins/CoinManager;->e:Llz;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Llz;->a(Ljava/net/URI;Ljava/util/List;Z)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 660
    :try_start_1
    invoke-static {v1}, Llz;->b(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 664
    :try_start_2
    invoke-static {v1}, Llz;->a(Lorg/apache/http/HttpResponse;)V

    .line 670
    :goto_0
    return-object v0

    .line 664
    :catchall_0
    move-exception v0

    invoke-static {v1}, Llz;->a(Lorg/apache/http/HttpResponse;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 667
    :catch_0
    move-exception v0

    .line 668
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 670
    const-string v0, ""

    goto :goto_0
.end method

.method private c(Loo;)V
    .locals 2
    .parameter

    .prologue
    .line 730
    iget-object v0, p0, Lcom/dianxinos/common/coins/CoinManager;->d:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lom;->a(Landroid/content/Context;Loo;Z)V

    .line 731
    iget-object v0, p0, Lcom/dianxinos/common/coins/CoinManager;->d:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lom;->b(Landroid/content/Context;Loo;Z)V

    .line 732
    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 318
    iget-object v0, p0, Lcom/dianxinos/common/coins/CoinManager;->d:Landroid/content/Context;

    sget-object v1, Loo;->a:Loo;

    invoke-static {v0, v1, v3}, Lom;->a(Landroid/content/Context;Loo;Z)V

    .line 319
    iget-object v0, p0, Lcom/dianxinos/common/coins/CoinManager;->d:Landroid/content/Context;

    sget-object v1, Loo;->a:Loo;

    invoke-static {v0, v1, v2}, Lom;->b(Landroid/content/Context;Loo;Z)V

    .line 320
    iget-object v0, p0, Lcom/dianxinos/common/coins/CoinManager;->d:Landroid/content/Context;

    sget-object v1, Loo;->b:Loo;

    invoke-static {v0, v1, v3}, Lom;->a(Landroid/content/Context;Loo;Z)V

    .line 321
    iget-object v0, p0, Lcom/dianxinos/common/coins/CoinManager;->d:Landroid/content/Context;

    sget-object v1, Loo;->b:Loo;

    invoke-static {v0, v1, v2}, Lom;->b(Landroid/content/Context;Loo;Z)V

    .line 322
    return-void
.end method

.method private h()Ljava/lang/String;
    .locals 4

    .prologue
    .line 484
    iget-object v0, p0, Lcom/dianxinos/common/coins/CoinManager;->d:Landroid/content/Context;

    invoke-static {v0}, Lom;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 486
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 487
    iget-object v0, p0, Lcom/dianxinos/common/coins/CoinManager;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/common/coins/CoinManager;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 488
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/dianxinos/common/coins/CoinManager;->d:Landroid/content/Context;

    invoke-static {v0}, Lgx;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 489
    :cond_0
    iget-object v1, p0, Lcom/dianxinos/common/coins/CoinManager;->d:Landroid/content/Context;

    invoke-static {v1, v0}, Lom;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 490
    invoke-virtual {p0}, Lcom/dianxinos/common/coins/CoinManager;->d()V

    .line 498
    :cond_1
    :goto_0
    const-string v1, "CoinManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check login, new account == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    return-object v0

    .line 491
    :cond_2
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 492
    invoke-static {v0}, Llx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 493
    iget-object v1, p0, Lcom/dianxinos/common/coins/CoinManager;->d:Landroid/content/Context;

    invoke-static {v1, v0}, Lom;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 494
    invoke-virtual {p0}, Lcom/dianxinos/common/coins/CoinManager;->d()V

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/dianxinos/common/coins/CoinManager;->d:Landroid/content/Context;

    invoke-static {v0}, Lom;->a(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Lcom/dianxinos/common/coins/CoinManager$RequestResult;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 272
    monitor-enter p0

    :try_start_0
    new-instance v6, Lcom/dianxinos/common/coins/CoinManager$RequestResult;

    const/4 v0, 0x0

    invoke-direct {v6, p1, p2, v0}, Lcom/dianxinos/common/coins/CoinManager$RequestResult;-><init>(Ljava/lang/String;Ljava/lang/String;Lmb;)V

    .line 274
    invoke-virtual {p0}, Lcom/dianxinos/common/coins/CoinManager;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    const/4 v0, -0x5

    iput v0, v6, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->c:I

    .line 276
    sget-object v0, Loo;->a:Loo;

    invoke-direct {p0, v0}, Lcom/dianxinos/common/coins/CoinManager;->b(Loo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v0, v6

    .line 312
    :goto_0
    monitor-exit p0

    return-object v0

    .line 280
    :cond_0
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 281
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "tk"

    iget-object v2, p0, Lcom/dianxinos/common/coins/CoinManager;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    const-string v0, "http"

    sget-object v1, Llz;->c:Ljava/lang/String;

    sget v2, Llz;->d:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Llz;->e:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/integral/get"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/apache/http/client/utils/URIUtils;->createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 285
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 286
    const-string v2, "tk"

    iget-object v3, p0, Lcom/dianxinos/common/coins/CoinManager;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    const-string v2, "ac"

    iget-object v3, p0, Lcom/dianxinos/common/coins/CoinManager;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 288
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 289
    const-string v2, "mid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 290
    const-string v2, "type"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 293
    :cond_1
    iget-object v2, p0, Lcom/dianxinos/common/coins/CoinManager;->e:Llz;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Llz;->a(Ljava/net/URI;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 295
    :try_start_2
    invoke-static {v1}, Llz;->b(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-static {v0}, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->a(Ljava/lang/String;)Lcom/dianxinos/common/coins/CoinManager$RequestResult;

    move-result-object v0

    .line 297
    iget v2, v0, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->c:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_2

    .line 298
    invoke-direct {p0}, Lcom/dianxinos/common/coins/CoinManager;->g()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 304
    :goto_1
    :try_start_3
    invoke-static {v1}, Llz;->a(Lorg/apache/http/HttpResponse;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 306
    :catch_0
    move-exception v0

    .line 307
    :try_start_4
    const-string v1, "CoinManager"

    const-string v2, "query coin error: "

    invoke-static {v1, v2, v0}, Lnz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 308
    const/4 v0, -0x3

    iput v0, v6, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->c:I

    .line 309
    sget-object v0, Loo;->a:Loo;

    invoke-direct {p0, v0}, Lcom/dianxinos/common/coins/CoinManager;->b(Loo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v0, v6

    .line 312
    goto/16 :goto_0

    .line 300
    :cond_2
    :try_start_5
    sget-object v2, Loo;->a:Loo;

    invoke-direct {p0, v2}, Lcom/dianxinos/common/coins/CoinManager;->b(Loo;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 304
    :catchall_0
    move-exception v0

    :try_start_6
    invoke-static {v1}, Llz;->a(Lorg/apache/http/HttpResponse;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 272
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 770
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/dianxinos/common/coins/CoinManager;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 771
    sget-object v0, Loo;->d:Loo;

    invoke-direct {p0, v0}, Lcom/dianxinos/common/coins/CoinManager;->b(Loo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v6

    .line 808
    :goto_0
    monitor-exit p0

    return-object v0

    .line 774
    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 775
    :cond_1
    sget-object v0, Loo;->d:Loo;

    invoke-direct {p0, v0}, Lcom/dianxinos/common/coins/CoinManager;->c(Loo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v6

    .line 776
    goto :goto_0

    .line 779
    :cond_2
    :try_start_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 780
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "tk"

    iget-object v2, p0, Lcom/dianxinos/common/coins/CoinManager;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    const-string v0, "http"

    sget-object v1, Llz;->c:Ljava/lang/String;

    sget v2, Llz;->d:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Llz;->e:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/center/buy"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/apache/http/client/utils/URIUtils;->createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 783
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 784
    const-string v0, "tk"

    iget-object v3, p0, Lcom/dianxinos/common/coins/CoinManager;->c:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 785
    const-string v0, "ac"

    iget-object v3, p0, Lcom/dianxinos/common/coins/CoinManager;->f:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 786
    const-string v0, "type"

    const-string v3, "9"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 787
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 788
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 789
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 805
    :catch_0
    move-exception v0

    .line 806
    :try_start_3
    const-string v1, "CoinManager"

    const-string v2, "pull items paid by play error: "

    invoke-static {v1, v2, v0}, Lnz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 807
    sget-object v0, Loo;->d:Loo;

    invoke-direct {p0, v0}, Lcom/dianxinos/common/coins/CoinManager;->b(Loo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v6

    .line 808
    goto/16 :goto_0

    .line 791
    :cond_3
    :try_start_4
    const-string v0, "pids"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 792
    iget-object v0, p0, Lcom/dianxinos/common/coins/CoinManager;->e:Llz;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Llz;->a(Ljava/net/URI;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 793
    invoke-static {v0}, Llz;->c(Lorg/apache/http/HttpResponse;)Ljava/util/ArrayList;

    move-result-object v1

    .line 794
    iget-object v0, p0, Lcom/dianxinos/common/coins/CoinManager;->d:Landroid/content/Context;

    invoke-static {v0}, Lmf;->a(Landroid/content/Context;)Lmf;

    move-result-object v2

    .line 796
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 797
    const-string v4, "type"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 798
    const-string v5, "id"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Lmf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    const-string v5, "9"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 800
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 770
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 803
    :cond_5
    :try_start_5
    sget-object v0, Loo;->d:Loo;

    invoke-direct {p0, v0}, Lcom/dianxinos/common/coins/CoinManager;->c(Loo;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-object v0, v1

    .line 804
    goto/16 :goto_0
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 258
    if-gez p1, :cond_0

    .line 259
    const/4 p1, 0x0

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/common/coins/CoinManager;->d:Landroid/content/Context;

    invoke-static {v0, p1}, Lom;->a(Landroid/content/Context;I)V

    .line 262
    return-void
.end method

.method public declared-synchronized a(Loo;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 331
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/dianxinos/common/coins/CoinManager;->d:Landroid/content/Context;

    invoke-static {v2}, Loa;->a(Landroid/content/Context;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 352
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 334
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 335
    iget-object v4, p0, Lcom/dianxinos/common/coins/CoinManager;->d:Landroid/content/Context;

    invoke-static {v4, p1}, Lom;->c(Landroid/content/Context;Loo;)J

    move-result-wide v4

    .line 336
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_2

    .line 337
    iget-object v0, p0, Lcom/dianxinos/common/coins/CoinManager;->d:Landroid/content/Context;

    invoke-static {v0, p1, v2, v3}, Lom;->a(Landroid/content/Context;Loo;J)V

    move v0, v1

    .line 338
    goto :goto_0

    .line 339
    :cond_2
    iget-object v6, p0, Lcom/dianxinos/common/coins/CoinManager;->d:Landroid/content/Context;

    invoke-static {v6, p1}, Lom;->b(Landroid/content/Context;Loo;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 340
    sub-long v4, v2, v4

    const-wide/32 v6, 0x1499700

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 341
    iget-object v0, p0, Lcom/dianxinos/common/coins/CoinManager;->d:Landroid/content/Context;

    invoke-static {v0, p1, v2, v3}, Lom;->a(Landroid/content/Context;Loo;J)V

    move v0, v1

    .line 342
    goto :goto_0

    .line 345
    :cond_3
    iget-object v6, p0, Lcom/dianxinos/common/coins/CoinManager;->d:Landroid/content/Context;

    invoke-static {v6, p1}, Lom;->a(Landroid/content/Context;Loo;)Z

    move-result v6

    if-nez v6, :cond_0

    sub-long v4, v2, v4

    const-wide/32 v6, 0x36ee80

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 347
    iget-object v0, p0, Lcom/dianxinos/common/coins/CoinManager;->d:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v0, p1, v4}, Lom;->b(Landroid/content/Context;Loo;Z)V

    .line 348
    iget-object v0, p0, Lcom/dianxinos/common/coins/CoinManager;->d:Landroid/content/Context;

    invoke-static {v0, p1, v2, v3}, Lom;->a(Landroid/content/Context;Loo;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 349
    goto :goto_0

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)Lcom/dianxinos/common/coins/CoinManager$RequestResult;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 365
    monitor-enter p0

    :try_start_0
    new-instance v6, Lcom/dianxinos/common/coins/CoinManager$RequestResult;

    const/4 v0, 0x0

    invoke-direct {v6, p1, p2, v0}, Lcom/dianxinos/common/coins/CoinManager$RequestResult;-><init>(Ljava/lang/String;Ljava/lang/String;Lmb;)V

    .line 366
    iput-object p1, v6, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->e:Ljava/lang/String;

    .line 367
    iput-object p2, v6, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->f:Ljava/lang/String;

    .line 368
    const/4 v0, -0x1

    iput v0, v6, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->c:I

    .line 370
    invoke-virtual {p0}, Lcom/dianxinos/common/coins/CoinManager;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    const/4 v0, -0x4

    iput v0, v6, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v6

    .line 410
    :goto_0
    monitor-exit p0

    return-object v0

    .line 376
    :cond_0
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 377
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "tk"

    iget-object v2, p0, Lcom/dianxinos/common/coins/CoinManager;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    const-string v0, "http"

    sget-object v1, Llz;->c:Ljava/lang/String;

    sget v2, Llz;->d:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Llz;->e:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/integral/decrease"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/apache/http/client/utils/URIUtils;->createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 382
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 383
    const-string v2, "ac"

    iget-object v3, p0, Lcom/dianxinos/common/coins/CoinManager;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 384
    const-string v2, "tk"

    iget-object v3, p0, Lcom/dianxinos/common/coins/CoinManager;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 385
    const-string v2, "mid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 386
    const-string v2, "type"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 388
    iget-object v2, p0, Lcom/dianxinos/common/coins/CoinManager;->e:Llz;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Llz;->a(Ljava/net/URI;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 391
    :try_start_2
    invoke-static {v2}, Llz;->b(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    .line 392
    invoke-static {v0}, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->a(Ljava/lang/String;)Lcom/dianxinos/common/coins/CoinManager$RequestResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 393
    :try_start_3
    invoke-virtual {v0}, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 394
    iget-object v1, p0, Lcom/dianxinos/common/coins/CoinManager;->d:Landroid/content/Context;

    invoke-static {v1}, Lmf;->a(Landroid/content/Context;)Lmf;

    move-result-object v1

    .line 396
    invoke-virtual {v1, p1, p2}, Lmf;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 402
    :cond_1
    :try_start_4
    invoke-static {v2}, Llz;->a(Lorg/apache/http/HttpResponse;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 404
    :catch_0
    move-exception v1

    .line 405
    :goto_1
    :try_start_5
    const-string v2, "CoinManager"

    const-string v3, "consume error: "

    invoke-static {v2, v3, v1}, Lnz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 407
    const/4 v1, -0x3

    iput v1, v0, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->c:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 365
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 402
    :catchall_1
    move-exception v0

    :goto_2
    :try_start_6
    invoke-static {v2}, Llz;->a(Lorg/apache/http/HttpResponse;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 404
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    goto :goto_1

    .line 402
    :catchall_2
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    goto :goto_2
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/dianxinos/common/coins/CoinManager;->f:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized c(Ljava/lang/String;Ljava/lang/String;)Lcom/dianxinos/common/coins/CoinManager$RequestResult;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 423
    monitor-enter p0

    :try_start_0
    new-instance v6, Lcom/dianxinos/common/coins/CoinManager$RequestResult;

    const/4 v0, 0x0

    invoke-direct {v6, p1, p2, v0}, Lcom/dianxinos/common/coins/CoinManager$RequestResult;-><init>(Ljava/lang/String;Ljava/lang/String;Lmb;)V

    .line 424
    iput-object p1, v6, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->e:Ljava/lang/String;

    .line 425
    iput-object p2, v6, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->f:Ljava/lang/String;

    .line 426
    const/4 v0, -0x1

    iput v0, v6, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->c:I

    .line 428
    invoke-virtual {p0}, Lcom/dianxinos/common/coins/CoinManager;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    const/4 v0, -0x4

    iput v0, v6, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->c:I

    .line 430
    sget-object v0, Loo;->b:Loo;

    invoke-direct {p0, v0}, Lcom/dianxinos/common/coins/CoinManager;->b(Loo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v6

    .line 467
    :goto_0
    monitor-exit p0

    return-object v0

    .line 435
    :cond_0
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 436
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "tk"

    iget-object v2, p0, Lcom/dianxinos/common/coins/CoinManager;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    const-string v0, "http"

    sget-object v1, Llz;->c:Ljava/lang/String;

    sget v2, Llz;->d:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Llz;->e:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/integral/increase"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/apache/http/client/utils/URIUtils;->createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 441
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 442
    const-string v2, "ms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 443
    const-string v2, "ac"

    iget-object v3, p0, Lcom/dianxinos/common/coins/CoinManager;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 444
    const-string v2, "tk"

    iget-object v3, p0, Lcom/dianxinos/common/coins/CoinManager;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 445
    const-string v2, "mid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 446
    const-string v2, "type"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 448
    iget-object v2, p0, Lcom/dianxinos/common/coins/CoinManager;->e:Llz;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Llz;->a(Ljava/net/URI;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 450
    :try_start_2
    invoke-static {v2}, Llz;->b(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    .line 451
    invoke-static {v0}, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->a(Ljava/lang/String;)Lcom/dianxinos/common/coins/CoinManager$RequestResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 452
    :try_start_3
    invoke-virtual {v0}, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 453
    invoke-direct {p0}, Lcom/dianxinos/common/coins/CoinManager;->g()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 459
    :goto_1
    :try_start_4
    invoke-static {v2}, Llz;->a(Lorg/apache/http/HttpResponse;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 461
    :catch_0
    move-exception v1

    .line 462
    :goto_2
    :try_start_5
    const-string v2, "CoinManager"

    const-string v3, "gain coin error: "

    invoke-static {v2, v3, v1}, Lnz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 464
    const/4 v1, -0x3

    iput v1, v0, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->c:I

    .line 466
    sget-object v1, Loo;->b:Loo;

    invoke-direct {p0, v1}, Lcom/dianxinos/common/coins/CoinManager;->b(Loo;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 423
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 455
    :cond_1
    :try_start_6
    sget-object v1, Loo;->b:Loo;

    invoke-direct {p0, v1}, Lcom/dianxinos/common/coins/CoinManager;->b(Loo;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 459
    :catchall_1
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    :goto_3
    :try_start_7
    invoke-static {v2}, Llz;->a(Lorg/apache/http/HttpResponse;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 461
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    .line 459
    :catchall_2
    move-exception v0

    goto :goto_3
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 510
    const/4 v0, 0x1

    return v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/dianxinos/common/coins/CoinManager;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 515
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/dianxinos/common/coins/CoinManager;->a(I)V

    .line 531
    :goto_0
    return-void

    .line 519
    :cond_0
    invoke-static {}, Lpg;->a()Lpg;

    move-result-object v0

    new-instance v1, Lmb;

    invoke-direct {v1, p0}, Lmb;-><init>(Lcom/dianxinos/common/coins/CoinManager;)V

    invoke-virtual {v0, v1}, Lpg;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 471
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 472
    :cond_0
    const/4 v0, 0x0

    .line 477
    :goto_0
    return v0

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/common/coins/CoinManager;->d:Landroid/content/Context;

    invoke-static {v0}, Lmf;->a(Landroid/content/Context;)Lmf;

    move-result-object v0

    .line 477
    invoke-virtual {v0, p2, p1}, Lmf;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public e()V
    .locals 8

    .prologue
    .line 677
    iget-object v0, p0, Lcom/dianxinos/common/coins/CoinManager;->d:Landroid/content/Context;

    invoke-static {v0}, Lma;->b(Landroid/content/Context;)J

    move-result-wide v0

    .line 678
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 680
    sub-long v4, v2, v0

    sget-wide v6, Lcom/dianxinos/common/coins/CoinManager;->a:J

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    .line 711
    :cond_0
    :goto_0
    return-void

    .line 684
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/common/coins/CoinManager;->d:Landroid/content/Context;

    invoke-static {v0}, Loa;->a(Landroid/content/Context;)I

    move-result v0

    .line 685
    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/dianxinos/common/coins/CoinManager;->d:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/dianxinos/common/coins/CoinManager;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 693
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 698
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 700
    const-string v4, "CoinManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    iget-object v4, p0, Lcom/dianxinos/common/coins/CoinManager;->d:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/dianxinos/common/coins/CoinManager;->a(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 709
    iget-object v0, p0, Lcom/dianxinos/common/coins/CoinManager;->d:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lma;->a(Landroid/content/Context;J)V

    goto :goto_0

    .line 703
    :catch_0
    move-exception v0

    .line 704
    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 705
    const-string v0, "CoinManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnz;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 709
    iget-object v0, p0, Lcom/dianxinos/common/coins/CoinManager;->d:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lma;->a(Landroid/content/Context;J)V

    goto :goto_0

    .line 706
    :catch_1
    move-exception v0

    .line 707
    :try_start_2
    const-string v1, "CoinManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " IllegalStateException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lnz;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 709
    iget-object v0, p0, Lcom/dianxinos/common/coins/CoinManager;->d:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lma;->a(Landroid/content/Context;J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/dianxinos/common/coins/CoinManager;->d:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lma;->a(Landroid/content/Context;J)V

    throw v0
.end method

.method public declared-synchronized f()Ljava/util/ArrayList;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 735
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/dianxinos/common/coins/CoinManager;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 736
    sget-object v0, Loo;->c:Loo;

    invoke-direct {p0, v0}, Lcom/dianxinos/common/coins/CoinManager;->b(Loo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v6

    .line 765
    :goto_0
    monitor-exit p0

    return-object v0

    .line 740
    :cond_0
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 741
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "tk"

    iget-object v2, p0, Lcom/dianxinos/common/coins/CoinManager;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    const-string v0, "http"

    sget-object v1, Llz;->c:Ljava/lang/String;

    sget v2, Llz;->d:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Llz;->e:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/center/consume"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/apache/http/client/utils/URIUtils;->createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 744
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 745
    const-string v2, "tk"

    iget-object v3, p0, Lcom/dianxinos/common/coins/CoinManager;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 746
    const-string v2, "ac"

    iget-object v3, p0, Lcom/dianxinos/common/coins/CoinManager;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 747
    iget-object v2, p0, Lcom/dianxinos/common/coins/CoinManager;->e:Llz;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Llz;->a(Ljava/net/URI;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 748
    invoke-static {v0}, Llz;->c(Lorg/apache/http/HttpResponse;)Ljava/util/ArrayList;

    move-result-object v1

    .line 749
    iget-object v0, p0, Lcom/dianxinos/common/coins/CoinManager;->d:Landroid/content/Context;

    invoke-static {v0}, Lmf;->a(Landroid/content/Context;)Lmf;

    move-result-object v2

    .line 751
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 752
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 753
    const-string v4, "type"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 754
    const-string v5, "id"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v4}, Lmf;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    const-string v0, "9"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 756
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 761
    :catch_0
    move-exception v0

    .line 762
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 763
    const-string v1, "CoinManager"

    const-string v2, "pull items paid by coin error: "

    invoke-static {v1, v2, v0}, Lnz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 764
    sget-object v0, Loo;->c:Loo;

    invoke-direct {p0, v0}, Lcom/dianxinos/common/coins/CoinManager;->b(Loo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v6

    .line 765
    goto/16 :goto_0

    .line 759
    :cond_2
    :try_start_3
    sget-object v0, Loo;->c:Loo;

    invoke-direct {p0, v0}, Lcom/dianxinos/common/coins/CoinManager;->c(Loo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v0, v1

    .line 760
    goto/16 :goto_0

    .line 735
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
