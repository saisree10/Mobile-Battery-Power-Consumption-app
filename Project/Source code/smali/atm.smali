.class public Latm;
.super Ljava/lang/Object;
.source "PowerStatsSnapMgr.java"

# interfaces
.implements Ladc;


# static fields
.field private static v:Latm;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lato;

.field private c:Lasy;

.field private d:Z

.field private e:Z

.field private f:J

.field private g:I

.field private h:I

.field private i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:Lats;

.field private n:Lats;

.field private o:J

.field private p:Ljava/util/ArrayList;

.field private q:Ljava/util/HashSet;

.field private r:Lats;

.field private s:J

.field private t:Z

.field private volatile u:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v1, p0, Latm;->d:Z

    .line 44
    iput-boolean v1, p0, Latm;->e:Z

    .line 55
    new-instance v0, Lats;

    invoke-direct {v0}, Lats;-><init>()V

    iput-object v0, p0, Latm;->n:Lats;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Latm;->p:Ljava/util/ArrayList;

    .line 75
    iput-boolean v1, p0, Latm;->t:Z

    .line 76
    iput-boolean v1, p0, Latm;->u:Z

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Latm;->a:Landroid/content/Context;

    .line 93
    iget-object v0, p0, Latm;->a:Landroid/content/Context;

    invoke-static {v0}, Lato;->a(Landroid/content/Context;)Lato;

    move-result-object v0

    iput-object v0, p0, Latm;->b:Lato;

    .line 94
    iget-object v0, p0, Latm;->a:Landroid/content/Context;

    invoke-static {v0}, Lasy;->a(Landroid/content/Context;)Lasy;

    move-result-object v0

    iput-object v0, p0, Latm;->c:Lasy;

    .line 95
    invoke-direct {p0}, Latm;->d()V

    .line 96
    return-void
.end method

.method public static a(Landroid/content/Context;)Latm;
    .locals 2
    .parameter

    .prologue
    .line 81
    sget-object v0, Latm;->v:Latm;

    if-nez v0, :cond_1

    .line 82
    const-class v1, Latm;

    monitor-enter v1

    .line 83
    :try_start_0
    sget-object v0, Latm;->v:Latm;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Latm;

    invoke-direct {v0, p0}, Latm;-><init>(Landroid/content/Context;)V

    sput-object v0, Latm;->v:Latm;

    .line 86
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :cond_1
    sget-object v0, Latm;->v:Latm;

    return-object v0

    .line 86
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "snaps_stats_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(J)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 721
    iget-object v0, p0, Latm;->a:Landroid/content/Context;

    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    long-to-int v1, v1

    invoke-static {v0, v1}, Lazq;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lats;J)V
    .locals 17
    .parameter
    .parameter

    .prologue
    .line 204
    move-object/from16 v0, p0

    iget-wide v3, v0, Latm;->s:J

    sub-long v7, p2, v3

    .line 205
    invoke-direct/range {p0 .. p0}, Latm;->h()Ljava/util/HashSet;

    move-result-object v14

    .line 206
    move-object/from16 v0, p0

    iget-boolean v3, v0, Latm;->t:Z

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Latm;->d:Z

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Latm;->r:Lats;

    if-eqz v3, :cond_2

    const-wide/32 v3, 0x124f80

    cmp-long v3, v7, v3

    if-gez v3, :cond_2

    const-wide/32 v3, 0x493e0

    cmp-long v3, v7, v3

    if-lez v3, :cond_2

    .line 214
    invoke-virtual/range {p1 .. p1}, Lats;->b()Latl;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lats;

    .line 215
    move-object/from16 v0, p0

    iget-object v3, v0, Latm;->r:Lats;

    invoke-virtual {v11, v3}, Lats;->a(Lats;)V

    .line 216
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Lats;->a(Latd;)V

    .line 218
    const/4 v3, 0x0

    .line 219
    iget-object v4, v11, Lats;->g:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move v13, v3

    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Latl;

    .line 220
    if-eqz v13, :cond_5

    .line 251
    :cond_1
    invoke-virtual {v11}, Lats;->a()V

    .line 255
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Latm;->q:Ljava/util/HashSet;

    if-eqz v3, :cond_3

    .line 256
    move-object/from16 v0, p0

    iget-object v3, v0, Latm;->q:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 257
    :cond_3
    move-object/from16 v0, p0

    iput-object v14, v0, Latm;->q:Ljava/util/HashSet;

    .line 259
    move-object/from16 v0, p0

    iget-object v3, v0, Latm;->r:Lats;

    if-eqz v3, :cond_4

    .line 260
    move-object/from16 v0, p0

    iget-object v3, v0, Latm;->r:Lats;

    invoke-virtual {v3}, Lats;->a()V

    .line 261
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Latm;->r:Lats;

    .line 263
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Latm;->s:J

    .line 264
    move-object/from16 v0, p0

    iget-boolean v3, v0, Latm;->d:Z

    move-object/from16 v0, p0

    iput-boolean v3, v0, Latm;->t:Z

    .line 265
    return-void

    :cond_5
    move-object v12, v3

    .line 223
    check-cast v12, Latu;

    .line 229
    iget v3, v12, Latu;->a:I

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Latm;->q:Ljava/util/HashSet;

    iget v4, v12, Latu;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v12, Latu;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 237
    :cond_6
    iget-object v3, v12, Latu;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Latl;

    move-object v9, v3

    .line 238
    check-cast v9, Latx;

    .line 240
    iget-wide v3, v9, Latx;->b:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_7

    .line 241
    move-object/from16 v0, p0

    iget-object v3, v0, Latm;->c:Lasy;

    iget v4, v12, Latu;->a:I

    iget-object v5, v12, Latu;->b:Ljava/lang/String;

    iget v6, v9, Latx;->a:I

    iget-wide v9, v9, Latx;->b:J

    invoke-virtual/range {v3 .. v10}, Lasy;->a(ILjava/lang/String;IJJ)Z

    move-result v3

    if-nez v3, :cond_7

    .line 243
    const/4 v3, 0x1

    :goto_1
    move v13, v3

    .line 248
    goto/16 :goto_0

    :cond_8
    move v3, v13

    goto :goto_1
