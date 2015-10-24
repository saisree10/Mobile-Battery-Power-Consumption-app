.class public Lwm;
.super Ljava/lang/Thread;
.source "AppsMonitor.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/app/ActivityManager;

.field private c:Lws;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Z

.field private h:I

.field private i:Z

.field private j:J

.field private k:J

.field private l:J

.field private m:Z

.field private n:Lzn;

.field private o:Ljava/io/FileWriter;

.field private p:J

.field private q:Z

.field private r:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 119
    const-string v0, "PerfFgMonitor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 61
    iput-boolean v3, p0, Lwm;->d:Z

    .line 65
    iput v2, p0, Lwm;->f:I

    .line 66
    iput-boolean v1, p0, Lwm;->g:Z

    .line 68
    iput v2, p0, Lwm;->h:I

    .line 70
    iput-boolean v3, p0, Lwm;->i:Z

    .line 76
    iput-boolean v1, p0, Lwm;->m:Z

    .line 83
    iput-boolean v1, p0, Lwm;->q:Z

    .line 85
    new-instance v0, Lwn;

    invoke-direct {v0, p0}, Lwn;-><init>(Lwm;)V

    iput-object v0, p0, Lwm;->r:Landroid/content/BroadcastReceiver;

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lwm;->a:Landroid/content/Context;

    .line 121
    iget-object v0, p0, Lwm;->a:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lwm;->b:Landroid/app/ActivityManager;

    .line 122
    invoke-static {}, Lws;->a()Lws;

    move-result-object v0

    iput-object v0, p0, Lwm;->c:Lws;

    .line 123
    invoke-static {}, Lxm;->a()Z

    move-result v0

    iput-boolean v0, p0, Lwm;->d:Z

    .line 133
    return-void
.end method

