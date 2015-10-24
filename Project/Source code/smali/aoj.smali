.class public Laoj;
.super Ljava/lang/Object;
.source "SkinTabMgr.java"


# static fields
.field private static final b:Lkl;

.field private static final c:Ljava/lang/String;

.field private static d:Laoj;


# instance fields
.field protected a:Ljava/lang/Object;

.field private e:Landroid/util/SparseArray;

.field private f:Ljava/util/ArrayList;

.field private volatile g:Ljava/util/ArrayList;

.field private h:Ljava/util/ArrayList;

.field private i:Landroid/os/Handler;

.field private j:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 277
    invoke-static {}, Lcom/dianxinos/powermanager/PowerMangerApplication;->a()Lcom/dianxinos/powermanager/PowerMangerApplication;

    move-result-object v0

    invoke-static {v0}, Lkl;->a(Landroid/content/Context;)Lkl;

    move-result-object v0

    sput-object v0, Laoj;->b:Lkl;

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.dianxinos.dxbs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/files/backup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laoj;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Laoj;->e:Landroid/util/SparseArray;

    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoj;->f:Ljava/util/ArrayList;

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoj;->g:Ljava/util/ArrayList;

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoj;->h:Ljava/util/ArrayList;

    .line 301
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Laoj;->a:Ljava/lang/Object;

    .line 319
    invoke-static {}, Lcom/dianxinos/powermanager/PowerMangerApplication;->a()Lcom/dianxinos/powermanager/PowerMangerApplication;

    move-result-object v0

    iput-object v0, p0, Laoj;->j:Landroid/content/Context;

    .line 320
    invoke-direct {p0}, Laoj;->i()V

    .line 321
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "skin_manager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 323
    new-instance v1, Laok;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Laok;-><init>(Laoj;Landroid/os/Looper;)V

    iput-object v1, p0, Laoj;->i:Landroid/os/Handler;

    .line 357
    return-void
.end method

