.class public Lato;
.super Ljava/lang/Object;
.source "PowerUsageStats.java"


# static fields
.field private static n:Lato;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/android/internal/os/PowerProfile;

.field private c:Lcom/android/internal/app/IBatteryStats;

.field private d:Ljava/lang/reflect/Method;

.field private e:Ljava/lang/reflect/Method;

.field private f:Ljava/lang/reflect/Method;

.field private g:Ljava/lang/reflect/Method;

.field private h:Ljava/lang/reflect/Method;

.field private i:Ljava/lang/reflect/Method;

.field private j:I

.field private k:Ljava/lang/Object;

.field private l:Latr;

.field private m:Ljava/util/List;

.field private o:Z

.field private p:Ljava/lang/Object;

.field private q:J


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lato;->k:Ljava/lang/Object;

    .line 108
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lato;->m:Ljava/util/List;

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lato;->o:Z

    .line 215
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lato;->p:Ljava/lang/Object;

    .line 217
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lato;->q:J

    .line 133
    invoke-static {}, Lazf;->a()I

    move-result v0

    iput v0, p0, Lato;->j:I

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lato;->a:Landroid/content/Context;

    .line 136
    new-instance v0, Latj;

    iget-object v1, p0, Lato;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Latj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lato;->b:Lcom/android/internal/os/PowerProfile;

    .line 137
    const-string v0, "batteryinfo"

    invoke-static {v0}, Lgl;->a(Ljava/lang/Object;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lato;->c:Lcom/android/internal/app/IBatteryStats;

    .line 139
    return-void
.end method

.method public static a(Landroid/content/Context;)Lato;
    .locals 2
    .parameter

    .prologue
    .line 142
    sget-object v0, Lato;->n:Lato;

    if-nez v0, :cond_1

    .line 143
    const-class v1, Lato;

    monitor-enter v1

    .line 144
    :try_start_0
    sget-object v0, Lato;->n:Lato;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lato;

    invoke-direct {v0, p0}, Lato;-><init>(Landroid/content/Context;)V

    sput-object v0, Lato;->n:Lato;

    .line 147
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :cond_1
    sget-object v0, Lato;->n:Lato;

    return-object v0

    .line 147
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lato;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Lato;->h()V

    return-void
.end method

.method private a(Latr;)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, 0x3e8

    .line 423
    invoke-static {p1}, Latr;->a(Latr;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    mul-long/2addr v1, v4

    iget v3, p0, Lato;->j:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v0

    .line 426
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Latr;->a:J

    .line 427
    iget-object v2, p1, Latr;->e:Lagi;

    div-long v3, v0, v4

    iput-wide v3, v2, Lagi;->a:J

    iput-wide v3, p1, Latr;->b:J

    .line 428
    invoke-direct {p0, p1, v0, v1}, Lato;->a(Latr;J)V

    .line 429
    invoke-direct {p0, p1, v0, v1}, Lato;->b(Latr;J)V

    .line 430
    return-void
.end method

.method private a(Latr;J)V
    .locals 60
    .parameter
    .parameter

    .prologue
    .line 433
    const/4 v4, 0x0

    .line 434
    move-object/from16 v0, p1

    iget-object v5, v0, Latr;->e:Lagi;

    .line 436
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lato;->a:Landroid/content/Context;

    const-string v6, "sensor"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v16, v3

    .line 441
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lato;->j:I

    move/from16 v21, v0

    .line 443
    move-object/from16 v0, p0

    iget-object v3, v0, Lato;->b:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v3}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    move-result v22

    .line 444
    move/from16 v0, v22

    new-array v0, v0, [D

    move-object/from16 v23, v0

    .line 445
    move/from16 v0, v22

    new-array v3, v0, [D

    iput-object v3, v5, Lagi;->d:[D

    .line 446
    move/from16 v0, v22

    new-array v3, v0, [D

    iput-object v3, v5, Lagi;->F:[D

    .line 447
    const/4 v3, 0x0

    :goto_1
    move/from16 v0, v22

    if-ge v3, v0, :cond_0

    .line 448
    iget-object v4, v5, Lagi;->d:[D

    move-object/from16 v0, p0

    iget-object v6, v0, Lato;->b:Lcom/android/internal/os/PowerProfile;

    const-string v7, "cpu.active"

    invoke-virtual {v6, v7, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v6

    aput-wide v6, v23, v3

    aput-wide v6, v4, v3

    .line 450
    iget-object v4, v5, Lagi;->F:[D

    move-object/from16 v0, p0

    iget-object v6, v0, Lato;->b:Lcom/android/internal/os/PowerProfile;

    const-string v7, "cpu.speeds"

    invoke-virtual {v6, v7, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v6

    aput-wide v6, v4, v3

    .line 447
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 437
    :catch_0
    move-exception v3

    .line 438
    const-string v6, "PowerUsageStats"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to get sensor service: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lazt;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v4

    goto :goto_0

    .line 452
    :cond_0
    add-int/lit8 v3, v22, -0x1

    aget-wide v24, v23, v3

    .line 454
    move-object/from16 v0, p0

    iget-object v3, v0, Lato;->b:Lcom/android/internal/os/PowerProfile;

    const-string v4, "cpu.awake"

    invoke-virtual {v3, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v26

    move-wide/from16 v0, v26

    iput-wide v0, v5, Lagi;->c:D

    .line 456
    move-object/from16 v0, p0

    iget-object v3, v0, Lato;->b:Lcom/android/internal/os/PowerProfile;

    const-string v4, "wifi.on"

    invoke-virtual {v3, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v28

    move-wide/from16 v0, v28

    iput-wide v0, v5, Lagi;->f:D

    .line 458
    move-object/from16 v0, p0

    iget-object v3, v0, Lato;->b:Lcom/android/internal/os/PowerProfile;

    const-string v4, "gps.on"

    invoke-virtual {v3, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v30

    move-wide/from16 v0, v30

    iput-wide v0, v5, Lagi;->j:D

    .line 460
    move-object/from16 v0, p0

    iget-object v3, v0, Lato;->b:Lcom/android/internal/os/PowerProfile;

    const-string v4, "dsp.audio"

    invoke-virtual {v3, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v32

    move-wide/from16 v0, v32

    iput-wide v0, v5, Lagi;->D:D

    .line 462
    move-object/from16 v0, p0

    iget-object v3, v0, Lato;->b:Lcom/android/internal/os/PowerProfile;

    const-string v4, "dsp.video"

    invoke-virtual {v3, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v34

    move-wide/from16 v0, v34

    iput-wide v0, v5, Lagi;->E:D

    .line 465
    move-object/from16 v0, p0

    iget-object v3, v0, Lato;->b:Lcom/android/internal/os/PowerProfile;

    const-string v4, "battery.capacity"

    invoke-virtual {v3, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, v5, Lagi;->G:D

    .line 466
    move-object/from16 v0, p1

    iget-object v0, v0, Latr;->c:Lats;

    move-object/from16 v36, v0

    .line 467
    move-object/from16 v0, p1

    iget-object v3, v0, Latr;->d:Latl;

    check-cast v3, Latc;

    .line 470
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Latc;->a(I)Latd;

    move-result-object v37

    .line 473
    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Latc;->a(I)Latd;

    move-result-object v38

    .line 474
    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Latc;->a(I)Latd;

    move-result-object v39

    .line 475
    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Latc;->a(I)Latd;

    move-result-object v40

    .line 476
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Latc;->a(I)Latd;

    move-result-object v41

    .line 477
    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Latc;->a(I)Latd;

    move-result-object v42

    .line 479
    invoke-static/range {p1 .. p1}, Latr;->a(Latr;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v43

    .line 480
    invoke-virtual/range {v43 .. v43}, Landroid/util/SparseArray;->size()I

    move-result v44

    .line 481
    const/4 v3, 0x0

    move/from16 v20, v3

    :goto_2
    move/from16 v0, v20

    move/from16 v1, v44

    if-ge v0, v1, :cond_1d

    .line 482
    move-object/from16 v0, v43

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/os/BatteryStats$Uid;

    .line 483
    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v45

    .line 486
    new-instance v46, Latu;

    move-object/from16 v0, v46

    move/from16 v1, v45

    invoke-direct {v0, v1}, Latu;-><init>(I)V

    .line 487
    const-wide/16 v47, 0x0

    .line 489
    const-wide/16 v10, 0x0

    .line 490
    const/4 v9, 0x0

    .line 493
    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getProcessStats()Ljava/util/Map;

    move-result-object v12

    .line 495
    const-wide/16 v7, 0x0

    .line 496
    const-wide/16 v5, 0x0

    .line 497
    const-wide/16 v3, 0x0

    .line 499
    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v13

    if-lez v13, :cond_22

    .line 501
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    move-wide v12, v10

    move-object v11, v9

    move-wide v9, v7

    move-wide v7, v5

    move-wide v5, v3

    :cond_1
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 504
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 505
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Proc;

    .line 506
    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v17

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v49

    add-long v17, v17, v49

    const-wide/16 v49, 0xa

    mul-long v49, v49, v17

    .line 508
    const-wide/16 v17, 0x0

    cmp-long v14, v49, v17

    if-ltz v14, :cond_1

    .line 513
    add-long v9, v9, v49

    .line 522
    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v17

    const-wide/16 v51, 0xa

    mul-long v17, v17, v51

    add-long v7, v7, v17

    .line 525
    const/16 v17, 0x0

    .line 526
    move/from16 v0, v22

    new-array v0, v0, [J

    move-object/from16 v51, v0

    .line 527
    const/4 v14, 0x0

    move/from16 v56, v14

    move/from16 v14, v17

    move/from16 v17, v56

    :goto_4
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    .line 528
    move/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getTimeAtCpuSpeedStep(II)J

    move-result-wide v52

    aput-wide v52, v51, v17

    .line 529
    int-to-long v0, v14

    move-wide/from16 v52, v0

    aget-wide v54, v51, v17

    add-long v52, v52, v54

    move-wide/from16 v0, v52

    long-to-int v0, v0

    move/from16 v18, v0

    .line 527
    add-int/lit8 v14, v17, 0x1

    move/from16 v17, v14

    move/from16 v14, v18

    goto :goto_4

    .line 531
    :cond_2
    if-nez v14, :cond_21

    .line 532
    const/4 v3, 0x1

    .line 535
    :goto_5
    const-wide/16 v17, 0x0

    .line 536
    const/4 v14, 0x0

    :goto_6
    move/from16 v0, v22

    if-ge v14, v0, :cond_3

    .line 537
    aget-wide v52, v51, v14

    move-wide/from16 v0, v52

    long-to-double v0, v0

    move-wide/from16 v52, v0

    int-to-double v0, v3

    move-wide/from16 v54, v0

    div-double v52, v52, v54

    .line 538
    move-wide/from16 v0, v49

    long-to-double v0, v0

    move-wide/from16 v54, v0

    mul-double v52, v52, v54

    aget-wide v54, v23, v14

    mul-double v52, v52, v54

    add-double v17, v17, v52

    .line 536
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 540
    :cond_3
    add-double v5, v5, v17

    .line 542
    if-eqz v11, :cond_4

    const-string v3, "*"

    invoke-virtual {v11, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_4
    move-object v3, v4

    move-wide/from16 v11, v17

    .line 552
    :goto_7
    const-wide/16 v13, 0x0

    cmpl-double v13, v17, v13

    if-lez v13, :cond_5

    const-string v13, "*"

    invoke-virtual {v4, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 553
    move-object/from16 v0, v46

    iget-object v13, v0, Latu;->h:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    move-wide/from16 v56, v11

    move-wide/from16 v12, v56

    move-object v11, v3

    .line 555
    goto/16 :goto_3

    .line 546
    :cond_6
    cmpg-double v3, v12, v17

    if-gez v3, :cond_20

    const-string v3, "*"

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_20

    move-object v3, v4

    move-wide/from16 v11, v17

    .line 549
    goto :goto_7

    :cond_7
    move-wide v3, v7

    move-object/from16 v19, v11

    move-wide/from16 v56, v9

    move-wide v8, v5

    move-wide/from16 v6, v56

    .line 566
    :goto_8
    const-wide/16 v10, 0x0

    cmp-long v5, v3, v10

    if-gez v5, :cond_8

    .line 567
    const-string v5, "PowerUsageStats"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UID: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v45

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", proc: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", uidCpuTime: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", uidFgTime: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lazt;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const-wide/16 v3, 0x0

    .line 572
    :cond_8
    cmp-long v5, v3, v6

    if-lez v5, :cond_1f

    move-wide v4, v6

    .line 578
    :goto_9
    move-object/from16 v0, v19

    move-object/from16 v1, v46

    iput-object v0, v1, Latu;->b:Ljava/lang/String;

    .line 579
    const-wide v10, 0x408f400000000000L

    div-double v10, v8, v10

    .line 581
    move-object/from16 v0, v46

    iput-wide v6, v0, Latu;->i:J

    .line 582
    move-object/from16 v0, v46

    iput-wide v4, v0, Latu;->j:J

    .line 583
    sub-long v8, v6, v4

    .line 584
    move-object/from16 v0, v46

    iput-wide v8, v0, Latu;->k:J

    .line 585
    const-wide/16 v12, 0x0

    cmp-long v3, v6, v12

    if-lez v3, :cond_9

    .line 586
    move-object/from16 v0, v46

    iget-wide v12, v0, Latu;->v:D

    long-to-double v8, v8

    mul-double/2addr v8, v10

    long-to-double v0, v6

    move-wide/from16 v17, v0

    div-double v8, v8, v17

    add-double/2addr v8, v12

    move-object/from16 v0, v46

    iput-wide v8, v0, Latu;->v:D

    .line 590
    :cond_9
    const-wide/16 v8, 0x0

    .line 591
    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v3

    .line 593
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_a
    :goto_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 594
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 598
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v13

    .line 599
    if-eqz v13, :cond_b

    .line 600
    move-wide/from16 v0, p2

    move/from16 v2, v21

    invoke-virtual {v13, v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v13

    add-long/2addr v8, v13

    .line 603
    :cond_b
    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v13

    .line 604
    if-eqz v13, :cond_c

    .line 605
    move-wide/from16 v0, p2

    move/from16 v2, v21

    invoke-virtual {v13, v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v13

    const-wide/16 v17, 0x3e8

    div-long v13, v13, v17

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Latr;->a(Latr;J)J

    .line 608
    :cond_c
    const/4 v13, 0x2

    invoke-virtual {v3, v13}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v3

    .line 609
    if-eqz v3, :cond_a

    .line 610
    move-wide/from16 v0, p2

    move/from16 v2, v21

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v13

    const-wide/16 v17, 0x3e8

    div-long v13, v13, v17

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Latr;->b(Latr;J)J

    goto :goto_a

    .line 613
    :cond_d
    const-wide/16 v12, 0x3e8

    div-long/2addr v8, v12

    .line 614
    long-to-double v12, v8

    mul-double v12, v12, v26

    const-wide v17, 0x408f400000000000L

    div-double v12, v12, v17

    .line 615
    move-object/from16 v0, v46

    iput-wide v8, v0, Latu;->m:J

    .line 616
    move-object/from16 v0, v46

    iget-wide v0, v0, Latu;->v:D

    move-wide/from16 v17, v0

    add-double v17, v17, v12

    move-wide/from16 v0, v17

    move-object/from16 v2, v46

    iput-wide v0, v2, Latu;->v:D

    .line 618
    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Latr;->c(Latr;J)J

    .line 619
    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Latr;->d(Latr;J)J

    .line 620
    move-object/from16 v0, p1

    invoke-static {v0, v8, v9}, Latr;->e(Latr;J)J

    .line 622
    add-double v5, v10, v12

    .line 623
    const-wide v3, 0x408f400000000000L

    mul-double/2addr v3, v5

    div-double v3, v3, v24

    double-to-long v7, v3

    .line 624
    const-wide/16 v3, 0x0

    cmpl-double v3, v5, v3

    if-lez v3, :cond_e

    .line 625
    new-instance v3, Latx;

    const/16 v4, 0x9

    invoke-direct/range {v3 .. v8}, Latx;-><init>(IDJ)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Latu;->b(Latl;)V

    .line 627
    new-instance v3, Latf;

    move/from16 v0, v45

    move-object/from16 v1, v19

    invoke-direct {v3, v0, v1, v5, v6}, Latf;-><init>(ILjava/lang/String;D)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Latd;->b(Latl;)V

    .line 631
    :cond_e
    add-double v13, v47, v5

    .line 635
    move-object/from16 v0, p0

    iget v3, v0, Lato;->j:I

    invoke-virtual {v15, v3}, Landroid/os/BatteryStats$Uid;->getTcpBytesReceived(I)J

    move-result-wide v3

    .line 636
    move-object/from16 v0, p0

    iget v5, v0, Lato;->j:I

    invoke-virtual {v15, v5}, Landroid/os/BatteryStats$Uid;->getTcpBytesSent(I)J

    move-result-wide v5

    .line 637
    move-object/from16 v0, v46

    iput-wide v3, v0, Latu;->t:J

    .line 638
    move-object/from16 v0, v46

    iput-wide v5, v0, Latu;->u:J

    .line 645
    const-wide/16 v8, 0x0

    .line 646
    const-wide/16 v6, 0x0

    .line 647
    const-wide/16 v4, 0x0

    .line 648
    invoke-static {}, Lazf;->b()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 651
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lato;->g:Ljava/lang/reflect/Method;

    if-nez v3, :cond_f

    .line 652
    const-class v3, Landroid/os/BatteryStats$Uid;

    const-string v10, "getWifiRunningTime"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    sget-object v17, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v17, v11, v12

    const/4 v12, 0x1

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v11, v12

    invoke-virtual {v3, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lato;->g:Ljava/lang/reflect/Method;

    .line 655
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lato;->g:Ljava/lang/reflect/Method;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v3, v15, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 656
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v17, 0x3e8

    div-long v8, v10, v17

    .line 659
    move-object/from16 v0, p0

    iget-object v3, v0, Lato;->h:Ljava/lang/reflect/Method;

    if-nez v3, :cond_10

    .line 660
    const-class v3, Landroid/os/BatteryStats$Uid;

    const-string v10, "getScanWifiLockTime"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    sget-object v17, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v17, v11, v12

    const/4 v12, 0x1

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v11, v12

    invoke-virtual {v3, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lato;->h:Ljava/lang/reflect/Method;

    .line 664
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lato;->h:Ljava/lang/reflect/Method;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v3, v15, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 665
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v17, 0x3e8

    div-long v6, v10, v17

    .line 668
    move-object/from16 v0, p0

    iget-object v3, v0, Lato;->i:Ljava/lang/reflect/Method;

    if-nez v3, :cond_11

    .line 669
    const-class v3, Landroid/os/BatteryStats$Uid;

    const-string v10, "getFullWifiLockTime"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    sget-object v17, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v17, v11, v12

    const/4 v12, 0x1

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v11, v12

    invoke-virtual {v3, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lato;->i:Ljava/lang/reflect/Method;

    .line 673
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lato;->i:Ljava/lang/reflect/Method;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v3, v15, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 674
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v17, 0x3e8

    div-long v3, v10, v17
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-wide v11, v6

    move-wide/from16 v56, v8

    move-wide/from16 v7, v56

    move-wide v9, v3

    .line 680
    :goto_b
    long-to-double v3, v7

    mul-double v3, v3, v28

    const-wide v5, 0x408f400000000000L

    div-double v5, v3, v5

    .line 682
    move-object/from16 v0, p1

    invoke-static {v0, v7, v8}, Latr;->f(Latr;J)J

    .line 683
    move-object/from16 v0, v46

    iput-wide v7, v0, Latu;->p:J

    .line 684
    move-object/from16 v0, v46

    iput-wide v11, v0, Latu;->q:J

    .line 685
    move-object/from16 v0, v46

    iput-wide v9, v0, Latu;->r:J

    .line 686
    const-wide/16 v3, 0x0

    cmpl-double v3, v5, v3

    if-lez v3, :cond_12

    .line 687
    new-instance v3, Latx;

    const/4 v4, 0x2

    invoke-direct/range {v3 .. v8}, Latx;-><init>(IDJ)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Latu;->b(Latl;)V

    .line 689
    new-instance v3, Latf;

    move/from16 v0, v45

    move-object/from16 v1, v19

    invoke-direct {v3, v0, v1, v5, v6}, Latf;-><init>(ILjava/lang/String;D)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Latd;->b(Latl;)V

    .line 692
    :cond_12
    const-wide/16 v3, 0x0

    cmp-long v3, v7, v3

    if-gtz v3, :cond_13

    const-wide/16 v3, 0x0

    cmp-long v3, v11, v3

    if-gtz v3, :cond_13

    const-wide/16 v3, 0x0

    cmp-long v3, v9, v3

    if-lez v3, :cond_13

    .line 702
    :cond_13
    add-double v47, v13, v5

    .line 705
    const-wide/16 v7, 0x0

    .line 706
    const-wide/16 v5, 0x0

    .line 707
    const-wide/16 v3, 0x0

    .line 708
    const-wide/16 v11, 0x0

    .line 709
    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getSensorStats()Ljava/util/Map;

    move-result-object v9

    .line 711
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-wide/from16 v17, v3

    :goto_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 712
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Sensor;

    .line 713
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v10

    .line 714
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    .line 715
    if-eqz v3, :cond_1e

    .line 716
    move-wide/from16 v0, p2

    move/from16 v2, v21

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    const-wide/16 v13, 0x3e8

    div-long/2addr v3, v13

    .line 718
    const/16 v13, -0x2710

    if-ne v10, v13, :cond_15

    .line 720
    long-to-double v5, v3

    mul-double v5, v5, v30

    const-wide v7, 0x408f400000000000L

    div-double/2addr v5, v7

    move-wide v7, v3

    move-wide/from16 v3, v17

    :goto_d
    move-wide/from16 v17, v3

    .line 737
    goto :goto_c

    .line 676
    :catch_1
    move-exception v3

    .line 677
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_14
    move-wide v11, v6

    move-wide/from16 v56, v8

    move-wide/from16 v7, v56

    move-wide v9, v4

    goto/16 :goto_b

    .line 721
    :cond_15
    if-eqz v16, :cond_1e

    .line 723
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v10

    .line 725
    if-eqz v10, :cond_1e

    .line 726
    invoke-virtual {v10}, Landroid/hardware/Sensor;->getPower()F

    move-result v10

    float-to-double v13, v10

    .line 727
    add-long v17, v17, v3

    .line 728
    long-to-double v3, v3

    mul-double/2addr v3, v13

    const-wide v13, 0x408f400000000000L

    div-double/2addr v3, v13

    add-double/2addr v11, v3

    move-wide/from16 v3, v17

    goto :goto_d

    .line 738
    :cond_16
    move-object/from16 v0, v46

    iput-wide v7, v0, Latu;->n:J

    .line 739
    move-wide/from16 v0, v17

    move-object/from16 v2, v46

    iput-wide v0, v2, Latu;->o:J

    .line 740
    const-wide/16 v3, 0x0

    cmpl-double v3, v5, v3

    if-lez v3, :cond_17

    .line 741
    new-instance v3, Latx;

    const/4 v4, 0x7

    invoke-direct/range {v3 .. v8}, Latx;-><init>(IDJ)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Latu;->b(Latl;)V

    .line 743
    new-instance v3, Latf;

    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    move-object/from16 v0, v19

    invoke-direct {v3, v4, v0, v5, v6}, Latf;-><init>(ILjava/lang/String;D)V

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Latd;->b(Latl;)V

    .line 746
    :cond_17
    const-wide v3, 0x408f400000000000L

    mul-double/2addr v3, v11

    div-double v3, v3, v30

    double-to-long v13, v3

    .line 747
    const-wide/16 v3, 0x0

    cmpl-double v3, v11, v3

    if-lez v3, :cond_18

    .line 748
    new-instance v9, Latx;

    const/16 v10, 0x8

    invoke-direct/range {v9 .. v14}, Latx;-><init>(IDJ)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v9}, Latu;->b(Latl;)V

    .line 750
    new-instance v3, Latf;

    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    move-object/from16 v0, v19

    invoke-direct {v3, v4, v0, v11, v12}, Latf;-><init>(ILjava/lang/String;D)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Latd;->b(Latl;)V

    .line 753
    :cond_18
    move-object/from16 v0, v40

    iget-wide v3, v0, Latd;->b:J

    add-long/2addr v3, v7

    move-object/from16 v0, v40

    iput-wide v3, v0, Latd;->b:J

    .line 754
    move-object/from16 v0, v41

    iget-wide v3, v0, Latd;->b:J

    add-long v3, v3, v17

    move-object/from16 v0, v41

    iput-wide v3, v0, Latd;->b:J

    .line 756
    add-double v3, v47, v5

    .line 757
    add-double v9, v3, v11

    .line 760
    move-wide/from16 v0, p2

    move/from16 v2, v21

    invoke-virtual {v15, v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTime(JI)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long v7, v3, v5

    .line 761
    long-to-double v3, v7

    mul-double v3, v3, v32

    const-wide v5, 0x408f400000000000L

    div-double v5, v3, v5

    .line 762
    const-wide/16 v3, 0x0

    cmpl-double v3, v5, v3

    if-lez v3, :cond_19

    .line 763
    new-instance v3, Latx;

    const/4 v4, 0x5

    invoke-direct/range {v3 .. v8}, Latx;-><init>(IDJ)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Latu;->b(Latl;)V

    .line 765
    new-instance v3, Latf;

    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    move-object/from16 v0, v19

    invoke-direct {v3, v4, v0, v5, v6}, Latf;-><init>(ILjava/lang/String;D)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Latd;->b(Latl;)V

    .line 768
    :cond_19
    move-object/from16 v0, v38

    iget-wide v3, v0, Latd;->b:J

    add-long/2addr v3, v7

    move-object/from16 v0, v38

    iput-wide v3, v0, Latd;->b:J

    .line 770
    add-double/2addr v9, v5

    .line 773
    move-wide/from16 v0, p2

    move/from16 v2, v21

    invoke-virtual {v15, v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTime(JI)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long v7, v3, v5

    .line 774
    long-to-double v3, v7

    mul-double v3, v3, v34

    const-wide v5, 0x408f400000000000L

    div-double v5, v3, v5

    .line 775
    const-wide/16 v3, 0x0

    cmpl-double v3, v5, v3

    if-lez v3, :cond_1a

    .line 776
    new-instance v3, Latx;

    const/4 v4, 0x6

    invoke-direct/range {v3 .. v8}, Latx;-><init>(IDJ)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Latu;->b(Latl;)V

    .line 778
    new-instance v3, Latf;

    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    move-object/from16 v0, v19

    invoke-direct {v3, v4, v0, v5, v6}, Latf;-><init>(ILjava/lang/String;D)V

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Latd;->b(Latl;)V

    .line 781
    :cond_1a
    move-object/from16 v0, v39

    iget-wide v3, v0, Latd;->b:J

    add-long/2addr v3, v7

    move-object/from16 v0, v39

    iput-wide v3, v0, Latd;->b:J

    .line 783
    add-double/2addr v5, v9

    .line 786
    const/4 v3, 0x0

    .line 787
    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getPackageStats()Ljava/util/Map;

    move-result-object v4

    .line 788
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v4, v3

    :goto_e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 789
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Pkg;

    .line 790
    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeups(I)I

    move-result v3

    add-int/2addr v3, v4

    move v4, v3

    .line 791
    goto :goto_e

    .line 792
    :cond_1b
    move-object/from16 v0, v46

    iput v4, v0, Latu;->s:I

    .line 794
    move-object/from16 v0, p1

    iget-object v3, v0, Latr;->e:Lagi;

    iget-object v3, v3, Lagi;->H:Ljava/util/ArrayList;

    move-object/from16 v0, v46

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 795
    const-wide/16 v3, 0x0

    cmpl-double v3, v5, v3

    if-lez v3, :cond_1c

    .line 797
    move-object/from16 v0, v36

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lats;->b(Latl;)V

    .line 481
    :goto_f
    add-int/lit8 v3, v20, 0x1

    move/from16 v20, v3

    goto/16 :goto_2

    .line 799
    :cond_1c
    invoke-virtual/range {v46 .. v46}, Latu;->a()V

    goto :goto_f

    .line 803
    :cond_1d
    return-void

    :cond_1e
    move-wide/from16 v3, v17

    goto/16 :goto_d

    :cond_1f
    move-wide v4, v3

    goto/16 :goto_9

    :cond_20
    move-object v3, v11

    move-wide/from16 v56, v12

    move-wide/from16 v11, v56

    goto/16 :goto_7

    :cond_21
    move v3, v14

    goto/16 :goto_5

    :cond_22
    move-object/from16 v19, v9

    move-wide/from16 v56, v5

    move-wide/from16 v58, v7

    move-wide/from16 v6, v58

    move-wide v8, v3

    move-wide/from16 v3, v56

    goto/16 :goto_8
.end method

.method static synthetic a(Lato;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput-boolean p1, p0, Lato;->o:Z

    return p1
.end method

.method static synthetic b(Lato;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lato;->p:Ljava/lang/Object;

    return-object v0
.end method

.method private b(Latr;J)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const-wide v8, 0x408f400000000000L

    const-wide/16 v6, 0x0

    .line 807
    invoke-direct {p0, p1, p2, p3}, Lato;->c(Latr;J)V

    .line 808
    invoke-direct {p0, p1, p2, p3}, Lato;->d(Latr;J)V

    .line 809
    invoke-direct {p0, p1, p2, p3}, Lato;->e(Latr;J)V

    .line 810
    invoke-direct {p0, p1, p2, p3}, Lato;->f(Latr;J)V

    .line 811
    invoke-direct {p0, p1, p2, p3}, Lato;->g(Latr;J)V

    .line 812
    invoke-direct {p0, p1, p2, p3}, Lato;->i(Latr;J)V

    .line 813
    invoke-direct {p0, p1, p2, p3}, Lato;->h(Latr;J)V

    .line 816
    invoke-static {p1}, Latr;->b(Latr;)D

    move-result-wide v0

    cmpl-double v0, v0, v6

    if-lez v0, :cond_0

    .line 817
    iget-object v0, p0, Lato;->b:Lcom/android/internal/os/PowerProfile;

    const-string v1, "radio.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    .line 819
    invoke-static {p1}, Latr;->b(Latr;)D

    move-result-wide v2

    mul-double/2addr v2, v8

    div-double v0, v2, v0

    double-to-long v4, v0

    .line 820
    iget-object v0, p1, Latr;->c:Lats;

    const/4 v1, 0x4

    invoke-static {p1}, Latr;->b(Latr;)D

    move-result-wide v2

    invoke-virtual/range {v0 .. v5}, Lats;->a(IDJ)V

    .line 825
    :cond_0
    invoke-static {p1}, Latr;->c(Latr;)D

    move-result-wide v0

    cmpl-double v0, v0, v6

    if-lez v0, :cond_1

    .line 826
    iget-object v0, p1, Latr;->c:Lats;

    const/4 v1, 0x2

    invoke-static {p1}, Latr;->c(Latr;)D

    move-result-wide v2

    invoke-static {p1}, Latr;->d(Latr;)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lats;->a(IDJ)V

    .line 831
    :cond_1
    invoke-static {p1}, Latr;->e(Latr;)D

    move-result-wide v0

    cmpl-double v0, v0, v6

    if-lez v0, :cond_2

    .line 832
    iget-object v0, p0, Lato;->b:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v0}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    move-result v0

    .line 833
    iget-object v1, p0, Lato;->b:Lcom/android/internal/os/PowerProfile;

    const-string v2, "cpu.active"

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v0

    .line 835
    invoke-static {p1}, Latr;->e(Latr;)D

    move-result-wide v2

    mul-double/2addr v2, v8

    div-double v0, v2, v0

    double-to-long v4, v0

    .line 836
    iget-object v0, p1, Latr;->c:Lats;

    const/16 v1, 0x9

    invoke-static {p1}, Latr;->e(Latr;)D

    move-result-wide v2

    invoke-virtual/range {v0 .. v5}, Lats;->a(IDJ)V

    .line 841
    :cond_2
    invoke-static {p1}, Latr;->f(Latr;)D

    move-result-wide v0

    cmpl-double v0, v0, v6

    if-lez v0, :cond_3

    .line 842
    iget-object v0, p1, Latr;->c:Lats;

    const/4 v1, 0x3

    invoke-static {p1}, Latr;->f(Latr;)D

    move-result-wide v2

    invoke-static {p1}, Latr;->g(Latr;)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lats;->a(IDJ)V

    .line 845
    :cond_3
    return-void
.end method

.method private c(Latr;J)V
    .locals 25
    .parameter
    .parameter

    .prologue
    .line 849
    move-object/from16 v0, p1

    iget-object v11, v0, Latr;->e:Lagi;

    .line 852
    :try_start_0
    invoke-static/range {p1 .. p1}, Latr;->a(Latr;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lato;->j:I

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1, v5}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v12, v4, v6

    iput-wide v12, v11, Lagi;->B:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 857
    move-object/from16 v0, p0

    iget-object v4, v0, Lato;->b:Lcom/android/internal/os/PowerProfile;

    const-string v5, "screen.on"

    invoke-virtual {v4, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v14

    iput-wide v14, v11, Lagi;->p:D

    .line 859
    long-to-double v4, v12

    mul-double v16, v4, v14

    .line 861
    move-object/from16 v0, p0

    iget-object v4, v0, Lato;->b:Lcom/android/internal/os/PowerProfile;

    const-string v5, "screen.full"

    invoke-virtual {v4, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v11, Lagi;->A:D

    .line 864
    const-wide/16 v7, 0x0

    .line 866
    const-wide/16 v5, 0x0

    .line 867
    const/4 v4, 0x5

    new-array v4, v4, [J

    iput-object v4, v11, Lagi;->C:[J

    .line 868
    const/4 v4, 0x0

    move-wide v9, v7

    move-wide v7, v5

    :goto_0
    const/4 v5, 0x5

    if-ge v4, v5, :cond_0

    .line 869
    add-int/lit8 v5, v4, 0x1

    int-to-double v5, v5

    mul-double v5, v5, v18

    const-wide/high16 v20, 0x4014

    div-double v5, v5, v20

    .line 870
    iget-object v0, v11, Lagi;->C:[J

    move-object/from16 v20, v0

    invoke-static/range {p1 .. p1}, Latr;->a(Latr;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lato;->j:I

    move/from16 v22, v0

    move-object/from16 v0, v21

    move-wide/from16 v1, p2

    move/from16 v3, v22

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenBrightnessTime(IJI)J

    move-result-wide v21

    const-wide/16 v23, 0x3e8

    div-long v21, v21, v23

    aput-wide v21, v20, v4

    .line 873
    move-wide/from16 v0, v21

    long-to-double v0, v0

    move-wide/from16 v23, v0

    mul-double v5, v5, v23

    add-double/2addr v5, v7

    .line 874
    add-long v7, v9, v21

    .line 868
    add-int/lit8 v4, v4, 0x1

    move-wide v9, v7

    move-wide v7, v5

    goto :goto_0

    .line 877
    :cond_0
    const-wide/16 v4, 0x0

    .line 878
    const-wide/16 v18, 0x0

    cmp-long v6, v9, v18

    if-lez v6, :cond_1

    .line 879
    long-to-double v4, v9

    div-double v4, v7, v4

    move-wide v5, v4

    .line 881
    :goto_1
    add-double v7, v7, v16

    .line 892
    move-object/from16 v0, p1

    iget-object v4, v0, Latr;->d:Latl;

    check-cast v4, Latc;

    .line 893
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Latc;->a(I)Latd;

    move-result-object v4

    .line 894
    iput-wide v12, v4, Latd;->b:J

    .line 897
    move-object/from16 v0, p1

    iget-object v4, v0, Latr;->c:Lats;

    .line 898
    invoke-static/range {p1 .. p1}, Latr;->h(Latr;)J

    move-result-wide v7

    iput-wide v7, v4, Lats;->j:J

    .line 899
    iput-wide v14, v4, Lats;->l:D

    .line 900
    iput-wide v12, v4, Lats;->k:J

    .line 901
    iput-wide v5, v4, Lats;->n:D

    .line 902
    iput-wide v9, v4, Lats;->m:J

    .line 903
    :goto_2
    return-void

    .line 854
    :catch_0
    move-exception v4

    goto :goto_2

    :cond_1
    move-wide v5, v4

    goto :goto_1
.end method

.method private d(Latr;J)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x4

    .line 906
    iget-object v0, p1, Latr;->e:Lagi;

    iget-object v1, p0, Lato;->b:Lcom/android/internal/os/PowerProfile;

    const-string v2, "radio.active"

    invoke-virtual {v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lagi;->y:D

    .line 909
    iget-object v0, p1, Latr;->e:Lagi;

    invoke-static {p1}, Latr;->a(Latr;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v3

    iget v4, p0, Lato;->j:I

    invoke-virtual {v3, p2, p3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneOnTime(JI)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    iput-wide v3, v0, Lagi;->r:J

    .line 911
    long-to-double v3, v3

    mul-double v0, v3, v1

    const-wide v2, 0x408f400000000000L

    div-double v1, v0, v2

    .line 913
    iget-object v0, p0, Lato;->a:Landroid/content/Context;

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a0065

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 914
    iget-object v0, p1, Latr;->d:Latl;

    check-cast v0, Latc;

    .line 915
    invoke-virtual {v0, v7}, Latc;->a(I)Latd;

    move-result-object v0

    .line 916
    new-instance v4, Late;

    invoke-direct {v4, v7, v3, v1, v2}, Late;-><init>(ILjava/lang/String;D)V

    invoke-virtual {v0, v4}, Latd;->b(Latl;)V

    .line 919
    invoke-static {p1, v1, v2}, Latr;->a(Latr;D)D

    .line 920
    return-void
.end method

.method private e(Latr;J)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x4

    .line 924
    iget-object v0, p1, Latr;->e:Lagi;

    invoke-static {p1}, Latr;->a(Latr;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->getRadioDataUptime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, v0, Lagi;->z:J

    .line 926
    iget-object v0, p0, Lato;->b:Lcom/android/internal/os/PowerProfile;

    const-string v3, "radio.active"

    invoke-virtual {v0, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v3

    .line 928
    long-to-double v0, v1

    mul-double/2addr v0, v3

    const-wide v2, 0x408f400000000000L

    div-double v1, v0, v2

    .line 930
    iget-object v0, p0, Lato;->a:Landroid/content/Context;

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a0066

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 931
    iget-object v0, p1, Latr;->d:Latl;

    check-cast v0, Latc;

    .line 932
    invoke-virtual {v0, v5}, Latc;->a(I)Latd;

    move-result-object v0

    .line 933
    new-instance v4, Late;

    invoke-direct {v4, v5, v3, v1, v2}, Late;-><init>(ILjava/lang/String;D)V

    invoke-virtual {v0, v4}, Latd;->b(Latl;)V

    .line 936
    invoke-static {p1, v1, v2}, Latr;->a(Latr;D)D

    .line 942
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 123
    iget-object v1, p0, Lato;->m:Ljava/util/List;

    monitor-enter v1

    .line 124
    :try_start_0
    iget-object v0, p0, Lato;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latq;

    .line 125
    invoke-interface {v0}, Latq;->b()V

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    return-void
.end method

.method private f(Latr;J)V
    .locals 21
    .parameter
    .parameter

    .prologue
    .line 946
    move-object/from16 v0, p1

    iget-object v8, v0, Latr;->e:Lagi;

    .line 947
    invoke-static/range {p1 .. p1}, Latr;->a(Latr;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lato;->j:I

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalScanningTime(JI)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v9, v2, v4

    iput-wide v9, v8, Lagi;->t:J

    .line 949
    const-wide/16 v2, 0x3e8

    div-long v2, p2, v2

    cmp-long v2, v9, v2

    if-ltz v2, :cond_0

    .line 1004
    :goto_0
    return-void

    .line 956
    :cond_0
    const-wide/16 v5, 0x0

    .line 959
    const-wide/16 v3, 0x0

    .line 960
    const/4 v2, 0x5

    new-array v2, v2, [D

    iput-object v2, v8, Lagi;->q:[D

    .line 961
    const/4 v2, 0x5

    new-array v2, v2, [J

    iput-object v2, v8, Lagi;->s:[J

    .line 962
    const/4 v2, 0x5

    new-array v2, v2, [I

    iput-object v2, v8, Lagi;->u:[I

    .line 963
    const/4 v2, 0x0

    move-wide/from16 v17, v3

    move-wide/from16 v19, v5

    move-wide/from16 v6, v19

    move-wide/from16 v4, v17

    :goto_1
    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    .line 964
    iget-object v3, v8, Lagi;->q:[D

    move-object/from16 v0, p0

    iget-object v11, v0, Lato;->b:Lcom/android/internal/os/PowerProfile;

    const-string v12, "radio.on"

    invoke-virtual {v11, v12, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v11

    aput-wide v11, v3, v2

    .line 966
    iget-object v3, v8, Lagi;->s:[J

    invoke-static/range {p1 .. p1}, Latr;->a(Latr;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lato;->j:I

    move-wide/from16 v0, p2

    invoke-virtual {v13, v2, v0, v1, v14}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    aput-wide v13, v3, v2

    .line 968
    iget-object v3, v8, Lagi;->u:[I

    invoke-static/range {p1 .. p1}, Latr;->a(Latr;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lato;->j:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v15, v2, v0}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthCount(II)I

    move-result v15

    aput v15, v3, v2

    .line 969
    long-to-double v15, v13

    mul-double/2addr v11, v15

    const-wide v15, 0x408f400000000000L

    div-double/2addr v11, v15

    add-double/2addr v6, v11

    .line 970
    add-long v3, v4, v13

    .line 963
    add-int/lit8 v2, v2, 0x1

    move-wide v4, v3

    goto :goto_1

    .line 976
    :cond_1
    :try_start_0
    const-class v2, Landroid/os/BatteryStats;

    const-string v3, "NUM_DATA_CONNECTION_TYPES"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 977
    if-eqz v2, :cond_2

    .line 978
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 986
    :goto_2
    new-array v3, v2, [I

    iput-object v3, v8, Lagi;->w:[I

    .line 987
    new-array v3, v2, [J

    iput-object v3, v8, Lagi;->v:[J

    .line 988
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_3

    .line 989
    iget-object v11, v8, Lagi;->w:[I

    invoke-static/range {p1 .. p1}, Latr;->a(Latr;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lato;->j:I

    invoke-virtual {v12, v3, v13}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneDataConnectionCount(II)I

    move-result v12

    aput v12, v11, v3

    .line 990
    iget-object v11, v8, Lagi;->v:[J

    invoke-static/range {p1 .. p1}, Latr;->a(Latr;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lato;->j:I

    move-wide/from16 v0, p2

    invoke-virtual {v12, v3, v0, v1, v13}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneDataConnectionTime(IJI)J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    aput-wide v12, v11, v3

    .line 988
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 980
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 982
    :catch_0
    move-exception v2

    .line 983
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 984
    const/4 v2, 0x0

    goto :goto_2

    .line 992
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lato;->b:Lcom/android/internal/os/PowerProfile;

    const-string v3, "radio.scanning"

    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v8, Lagi;->x:D

    .line 994
    long-to-double v8, v9

    mul-double/2addr v2, v8

    const-wide v8, 0x408f400000000000L

    div-double/2addr v2, v8

    add-double/2addr v6, v2

    .line 996
    move-object/from16 v0, p0

    iget-object v2, v0, Lato;->a:Landroid/content/Context;

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a0067

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 997
    move-object/from16 v0, p1

    iget-object v2, v0, Latr;->d:Latl;

    check-cast v2, Latc;

    .line 998
    const/4 v8, 0x4

    invoke-virtual {v2, v8}, Latc;->a(I)Latd;

    move-result-object v2

    .line 999
    iput-wide v4, v2, Latd;->b:J

    .line 1000
    new-instance v4, Late;

    const/4 v5, 0x4

    invoke-direct {v4, v5, v3, v6, v7}, Late;-><init>(ILjava/lang/String;D)V

    invoke-virtual {v2, v4}, Latd;->b(Latl;)V

    .line 1003
    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Latr;->a(Latr;D)D

    goto/16 :goto_0
.end method

.method private g()Lcom/android/internal/os/BatteryStatsImpl;
    .locals 8

    .prologue
    .line 157
    const/4 v1, 0x0

    .line 159
    :try_start_0
    iget-object v0, p0, Lato;->c:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->getStatistics()[B

    move-result-object v0

    .line 160
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 161
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 162
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 163
    sget-object v0, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    .line 164
    :try_start_1
    invoke-static {}, Lazf;->c()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    :try_start_2
    iget-object v1, p0, Lato;->d:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 167
    const-class v1, Lcom/android/internal/os/BatteryStatsImpl;

    const-string v3, "distributeWorkLocked"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lato;->d:Ljava/lang/reflect/Method;

    .line 171
    :cond_0
    iget-object v1, p0, Lato;->d:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lato;->j:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3

    .line 176
    :cond_1
    :goto_0
    :try_start_3
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 183
    :goto_1
    return-object v0

    .line 172
    :catch_0
    move-exception v1

    .line 173
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 177
    :catch_1
    move-exception v1

    .line 179
    :goto_2
    const-string v2, "PowerUsageStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lazt;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 180
    :catch_2
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    .line 181
    :goto_3
    const-string v2, "PowerUsageStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "oom:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lazt;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 180
    :catch_3
    move-exception v1

    goto :goto_3

    .line 177
    :catch_4
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_2
.end method

.method private g(Latr;J)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, 0x3e8

    const-wide/16 v2, 0x0

    const/4 v11, 0x2

    .line 1007
    iget-object v0, p1, Latr;->e:Lagi;

    invoke-static {p1}, Latr;->a(Latr;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v1

    iget v4, p0, Lato;->j:I

    invoke-virtual {v1, p2, p3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getWifiOnTime(JI)J

    move-result-wide v4

    div-long v6, v4, v6

    iput-wide v6, v0, Lagi;->g:J

    .line 1012
    :try_start_0
    invoke-static {}, Lazf;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1014
    iget-object v0, p0, Lato;->e:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 1015
    const-class v0, Lcom/android/internal/os/BatteryStatsImpl;

    const-string v1, "getGlobalWifiRunningTime"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v4, v5

    const/4 v5, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lato;->e:Ljava/lang/reflect/Method;

    .line 1019
    :cond_0
    iget-object v0, p0, Lato;->e:Ljava/lang/reflect/Method;

    .line 1029
    :goto_0
    invoke-static {p1}, Latr;->a(Latr;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x1

    iget v8, p0, Lato;->j:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1031
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1035
    :goto_1
    iget-object v4, p1, Latr;->e:Lagi;

    iput-wide v0, v4, Lagi;->h:J

    .line 1042
    invoke-static {p1}, Latr;->i(Latr;)J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 1043
    cmp-long v4, v0, v2

    if-gez v4, :cond_3

    move-wide v4, v2

    .line 1046
    :goto_2
    iget-object v0, p0, Lato;->b:Lcom/android/internal/os/PowerProfile;

    const-string v1, "wifi.on"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    .line 1048
    iget-object v8, p1, Latr;->e:Lagi;

    iget-object v9, p0, Lato;->b:Lcom/android/internal/os/PowerProfile;

    const-string v10, "wifi.scan"

    invoke-virtual {v9, v10}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    iput-wide v9, v8, Lagi;->e:D

    .line 1050
    iget-object v8, p1, Latr;->e:Lagi;

    iget-object v9, p0, Lato;->b:Lcom/android/internal/os/PowerProfile;

    const-string v10, "wifi.active"

    invoke-virtual {v9, v10}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    iput-wide v9, v8, Lagi;->i:D

    .line 1052
    mul-long/2addr v2, v6

    long-to-double v2, v2

    mul-double/2addr v2, v0

    long-to-double v8, v4

    mul-double/2addr v0, v8

    add-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L

    div-double v1, v0, v2

    .line 1058
    iget-object v0, p0, Lato;->a:Landroid/content/Context;

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a0062

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1059
    iget-object v0, p1, Latr;->d:Latl;

    check-cast v0, Latc;

    .line 1060
    invoke-virtual {v0, v11}, Latc;->a(I)Latd;

    move-result-object v0

    .line 1061
    iput-wide v6, v0, Latd;->b:J

    .line 1062
    new-instance v6, Late;

    invoke-direct {v6, v11, v3, v1, v2}, Late;-><init>(ILjava/lang/String;D)V

    invoke-virtual {v0, v6}, Latd;->b(Latl;)V

    .line 1065
    invoke-static {p1, v1, v2}, Latr;->b(Latr;D)D

    .line 1066
    invoke-static {p1, v4, v5}, Latr;->g(Latr;J)J

    .line 1067
    return-void

    .line 1022
    :cond_1
    :try_start_1
    iget-object v0, p0, Lato;->f:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    .line 1023
    const-class v0, Lcom/android/internal/os/BatteryStatsImpl;

    const-string v1, "getWifiRunningTime"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v4, v5

    const/4 v5, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lato;->f:Ljava/lang/reflect/Method;

    .line 1027
    :cond_2
    iget-object v0, p0, Lato;->f:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1032
    :catch_0
    move-exception v0

    .line 1033
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-wide v0, v2

    goto/16 :goto_1

    :cond_3
    move-wide v4, v0

    goto :goto_2
.end method

.method private h()V
    .locals 6

    .prologue
    const/16 v5, 0x14

    const-wide v3, 0x3fb999999999999aL

    .line 331
    new-instance v1, Latr;

    invoke-direct {v1}, Latr;-><init>()V

    .line 333
    invoke-direct {p0}, Lato;->g()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    invoke-static {v1, v0}, Latr;->a(Latr;Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/BatteryStatsImpl;

    .line 334
    invoke-static {v1}, Latr;->a(Latr;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 336
    invoke-direct {p0}, Lato;->f()V

    .line 383
    :goto_0
    return-void

    .line 339
    :cond_0
    invoke-direct {p0, v1}, Lato;->a(Latr;)V

    .line 342
    iget-object v0, v1, Latr;->d:Latl;

    check-cast v0, Latc;

    .line 343
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Latc;->a(I)Latd;

    move-result-object v0

    .line 344
    iget-object v2, v1, Latr;->c:Lats;

    invoke-virtual {v2, v0}, Lats;->a(Latd;)V

    .line 347
    iget-object v0, v1, Latr;->c:Lats;

    iget-object v2, p0, Lato;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lats;->a(Landroid/content/Context;)V

    .line 348
    iget-object v0, v1, Latr;->c:Lats;

    iget-object v2, p0, Lato;->a:Landroid/content/Context;

    invoke-virtual {v0, v2, v5, v3, v4}, Lats;->a(Landroid/content/Context;ID)V

    .line 349
    iget-object v0, v1, Latr;->d:Latl;

    iget-object v2, p0, Lato;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Latl;->a(Landroid/content/Context;)V

    .line 350
    iget-object v0, v1, Latr;->d:Latl;

    iget-object v2, p0, Lato;->a:Landroid/content/Context;

    invoke-virtual {v0, v2, v5, v3, v4}, Latl;->a(Landroid/content/Context;ID)V

    .line 353
    const/4 v0, 0x0

    invoke-static {v1, v0}, Latr;->a(Latr;Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/BatteryStatsImpl;

    .line 365
    iget-object v0, p0, Lato;->a:Landroid/content/Context;

    invoke-static {v0}, Lago;->a(Landroid/content/Context;)Lago;

    move-result-object v0

    invoke-virtual {v0, v1}, Lago;->a(Latr;)V

    .line 367
    iget-object v2, p0, Lato;->k:Ljava/lang/Object;

    monitor-enter v2

    .line 368
    :try_start_0
    iput-object v1, p0, Lato;->l:Latr;

    .line 370
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    invoke-direct {p0}, Lato;->f()V

    goto :goto_0

    .line 370
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private h(Latr;J)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x9

    .line 1070
    iget-object v0, p1, Latr;->e:Lagi;

    iget-object v1, p0, Lato;->b:Lcom/android/internal/os/PowerProfile;

    const-string v2, "cpu.idle"

    invoke-virtual {v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lagi;->b:D

    .line 1077
    :try_start_0
    invoke-static {p1}, Latr;->a(Latr;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    iget v3, p0, Lato;->j:I

    invoke-virtual {v0, p2, p3, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 1082
    sub-long v3, p2, v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 1083
    long-to-double v5, v3

    mul-double v0, v5, v1

    const-wide v5, 0x408f400000000000L

    div-double v1, v0, v5

    .line 1085
    iget-object v0, p0, Lato;->a:Landroid/content/Context;

    sget-object v5, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v5, 0x7f0a0064

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1086
    iget-object v0, p1, Latr;->d:Latl;

    check-cast v0, Latc;

    .line 1087
    invoke-virtual {v0, v8}, Latc;->a(I)Latd;

    move-result-object v0

    .line 1088
    invoke-static {p1}, Latr;->j(Latr;)J

    move-result-wide v6

    iput-wide v6, v0, Latd;->b:J

    .line 1089
    new-instance v6, Late;

    invoke-direct {v6, v8, v5, v1, v2}, Late;-><init>(ILjava/lang/String;D)V

    invoke-virtual {v0, v6}, Latd;->b(Latl;)V

    .line 1092
    invoke-static {p1, v1, v2}, Latr;->c(Latr;D)D

    .line 1093
    invoke-static {p1, v3, v4}, Latr;->h(Latr;J)J

    .line 1094
    :goto_0
    return-void

    .line 1079
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private i(Latr;J)V
    .locals 11
    .parameter
    .parameter

    .prologue
    .line 1097
    iget-object v0, p1, Latr;->e:Lagi;

    .line 1098
    iget-object v1, p0, Lato;->b:Lcom/android/internal/os/PowerProfile;

    const-string v2, "bluetooth.on"

    invoke-virtual {v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lagi;->k:D

    .line 1100
    iget-object v3, p0, Lato;->b:Lcom/android/internal/os/PowerProfile;

    const-string v4, "bluetooth.at"

    invoke-virtual {v3, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, v0, Lagi;->n:D

    .line 1103
    iget-object v5, p0, Lato;->b:Lcom/android/internal/os/PowerProfile;

    const-string v6, "bluetooth.active"

    invoke-virtual {v5, v6}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, v0, Lagi;->m:D

    .line 1106
    invoke-static {p1}, Latr;->a(Latr;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v5

    iget v6, p0, Lato;->j:I

    invoke-virtual {v5, p2, p3, v6}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothOnTime(JI)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    iput-wide v5, v0, Lagi;->l:J

    .line 1107
    long-to-double v7, v5

    mul-double/2addr v7, v1

    const-wide v9, 0x408f400000000000L

    div-double/2addr v7, v9

    .line 1109
    invoke-static {p1}, Latr;->a(Latr;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothPingCount()I

    move-result v9

    iput v9, v0, Lagi;->o:I

    .line 1110
    int-to-double v9, v9

    mul-double/2addr v3, v9

    const-wide v9, 0x408f400000000000L

    div-double/2addr v3, v9

    add-double/2addr v3, v7

    .line 1117
    iget-object v0, p0, Lato;->a:Landroid/content/Context;

    sget-object v7, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v7, 0x7f0a0063

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1118
    iget-object v0, p1, Latr;->d:Latl;

    check-cast v0, Latc;

    .line 1119
    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Latc;->a(I)Latd;

    move-result-object v0

    .line 1120
    iput-wide v5, v0, Latd;->b:J

    .line 1121
    new-instance v5, Late;

    const/4 v6, 0x3

    invoke-direct {v5, v6, v7, v3, v4}, Late;-><init>(ILjava/lang/String;D)V

    invoke-virtual {v0, v5}, Latd;->b(Latl;)V

    .line 1124
    invoke-static {p1, v3, v4}, Latr;->d(Latr;D)D

    .line 1125
    const-wide v5, 0x408f400000000000L

    mul-double/2addr v3, v5

    div-double v0, v3, v1

    double-to-long v0, v0

    invoke-static {p1, v0, v1}, Latr;->i(Latr;J)J

    .line 1126
    return-void
.end method


# virtual methods
.method public a()Latr;
    .locals 2

    .prologue
    .line 192
    iget-object v1, p0, Lato;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 193
    :try_start_0
    iget-object v0, p0, Lato;->l:Latr;

    .line 194
    monitor-exit v1

    .line 195
    return-object v0

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Latq;)V
    .locals 2
    .parameter

    .prologue
    .line 111
    iget-object v1, p0, Lato;->m:Ljava/util/List;

    monitor-enter v1

    .line 112
    :try_start_0
    iget-object v0, p0, Lato;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    monitor-exit v1

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 227
    iget-object v1, p0, Lato;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 228
    :try_start_0
    iget-boolean v0, p0, Lato;->o:Z

    if-eqz v0, :cond_0

    .line 229
    monitor-exit v1

    .line 243
    :goto_0
    return-void

    .line 230
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lato;->o:Z

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lato;->q:J

    .line 232
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    new-instance v0, Latp;

    invoke-direct {v0, p0}, Latp;-><init>(Lato;)V

    invoke-virtual {v0}, Latp;->start()V

    goto :goto_0

    .line 232
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(Latq;)V
    .locals 2
    .parameter

    .prologue
    .line 117
    iget-object v1, p0, Lato;->m:Ljava/util/List;

    monitor-enter v1

    .line 118
    :try_start_0
    iget-object v0, p0, Lato;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 119
    monitor-exit v1

    .line 120
    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 4

    .prologue
    .line 271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 272
    iget-wide v2, p0, Lato;->q:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lato;->b()V

    .line 275
    :cond_0
    return-void
.end method

.method public d()Z
    .locals 15

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 278
    .line 279
    const-wide/16 v1, 0x0

    .line 280
    invoke-static {}, Lazf;->j()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-boolean v3, Lazf;->b:Z

    if-eqz v3, :cond_1

    .line 324
    :cond_0
    :goto_0
    return v0

    .line 284
    :cond_1
    invoke-direct {p0}, Lato;->g()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v6

    .line 285
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 286
    if-eqz v6, :cond_0

    .line 289
    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl;->startIteratingHistoryLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 291
    new-instance v8, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v8}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    move v4, v5

    move-wide v13, v1

    move-wide v2, v13

    move v1, v0

    .line 292
    :cond_2
    :goto_1
    invoke-virtual {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 293
    iget-byte v9, v8, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    invoke-static {v9}, Lazf;->a(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 294
    if-eqz v4, :cond_3

    .line 296
    iget-wide v2, v8, Landroid/os/BatteryStats$HistoryItem;->time:J

    move v4, v0

    .line 298
    :cond_3
    iget-wide v9, v8, Landroid/os/BatteryStats$HistoryItem;->time:J

    mul-int/lit16 v11, v1, 0xe10

    mul-int/lit16 v11, v11, 0x3e8

    int-to-long v11, v11

    add-long/2addr v11, v2

    cmp-long v9, v9, v11

    if-ltz v9, :cond_2

    .line 301
    add-int/lit8 v1, v1, 0x1

    .line 302
    iget-byte v9, v8, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 306
    :cond_4
    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 307
    iget-object v2, p0, Lato;->a:Landroid/content/Context;

    invoke-static {v2}, Laio;->a(Landroid/content/Context;)Laio;

    move-result-object v3

    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move v2, v0

    .line 309
    :goto_2
    if-ge v2, v1, :cond_5

    .line 310
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v4, v1, v2

    add-int/lit8 v4, v4, -0x1

    mul-int/lit16 v4, v4, 0x3e8

    mul-int/lit16 v4, v4, 0xe10

    int-to-long v10, v4

    sub-long v10, v8, v10

    invoke-virtual {v3, v0, v10, v11}, Laio;->a(IJ)V

    .line 309
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_5
    move v0, v5

    .line 317
    goto :goto_0
.end method

.method public e()Latr;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 393
    new-instance v1, Latr;

    invoke-direct {v1}, Latr;-><init>()V

    .line 395
    invoke-direct {p0}, Lato;->g()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v2

    invoke-static {v1, v2}, Latr;->a(Latr;Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/BatteryStatsImpl;

    .line 396
    invoke-static {v1}, Latr;->a(Latr;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v2

    if-nez v2, :cond_0

    .line 415
    :goto_0
    return-object v0

    .line 401
    :cond_0
    invoke-direct {p0, v1}, Lato;->a(Latr;)V

    .line 404
    invoke-static {v1, v0}, Latr;->a(Latr;Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/BatteryStatsImpl;

    move-object v0, v1

    .line 415
    goto :goto_0
.end method
