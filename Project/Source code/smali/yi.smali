.class public Lyi;
.super Ljava/lang/Object;
.source "ImageDownloader.java"


# static fields
.field private static final c:Ljava/util/HashMap;

.field private static final d:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field private a:Ljava/lang/Thread;

.field private b:Ljava/lang/String;

.field private final e:Landroid/os/Handler;

.field private final f:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 97
    new-instance v0, Lyj;

    const/high16 v1, 0x3f40

    const/4 v2, 0x1

    invoke-direct {v0, v3, v1, v2}, Lyj;-><init>(IFZ)V

    sput-object v0, Lyi;->c:Ljava/util/HashMap;

    .line 114
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lyi;->d:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lyi;->e:Landroid/os/Handler;

    .line 119
    new-instance v0, Lyk;

    invoke-direct {v0, p0}, Lyk;-><init>(Lyi;)V

    iput-object v0, p0, Lyi;->f:Ljava/lang/Runnable;

    .line 84
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lyi;->a:Ljava/lang/Thread;

    .line 85
    sget-object v0, Lzl;->d:Ljava/lang/String;

    iput-object v0, p0, Lyi;->b:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter

    .prologue
    .line 442
    sget-object v1, Lyi;->c:Ljava/util/HashMap;

    monitor-enter v1

    .line 443
    :try_start_0
    sget-object v0, Lyi;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 444
    if-eqz v0, :cond_1

    .line 447
    sget-object v2, Lyi;->c:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    sget-object v2, Lyi;->c:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    monitor-exit v1

    .line 466
    :cond_0
    :goto_0
    return-object v0

    .line 451
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    sget-object v0, Lyi;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 455
    if-eqz v0, :cond_2

    .line 456
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 457
    if-nez v0, :cond_0

    .line 462
    sget-object v0, Lyi;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 451
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lyi;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lyi;->e(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lyi;)Ljava/lang/Thread;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lyi;->a:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic a(Landroid/widget/ImageView;)Lyl;
    .locals 1
    .parameter

    .prologue
    .line 69
    invoke-static {p0}, Lyi;->b(Landroid/widget/ImageView;)Lyl;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 429
    if-eqz p2, :cond_0

    .line 430
    sget-object v1, Lyi;->c:Ljava/util/HashMap;

    monitor-enter v1

    .line 431
    :try_start_0
    sget-object v0, Lyi;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    monitor-exit v1

    .line 434
    :cond_0
    return-void

    .line 432
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lyi;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lyi;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 586
    invoke-static {p1}, Lyi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 587
    sget-object v1, Lzl;->d:Ljava/lang/String;

    invoke-static {p0, p1, v1, v0}, Lyi;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 612
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 613
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 614
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 619
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    :try_start_0
    invoke-static {p0, p1}, Lyi;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 622
    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 623
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 624
    :try_start_2
    invoke-static {v1, v3}, Lzq;->a(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 625
    const/4 v0, 0x1

    .line 634
    invoke-static {v1}, Lzq;->a(Ljava/io/Closeable;)V

    .line 635
    if-eqz v2, :cond_1

    .line 636
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 639
    :cond_1
    :goto_0
    return v0

    .line 626
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 627
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 634
    invoke-static {v0}, Lzq;->a(Ljava/io/Closeable;)V

    .line 635
    if-eqz v1, :cond_2

    .line 636
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 639
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 634
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_2
    invoke-static {v1}, Lzq;->a(Ljava/io/Closeable;)V

    .line 635
    if-eqz v2, :cond_3

    .line 636
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v0

    .line 634
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    .line 626
    :catch_1
    move-exception v1

    move-object v1, v2

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 549
    invoke-static {p0}, Lyi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 550
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 566
    invoke-static {p0}, Lyi;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 567
    if-nez v0, :cond_0

    .line 568
    invoke-static {p0}, Lyi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 569
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 571
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lze;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 572
    if-nez v0, :cond_0

    .line 573
    invoke-static {p1, v1}, Lze;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    :cond_0
    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 489
    const-string v0, "[^a-zA-Z0-9]"

    .line 491
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 492
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 493
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x1f40

    .line 644
    invoke-static {p0, p1}, Lzv;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 645
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 646
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 647
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 648
    return-object v0
.end method

.method static synthetic b()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lyi;->d:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private static b(Landroid/widget/ImageView;)Lyl;
    .locals 2
    .parameter

    .prologue
    .line 237
    if-eqz p0, :cond_0

    .line 238
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 239
    instance-of v1, v0, Lym;

    if-eqz v1, :cond_0

    .line 240
    check-cast v0, Lym;

    .line 241
    invoke-virtual {v0}, Lym;->a()Lyl;

    move-result-object v0

    .line 244
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 194
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    invoke-static {p1, p2}, Lyi;->c(Ljava/lang/String;Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    new-instance v0, Lyl;

    invoke-direct {v0, p0, p2}, Lyl;-><init>(Lyi;Landroid/widget/ImageView;)V

    .line 200
    new-instance v1, Lym;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lym;-><init>(Landroid/graphics/Bitmap;Lyl;)V

    .line 201
    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    .line 202
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 204
    :cond_2
    sget-object v1, Lbat;->b:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lyl;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lbat;

    goto :goto_0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 483
    iget-object v0, p0, Lyi;->e:Landroid/os/Handler;

    iget-object v1, p0, Lyi;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 484
    iget-object v0, p0, Lyi;->e:Landroid/os/Handler;

    iget-object v1, p0, Lyi;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 485
    return-void
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 541
    sget-object v0, Lzl;->d:Ljava/lang/String;

    invoke-static {p0, v0}, Lyi;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static c(Ljava/lang/String;Landroid/widget/ImageView;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 216
    invoke-static {p1}, Lyi;->b(Landroid/widget/ImageView;)Lyl;

    move-result-object v1

    .line 218
    if-eqz v1, :cond_1

    .line 219
    invoke-static {v1}, Lyl;->a(Lyl;)Ljava/lang/String;

    move-result-object v2

    .line 220
    if-eqz v2, :cond_0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 221
    :cond_0
    invoke-virtual {v1, v0}, Lyl;->a(Z)Z

    .line 227
    :cond_1
    :goto_0
    return v0

    .line 224
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 557
    sget-object v0, Lzl;->d:Ljava/lang/String;

    invoke-static {p0, v0}, Lyi;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private e(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 248
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 252
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 254
    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 255
    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 257
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 258
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_c

    move-result-object v2

    .line 259
    :try_start_1
    invoke-static {p1}, Lyi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 261
    invoke-virtual {v1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "dashi_default_head_middle.gif"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_11

    move-result v4

    if-eqz v4, :cond_1

    .line 298
    if-eqz v2, :cond_0

    .line 300
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 310
    :cond_0
    :goto_0
    return-object v0

    .line 301
    :catch_0
    move-exception v1

    .line 302
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 303
    :catch_1
    move-exception v1

    .line 305
    const-string v2, "ImageDownloader"

    const-string v3, "Unexpected exeption!"

    invoke-static {v2, v3, v1}, Lzs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 270
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v4

    .line 276
    if-eqz v2, :cond_4

    .line 277
    new-instance v1, Lyn;

    invoke-direct {v1, v2}, Lyn;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 279
    if-eqz v1, :cond_4

    .line 282
    if-eqz v3, :cond_2

    .line 283
    iget-object v6, p0, Lyi;->b:Ljava/lang/String;

    invoke-static {v6, v3, v1, v4, v5}, Lze;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_13
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_12
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_11

    .line 298
    :cond_2
    if-eqz v2, :cond_3

    .line 300
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    :goto_1
    move-object v0, v1

    .line 306
    goto :goto_0

    .line 301
    :catch_2
    move-exception v0

    .line 302
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 303
    :catch_3
    move-exception v0

    .line 305
    const-string v2, "ImageDownloader"

    const-string v3, "Unexpected exeption!"

    invoke-static {v2, v3, v0}, Lzs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 298
    :cond_4
    if-eqz v2, :cond_0

    .line 300
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_0

    .line 301
    :catch_4
    move-exception v1

    .line 302
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 303
    :catch_5
    move-exception v1

    .line 305
    const-string v2, "ImageDownloader"

    const-string v3, "Unexpected exeption!"

    invoke-static {v2, v3, v1}, Lzs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 289
    :catch_6
    move-exception v1

    move-object v2, v0

    .line 290
    :goto_2
    :try_start_6
    const-string v3, "ImageDownloader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lzs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 298
    if-eqz v2, :cond_0

    .line 300
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_8

    goto :goto_0

    .line 301
    :catch_7
    move-exception v1

    .line 302
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 303
    :catch_8
    move-exception v1

    .line 305
    const-string v2, "ImageDownloader"

    const-string v3, "Unexpected exeption!"

    invoke-static {v2, v3, v1}, Lzs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 291
    :catch_9
    move-exception v1

    move-object v2, v0

    .line 292
    :goto_3
    :try_start_8
    const-string v3, "ImageDownloader"

    const-string v4, "Some bad things happened!"

    invoke-static {v3, v4, v1}, Lzs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 298
    if-eqz v2, :cond_0

    .line 300
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_b

    goto/16 :goto_0

    .line 301
    :catch_a
    move-exception v1

    .line 302
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 303
    :catch_b
    move-exception v1

    .line 305
    const-string v2, "ImageDownloader"

    const-string v3, "Unexpected exeption!"

    invoke-static {v2, v3, v1}, Lzs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 293
    :catch_c
    move-exception v1

    move-object v2, v0

    .line 294
    :goto_4
    :try_start_a
    const-string v3, "ImageDownloader"

    const-string v4, "Unexpected exeption"

    invoke-static {v3, v4, v1}, Lzs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 298
    if-eqz v2, :cond_0

    .line 300
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_d
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_e

    goto/16 :goto_0

    .line 301
    :catch_d
    move-exception v1

    .line 302
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 303
    :catch_e
    move-exception v1

    .line 305
    const-string v2, "ImageDownloader"

    const-string v3, "Unexpected exeption!"

    invoke-static {v2, v3, v1}, Lzs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 298
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_5
    if-eqz v2, :cond_5

    .line 300
    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_f
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_10

    .line 306
    :cond_5
    :goto_6
    throw v0

    .line 301
    :catch_f
    move-exception v1

    .line 302
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 303
    :catch_10
    move-exception v1

    .line 305
    const-string v2, "ImageDownloader"

    const-string v3, "Unexpected exeption!"

    invoke-static {v2, v3, v1}, Lzs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 298
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 293
    :catch_11
    move-exception v1

    goto :goto_4

    .line 291
    :catch_12
    move-exception v1

    goto :goto_3

    .line 289
    :catch_13
    move-exception v1

    goto/16 :goto_2
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 475
    sget-object v0, Lyi;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 476
    sget-object v0, Lyi;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 477
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-static {}, Lazu;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-direct {p0}, Lyi;->c()V

    .line 141
    invoke-static {p1}, Lyi;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 143
    if-nez v2, :cond_5

    .line 144
    invoke-static {p1}, Lyi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 145
    const/4 v0, 0x1

    .line 146
    iget-object v4, p0, Lyi;->b:Ljava/lang/String;

    invoke-static {v4, v3}, Lze;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lyi;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lze;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 148
    if-nez v2, :cond_3

    .line 149
    iget-object v4, p0, Lyi;->b:Ljava/lang/String;

    invoke-static {v4, v3}, Lze;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_2
    :goto_1
    if-eqz v0, :cond_4

    .line 156
    invoke-direct {p0, p1, p2}, Lyi;->b(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 151
    goto :goto_1

    .line 158
    :cond_4
    invoke-direct {p0, p1, v2}, Lyi;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 159
    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    .line 160
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 161
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 165
    :cond_5
    invoke-static {p1, p2}, Lyi;->c(Ljava/lang/String;Landroid/widget/ImageView;)Z

    .line 166
    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    .line 167
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 168
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
