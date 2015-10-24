.class Lkg;
.super Ljava/lang/Thread;
.source "UpdateManager.java"


# instance fields
.field final synthetic a:Lka;

.field private b:Liv;

.field private c:Z

.field private d:Ljava/util/concurrent/Callable;

.field private e:Z


# direct methods
.method public constructor <init>(Lka;Liv;Ljava/util/concurrent/Callable;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1412
    iput-object p1, p0, Lkg;->a:Lka;

    .line 1413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CheckUpdateThread-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lka;->q()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1406
    iput-boolean v2, p0, Lkg;->c:Z

    .line 1410
    iput-boolean v2, p0, Lkg;->e:Z

    .line 1414
    iput-object p2, p0, Lkg;->b:Liv;

    .line 1415
    iput-object p3, p0, Lkg;->d:Ljava/util/concurrent/Callable;

    .line 1416
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    .prologue
    .line 1580
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lkg;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1581
    monitor-exit p0

    return-void

    .line 1580
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1584
    iput-boolean p1, p0, Lkg;->e:Z

    .line 1585
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 1420
    iget-object v0, p0, Lkg;->d:Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_0

    .line 1423
    :try_start_0
    iget-object v0, p0, Lkg;->d:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1429
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lkg;->e:Z

    if-eqz v0, :cond_3

    .line 1430
    iget-object v0, p0, Lkg;->a:Lka;

    invoke-static {v0}, Lka;->d(Lka;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lgu;->a(Landroid/content/Context;)Lgu;

    move-result-object v0

    .line 1431
    invoke-virtual {v0}, Lgu;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1432
    invoke-static {}, Lka;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1433
    const-string v0, "UpdateManager"

    const-string v1, "delay clock is active, check aborted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    :cond_1
    iget-boolean v0, p0, Lkg;->c:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lkg;->b:Liv;

    if-eqz v0, :cond_2

    .line 1436
    iget-object v0, p0, Lkg;->b:Liv;

    invoke-interface {v0}, Liv;->b()V

    .line 1577
    :cond_2
    :goto_1
    return-void

    .line 1424
    :catch_0
    move-exception v0

    .line 1425
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1442
    :cond_3
    iget-object v0, p0, Lkg;->a:Lka;

    invoke-static {v0}, Lka;->d(Lka;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1443
    invoke-static {}, Lka;->r()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    .line 1445
    :try_start_1
    iget-object v2, p0, Lkg;->a:Lka;

    invoke-static {v2}, Lka;->d(Lka;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1447
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 1448
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 1450
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 1451
    :goto_2
    array-length v4, v2

    if-ge v0, v4, :cond_5

    .line 1452
    aget-byte v4, v2, v0

    .line 1453
    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 1456
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v7, :cond_4

    .line 1457
    const/16 v5, 0x30

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1459
    :cond_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1451
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1461
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lka;->d(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1469
    :cond_6
    :goto_3
    iget-object v0, p0, Lkg;->a:Lka;

    invoke-static {v0}, Lka;->j(Lka;)Ljr;

    move-result-object v0

    iget-object v2, p0, Lkg;->a:Lka;

    invoke-static {v2}, Lka;->i(Lka;)I

    move-result v2

    invoke-static {}, Lka;->r()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lkg;->a:Lka;

    invoke-static {v4}, Lka;->d(Lka;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Ljr;->a(ILjava/lang/String;Landroid/content/Context;)Ljs;

    move-result-object v5

    .line 1471
    if-nez v5, :cond_a

    .line 1472
    invoke-static {}, Lka;->p()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1473
    const-string v0, "UpdateManager"

    const-string v1, "No update info returned"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    :cond_7
    iget-boolean v0, p0, Lkg;->c:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lkg;->b:Liv;

    if-eqz v0, :cond_8

    .line 1476
    iget-object v0, p0, Lkg;->b:Liv;

    invoke-interface {v0}, Liv;->a()V

    .line 1478
    :cond_8
    iget-object v0, p0, Lkg;->a:Lka;

    invoke-static {v0}, Lka;->d(Lka;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref-last-check"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljo;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 1576
    :cond_9
    :goto_4
    iget-object v0, p0, Lkg;->a:Lka;

    invoke-static {v0, v6}, Lka;->a(Lka;Lkg;)Lkg;

    goto/16 :goto_1

    .line 1462
    :catch_1
    move-exception v0

    .line 1463
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_3

    .line 1464
    :catch_2
    move-exception v0

    .line 1465
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_3

    .line 1479
    :cond_a
    iget-boolean v0, v5, Ljs;->a:Z

    if-eqz v0, :cond_b

    iget-object v0, v5, Ljs;->f:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget v0, v5, Ljs;->c:I

    iget-object v2, p0, Lkg;->a:Lka;

    invoke-static {v2}, Lka;->i(Lka;)I

    move-result v2

    if-le v0, v2, :cond_b

    iget v0, v5, Ljs;->c:I

    iget-object v2, p0, Lkg;->a:Lka;

    invoke-static {v2}, Lka;->k(Lka;)I

    move-result v2

    if-gt v0, v2, :cond_d

    .line 1483
    :cond_b
    iget-object v0, p0, Lkg;->a:Lka;

    invoke-static {v0}, Lka;->d(Lka;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref-last-check"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljo;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 1486
    iget-object v0, p0, Lkg;->a:Lka;

    invoke-static {v0, v6}, Lka;->a(Lka;Ljz;)Ljz;

    .line 1487
    iget-object v0, p0, Lkg;->a:Lka;

    invoke-static {v0}, Lka;->d(Lka;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref-update-info"

    invoke-static {v0, v1, v6}, Ljo;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    invoke-static {}, Lka;->p()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1489
    const-string v0, "UpdateManager"

    const-string v1, "Download url pref cleared dut to no available update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    :cond_c
    iget-boolean v0, p0, Lkg;->c:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lkg;->b:Liv;

    if-eqz v0, :cond_9

    .line 1493
    iget-object v0, p0, Lkg;->b:Liv;

    invoke-interface {v0}, Liv;->b()V

    goto :goto_4

    .line 1496
    :cond_d
    invoke-static {}, Lka;->p()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1497
    const-string v0, "UpdateManager"

    const-string v2, "Update is available"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    :cond_e
    iget-object v0, p0, Lkg;->a:Lka;

    invoke-static {v0}, Lka;->d(Lka;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "pref-last-check"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0, v2, v3, v4}, Ljo;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 1501
    sget-object v0, Ljn;->b:Ljava/util/regex/Pattern;

    iget-object v2, v5, Ljs;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1503
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1504
    iget-object v0, v5, Ljs;->f:Ljava/lang/String;

    iget-object v2, p0, Lkg;->a:Lka;

    invoke-static {v2}, Lka;->d(Lka;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref-last-down-url"

    invoke-static {v2, v3}, Ljo;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1507
    iget-object v0, p0, Lkg;->a:Lka;

    invoke-virtual {v0}, Lka;->d()V

    .line 1508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lkg;->a:Lka;

    invoke-static {v2}, Lka;->d(Lka;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lix;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lkg;->a:Lka;

    invoke-static {v2}, Lka;->c(Lka;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1512
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1513
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1514
    const-string v0, "UpdateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delete obsoleted file in sdcard:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lkg;->a:Lka;

    invoke-static {v2}, Lka;->d(Lka;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lix;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lkg;->a:Lka;

    invoke-static {v2}, Lka;->c(Lka;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1520
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1521
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1522
    const-string v0, "UpdateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delete obsoleted file in data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    :cond_10
    iget-object v0, p0, Lkg;->a:Lka;

    invoke-static {v0}, Lka;->d(Lka;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "pref-retry-count"

    invoke-static {v0, v2, v1}, Ljo;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1527
    :cond_11
    iget-object v0, p0, Lkg;->a:Lka;

    iget-object v2, v5, Ljs;->f:Ljava/lang/String;

    invoke-static {v0, v2}, Lka;->a(Lka;Ljava/lang/String;)Ljava/lang/String;

    .line 1528
    iget-object v0, p0, Lkg;->a:Lka;

    new-instance v2, Ljz;

    invoke-direct {v2}, Ljz;-><init>()V

    invoke-static {v0, v2}, Lka;->a(Lka;Ljz;)Ljz;

    .line 1529
    iget-object v0, p0, Lkg;->a:Lka;

    invoke-static {v0}, Lka;->l(Lka;)Ljz;

    move-result-object v0

    .line 1530
    iget v2, v5, Ljs;->c:I

    iput v2, v0, Ljz;->a:I

    .line 1531
    iget-object v2, v5, Ljs;->b:Ljava/lang/String;

    iput-object v2, v0, Ljz;->b:Ljava/lang/String;

    .line 1532
    iget-object v2, v5, Ljs;->d:Ljava/lang/String;

    iput-object v2, v0, Ljz;->d:Ljava/lang/String;

    .line 1533
    iget v2, v5, Ljs;->e:I

    iput v2, v0, Ljz;->c:I

    .line 1534
    iget-object v2, v5, Ljs;->g:Ljava/util/Map;

    iput-object v2, v0, Ljz;->e:Ljava/util/Map;

    .line 1535
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Ljz;->f:J

    .line 1536
    iget-object v2, v5, Ljs;->h:Ljava/lang/String;

    iput-object v2, v0, Ljz;->g:Ljava/lang/String;

    .line 1537
    iget-object v2, v5, Ljs;->i:Ljava/lang/String;

    iput-object v2, v0, Ljz;->i:Ljava/lang/String;

    .line 1538
    iget-object v2, v5, Ljs;->j:Ljava/util/List;

    iput-object v2, v0, Ljz;->h:Ljava/util/List;

    .line 1539
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lkg;->a:Lka;

    invoke-static {v3}, Lka;->d(Lka;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lix;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lkg;->a:Lka;

    invoke-static {v3}, Lka;->c(Lka;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Ljz;->j:Ljava/lang/String;

    .line 1543
    iget-object v2, p0, Lkg;->a:Lka;

    invoke-virtual {v2, v0}, Lka;->a(Ljz;)V

    .line 1545
    iget-boolean v2, p0, Lkg;->c:Z

    if-nez v2, :cond_9

    .line 1546
    iget v2, v5, Ljs;->e:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_12

    .line 1547
    invoke-static {}, Ljt;->a()Ljt;

    move-result-object v2

    .line 1548
    iget-object v3, p0, Lkg;->b:Liv;

    invoke-virtual {v2, v3}, Ljt;->a(Liv;)V

    .line 1549
    invoke-virtual {v2, v0}, Ljt;->a(Ljz;)V

    .line 1550
    iget-object v0, p0, Lkg;->a:Lka;

    invoke-virtual {v0, v6, v1, v7}, Lka;->a(Ljv;ZI)V

    goto/16 :goto_4

    .line 1551
    :cond_12
    iget-object v0, p0, Lkg;->b:Liv;

    if-eqz v0, :cond_9

    .line 1552
    iget-object v0, p0, Lkg;->b:Liv;

    iget v1, v5, Ljs;->c:I

    iget-object v2, v5, Ljs;->b:Ljava/lang/String;

    iget-object v3, v5, Ljs;->d:Ljava/lang/String;

    iget v4, v5, Ljs;->e:I

    iget-object v5, v5, Ljs;->g:Ljava/util/Map;

    invoke-interface/range {v0 .. v5}, Liv;->a(ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    goto/16 :goto_4

    .line 1560
    :cond_13
    invoke-static {}, Lka;->p()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1561
    const-string v0, "UpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid download URL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v5, Ljs;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    :cond_14
    iget-object v0, p0, Lkg;->a:Lka;

    invoke-static {v0}, Lka;->d(Lka;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref-update-info"

    invoke-static {v0, v1, v6}, Ljo;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    invoke-static {}, Lka;->p()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1568
    const-string v0, "UpdateManager"

    const-string v1, "Download url pref cleared due to invalid download url"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    :cond_15
    iget-boolean v0, p0, Lkg;->c:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lkg;->b:Liv;

    if-eqz v0, :cond_9

    .line 1572
    iget-object v0, p0, Lkg;->b:Liv;

    invoke-interface {v0}, Liv;->b()V

    goto/16 :goto_4
.end method