.method static synthetic a(Laoj;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Laoj;->i:Landroid/os/Handler;

    return-object v0
.end method

.method private a(Ljava/io/InputStream;)Ljava/util/ArrayList;
    .locals 4
    .parameter

    .prologue
    .line 369
    const/4 v2, 0x0

    .line 370
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 372
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 376
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 382
    :try_start_2
    invoke-static {v0}, Laon;->a(Ljava/lang/String;)Laon;

    move-result-object v0

    .line 383
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 385
    :catch_0
    move-exception v0

    .line 386
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 388
    if-eqz v1, :cond_0

    .line 390
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 397
    :cond_0
    :goto_2
    return-object v3

    .line 377
    :catch_1
    move-exception v0

    .line 388
    if-eqz v1, :cond_0

    .line 390
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 391
    :catch_2
    move-exception v0

    .line 392
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 391
    :catch_3
    move-exception v0

    .line 392
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 388
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_1

    .line 390
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 393
    :cond_1
    :goto_4
    throw v0

    .line 391
    :catch_4
    move-exception v1

    .line 392
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 388
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 385
    :catch_5
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private a(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 434
    .line 437
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 438
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 439
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 441
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 442
    :try_start_1
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    .line 443
    :try_start_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laon;

    .line 444
    invoke-virtual {v0}, Laon;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 447
    :catch_0
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    .line 448
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 450
    if-eqz v2, :cond_1

    .line 452
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 457
    :cond_1
    :goto_2
    if-eqz v1, :cond_2

    .line 459
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 465
    :cond_2
    :goto_3
    return-void

    .line 446
    :cond_3
    :try_start_6
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 450
    if-eqz v3, :cond_4

    .line 452
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 457
    :cond_4
    :goto_4
    if-eqz v2, :cond_2

    .line 459
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    .line 460
    :catch_1
    move-exception v0

    .line 461
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 453
    :catch_2
    move-exception v0

    .line 454
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 453
    :catch_3
    move-exception v0

    .line 454
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 460
    :catch_4
    move-exception v0

    .line 461
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 450
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_5
    if-eqz v1, :cond_5

    .line 452
    :try_start_9
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 457
    :cond_5
    :goto_6
    if-eqz v2, :cond_6

    .line 459
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 462
    :cond_6
    :goto_7
    throw v0

    .line 453
    :catch_5
    move-exception v1

    .line 454
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 460
    :catch_6
    move-exception v1

    .line 461
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 450
    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v1, v3

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v4, v1

    move-object v1, v2

    move-object v2, v4

    goto :goto_5

    .line 447
    :catch_7
    move-exception v0

    move-object v2, v1

    goto :goto_1

    :catch_8
    move-exception v0

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_1
.end method

.method static synthetic b(Laoj;)Landroid/util/SparseArray;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Laoj;->e:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static b()Laoj;
    .locals 2

    .prologue
    .line 308
    sget-object v0, Laoj;->d:Laoj;

    if-nez v0, :cond_1

    .line 309
    const-class v1, Laoj;

    monitor-enter v1

    .line 310
    :try_start_0
    sget-object v0, Laoj;->d:Laoj;

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Laoj;

    invoke-direct {v0}, Laoj;-><init>()V

    sput-object v0, Laoj;->d:Laoj;

    .line 313
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    :cond_1
    sget-object v0, Laoj;->d:Laoj;

    return-object v0

    .line 313
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    invoke-static {p0}, Laoj;->d(Ljava/lang/String;)V

    return-void
.end method

.method private b(Laev;)Z
    .locals 6
    .parameter

    .prologue
    .line 645
    iget-object v0, p0, Laoj;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 646
    iget-object v0, p0, Laoj;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laev;

    .line 647
    iget-wide v2, v0, Laev;->a:J

    iget-wide v4, p1, Laev;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 648
    invoke-virtual {v0, p1}, Laev;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 649
    const/4 v0, 0x0

    .line 658
    :goto_0
    return v0

    .line 651
    :cond_1
    iget-object v1, p0, Laoj;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 657
    :cond_2
    iget-object v0, p0, Laoj;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Laoj;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Laoj;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .parameter

    .prologue
    .line 402
    const/4 v2, 0x0

    .line 403
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 404
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 406
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 408
    iget-object v1, p0, Laoj;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v3, "skin/skin_mgr"

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 409
    const-string v1, "use skin in asset"

    invoke-static {v1}, Laoj;->d(Ljava/lang/String;)V

    .line 410
    invoke-direct {p0, v2}, Laoj;->a(Ljava/io/InputStream;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 421
    if-eqz v2, :cond_0

    .line 423
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 430
    :cond_0
    :goto_0
    return-object v0

    .line 424
    :catch_0
    move-exception v1

    .line 425
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 413
    :cond_1
    :try_start_2
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 414
    :try_start_3
    const-string v1, "use skin from cache"

    invoke-static {v1}, Laoj;->d(Ljava/lang/String;)V

    .line 415
    invoke-direct {p0, v3}, Laoj;->a(Ljava/io/InputStream;)Ljava/util/ArrayList;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v0

    .line 421
    if-eqz v3, :cond_0

    .line 423
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 424
    :catch_1
    move-exception v1

    .line 425
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 417
    :catch_2
    move-exception v1

    .line 418
    :goto_1
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 419
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoj;->d(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 421
    if-eqz v2, :cond_0

    .line 423
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 424
    :catch_3
    move-exception v1

    .line 425
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 421
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v2, :cond_2

    .line 423
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 426
    :cond_2
    :goto_3
    throw v0

    .line 424
    :catch_4
    move-exception v1

    .line 425
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 421
    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_2

    .line 417
    :catch_5
    move-exception v1

    move-object v2, v3

    goto :goto_1
.end method

.method static synthetic d(Laoj;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Laoj;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 597
    return-void
.end method

.method static synthetic e(Laoj;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Laoj;->j:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic h()Lkl;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Laoj;->b:Lkl;

    return-object v0
.end method

.method private i()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 757
    invoke-static {}, Lazu;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 794
    :cond_0
    :goto_0
    return-void

    .line 763
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Laoj;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 764
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 765
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    .line 766
    :try_start_1
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    .line 770
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 774
    :try_start_3
    new-instance v2, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Layw;->a(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 775
    iget-object v0, p0, Laoj;->g:Ljava/util/ArrayList;

    new-instance v4, Laev;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Laev;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 778
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 779
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 781
    if-eqz v1, :cond_2

    .line 783
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 787
    :cond_2
    :goto_3
    if-eqz v2, :cond_0

    .line 789
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 790
    :catch_1
    move-exception v0

    goto :goto_0

    .line 771
    :catch_2
    move-exception v0

    .line 781
    :goto_4
    if-eqz v1, :cond_3

    .line 783
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 787
    :cond_3
    :goto_5
    if-eqz v3, :cond_0

    .line 789
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_0

    .line 790
    :catch_3
    move-exception v0

    goto :goto_0

    .line 781
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_6
    if-eqz v1, :cond_4

    .line 783
    :try_start_9
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 787
    :cond_4
    :goto_7
    if-eqz v3, :cond_5

    .line 789
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 791
    :cond_5
    :goto_8
    throw v0

    .line 784
    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_7

    .line 790
    :catch_7
    move-exception v1

    goto :goto_8

    .line 781
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_6

    .line 778
    :catch_8
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_9
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    :cond_6
    move-object v1, v2

    move-object v3, v2

    goto :goto_4
.end method


# virtual methods
.method public a(Ljava/lang/String;)Laev;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 622
    if-nez p1, :cond_0

    move-object v0, v1

    .line 632
    :goto_0
    return-object v0

    .line 625
    :cond_0
    invoke-virtual {p0}, Laoj;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laon;

    .line 626
    iget-object v0, v0, Laon;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laev;

    .line 627
    iget-object v4, v0, Laev;->g:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 632
    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/ArrayList;)Laev;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 600
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laon;

    .line 601
    iget-object v0, v0, Laon;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laev;

    .line 602
    iget-object v3, v0, Laev;->q:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 607
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Laoj;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Z)Ljava/util/ArrayList;
    .locals 5
    .parameter

    .prologue
    .line 742
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 743
    iget-object v0, p0, Laoj;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 744
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 745
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laev;

    .line 746
    if-eqz p1, :cond_1

    iget-object v3, v0, Laev;->g:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    if-nez p1, :cond_0

    iget-object v3, v0, Laev;->g:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 748
    :cond_2
    iget-wide v3, v0, Laev;->u:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 752
    :cond_3
    invoke-virtual {p0}, Laoj;->g()V

    .line 753
    return-object v1
.end method

.method public a(Laev;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 702
    invoke-static {}, Lazu;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Laoj;->b(Laev;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 739
    :cond_0
    :goto_0
    return-void

    .line 708
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v2, Laoj;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 709
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 710
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 712
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 713
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 715
    :cond_3
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 716
    :try_start_1
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    .line 717
    :try_start_2
    iget-object v0, p0, Laoj;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laev;

    .line 718
    invoke-virtual {v0}, Laev;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v0, v4}, Layw;->b([BI)Ljava/lang/String;

    move-result-object v0

    .line 720
    invoke-virtual {v3, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 723
    :catch_0
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    .line 724
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 726
    if-eqz v2, :cond_4

    .line 728
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 732
    :cond_4
    :goto_3
    if-eqz v1, :cond_0

    .line 734
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 735
    :catch_1
    move-exception v0

    goto :goto_0

    .line 722
    :cond_5
    :try_start_6
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 726
    if-eqz v3, :cond_6

    .line 728
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 732
    :cond_6
    :goto_4
    if-eqz v2, :cond_0

    .line 734
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_0

    .line 735
    :catch_2
    move-exception v0

    goto :goto_0

    .line 726
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_5
    if-eqz v1, :cond_7

    .line 728
    :try_start_9
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 732
    :cond_7
    :goto_6
    if-eqz v2, :cond_8

    .line 734
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 736
    :cond_8
    :goto_7
    throw v0

    .line 729
    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_6

    .line 735
    :catch_6
    move-exception v1

    goto :goto_7

    .line 726
    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v1, v3

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v5, v1

    move-object v1, v2

    move-object v2, v5

    goto :goto_5

    .line 723
    :catch_7
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catch_8
    move-exception v0

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_2
.end method

.method public b(Ljava/lang/String;Ljava/util/ArrayList;)Laev;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 611
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laon;

    .line 612
    iget-object v0, v0, Laon;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laev;

    .line 613
    iget-object v3, v0, Laev;->p:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 618
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 4

    .prologue
    .line 361
    iget-object v1, p0, Laoj;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 362
    :try_start_0
    iget-object v0, p0, Laoj;->f:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/dianxinos/powermanager/PowerMangerApplication;->a()Lcom/dianxinos/powermanager/PowerMangerApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dianxinos/powermanager/PowerMangerApplication;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "skin_mgr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Laoj;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 365
    monitor-exit v1

    .line 366
    return-void

    .line 365
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 6

    .prologue
    .line 468
    iget-object v0, p0, Laoj;->j:Landroid/content/Context;

    invoke-static {v0}, Lazx;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 483
    :goto_0
    return-void

    .line 472
    :cond_0
    iget-object v0, p0, Laoj;->j:Landroid/content/Context;

    invoke-static {v0}, Laog;->d(Landroid/content/Context;)J

    move-result-wide v0

    .line 473
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 474
    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    const-wide/32 v4, 0x5265c00

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-gtz v0, :cond_1

    .line 475
    const-string v0, "Ignore pulling cause time gap is less than one day."

    invoke-static {v0}, Laoj;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 479
    :cond_1
    iget-object v0, p0, Laoj;->j:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Laog;->f(Landroid/content/Context;J)V

    .line 481
    new-instance v0, Laom;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Laom;-><init>(Laoj;Laok;)V

    .line 482
    sget-object v1, Laoj;->b:Lkl;

    const-string v2, "batteryskin"

    invoke-virtual {v1, v2, v0}, Lkl;->a(Ljava/lang/String;Lkz;)V

    goto :goto_0
.end method

.method public e()Ljava/util/ArrayList;
    .locals 3

    .prologue
    .line 487
    iget-object v0, p0, Laoj;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laoj;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    const-string v0, "get list from memory"

    invoke-static {v0}, Laoj;->d(Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Laoj;->f:Ljava/util/ArrayList;

    .line 501
    :goto_0
    return-object v0

    .line 493
    :cond_0
    iget-object v1, p0, Laoj;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 494
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/dianxinos/powermanager/PowerMangerApplication;->a()Lcom/dianxinos/powermanager/PowerMangerApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dianxinos/powermanager/PowerMangerApplication;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "skin_mgr"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Laoj;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Laoj;->f:Ljava/util/ArrayList;

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get list from disk, empty: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Laoj;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoj;->d(Ljava/lang/String;)V

    .line 498
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    iget-object v0, p0, Laoj;->f:Ljava/util/ArrayList;

    goto :goto_0

    .line 498
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public f()V
    .locals 8

    .prologue
    .line 578
    iget-object v0, p0, Laoj;->j:Landroid/content/Context;

    invoke-static {v0}, Lazx;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 591
    :goto_0
    return-void

    .line 582
    :cond_0
    iget-object v0, p0, Laoj;->j:Landroid/content/Context;

    invoke-static {v0}, Lazr;->a(Landroid/content/Context;)Lazr;

    move-result-object v0

    invoke-virtual {v0}, Lazr;->j()J

    move-result-wide v0

    .line 583
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 584
    sub-long v4, v2, v0

    const-wide/32 v6, 0x5265c00

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 585
    const-string v0, "Ignore pull image"

    invoke-static {v0}, Laoj;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 589
    :cond_1
    iget-object v0, p0, Laoj;->i:Landroid/os/Handler;

    new-instance v1, Laoo;

    invoke-virtual {p0}, Laoj;->e()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Laoo;-><init>(Laoj;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 590
    iget-object v0, p0, Laoj;->j:Landroid/content/Context;

    invoke-static {v0}, Lazr;->a(Landroid/content/Context;)Lazr;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lazr;->b(J)V

    goto :goto_0
.end method

.method public g()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 662
    invoke-static {}, Lazu;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 699
    :cond_0
    :goto_0
    return-void

    .line 668
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v2, Laoj;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 669
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 670
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 672
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 673
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 675
    :cond_3
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 676
    :try_start_1
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    .line 677
    :try_start_2
    iget-object v0, p0, Laoj;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laev;

    .line 678
    invoke-virtual {v0}, Laev;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v0, v4}, Layw;->b([BI)Ljava/lang/String;

    move-result-object v0

    .line 680
    invoke-virtual {v3, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 683
    :catch_0
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    .line 684
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 686
    if-eqz v2, :cond_4

    .line 688
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 692
    :cond_4
    :goto_3
    if-eqz v1, :cond_0

    .line 694
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 695
    :catch_1
    move-exception v0

    goto :goto_0

    .line 682
    :cond_5
    :try_start_6
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 686
    if-eqz v3, :cond_6

    .line 688
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 692
    :cond_6
    :goto_4
    if-eqz v2, :cond_0

    .line 694
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_0

    .line 695
    :catch_2
    move-exception v0

    goto :goto_0

    .line 686
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_5
    if-eqz v1, :cond_7

    .line 688
    :try_start_9
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 692
    :cond_7
    :goto_6
    if-eqz v2, :cond_8

    .line 694
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 696
    :cond_8
    :goto_7
    throw v0

    .line 689
    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_6

    .line 695
    :catch_6
    move-exception v1

    goto :goto_7

    .line 686
    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v1, v3

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v5, v1

    move-object v1, v2

    move-object v2, v5

    goto :goto_5

    .line 683
    :catch_7
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catch_8
    move-exception v0

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_2
.end method