.method static synthetic a(Lwm;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput p1, p0, Lwm;->h:I

    return p1
.end method

.method static synthetic a(Lwm;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lwm;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/app/ActivityManager$RunningAppProcessInfo;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 652
    iget-object v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 653
    const/4 v1, 0x0

    .line 654
    iget-object v2, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 655
    iget-object v4, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v5, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v3, v4, v2

    .line 658
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 665
    :cond_0
    :goto_1
    return-object v0

    .line 655
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v3

    goto :goto_0

    .line 663
    :cond_2
    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-static {p0}, Lwm;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;IZII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 458
    const/4 v1, -0x1

    if-eq p4, v1, :cond_0

    if-ne p4, v2, :cond_4

    .line 460
    :cond_0
    if-ne p5, v3, :cond_3

    .line 463
    if-nez p3, :cond_1

    .line 464
    invoke-static {p2}, Lxm;->a(I)Lxn;

    move-result-object v0

    .line 466
    :cond_1
    invoke-static {}, Lxm;->b()Ljava/util/List;

    move-result-object v1

    .line 467
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 468
    :cond_2
    invoke-direct {p0, v0, v1, v2}, Lwm;->a(Lxn;Ljava/util/List;Z)V

    .line 482
    :cond_3
    :goto_0
    return-void

    .line 471
    :cond_4
    if-ne p4, v3, :cond_3

    .line 474
    if-nez p3, :cond_5

    .line 475
    invoke-static {p2}, Lxm;->a(I)Lxn;

    move-result-object v0

    .line 477
    :cond_5
    invoke-static {}, Lxm;->b()Ljava/util/List;

    move-result-object v1

    .line 478
    if-nez v0, :cond_6

    if-eqz v1, :cond_3

    .line 479
    :cond_6
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lwm;->a(Lxn;Ljava/util/List;Z)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;IZLjava/lang/String;IZ)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 341
    invoke-static {}, Lxc;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 342
    iget v1, p0, Lwm;->h:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    if-eqz p1, :cond_3

    if-nez p3, :cond_3

    .line 343
    invoke-static {p2}, Lxm;->a(I)Lxn;

    move-result-object v1

    .line 347
    :goto_0
    iget v2, p0, Lwm;->h:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    if-nez p6, :cond_4

    .line 348
    invoke-static/range {p5 .. p5}, Lxm;->a(I)Lxn;

    move-result-object v8

    move-object v7, v1

    .line 360
    :goto_1
    invoke-static {}, Lxc;->d()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lwm;->m:Z

    if-nez v1, :cond_9

    .line 361
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 362
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    if-nez p3, :cond_0

    .line 363
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 365
    :cond_0
    if-nez p6, :cond_1

    .line 366
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 368
    :cond_1
    const/4 v1, 0x0

    .line 369
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 370
    iget-object v1, p0, Lwm;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lxo;->a(Landroid/content/Context;Ljava/util/HashSet;)Lxp;

    move-result-object v1

    .line 372
    :cond_2
    if-eqz v1, :cond_8

    .line 376
    const/4 v2, -0x1

    if-eq p2, v2, :cond_6

    if-nez p3, :cond_6

    .line 377
    invoke-virtual {v1, p2}, Lxp;->a(I)Lxq;

    move-result-object v2

    .line 382
    :goto_2
    if-nez p6, :cond_7

    .line 383
    move/from16 v0, p5

    invoke-virtual {v1, v0}, Lxp;->a(I)Lxq;

    move-result-object v1

    :goto_3
    move-object v10, v1

    move-object v9, v2

    .line 401
    :goto_4
    invoke-static {}, Lxc;->c()Z

    move-result v1

    if-eqz v1, :cond_a

    if-nez p6, :cond_a

    .line 402
    iget-object v1, p0, Lwm;->a:Landroid/content/Context;

    move/from16 v0, p5

    invoke-static {v1, v0}, Lzt;->a(Landroid/content/Context;I)I

    move-result v11

    .line 407
    :goto_5
    new-instance v1, Lwo;

    move-object v2, p0

    move v3, p3

    move-object v4, p1

    move/from16 v5, p6

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v11}, Lwo;-><init>(Lwm;ZLjava/lang/String;ZLjava/lang/String;Lxn;Lxn;Lxq;Lxq;I)V

    .line 449
    iget-object v2, p0, Lwm;->c:Lws;

    invoke-virtual {v2, v1}, Lws;->a(Lxx;)V

    .line 450
    return-void

    .line 345
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 350
    :cond_4
    const/4 v8, 0x0

    move-object v7, v1

    goto :goto_1

    .line 353
    :cond_5
    const/4 v1, 0x0

    .line 354
    const/4 v8, 0x0

    move-object v7, v1

    goto :goto_1

    .line 379
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set old power snap to null old Uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lwm;->b(Ljava/lang/String;)V

    .line 380
    const/4 v2, 0x0

    goto :goto_2

    .line 385
    :cond_7
    const-string v1, "set new power snap to null"

    invoke-static {v1}, Lwm;->b(Ljava/lang/String;)V

    .line 386
    const/4 v1, 0x0

    goto :goto_3

    .line 389
    :cond_8
    const/4 v2, 0x0

    .line 390
    const/4 v1, 0x0

    .line 391
    const-string v3, "No powerstats data."

    invoke-static {v3}, Lwm;->b(Ljava/lang/String;)V

    goto :goto_3

    .line 394
    :cond_9
    const/4 v9, 0x0

    .line 395
    const/4 v10, 0x0

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do not support power stats. power source:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lwm;->m:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lwm;->b(Ljava/lang/String;)V

    goto :goto_4

    .line 404
    :cond_a
    const/4 v11, 0x0

    goto :goto_5
.end method