.end method

.method private a(Ljava/io/DataInputStream;)V
    .locals 10
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 547
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Latm;->g:I

    .line 548
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Latm;->h:I

    .line 549
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 550
    iget-object v0, p0, Latm;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v6, v7

    .line 558
    :goto_0
    if-ge v6, v8, :cond_0

    .line 559
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    .line 560
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    .line 561
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 562
    iget-object v9, p0, Latm;->p:Ljava/util/ArrayList;

    new-instance v0, Latn;

    invoke-direct/range {v0 .. v5}, Latn;-><init>(JJI)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 571
    :cond_0
    if-lez v8, :cond_1

    .line 572
    iget-object v0, p0, Latm;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latn;

    .line 573
    iget-object v1, p0, Latm;->p:Ljava/util/ArrayList;

    add-int/lit8 v2, v8, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Latn;

    .line 574
    iget-wide v2, v0, Latn;->a:J

    iput-wide v2, p0, Latm;->i:J

    .line 575
    iget-wide v2, v1, Latn;->a:J

    iput-wide v2, p0, Latm;->j:J

    .line 576
    iget-wide v2, v0, Latn;->b:J

    iput-wide v2, p0, Latm;->k:J

    .line 577
    iget-wide v0, v1, Latn;->b:J

    iput-wide v0, p0, Latm;->l:J

    .line 580
    iget-wide v0, p0, Latm;->j:J

    iput-wide v0, p0, Latm;->s:J

    .line 581
    new-instance v0, Lats;

    invoke-direct {v0}, Lats;-><init>()V

    iput-object v0, p0, Latm;->r:Lats;

    .line 582
    iget-object v0, p0, Latm;->p:Ljava/util/ArrayList;

    add-int/lit8 v1, v8, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latn;

    iget v0, v0, Latn;->c:I

    .line 583
    iget-object v1, p0, Latm;->r:Lats;

    iget-object v2, p0, Latm;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Latm;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lats;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 584
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Latm;->s:J

    .line 585
    iget-object v0, p0, Latm;->r:Lats;

    invoke-virtual {v0}, Lats;->a()V

    .line 586
    const/4 v0, 0x0

    iput-object v0, p0, Latm;->r:Lats;

    .line 591
    :cond_1
    :goto_1
    return-void

    .line 588
    :cond_2
    invoke-direct {p0}, Latm;->h()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Latm;->q:Ljava/util/HashSet;

    goto :goto_1
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 3
    .parameter

    .prologue
    .line 370
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 371
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latu;

    .line 372
    iget-object v0, v0, Latu;->b:Ljava/lang/String;

    .line 373
    const-string v2, "com.dianxinos.powermanager"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.dianxinos.dxbs.paid"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.dianxinos.dxbs"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_1
    move v1, v0

    .line 380
    goto :goto_0

    .line 378
    :cond_1
    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    .line 381
    :cond_2
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 522
    const/4 v1, 0x0

    .line 525
    :try_start_0
    iget-object v0, p0, Latm;->a:Landroid/content/Context;

    const-string v2, "snaps_config"

    invoke-virtual {v0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 526
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 528
    :try_start_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 529
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    .line 531
    const v2, -0xea2cba6

    if-eq v1, v2, :cond_1

    .line 533
    invoke-direct {p0}, Latm;->g()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 541
    :goto_0
    if-eqz v0, :cond_0

    .line 542
    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 544
    :cond_0
    :goto_1
    return-void

    .line 536
    :cond_1
    :try_start_3
    invoke-direct {p0, v0}, Latm;->a(Ljava/io/DataInputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 538
    :catch_0
    move-exception v1

    goto :goto_0

    .line 542
    :catch_1
    move-exception v0

    goto :goto_1

    .line 538
    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method private e()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 597
    const/4 v0, 0x0

    .line 600
    :try_start_0
    iget-object v1, p0, Latm;->a:Landroid/content/Context;

    const-string v3, "snaps_config"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 601
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    const v0, -0xea2cba6

    :try_start_1
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 604
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 606
    iget v0, p0, Latm;->g:I

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 607
    iget v0, p0, Latm;->h:I

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 608
    iget-object v0, p0, Latm;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 616
    :goto_0
    iget-object v0, p0, Latm;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 617
    iget-object v0, p0, Latm;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latn;

    .line 618
    iget-wide v3, v0, Latn;->a:J

    invoke-virtual {v1, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 619
    iget-wide v3, v0, Latn;->b:J

    invoke-virtual {v1, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 620
    iget v0, v0, Latn;->c:I

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 616
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 627
    :catch_0
    move-exception v1

    :goto_1
    move-object v1, v0

    .line 630
    :cond_0
    if-eqz v1, :cond_1

    .line 631
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 633
    :cond_1
    :goto_2
    return-void

    .line 631
    :catch_1
    move-exception v0

    goto :goto_2

    .line 627
    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method private f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "snaps_stats_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Latm;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 704
    iget-object v1, p0, Latm;->p:Ljava/util/ArrayList;

    monitor-enter v1

    .line 705
    :try_start_0
    iget v0, p0, Latm;->g:I

    :goto_0
    iget v2, p0, Latm;->h:I

    if-ge v0, v2, :cond_0

    .line 706
    iget-object v2, p0, Latm;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Latm;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 705
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 709
    :cond_0
    iget v0, p0, Latm;->h:I

    iput v0, p0, Latm;->g:I

    .line 710
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Latm;->i:J

    .line 711
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Latm;->j:J

    .line 712
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Latm;->k:J

    .line 713
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Latm;->l:J

    .line 714
    iget-object v0, p0, Latm;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 716
    invoke-direct {p0}, Latm;->e()V

    .line 717
    monitor-exit v1

    .line 718
    return-void

    .line 717
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private h()Ljava/util/HashSet;
    .locals 3

    .prologue
    .line 725
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 726
    iget-object v0, p0, Latm;->a:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 727
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 728
    if-nez v0, :cond_0

    move-object v0, v1

    .line 736
    :goto_0
    return-object v0

    .line 730
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 731
    if-eqz v0, :cond_1

    .line 734
    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 736
    goto :goto_0
.end method


# virtual methods
.method public a()J
    .locals 6

    .prologue
    const-wide/32 v2, 0x927c0

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 100
    iget-wide v4, p0, Latm;->j:J

    sub-long/2addr v0, v4

    .line 101
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    :cond_0
    move-wide v0, v2

    .line 104
    :cond_1
    sub-long v0, v2, v0

    return-wide v0
.end method

.method public a(ILjava/lang/String;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 410
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 498
    :goto_0
    return-void

    .line 424
    :cond_0
    const/4 v0, 0x0

    .line 425
    iget-object v1, p0, Latm;->m:Lats;

    iget-object v1, v1, Lats;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latl;

    .line 426
    check-cast v0, Latu;

    .line 427
    iget v3, v0, Latu;->a:I

    if-ne v3, p1, :cond_1

    move-object v6, v0

    .line 432
    :goto_1
    if-nez v6, :cond_2

    .line 433
    const-string v0, "PowerStatsSnapMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not found uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", proc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lazt;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 437
    :cond_2
    new-instance v7, Lats;

    invoke-direct {v7}, Lats;-><init>()V

    .line 438
    iget-object v8, p0, Latm;->p:Ljava/util/ArrayList;

    monitor-enter v8

    move v1, v4

    move v3, v4

    .line 441
    :goto_2
    :try_start_0
    iget-object v0, p0, Latm;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 442
    iget-object v0, p0, Latm;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latn;

    .line 443
    iget v0, v0, Latn;->c:I

    invoke-direct {p0, v0}, Latm;->a(I)Ljava/lang/String;

    move-result-object v9

    .line 448
    invoke-virtual {v7}, Lats;->a()V

    .line 449
    iget-object v0, p0, Latm;->a:Landroid/content/Context;

    invoke-virtual {v7, v0, v9}, Lats;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 450
    const-string v0, "PowerStatsSnapMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad data file: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "! remove it"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lazt;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Latm;->a:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 454
    iget-object v0, p0, Latm;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 456
    add-int/lit8 v0, v1, -0x1

    move v1, v2

    .line 441
    :goto_3
    add-int/lit8 v0, v0, 0x1

    move v3, v1

    move v1, v0

    goto :goto_2

    .line 460
    :cond_3
    iget-object v0, v7, Lats;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v5, v4

    .line 462
    :goto_4
    if-ge v5, v10, :cond_8

    .line 463
    iget-object v0, v7, Lats;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latu;

    .line 464
    iget v11, v0, Latu;->a:I

    if-ne v11, p1, :cond_5

    .line 474
    iget-object v11, v7, Lats;->g:Ljava/util/ArrayList;

    invoke-virtual {v11, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 475
    iget-object v11, p0, Latm;->a:Landroid/content/Context;

    invoke-virtual {v7, v11, v9}, Lats;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 476
    iget-object v11, v7, Lats;->g:Ljava/util/ArrayList;

    invoke-virtual {v11, v5, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    .line 480
    :goto_5
    if-nez v0, :cond_4

    .line 481
    iget-object v0, v7, Lats;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    iget-object v0, p0, Latm;->a:Landroid/content/Context;

    invoke-virtual {v7, v0, v9}, Lats;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 483
    iget-object v0, v7, Lats;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    move v0, v1

    move v1, v3

    goto :goto_3

    .line 462
    :cond_5
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_4

    .line 491
    :cond_6
    if-eqz v3, :cond_7

    .line 492
    invoke-direct {p0}, Latm;->e()V

    .line 494
    :cond_7
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    invoke-virtual {v7}, Lats;->a()V

    goto/16 :goto_0

    .line 494
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_8
    move v0, v4

    goto :goto_5

    :cond_9
    move-object v6, v0

    goto/16 :goto_1
.end method

.method public a(Ladd;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 669
    iget v0, p1, Ladd;->a:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    move v0, v1

    .line 670
    :goto_0
    iget-boolean v3, p0, Latm;->d:Z

    if-eqz v3, :cond_4

    .line 671
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Latm;->f:J

    sub-long/2addr v3, v5

    .line 672
    const-wide/32 v5, 0x927c0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 678
    invoke-direct {p0}, Latm;->g()V

    .line 679
    iput-boolean v1, p0, Latm;->e:Z

    .line 680
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Latm;->f:J

    .line 687
    :cond_0
    :goto_1
    if-nez v0, :cond_2

    .line 688
    iput-boolean v2, p0, Latm;->d:Z

    .line 689
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Latm;->f:J

    .line 690
    iget-boolean v0, p0, Latm;->e:Z

    if-nez v0, :cond_1

    iget v0, p0, Latm;->h:I

    iget v1, p0, Latm;->g:I

    if-ne v0, v1, :cond_2

    .line 694
    :cond_1
    invoke-virtual {p0, v2}, Latm;->a(Z)V

    .line 695
    iput-boolean v2, p0, Latm;->e:Z

    .line 698
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 669
    goto :goto_0

    .line 682
    :cond_4
    if-eqz v0, :cond_0

    .line 683
    iput-boolean v1, p0, Latm;->d:Z

    .line 684
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Latm;->f:J

    goto :goto_1
.end method

.method public a(Z)V
    .locals 10
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 115
    iget-boolean v1, p0, Latm;->u:Z

    if-eqz v1, :cond_0

    .line 192
    :goto_0
    return-void

    .line 124
    :cond_0
    iput-boolean v0, p0, Latm;->u:Z

    .line 126
    if-eqz p1, :cond_1

    :try_start_0
    iget-boolean v1, p0, Latm;->d:Z

    if-eqz v1, :cond_1

    iget v1, p0, Latm;->h:I

    iget v2, p0, Latm;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v1, v2, :cond_1

    .line 190
    iput-boolean v6, p0, Latm;->u:Z

    goto :goto_0

    .line 134
    :cond_1
    :try_start_1
    iget-object v1, p0, Latm;->b:Lato;

    invoke-virtual {v1}, Lato;->e()Latr;

    move-result-object v5

    .line 135
    if-nez v5, :cond_2

    .line 136
    const-string v0, "PowerStatsSnapMgr"

    const-string v1, "Failed to get stats snap. Cannot add new snap."

    invoke-static {v0, v1}, Lazt;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 190
    iput-boolean v6, p0, Latm;->u:Z

    goto :goto_0

    .line 140
    :cond_2
    :try_start_2
    iget-object v1, v5, Latr;->d:Latl;

    invoke-virtual {v1}, Latl;->a()V

    .line 144
    iget-wide v1, v5, Latr;->b:J

    iget-wide v3, p0, Latm;->l:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_5

    .line 146
    :goto_1
    if-eqz v0, :cond_3

    .line 148
    invoke-direct {p0}, Latm;->g()V

    .line 152
    :cond_3
    iget-wide v1, v5, Latr;->a:J

    .line 154
    iget-wide v3, v5, Latr;->b:J

    .line 155
    iget-object v0, v5, Latr;->c:Lats;

    .line 157
    iget-object v5, p0, Latm;->a:Landroid/content/Context;

    invoke-direct {p0}, Latm;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Lats;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 160
    invoke-direct {p0, v0, v1, v2}, Latm;->a(Lats;J)V

    .line 162
    iget-object v7, p0, Latm;->p:Ljava/util/ArrayList;

    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 163
    :try_start_3
    iget-object v8, p0, Latm;->p:Ljava/util/ArrayList;

    new-instance v0, Latn;

    iget v5, p0, Latm;->h:I

    invoke-direct/range {v0 .. v5}, Latn;-><init>(JJI)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    iget v0, p0, Latm;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Latm;->h:I

    .line 165
    iput-wide v1, p0, Latm;->j:J

    .line 166
    iput-wide v3, p0, Latm;->l:J

    .line 167
    iget-wide v0, p0, Latm;->i:J

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    if-nez v0, :cond_4

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Latm;->i:J

    .line 169
    iput-wide v3, p0, Latm;->k:J

    .line 174
    :cond_4
    :goto_2
    iget-wide v0, p0, Latm;->i:J

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    iget-wide v2, p0, Latm;->j:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_6

    iget-object v0, p0, Latm;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_6

    .line 175
    iget-object v0, p0, Latm;->p:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Latm;->a:Landroid/content/Context;

    iget v1, p0, Latm;->g:I

    invoke-direct {p0, v1}, Latm;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 178
    iget-object v0, p0, Latm;->p:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latn;

    .line 179
    iget-wide v1, v0, Latn;->a:J

    iput-wide v1, p0, Latm;->i:J

    .line 180
    iget v0, v0, Latn;->c:I

    iput v0, p0, Latm;->g:I

    goto :goto_2

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 190
    :catchall_1
    move-exception v0

    iput-boolean v6, p0, Latm;->u:Z

    throw v0

    :cond_5
    move v0, v6

    .line 144
    goto :goto_1

    .line 183
    :cond_6
    :try_start_5
    invoke-direct {p0}, Latm;->e()V

    .line 184
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 190
    iput-boolean v6, p0, Latm;->u:Z

    goto/16 :goto_0
.end method

.method public b()Lats;
    .locals 11

    .prologue
    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 273
    .line 276
    iget-object v8, p0, Latm;->p:Ljava/util/ArrayList;

    monitor-enter v8

    move v2, v7

    move-object v0, v6

    .line 280
    :goto_0
    :try_start_0
    iget-object v1, p0, Latm;->p:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 281
    iget-object v0, p0, Latm;->p:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latn;

    .line 282
    iget v1, v0, Latn;->c:I

    invoke-direct {p0, v1}, Latm;->a(I)Ljava/lang/String;

    move-result-object v5

    .line 283
    new-instance v1, Lats;

    invoke-direct {v1}, Lats;-><init>()V

    .line 284
    iget-object v9, p0, Latm;->a:Landroid/content/Context;

    invoke-virtual {v1, v9, v5}, Lats;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 285
    const-string v2, "PowerStatsSnapMgr"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad data file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "! remove it"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lazt;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v2, p0, Latm;->a:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 288
    invoke-virtual {v1}, Lats;->a()V

    .line 291
    iget-object v1, p0, Latm;->p:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 292
    const/4 v1, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    move-object v5, v6

    .line 298
    :goto_1
    if-eqz v2, :cond_1

    .line 299
    invoke-direct {p0}, Latm;->e()V

    .line 302
    :cond_1
    if-eqz v5, :cond_6

    .line 303
    iget-wide v1, v0, Latn;->a:J

    iput-wide v1, p0, Latm;->i:J

    .line 304
    iget v0, v0, Latn;->c:I

    iput v0, p0, Latm;->g:I

    .line 305
    iget-wide v0, p0, Latm;->i:J

    move-wide v1, v0

    .line 307
    :goto_2
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    if-nez v5, :cond_3

    .line 317
    iget-boolean v0, p0, Latm;->d:Z

    if-nez v0, :cond_2

    .line 318
    invoke-virtual {p0, v7}, Latm;->a(Z)V

    .line 320
    :cond_2
    iget-object v0, p0, Latm;->n:Lats;

    invoke-virtual {v0}, Lats;->a()V

    .line 321
    iput-wide v3, p0, Latm;->o:J

    .line 322
    iget-object v0, p0, Latm;->n:Lats;

    .line 366
    :goto_3
    return-object v0

    .line 307
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 325
    :cond_3
    iget-object v0, p0, Latm;->b:Lato;

    invoke-virtual {v0}, Lato;->e()Latr;

    move-result-object v3

    .line 326
    if-nez v3, :cond_4

    .line 327
    const-string v0, "PowerStatsSnapMgr"

    const-string v1, "Failed to get stats snap. Use the old one."

    invoke-static {v0, v1}, Lazt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Latm;->n:Lats;

    goto :goto_3

    .line 331
    :cond_4
    iget-object v0, v3, Latr;->d:Latl;

    invoke-virtual {v0}, Latl;->a()V

    .line 333
    iget-object v4, v3, Latr;->c:Lats;

    .line 335
    iget-object v0, p0, Latm;->m:Lats;

    if-eqz v0, :cond_5

    .line 336
    iget-object v0, p0, Latm;->m:Lats;

    invoke-virtual {v0}, Lats;->a()V

    .line 338
    :cond_5
    invoke-virtual {v4}, Lats;->b()Latl;

    move-result-object v0

    check-cast v0, Lats;

    iput-object v0, p0, Latm;->m:Lats;

    .line 340
    invoke-virtual {v4, v5}, Lats;->a(Lats;)V

    .line 346
    iget-wide v7, v3, Latr;->a:J

    sub-long v0, v7, v1

    .line 348
    const-string v2, "PowerStatsSnapMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Snap time gap: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v0, v1}, Latm;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-virtual {v4, v6}, Lats;->a(Latd;)V

    .line 354
    iget-object v2, v4, Lats;->g:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Latm;->a(Ljava/util/ArrayList;)V

    .line 357
    iget-object v2, p0, Latm;->a:Landroid/content/Context;

    invoke-virtual {v4, v2}, Lats;->a(Landroid/content/Context;)V

    .line 358
    iget-object v2, p0, Latm;->a:Landroid/content/Context;

    const/16 v3, 0x14

    const-wide v5, 0x3fb999999999999aL

    invoke-virtual {v4, v2, v3, v5, v6}, Lats;->a(Landroid/content/Context;ID)V

    .line 364
    iput-object v4, p0, Latm;->n:Lats;

    .line 365
    iput-wide v0, p0, Latm;->o:J

    .line 366
    iget-object v0, p0, Latm;->n:Lats;

    goto :goto_3

    :cond_6
    move-wide v1, v3

    goto/16 :goto_2

    :cond_7
    move-object v5, v1

    goto/16 :goto_1
.end method

.method public c()Lats;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Latm;->n:Lats;

    return-object v0
.end method