.method private a(Ljava/lang/String;ZZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 513
    if-nez p3, :cond_0

    .line 514
    iget-object v0, p0, Lwm;->c:Lws;

    invoke-virtual {v0, p1, p2}, Lws;->b(Ljava/lang/String;Z)V

    .line 516
    :cond_0
    return-void
.end method

.method static synthetic a(Lwm;Ljava/lang/String;IZII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct/range {p0 .. p5}, Lwm;->a(Ljava/lang/String;IZII)V

    return-void
.end method

.method static synthetic a(Lwm;Ljava/lang/String;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lwm;->a(Ljava/lang/String;ZZ)V

    return-void
.end method

.method private a(Lxn;Ljava/util/List;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 486
    new-instance v0, Lwp;

    invoke-direct {v0, p0, p3, p1, p2}, Lwp;-><init>(Lwm;ZLxn;Ljava/util/List;)V

    .line 508
    iget-object v1, p0, Lwm;->c:Lws;

    invoke-virtual {v1, v0}, Lws;->a(Lxx;)V

    .line 509
    return-void
.end method

.method private a(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 520
    iget v1, p0, Lwm;->f:I

    .line 521
    iget-boolean v2, p0, Lwm;->g:Z

    .line 522
    iput-boolean p1, p0, Lwm;->m:Z

    .line 524
    iget-object v3, p0, Lwm;->a:Landroid/content/Context;

    invoke-static {v3, v0}, Lxo;->a(Landroid/content/Context;Ljava/util/HashSet;)Lxp;

    move-result-object v3

    .line 525
    if-nez v3, :cond_0

    .line 555
    :goto_0
    return-void

    .line 530
    :cond_0
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    if-nez v2, :cond_1

    .line 531
    invoke-virtual {v3, v1}, Lxp;->a(I)Lxq;

    move-result-object v0

    .line 536
    :cond_1
    new-instance v1, Lwq;

    invoke-direct {v1, p0, p1, v0, v3}, Lwq;-><init>(Lwm;ZLxq;Lxp;)V

    .line 554
    iget-object v0, p0, Lwm;->c:Lws;

    invoke-virtual {v0, v1}, Lws;->a(Lxx;)V

    goto :goto_0
.end method

.method static synthetic a(Lwm;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-boolean p1, p0, Lwm;->i:Z

    return p1
.end method

.method static synthetic b(Lwm;)I
    .locals 1
    .parameter

    .prologue
    .line 44
    iget v0, p0, Lwm;->h:I

    return v0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 703
    return-void
.end method

.method static synthetic b(Lwm;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lwm;->a(Z)V

    return-void
.end method

.method static synthetic c(Lwm;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lwm;->e:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 305
    iget-object v0, p0, Lwm;->b:Landroid/app/ActivityManager;

    invoke-static {v0}, Lzk;->a(Landroid/app/ActivityManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 306
    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 311
    :try_start_0
    invoke-static {v4}, Lacq;->f(Ljava/lang/String;)Lacn;

    move-result-object v0

    .line 312
    iget v5, v0, Lacn;->b:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :try_start_1
    iget-boolean v6, v0, Lacn;->c:Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 317
    :goto_0
    iget-object v0, p0, Lwm;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    if-ltz v5, :cond_1

    .line 318
    iput-object v4, p0, Lwm;->e:Ljava/lang/String;

    .line 319
    iput v5, p0, Lwm;->f:I

    .line 320
    iput-boolean v6, p0, Lwm;->g:Z

    .line 321
    const/4 v1, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lwm;->a(Ljava/lang/String;IZLjava/lang/String;IZ)V

    .line 332
    :cond_0
    :goto_1
    return-void

    .line 314
    :catch_0
    move-exception v0

    move v5, v2

    .line 315
    :goto_2
    const-string v1, "AppsMonitor"

    const-string v6, "unexpected exception"

    invoke-static {v1, v6, v0}, Lzs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v6, v3

    goto :goto_0

    .line 322
    :cond_1
    iget-object v0, p0, Lwm;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwm;->e:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-ltz v5, :cond_0

    .line 325
    iget-object v1, p0, Lwm;->e:Ljava/lang/String;

    iget v2, p0, Lwm;->f:I

    iget-boolean v3, p0, Lwm;->g:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lwm;->a(Ljava/lang/String;IZLjava/lang/String;IZ)V

    .line 327
    iput-object v4, p0, Lwm;->e:Ljava/lang/String;

    .line 328
    iput v5, p0, Lwm;->f:I

    .line 329
    iput-boolean v6, p0, Lwm;->g:Z

    goto :goto_1

    .line 314
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method static synthetic d(Lwm;)I
    .locals 1
    .parameter

    .prologue
    .line 44
    iget v0, p0, Lwm;->f:I

    return v0
.end method

.method private d()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 559
    iget-object v3, p0, Lwm;->e:Ljava/lang/String;

    .line 562
    iget-object v0, p0, Lwm;->b:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 563
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 567
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 568
    new-array v6, v1, [Ljava/lang/String;

    .line 569
    new-array v7, v1, [I

    .line 572
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v4

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 574
    iget-object v8, p0, Lwm;->c:Lws;

    iget v9, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {v8, v9}, Lws;->b(I)Z

    move-result v8

    if-nez v8, :cond_7

    .line 575
    invoke-direct {p0, v0}, Lwm;->a(Landroid/app/ActivityManager$RunningAppProcessInfo;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v1

    .line 576
    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    aput v0, v7, v1

    .line 577
    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    goto :goto_1

    .line 580
    :cond_2
    if-eqz v1, :cond_0

    .line 585
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 586
    invoke-static {}, Lxc;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 587
    new-array v0, v1, [I

    .line 588
    invoke-static {v7, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 589
    iget-object v7, p0, Lwm;->a:Landroid/content/Context;

    invoke-static {v7, v0}, Lzt;->a(Landroid/content/Context;[I)[I

    move-result-object v7

    .line 590
    :goto_3
    if-ge v4, v1, :cond_4

    .line 591
    aget-object v0, v6, v4

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 592
    if-eqz v0, :cond_3

    .line 593
    aget-object v8, v6, v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget v9, v7, v4

    add-int/2addr v0, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 595
    :cond_3
    aget-object v0, v6, v4

    aget v8, v7, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 602
    :cond_4
    invoke-static {}, Lxc;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lwm;->h:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 603
    invoke-static {}, Lxm;->b()Ljava/util/List;

    move-result-object v4

    .line 610
    :goto_5
    invoke-static {}, Lxc;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lwm;->m:Z

    if-nez v0, :cond_5

    .line 611
    iget-object v0, p0, Lwm;->a:Landroid/content/Context;

    invoke-static {v0, v5}, Lxo;->a(Landroid/content/Context;Ljava/util/HashSet;)Lxp;

    move-result-object v5

    .line 612
    if-eqz v5, :cond_5

    .line 621
    :cond_5
    new-instance v0, Lwr;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lwr;-><init>(Lwm;Ljava/util/HashMap;Ljava/lang/String;Ljava/util/List;Lxp;)V

    .line 648
    iget-object v1, p0, Lwm;->c:Lws;

    invoke-virtual {v1, v0}, Lws;->a(Lxx;)V

    goto/16 :goto_0

    :cond_6
    move-object v4, v5

    .line 605
    goto :goto_5

    :cond_7
    move v0, v1

    goto :goto_2
.end method

.method private e()V
    .locals 4

    .prologue
    .line 689
    invoke-static {}, Lzm;->a()Lzn;

    move-result-object v0

    .line 690
    if-nez v0, :cond_0

    .line 697
    :goto_0
    return-void

    .line 693
    :cond_0
    iget-object v1, p0, Lwm;->n:Lzn;

    invoke-virtual {v0, v1}, Lzn;->a(Lzn;)I

    move-result v1

    .line 694
    invoke-static {}, Lzt;->a()[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    div-int/lit16 v2, v2, 0x400

    .line 695
    iget-object v3, p0, Lwm;->c:Lws;

    invoke-virtual {v3, v1, v2}, Lws;->a(II)V

    .line 696
    iput-object v0, p0, Lwm;->n:Lzn;

    goto :goto_0
.end method

.method static synthetic e(Lwm;)Z
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-boolean v0, p0, Lwm;->g:Z

    return v0
.end method

.method static synthetic f(Lwm;)Z
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-boolean v0, p0, Lwm;->i:Z

    return v0
.end method

.method static synthetic g(Lwm;)Lws;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lwm;->c:Lws;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 136
    invoke-virtual {p0}, Lwm;->start()V

    .line 137
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lwm;->q:Z

    .line 141
    invoke-virtual {p0}, Lwm;->interrupt()V

    .line 142
    return-void
.end method

.method public run()V
    .locals 14

    .prologue
    .line 148
    iget-object v0, p0, Lwm;->a:Landroid/content/Context;

    invoke-static {v0}, Lzv;->b(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lwm;->h:I

    .line 150
    iget-object v0, p0, Lwm;->a:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 151
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    iput-boolean v0, p0, Lwm;->i:Z

    .line 153
    iget-object v0, p0, Lwm;->a:Landroid/content/Context;

    invoke-static {v0}, Lzu;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lwm;->m:Z

    .line 155
    invoke-static {}, Lzm;->a()Lzn;

    move-result-object v0

    iput-object v0, p0, Lwm;->n:Lzn;

    .line 157
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 158
    iput-wide v4, p0, Lwm;->j:J

    .line 159
    iput-wide v4, p0, Lwm;->k:J

    .line 160
    iput-wide v4, p0, Lwm;->l:J

    .line 161
    iput-wide v4, p0, Lwm;->p:J

    .line 163
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 164
    iget-boolean v1, p0, Lwm;->d:Z

    if-eqz v1, :cond_0

    .line 165
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    :cond_0
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lwm;->a:Landroid/content/Context;

    iget-object v2, p0, Lwm;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 174
    const-wide/16 v0, 0x0

    .line 185
    :cond_1
    iget-boolean v2, p0, Lwm;->q:Z

    if-nez v2, :cond_7

    .line 186
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 193
    invoke-static {}, Lxc;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lwm;->l:J

    const-wide/32 v8, 0x493e0

    add-long/2addr v2, v8

    cmp-long v2, v6, v2

    if-lez v2, :cond_2

    .line 195
    invoke-direct {p0}, Lwm;->e()V

    .line 202
    iput-wide v6, p0, Lwm;->l:J

    .line 206
    :cond_2
    iget-boolean v2, p0, Lwm;->i:Z

    if-nez v2, :cond_3

    iget-wide v2, p0, Lwm;->j:J

    const-wide/32 v8, 0x927c0

    add-long/2addr v2, v8

    cmp-long v2, v6, v2

    if-lez v2, :cond_4

    .line 207
    :cond_3
    invoke-direct {p0}, Lwm;->c()V

    .line 215
    iput-wide v6, p0, Lwm;->j:J

    .line 219
    :cond_4
    iget-wide v2, p0, Lwm;->k:J

    const-wide/32 v8, 0x927c0

    add-long/2addr v2, v8

    cmp-long v2, v6, v2

    if-lez v2, :cond_6

    .line 220
    invoke-direct {p0}, Lwm;->d()V

    .line 228
    invoke-static {}, Lxc;->e()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lwm;->e:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lwm;->g:Z

    if-nez v2, :cond_5

    .line 229
    iget-object v2, p0, Lwm;->c:Lws;

    iget-object v3, p0, Lwm;->e:Ljava/lang/String;

    iget-boolean v8, p0, Lwm;->i:Z

    invoke-virtual {v2, v3, v8}, Lws;->a(Ljava/lang/String;Z)V

    .line 233
    :cond_5
    :try_start_0
    iget-object v2, p0, Lwm;->c:Lws;

    invoke-virtual {v2}, Lws;->c()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_0
    iput-wide v6, p0, Lwm;->k:J

    .line 246
    :cond_6
    iget-object v2, p0, Lwm;->o:Ljava/io/FileWriter;

    if-nez v2, :cond_8

    .line 289
    :goto_1
    const-wide/16 v2, 0xbb8

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 293
    :goto_2
    iget-boolean v2, p0, Lwm;->q:Z

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lwm;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 298
    :cond_7
    iget-object v0, p0, Lwm;->a:Landroid/content/Context;

    iget-object v1, p0, Lwm;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 301
    return-void

    .line 234
    :catch_0
    move-exception v2

    .line 235
    const-string v3, "AppsMonitor"

    const-string v8, "unexpected exception"

    invoke-static {v3, v8, v2}, Lzs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 258
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 259
    sub-long v10, v8, v6

    .line 260
    add-long v2, v0, v10

    .line 261
    sub-long v0, v8, v4

    .line 262
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    const-string v9, "loop: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 264
    const-string v9, ", monitor: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 265
    const-string v9, ", total: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 266
    const-string v9, ", p: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    long-to-double v10, v2

    const-wide/high16 v12, 0x4059

    mul-double/2addr v10, v12

    long-to-double v0, v0

    div-double v0, v10, v0

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 267
    const-string v0, ", fg: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-wide/16 v0, 0x0

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 268
    const-string v0, ", bg: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-wide/16 v0, 0x0

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 269
    const-string v0, ", sys: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-wide/16 v0, 0x0

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 271
    const-string v0, ", sync: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-wide/16 v0, 0x0

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 273
    iget-wide v0, p0, Lwm;->p:J

    const-wide/32 v9, 0x36ee80

    add-long/2addr v0, v9

    cmp-long v0, v6, v0

    if-lez v0, :cond_9

    .line 275
    :try_start_2
    iget-object v0, p0, Lwm;->o:Ljava/io/FileWriter;

    const-string v1, "time: "

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lwm;->o:Ljava/io/FileWriter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Lzo;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lwm;->o:Ljava/io/FileWriter;

    const-string v1, ", data: "

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 278
    iget-object v0, p0, Lwm;->o:Ljava/io/FileWriter;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lwm;->o:Ljava/io/FileWriter;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lwm;->o:Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 284
    :goto_3
    iput-wide v6, p0, Lwm;->p:J

    :cond_9
    move-wide v0, v2

    goto/16 :goto_1

    .line 290
    :catch_1
    move-exception v2

    goto/16 :goto_2

    .line 281
    :catch_2
    move-exception v0

    goto :goto_3
.end method
