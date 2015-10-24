.class public Lws;
.super Ljava/lang/Object;
.source "AppsStatsDataMgr.java"

# interfaces
.implements Lwj;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/database/sqlite/SQLiteDatabase;

.field private c:Ljava/lang/Object;

.field private d:Landroid/util/SparseArray;

.field private e:Ljava/util/HashMap;

.field private f:Ljava/util/HashSet;

.field private g:Ljava/lang/Object;

.field private h:Landroid/util/SparseArray;

.field private i:Landroid/util/SparseArray;

.field private j:Ljava/util/HashMap;

.field private k:Ljava/util/HashMap;

.field private l:Lxb;

.field private m:J

.field private n:J

.field private o:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lws;->c:Ljava/lang/Object;

    .line 250
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lws;->g:Ljava/lang/Object;

    .line 262
    invoke-static {}, Lwh;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lws;->a:Landroid/content/Context;

    .line 263
    new-instance v0, Lxh;

    iget-object v1, p0, Lws;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lxh;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lxh;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lws;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 265
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lws;->d:Landroid/util/SparseArray;

    .line 266
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lws;->e:Ljava/util/HashMap;

    .line 267
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lws;->f:Ljava/util/HashSet;

    .line 269
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lws;->h:Landroid/util/SparseArray;

    .line 270
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lws;->i:Landroid/util/SparseArray;

    .line 271
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lws;->j:Ljava/util/HashMap;

    .line 272
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lws;->k:Ljava/util/HashMap;

    .line 273
    new-instance v0, Lxb;

    invoke-direct {v0}, Lxb;-><init>()V

    iput-object v0, p0, Lws;->l:Lxb;

    .line 274
    return-void
.end method

.method synthetic constructor <init>(Lwt;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Lws;-><init>()V

    return-void
.end method

.method public static a()Lws;
    .locals 1

    .prologue
    .line 277
    sget-object v0, Lxa;->a:Lws;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1417
    return-void
.end method

.method private static a(Lwx;JZ)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 800
    iget-wide v0, p0, Lwx;->b:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 801
    iget-wide v0, p0, Lwx;->c:J

    iget-wide v2, p0, Lwx;->b:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lwx;->c:J

    .line 805
    :cond_0
    iput-wide p1, p0, Lwx;->b:J

    .line 807
    if-eqz p3, :cond_2

    .line 808
    iget-wide v0, p0, Lwx;->d:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 809
    iget-wide v0, p0, Lwx;->e:J

    iget-wide v2, p0, Lwx;->d:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lwx;->e:J

    .line 813
    :cond_1
    iput-wide p1, p0, Lwx;->d:J

    .line 815
    :cond_2
    return-void
.end method

.method private a(Lxn;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 609
    iget-object v0, p0, Lws;->h:Landroid/util/SparseArray;

    iget v1, p1, Lxn;->a:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwy;

    .line 610
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 611
    if-nez v0, :cond_0

    .line 612
    new-instance v0, Lwy;

    invoke-direct {v0}, Lwy;-><init>()V

    .line 613
    iget v3, p1, Lxn;->a:I

    iput v3, v0, Lwy;->a:I

    .line 614
    iget v3, p1, Lxn;->a:I

    invoke-virtual {p0, v3}, Lws;->a(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lwy;->b:Ljava/lang/String;

    .line 615
    iget-object v3, p0, Lws;->h:Landroid/util/SparseArray;

    iget v4, v0, Lwy;->a:I

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 617
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, v0, Lwy;->d:Lwz;

    .line 618
    :goto_0
    iget-wide v3, p1, Lxn;->b:J

    iput-wide v3, v0, Lwz;->d:J

    .line 619
    iget-wide v3, p1, Lxn;->c:J

    iput-wide v3, v0, Lwz;->e:J

    .line 620
    iput-wide v1, v0, Lwz;->f:J

    .line 621
    return-void

    .line 617
    :cond_1
    iget-object v0, v0, Lwy;->e:Lwz;

    goto :goto_0
.end method

.method private a(Lxq;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 678
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 679
    iget-object v0, p0, Lws;->i:Landroid/util/SparseArray;

    iget v3, p1, Lxq;->a:I

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwu;

    .line 680
    if-nez v0, :cond_0

    .line 681
    new-instance v0, Lwu;

    invoke-direct {v0}, Lwu;-><init>()V

    .line 682
    iget v3, p1, Lxq;->a:I

    iput v3, v0, Lwu;->a:I

    .line 683
    iget v3, v0, Lwu;->a:I

    invoke-virtual {p0, v3}, Lws;->a(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lwu;->b:Ljava/lang/String;

    .line 684
    iget-object v3, p0, Lws;->i:Landroid/util/SparseArray;

    iget v4, v0, Lwu;->a:I

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 685
    const-string v3, "Adding power snap..."

    invoke-static {v3}, Lws;->a(Ljava/lang/String;)V

    .line 687
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, v0, Lwu;->e:Lwv;

    .line 688
    :goto_0
    invoke-virtual {v0, p1}, Lwv;->a(Lxq;)V

    .line 689
    iput-wide v1, v0, Lwv;->a:J

    .line 690
    return-void

    .line 687
    :cond_1
    iget-object v0, v0, Lwu;->g:Lwv;

    goto :goto_0
.end method

.method private b(Lxn;Z)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const-wide/16 v10, 0x0

    const/4 v3, 0x0

    .line 634
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 635
    iget-object v0, p0, Lws;->h:Landroid/util/SparseArray;

    iget v1, p1, Lxn;->a:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwy;

    .line 636
    if-eqz v0, :cond_3

    const/4 v1, 0x1

    move v2, v1

    .line 637
    :goto_0
    if-nez v2, :cond_5

    .line 638
    new-instance v0, Lwy;

    invoke-direct {v0}, Lwy;-><init>()V

    .line 639
    iget v1, p1, Lxn;->a:I

    iput v1, v0, Lwy;->a:I

    .line 640
    iget v1, p1, Lxn;->a:I

    invoke-virtual {p0, v1}, Lws;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lwy;->b:Ljava/lang/String;

    .line 641
    iget-object v1, p0, Lws;->h:Landroid/util/SparseArray;

    iget v6, p1, Lxn;->a:I

    invoke-virtual {v1, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v0

    .line 644
    :goto_1
    if-eqz p2, :cond_4

    iget-object v0, v1, Lwy;->d:Lwz;

    .line 645
    :goto_2
    if-eqz v2, :cond_2

    iget-wide v6, v0, Lwz;->f:J

    cmp-long v2, v6, v10

    if-lez v2, :cond_2

    .line 646
    iget-wide v6, p1, Lxn;->b:J

    iget-wide v8, v0, Lwz;->d:J

    sub-long/2addr v6, v8

    .line 647
    cmp-long v2, v6, v10

    if-lez v2, :cond_0

    .line 648
    iget-wide v8, v0, Lwz;->a:J

    add-long/2addr v6, v8

    iput-wide v6, v0, Lwz;->a:J

    .line 649
    iput-boolean v3, v1, Lwy;->c:Z

    .line 651
    :cond_0
    iget-wide v6, p1, Lxn;->c:J

    iget-wide v8, v0, Lwz;->e:J

    sub-long/2addr v6, v8

    .line 652
    cmp-long v2, v6, v10

    if-lez v2, :cond_1

    .line 653
    iget-wide v8, v0, Lwz;->b:J

    add-long/2addr v6, v8

    iput-wide v6, v0, Lwz;->b:J

    .line 654
    iput-boolean v3, v1, Lwy;->c:Z

    .line 656
    :cond_1
    iget-wide v1, v0, Lwz;->c:J

    iget-wide v6, v0, Lwz;->f:J

    sub-long v6, v4, v6

    add-long/2addr v1, v6

    iput-wide v1, v0, Lwz;->c:J

    .line 658
    :cond_2
    iget-wide v1, p1, Lxn;->b:J

    iput-wide v1, v0, Lwz;->d:J

    .line 659
    iget-wide v1, p1, Lxn;->c:J

    iput-wide v1, v0, Lwz;->e:J

    .line 660
    iput-wide v4, v0, Lwz;->f:J

    .line 661
    return-void

    :cond_3
    move v2, v3

    .line 636
    goto :goto_0

    .line 644
    :cond_4
    iget-object v0, v1, Lwy;->e:Lwz;

    goto :goto_2

    :cond_5
    move-object v1, v0

    goto :goto_1
.end method

.method private b(Lxq;Z)V
    .locals 13
    .parameter
    .parameter

    .prologue
    const-wide/16 v11, 0x0

    const/4 v4, 0x0

    .line 704
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 705
    iget-object v0, p0, Lws;->i:Landroid/util/SparseArray;

    iget v1, p1, Lxq;->a:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwu;

    .line 706
    if-eqz v0, :cond_5

    const/4 v1, 0x1

    move v3, v1

    .line 707
    :goto_0
    if-nez v3, :cond_8

    .line 708
    new-instance v0, Lwu;

    invoke-direct {v0}, Lwu;-><init>()V

    .line 709
    iget v1, p1, Lxq;->a:I

    iput v1, v0, Lwu;->a:I

    .line 710
    iget v1, p1, Lxq;->a:I

    invoke-virtual {p0, v1}, Lws;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lwu;->b:Ljava/lang/String;

    .line 711
    iget-object v1, p0, Lws;->i:Landroid/util/SparseArray;

    iget v2, p1, Lxq;->a:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 712
    const-string v1, "Add power item..."

    invoke-static {v1}, Lws;->a(Ljava/lang/String;)V

    move-object v2, v0

    .line 715
    :goto_1
    if-eqz p2, :cond_6

    iget-object v0, v2, Lwu;->d:Lwv;

    move-object v1, v0

    .line 716
    :goto_2
    if-eqz p2, :cond_7

    iget-object v0, v2, Lwu;->e:Lwv;

    .line 717
    :goto_3
    if-eqz v3, :cond_3

    iget-wide v7, v0, Lwv;->a:J

    cmp-long v3, v7, v11

    if-lez v3, :cond_3

    .line 718
    iget-wide v7, p1, Lxq;->b:J

    iget-wide v9, v0, Lwv;->b:J

    sub-long/2addr v7, v9

    .line 719
    cmp-long v3, v7, v11

    if-lez v3, :cond_0

    .line 720
    iget-wide v9, v1, Lwv;->b:J

    add-long/2addr v7, v9

    iput-wide v7, v1, Lwv;->b:J

    .line 721
    iput-boolean v4, v2, Lwu;->c:Z

    .line 723
    :cond_0
    iget-wide v7, p1, Lxq;->c:J

    iget-wide v9, v0, Lwv;->c:J

    sub-long/2addr v7, v9

    .line 724
    cmp-long v3, v7, v11

    if-lez v3, :cond_1

    .line 725
    iget-wide v9, v1, Lwv;->c:J

    add-long/2addr v7, v9

    iput-wide v7, v1, Lwv;->c:J

    .line 726
    iput-boolean v4, v2, Lwu;->c:Z

    .line 728
    :cond_1
    iget v3, p1, Lxq;->d:I

    iget v7, v0, Lwv;->d:I

    sub-int/2addr v3, v7

    int-to-long v7, v3

    .line 729
    cmp-long v3, v7, v11

    if-lez v3, :cond_2

    .line 730
    iget v3, v1, Lwv;->d:I

    int-to-long v9, v3

    add-long/2addr v7, v9

    long-to-int v3, v7

    iput v3, v1, Lwv;->d:I

    .line 731
    iput-boolean v4, v2, Lwu;->c:Z

    .line 733
    :cond_2
    iget-wide v3, v1, Lwv;->e:J

    iget-wide v7, p1, Lxq;->e:J

    iget-wide v9, v0, Lwv;->e:J

    sub-long/2addr v7, v9

    add-long/2addr v3, v7

    iput-wide v3, v1, Lwv;->e:J

    .line 734
    iget-wide v3, v1, Lwv;->f:J

    iget-wide v7, p1, Lxq;->f:J

    iget-wide v9, v0, Lwv;->f:J

    sub-long/2addr v7, v9

    add-long/2addr v3, v7

    iput-wide v3, v1, Lwv;->f:J

    .line 735
    iget-wide v3, v1, Lwv;->g:J

    iget-wide v7, p1, Lxq;->g:J

    iget-wide v9, v0, Lwv;->g:J

    sub-long/2addr v7, v9

    add-long/2addr v3, v7

    iput-wide v3, v1, Lwv;->g:J

    .line 736
    iget-wide v3, v1, Lwv;->h:J

    iget-wide v7, p1, Lxq;->h:J

    iget-wide v9, v0, Lwv;->h:J

    sub-long/2addr v7, v9

    add-long/2addr v3, v7

    iput-wide v3, v1, Lwv;->h:J

    .line 737
    iget-wide v3, v1, Lwv;->a:J

    iget-wide v7, v0, Lwv;->a:J

    sub-long v7, v5, v7

    add-long/2addr v3, v7

    iput-wide v3, v1, Lwv;->a:J

    .line 739
    :cond_3
    iget-boolean v1, v2, Lwu;->c:Z

    if-nez v1, :cond_4

    .line 740
    const-string v1, "Power item updated."

    invoke-static {v1}, Lws;->a(Ljava/lang/String;)V

    .line 742
    :cond_4
    invoke-virtual {v0, p1}, Lwv;->a(Lxq;)V

    .line 743
    iput-wide v5, v0, Lwv;->a:J

    .line 744
    return-void

    :cond_5
    move v3, v4

    .line 706
    goto/16 :goto_0

    .line 715
    :cond_6
    iget-object v0, v2, Lwu;->f:Lwv;

    move-object v1, v0

    goto/16 :goto_2

    .line 716
    :cond_7
    iget-object v0, v2, Lwu;->g:Lwv;

    goto/16 :goto_3

    :cond_8
    move-object v2, v0

    goto/16 :goto_1
.end method

.method private c(Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 824
    iget-object v0, p0, Lws;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwx;

    .line 825
    if-nez v0, :cond_0

    .line 834
    :goto_0
    return-void

    .line 832
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 833
    invoke-static {v0, v1, v2, p2}, Lws;->a(Lwx;JZ)V

    goto :goto_0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 331
    new-instance v0, Lxg;

    iget-object v1, p0, Lws;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lxg;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 332
    iget-object v1, p0, Lws;->j:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lxg;->a(Ljava/util/HashMap;)V

    .line 335
    invoke-static {}, Lxm;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    new-instance v0, Lxj;

    iget-object v1, p0, Lws;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lxj;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v1, p0, Lws;->h:Landroid/util/SparseArray;

    iget-wide v2, p0, Lws;->m:J

    invoke-virtual {v0, v1, v2, v3}, Lxj;->a(Landroid/util/SparseArray;J)V

    .line 339
    invoke-static {}, Lxm;->b()Ljava/util/List;

    move-result-object v0

    .line 340
    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {p0, v0}, Lws;->a(Ljava/util/List;)V

    .line 346
    :cond_0
    new-instance v0, Lxd;

    iget-object v1, p0, Lws;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lxd;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v1, p0, Lws;->i:Landroid/util/SparseArray;

    iget-wide v2, p0, Lws;->n:J

    invoke-virtual {v0, v1, v2, v3}, Lxd;->a(Landroid/util/SparseArray;J)V

    .line 348
    iget-object v0, p0, Lws;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lxo;->a(Landroid/content/Context;Ljava/util/HashSet;)Lxp;

    move-result-object v0

    .line 349
    if-eqz v0, :cond_1

    .line 350
    invoke-virtual {p0, v0}, Lws;->a(Lxp;)V

    .line 354
    :cond_1
    new-instance v0, Lxe;

    iget-object v1, p0, Lws;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lxe;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v1, p0, Lws;->k:Ljava/util/HashMap;

    iget-wide v2, p0, Lws;->n:J

    invoke-virtual {v0, v1, v2, v3}, Lxe;->a(Ljava/util/HashMap;J)V

    .line 357
    new-instance v0, Lxk;

    iget-object v1, p0, Lws;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lxk;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v1, p0, Lws;->l:Lxb;

    iget-wide v2, p0, Lws;->o:J

    invoke-virtual {v0, v1, v2, v3}, Lxk;->a(Lxb;J)V

    .line 358
    return-void
.end method

.method private d(Ljava/lang/String;Z)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const-wide/16 v7, 0x0

    .line 843
    iget-object v0, p0, Lws;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwx;

    .line 844
    if-nez v0, :cond_0

    .line 863
    :goto_0
    return-void

    .line 852
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 853
    if-eqz p2, :cond_1

    .line 854
    iput-wide v1, v0, Lwx;->d:J

    goto :goto_0

    .line 856
    :cond_1
    iget-wide v3, v0, Lwx;->d:J

    cmp-long v3, v3, v7

    if-lez v3, :cond_2

    .line 857
    iget-wide v3, v0, Lwx;->e:J

    iget-wide v5, v0, Lwx;->d:J

    sub-long/2addr v1, v5

    add-long/2addr v1, v3

    iput-wide v1, v0, Lwx;->e:J

    .line 861
    :cond_2
    iput-wide v7, v0, Lwx;->d:J

    goto :goto_0
.end method

.method private e()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 422
    invoke-static {}, Lxc;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    new-instance v2, Lxg;

    iget-object v0, p0, Lws;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v2, v0}, Lxg;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 424
    iget-object v0, p0, Lws;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwx;

    .line 425
    invoke-virtual {v2, v0}, Lxg;->a(Lwx;)V

    goto :goto_0

    .line 430
    :cond_0
    invoke-static {}, Lxc;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 431
    new-instance v3, Lxj;

    iget-object v0, p0, Lws;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v3, v0}, Lxj;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 432
    iget-object v0, p0, Lws;->h:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v2, v1

    .line 433
    :goto_1
    if-ge v2, v4, :cond_2

    .line 434
    iget-object v0, p0, Lws;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwy;

    .line 435
    iget-boolean v5, v0, Lwy;->c:Z

    if-nez v5, :cond_1

    .line 437
    iget-wide v5, p0, Lws;->m:J

    invoke-virtual {v3, v0, v5, v6}, Lxj;->a(Lwy;J)Z

    move-result v5

    iput-boolean v5, v0, Lwy;->c:Z

    .line 433
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 443
    :cond_2
    invoke-static {}, Lxc;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 444
    new-instance v2, Lxd;

    iget-object v0, p0, Lws;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v2, v0}, Lxd;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 445
    iget-object v0, p0, Lws;->i:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 446
    :goto_2
    if-ge v1, v3, :cond_4

    .line 447
    iget-object v0, p0, Lws;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwu;

    .line 448
    iget-boolean v4, v0, Lwu;->c:Z

    if-nez v4, :cond_3

    .line 450
    iget-wide v4, p0, Lws;->n:J

    invoke-virtual {v2, v0, v4, v5}, Lxd;->a(Lwu;J)Z

    move-result v4

    iput-boolean v4, v0, Lwu;->c:Z

    .line 446
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 452
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignore power item sync cause it is saved. @"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Lwu;->b:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lws;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 458
    :cond_4
    invoke-static {}, Lxc;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lws;->l:Lxb;

    invoke-virtual {v0}, Lxb;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 459
    new-instance v0, Lxk;

    iget-object v1, p0, Lws;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lxk;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 460
    iget-object v1, p0, Lws;->l:Lxb;

    invoke-virtual {v0, v1}, Lxk;->a(Lxb;)V

    .line 464
    :cond_5
    invoke-static {}, Lxc;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 465
    new-instance v1, Lxe;

    iget-object v0, p0, Lws;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v1, v0}, Lxe;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 466
    iget-object v0, p0, Lws;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lww;

    .line 467
    iget-boolean v3, v0, Lww;->d:Z

    if-nez v3, :cond_6

    .line 468
    iget-wide v3, p0, Lws;->n:J

    invoke-virtual {v1, v0, v3, v4}, Lxe;->a(Lww;J)V

    .line 469
    const/4 v3, 0x1

    iput-boolean v3, v0, Lww;->d:Z

    goto :goto_4

    .line 475
    :cond_7
    return-void
.end method

.method private f()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 478
    iget-object v0, p0, Lws;->h:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 479
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 480
    iget-object v0, p0, Lws;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwy;

    .line 481
    iget-object v3, v0, Lwy;->d:Lwz;

    iput-wide v4, v3, Lwz;->a:J

    .line 482
    iget-object v3, v0, Lwy;->d:Lwz;

    iput-wide v4, v3, Lwz;->b:J

    .line 483
    iget-object v3, v0, Lwy;->d:Lwz;

    iput-wide v4, v3, Lwz;->c:J

    .line 484
    iget-object v3, v0, Lwy;->e:Lwz;

    iput-wide v4, v3, Lwz;->a:J

    .line 485
    iget-object v3, v0, Lwy;->e:Lwz;

    iput-wide v4, v3, Lwz;->b:J

    .line 486
    iget-object v0, v0, Lwy;->e:Lwz;

    iput-wide v4, v0, Lwz;->c:J

    .line 479
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 488
    :cond_0
    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    .line 491
    iget-object v0, p0, Lws;->i:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 492
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 493
    iget-object v0, p0, Lws;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwu;

    .line 494
    iget-object v3, v0, Lwu;->d:Lwv;

    invoke-virtual {v3}, Lwv;->a()V

    .line 495
    iget-object v0, v0, Lwu;->f:Lwv;

    invoke-virtual {v0}, Lwv;->a()V

    .line 492
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 497
    :cond_0
    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 500
    iget-object v0, p0, Lws;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lww;

    .line 501
    iget-object v2, v0, Lww;->b:Lxl;

    invoke-virtual {v2, v3}, Lxl;->a(I)V

    .line 502
    iget-object v0, v0, Lww;->c:Lxl;

    invoke-virtual {v0, v3}, Lxl;->a(I)V

    goto :goto_0

    .line 504
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 591
    const/4 v1, 0x0

    .line 592
    iget-object v2, p0, Lws;->c:Ljava/lang/Object;

    monitor-enter v2

    .line 593
    :try_start_0
    iget-object v0, p0, Lws;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 594
    if-eqz v0, :cond_0

    .line 595
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 597
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    invoke-static {v0}, Lxi;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 597
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public a(J)Lorg/json/JSONObject;
    .locals 24
    .parameter

    .prologue
    .line 1195
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1196
    new-instance v3, Lxj;

    move-object/from16 v0, p0

    iget-object v4, v0, Lws;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v3, v4}, Lxj;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    move-wide/from16 v0, p1

    invoke-virtual {v3, v2, v0, v1}, Lxj;->a(Ljava/util/HashSet;J)Landroid/util/SparseArray;

    move-result-object v5

    .line 1197
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v6

    .line 1198
    const/4 v2, 0x3

    if-ge v6, v2, :cond_0

    .line 1200
    const/4 v2, 0x0

    .line 1229
    :goto_0
    return-object v2

    .line 1202
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1203
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 1204
    const/4 v2, 0x0

    move v4, v2

    :goto_1
    if-ge v4, v7, :cond_1

    .line 1205
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwy;

    .line 1206
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 1207
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 1208
    iget-object v10, v2, Lwy;->d:Lwz;

    iget-wide v10, v10, Lwz;->a:J

    .line 1209
    iget-object v12, v2, Lwy;->d:Lwz;

    iget-wide v12, v12, Lwz;->b:J

    .line 1210
    iget-object v14, v2, Lwy;->d:Lwz;

    iget-wide v14, v14, Lwz;->c:J

    .line 1211
    iget-object v0, v2, Lwy;->e:Lwz;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lwz;->a:J

    move-wide/from16 v16, v0

    iget-object v0, v2, Lwy;->d:Lwz;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lwz;->a:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    .line 1212
    iget-object v0, v2, Lwy;->e:Lwz;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lwz;->b:J

    move-wide/from16 v18, v0

    iget-object v0, v2, Lwy;->d:Lwz;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lwz;->b:J

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    .line 1213
    iget-object v0, v2, Lwy;->e:Lwz;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lwz;->c:J

    move-wide/from16 v20, v0

    iget-object v0, v2, Lwy;->d:Lwz;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lwz;->c:J

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    .line 1215
    :try_start_0
    const-string v22, "fr"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1216
    const-string v10, "fs"

    invoke-virtual {v8, v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1217
    const-string v10, "ftu"

    invoke-virtual {v8, v10, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1218
    const-string v10, "br"

    move-wide/from16 v0, v16

    invoke-virtual {v8, v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1219
    const-string v10, "bs"

    move-wide/from16 v0, v18

    invoke-virtual {v8, v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1220
    const-string v10, "btu"

    move-wide/from16 v0, v20

    invoke-virtual {v8, v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1221
    const-string v10, "cnt"

    invoke-virtual {v8, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1222
    const-string v10, "re_ct"

    invoke-virtual {v9, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1223
    iget-object v2, v2, Lwy;->b:Ljava/lang/String;

    invoke-virtual {v3, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1204
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_1

    .line 1224
    :catch_0
    move-exception v2

    .line 1225
    const-string v8, "AppsStatsDataMgr"

    const-string v9, "AppsTraffic JSONException: "

    invoke-static {v8, v9, v2}, Lzs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    move-object v2, v3

    .line 1229
    goto/16 :goto_0
.end method

.method public a(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 761
    iget-object v1, p0, Lws;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 762
    :try_start_0
    iget-object v0, p0, Lws;->l:Lxb;

    iget-object v0, v0, Lxb;->b:Lxl;

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v2}, Lxl;->a(II)V

    .line 763
    iget-object v0, p0, Lws;->l:Lxb;

    iget-object v0, v0, Lxb;->c:Lxl;

    const/4 v2, -0x1

    invoke-virtual {v0, p2, v2}, Lxl;->a(II)V

    .line 764
    monitor-exit v1

    .line 765
    return-void

    .line 764
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 509
    iget-object v1, p0, Lws;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 510
    :try_start_0
    iget-object v0, p0, Lws;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 511
    if-nez v0, :cond_0

    .line 512
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 513
    iget-object v2, p0, Lws;->d:Landroid/util/SparseArray;

    invoke-virtual {v2, p3, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 515
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 516
    iget-object v0, p0, Lws;->e:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    monitor-exit v1

    .line 518
    return-void

    .line 517
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 866
    iget-object v0, p0, Lws;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lww;

    .line 867
    if-nez v0, :cond_0

    .line 868
    new-instance v0, Lww;

    invoke-direct {v0}, Lww;-><init>()V

    .line 869
    iput-object p1, v0, Lww;->a:Ljava/lang/String;

    .line 870
    iget-object v1, p0, Lws;->k:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    :cond_0
    iget-object v1, v0, Lww;->b:Lxl;

    const/4 v2, -0x1

    invoke-virtual {v1, p2, v2}, Lxl;->a(II)V

    .line 873
    const/4 v1, 0x0

    iput-boolean v1, v0, Lww;->d:Z

    .line 874
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    .line 769
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 772
    if-eqz p1, :cond_0

    .line 773
    iget-object v0, p0, Lws;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwx;

    .line 774
    if-eqz v0, :cond_0

    iget-wide v5, v0, Lwx;->b:J

    cmp-long v5, v5, v3

    if-lez v5, :cond_0

    .line 775
    invoke-static {v0, v1, v2, p3}, Lws;->a(Lwx;JZ)V

    .line 776
    iput-wide v3, v0, Lwx;->b:J

    .line 777
    iput-wide v3, v0, Lwx;->d:J

    .line 784
    :cond_0
    if-eqz p2, :cond_2

    .line 785
    iget-object v0, p0, Lws;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwx;

    .line 786
    if-nez v0, :cond_1

    .line 787
    new-instance v0, Lwx;

    invoke-direct {v0}, Lwx;-><init>()V

    .line 788
    iput-object p2, v0, Lwx;->a:Ljava/lang/String;

    .line 789
    iget-object v5, p0, Lws;->j:Ljava/util/HashMap;

    invoke-virtual {v5, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    :cond_1
    iput-wide v1, v0, Lwx;->b:J

    .line 792
    if-eqz p3, :cond_3

    :goto_0
    iput-wide v1, v0, Lwx;->d:J

    .line 793
    iget v1, v0, Lwx;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lwx;->f:I

    .line 794
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lwx;->g:J

    .line 796
    :cond_2
    return-void

    :cond_3
    move-wide v1, v3

    .line 792
    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 818
    iget-object v1, p0, Lws;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 819
    :try_start_0
    invoke-direct {p0, p1, p2}, Lws;->c(Ljava/lang/String;Z)V

    .line 820
    monitor-exit v1

    .line 821
    return-void

    .line 820
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .parameter

    .prologue
    .line 628
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxn;

    .line 629
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lws;->a(Lxn;Z)V

    goto :goto_0

    .line 631
    :cond_0
    return-void
.end method

.method public a(Lxn;)V
    .locals 1
    .parameter

    .prologue
    .line 624
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lws;->a(Lxn;Z)V

    .line 625
    return-void
.end method

.method public a(Lxp;)V
    .locals 3
    .parameter

    .prologue
    .line 698
    iget-object v0, p1, Lxp;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxq;

    .line 699
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lws;->a(Lxq;Z)V

    goto :goto_0

    .line 701
    :cond_0
    return-void
.end method

.method public a(Lxq;)V
    .locals 1
    .parameter

    .prologue
    .line 693
    const-string v0, "updatePowerFgSnapshotLocked"

    invoke-static {v0}, Lws;->a(Ljava/lang/String;)V

    .line 694
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lws;->a(Lxq;Z)V

    .line 695
    return-void
.end method

.method public a(Lxx;)V
    .locals 2
    .parameter

    .prologue
    .line 310
    iget-object v1, p0, Lws;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 311
    :try_start_0
    invoke-interface {p1}, Lxx;->a()V

    .line 312
    monitor-exit v1

    .line 313
    return-void

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(J)Lorg/json/JSONObject;
    .locals 16
    .parameter

    .prologue
    .line 1233
    new-instance v2, Lxf;

    move-object/from16 v0, p0

    iget-object v3, v0, Lws;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v2, v3}, Lxf;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1234
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1235
    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Lxf;->a(J)Ljava/util/HashMap;

    move-result-object v5

    .line 1236
    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Lxf;->b(J)Ljava/util/HashMap;

    move-result-object v6

    .line 1237
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1238
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1239
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 1240
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 1241
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lwx;

    .line 1242
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwx;

    .line 1243
    iget-wide v10, v3, Lwx;->c:J

    iget-wide v12, v2, Lwx;->c:J

    sub-long/2addr v10, v12

    .line 1244
    iget-wide v12, v3, Lwx;->e:J

    iget-wide v14, v2, Lwx;->e:J

    sub-long/2addr v12, v14

    .line 1245
    iget v14, v3, Lwx;->f:I

    iget v2, v2, Lwx;->f:I

    sub-int v2, v14, v2

    .line 1246
    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-nez v14, :cond_1

    const-wide/16 v14, 0x0

    cmp-long v14, v12, v14

    if-nez v14, :cond_1

    if-eqz v2, :cond_0

    .line 1250
    :cond_1
    :try_start_0
    const-string v14, "ft"

    invoke-virtual {v8, v14, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1251
    const-string v10, "st"

    invoke-virtual {v8, v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1252
    const-string v10, "sc"

    invoke-virtual {v8, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1253
    const-string v2, "re_cs"

    invoke-virtual {v9, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1254
    iget-object v2, v3, Lwx;->a:Ljava/lang/String;

    invoke-virtual {v4, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1255
    :catch_0
    move-exception v2

    .line 1256
    const-string v3, "AppsStatsDataMgr"

    const-string v8, "AppsStartup JSONException: "

    invoke-static {v3, v8, v2}, Lzs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1261
    :cond_2
    return-object v4
.end method

.method public b()V
    .locals 6

    .prologue
    .line 282
    invoke-static {}, Lacq;->c()Ljava/util/ArrayList;

    move-result-object v0

    .line 283
    iget-object v2, p0, Lws;->c:Ljava/lang/Object;

    monitor-enter v2

    .line 284
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacn;

    .line 285
    iget-object v1, p0, Lws;->d:Landroid/util/SparseArray;

    iget v4, v0, Lacn;->b:I

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 286
    if-nez v1, :cond_1

    .line 287
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 288
    iget-object v4, p0, Lws;->d:Landroid/util/SparseArray;

    iget v5, v0, Lacn;->b:I

    invoke-virtual {v4, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 290
    :cond_1
    iget-object v4, v0, Lacn;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v1, p0, Lws;->e:Ljava/util/HashMap;

    iget-object v4, v0, Lacn;->a:Ljava/lang/String;

    iget v5, v0, Lacn;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-boolean v1, v0, Lacn;->c:Z

    if-eqz v1, :cond_0

    .line 293
    iget-object v1, p0, Lws;->f:Ljava/util/HashSet;

    iget v0, v0, Lacn;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    invoke-static {p0}, Lwi;->a(Lwj;)V

    .line 299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 300
    invoke-static {v0, v1}, Lxi;->e(J)J

    move-result-wide v2

    iput-wide v2, p0, Lws;->m:J

    .line 301
    invoke-static {v0, v1}, Lxi;->f(J)J

    move-result-wide v2

    iput-wide v2, p0, Lws;->n:J

    .line 302
    invoke-static {v0, v1}, Lxi;->g(J)J

    move-result-wide v0

    iput-wide v0, p0, Lws;->o:J

    .line 304
    iget-object v1, p0, Lws;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 305
    :try_start_2
    invoke-direct {p0}, Lws;->d()V

    .line 306
    monitor-exit v1

    .line 307
    return-void

    .line 306
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 523
    const/4 v2, 0x1

    .line 524
    const/4 v1, 0x0

    .line 525
    iget-object v3, p0, Lws;->c:Ljava/lang/Object;

    monitor-enter v3

    .line 526
    :try_start_0
    iget-object v0, p0, Lws;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 527
    if-eqz v0, :cond_3

    .line 528
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 529
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 530
    const/4 v1, 0x0

    .line 531
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Lxi;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    .line 535
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    iget-object v2, p0, Lws;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 539
    :try_start_1
    new-instance v3, Lxe;

    iget-object v4, p0, Lws;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v3, v4}, Lxe;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v3, p2}, Lxe;->a(Ljava/lang/String;)V

    .line 540
    iget-object v3, p0, Lws;->k:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    new-instance v3, Lxg;

    iget-object v4, p0, Lws;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v3, v4}, Lxg;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v3, p2}, Lxg;->a(Ljava/lang/String;)V

    .line 543
    new-instance v3, Lxf;

    iget-object v4, p0, Lws;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v3, v4}, Lxf;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v3, p2}, Lxf;->a(Ljava/lang/String;)V

    .line 544
    iget-object v3, p0, Lws;->j:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    if-eqz v0, :cond_1

    .line 547
    new-instance v0, Lxj;

    iget-object v1, p0, Lws;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lxj;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v0, p3}, Lxj;->a(I)V

    .line 548
    iget-object v0, p0, Lws;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->remove(I)V

    .line 550
    new-instance v0, Lxd;

    iget-object v1, p0, Lws;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lxd;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v0, p3}, Lxd;->a(I)V

    .line 551
    iget-object v0, p0, Lws;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->remove(I)V

    .line 566
    :cond_0
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 567
    return-void

    .line 535
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 554
    :cond_1
    :try_start_3
    new-instance v0, Lxj;

    iget-object v3, p0, Lws;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v3}, Lxj;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v0, p3, v1}, Lxj;->a(ILjava/lang/String;)V

    .line 555
    iget-object v0, p0, Lws;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwy;

    .line 556
    if-eqz v0, :cond_2

    .line 557
    iput-object v1, v0, Lwy;->b:Ljava/lang/String;

    .line 560
    :cond_2
    new-instance v0, Lxd;

    iget-object v3, p0, Lws;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v3}, Lxd;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v0, p3, v1}, Lxd;->a(ILjava/lang/String;)V

    .line 561
    iget-object v0, p0, Lws;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwu;

    .line 562
    if-eqz v0, :cond_0

    .line 563
    iput-object v1, v0, Lwu;->b:Ljava/lang/String;

    goto :goto_1

    .line 566
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_3
    move v0, v2

    goto/16 :goto_0
.end method

.method public b(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 877
    iget-object v0, p0, Lws;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lww;

    .line 878
    if-nez v0, :cond_0

    .line 879
    new-instance v0, Lww;

    invoke-direct {v0}, Lww;-><init>()V

    .line 880
    iput-object p1, v0, Lww;->a:Ljava/lang/String;

    .line 881
    iget-object v1, p0, Lws;->k:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    :cond_0
    iget-object v1, v0, Lww;->c:Lxl;

    const/4 v2, -0x1

    invoke-virtual {v1, p2, v2}, Lxl;->a(II)V

    .line 884
    const/4 v1, 0x0

    iput-boolean v1, v0, Lww;->d:Z

    .line 885
    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 837
    iget-object v1, p0, Lws;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 838
    :try_start_0
    invoke-direct {p0, p1, p2}, Lws;->d(Ljava/lang/String;Z)V

    .line 839
    monitor-exit v1

    .line 840
    return-void

    .line 839
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/util/List;)V
    .locals 3
    .parameter

    .prologue
    .line 672
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxn;

    .line 673
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lws;->b(Lxn;Z)V

    goto :goto_0

    .line 675
    :cond_0
    return-void
.end method

.method public b(Lxn;)V
    .locals 1
    .parameter

    .prologue
    .line 664
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lws;->b(Lxn;Z)V

    .line 665
    return-void
.end method

.method public b(Lxp;)V
    .locals 3
    .parameter

    .prologue
    .line 755
    iget-object v0, p1, Lxp;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxq;

    .line 756
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lws;->b(Lxq;Z)V

    goto :goto_0

    .line 758
    :cond_0
    return-void
.end method

.method public b(Lxq;)V
    .locals 1
    .parameter

    .prologue
    .line 747
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lws;->b(Lxq;Z)V

    .line 748
    return-void
.end method

.method public b(I)Z
    .locals 3
    .parameter

    .prologue
    .line 602
    const/16 v0, 0x2710

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    .line 604
    :goto_0
    return v0

    .line 603
    :cond_0
    iget-object v1, p0, Lws;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 604
    :try_start_0
    iget-object v0, p0, Lws;->f:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 605
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(J)Lorg/json/JSONObject;
    .locals 11
    .parameter

    .prologue
    .line 1265
    new-instance v0, Lxe;

    iget-object v1, p0, Lws;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lxe;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1266
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1267
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1268
    invoke-virtual {v0, p1, p2}, Lxe;->a(J)Ljava/util/List;

    move-result-object v0

    .line 1269
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lww;

    .line 1270
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1271
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1272
    iget-object v6, v0, Lww;->b:Lxl;

    iget v6, v6, Lxl;->c:I

    .line 1273
    iget-object v7, v0, Lww;->b:Lxl;

    iget v7, v7, Lxl;->d:I

    .line 1274
    iget-object v8, v0, Lww;->c:Lxl;

    iget v8, v8, Lxl;->c:I

    .line 1275
    iget-object v9, v0, Lww;->c:Lxl;

    iget v9, v9, Lxl;->d:I

    .line 1277
    if-lez v7, :cond_1

    .line 1278
    :try_start_0
    const-string v10, "fa"

    invoke-virtual {v4, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1279
    const-string v6, "fc"

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1281
    :cond_1
    if-lez v9, :cond_2

    .line 1282
    const-string v6, "ba"

    invoke-virtual {v4, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1283
    const-string v6, "bc"

    invoke-virtual {v4, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1285
    :cond_2
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 1288
    const-string v6, "re_cr"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1289
    iget-object v0, v0, Lww;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1290
    :catch_0
    move-exception v0

    .line 1291
    const-string v4, "AppsStatsDataMgr"

    const-string v5, "AppsRamData JSONException: "

    invoke-static {v4, v5, v0}, Lzs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1294
    :cond_3
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 1295
    const/4 v0, 0x0

    .line 1305
    :goto_1
    return-object v0

    .line 1299
    :cond_4
    :try_start_1
    const-string v0, "sys_heapsize"

    const-string v3, "dalvik.vm.heapsize"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lgn;->a(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1300
    const-string v0, "api_level"

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1301
    const-string v0, "total"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move-object v0, v1

    .line 1305
    goto :goto_1

    .line 1302
    :catch_1
    move-exception v0

    .line 1303
    const-string v2, "AppsStatsDataMgr"

    const-string v3, "AppsRamData JSONException: "

    invoke-static {v2, v3, v0}, Lzs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public c()V
    .locals 14

    .prologue
    .line 361
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 362
    invoke-static {v1, v2}, Lxi;->e(J)J

    move-result-wide v3

    .line 363
    invoke-static {v1, v2}, Lxi;->f(J)J

    move-result-wide v5

    .line 364
    invoke-static {v1, v2}, Lxi;->g(J)J

    move-result-wide v7

    .line 366
    iget-object v9, p0, Lws;->g:Ljava/lang/Object;

    monitor-enter v9

    .line 367
    :try_start_0
    invoke-direct {p0}, Lws;->e()V

    .line 369
    iget-wide v10, p0, Lws;->m:J

    cmp-long v0, v3, v10

    if-eqz v0, :cond_3

    .line 371
    invoke-static {}, Lxc;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    invoke-direct {p0}, Lws;->f()V

    .line 374
    new-instance v0, Lxj;

    iget-object v10, p0, Lws;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v10}, Lxj;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v0, v1, v2}, Lxj;->a(J)V

    .line 378
    :cond_0
    invoke-static {}, Lxc;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 379
    new-instance v10, Lxf;

    iget-object v0, p0, Lws;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v10, v0}, Lxf;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 380
    iget-object v0, p0, Lws;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwx;

    .line 381
    iget-wide v12, p0, Lws;->m:J

    invoke-virtual {v10, v0, v12, v13}, Lxf;->a(Lwx;J)V

    goto :goto_0

    .line 416
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 383
    :cond_1
    :try_start_1
    invoke-virtual {v10, v1, v2}, Lxf;->d(J)V

    .line 386
    :cond_2
    iput-wide v3, p0, Lws;->m:J

    .line 389
    :cond_3
    iget-wide v3, p0, Lws;->n:J

    cmp-long v0, v5, v3

    if-eqz v0, :cond_6

    .line 391
    invoke-static {}, Lxc;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 393
    invoke-direct {p0}, Lws;->g()V

    .line 394
    new-instance v0, Lxd;

    iget-object v3, p0, Lws;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v3}, Lxd;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v0, v1, v2}, Lxd;->b(J)V

    .line 398
    :cond_4
    invoke-static {}, Lxc;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 400
    invoke-direct {p0}, Lws;->h()V

    .line 401
    new-instance v0, Lxe;

    iget-object v3, p0, Lws;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v3}, Lxe;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v0, v1, v2}, Lxe;->b(J)V

    .line 404
    :cond_5
    iput-wide v5, p0, Lws;->n:J

    .line 407
    :cond_6
    iget-wide v3, p0, Lws;->o:J

    cmp-long v0, v7, v3

    if-eqz v0, :cond_8

    .line 409
    invoke-static {}, Lxc;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 411
    iget-object v0, p0, Lws;->l:Lxb;

    invoke-virtual {v0, v7, v8}, Lxb;->a(J)V

    .line 412
    new-instance v0, Lxk;

    iget-object v3, p0, Lws;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v3}, Lxk;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v0, v1, v2}, Lxk;->a(J)V

    .line 414
    :cond_7
    iput-wide v7, p0, Lws;->o:J

    .line 416
    :cond_8
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    return-void
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 573
    return-void
.end method

.method public c(Lxn;)V
    .locals 1
    .parameter

    .prologue
    .line 668
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lws;->b(Lxn;Z)V

    .line 669
    return-void
.end method

.method public c(Lxq;)V
    .locals 1
    .parameter

    .prologue
    .line 751
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lws;->b(Lxq;Z)V

    .line 752
    return-void
.end method

.method public d(J)Lorg/json/JSONObject;
    .locals 12
    .parameter

    .prologue
    .line 1338
    new-instance v0, Lxd;

    iget-object v1, p0, Lws;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, v1}, Lxd;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v0, p1, p2}, Lxd;->a(J)Landroid/util/SparseArray;

    move-result-object v2

    .line 1339
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1340
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 1341
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    .line 1342
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwu;

    .line 1343
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1344
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 1346
    :try_start_0
    const-string v7, "ftu"

    iget-object v8, v0, Lwu;->d:Lwv;

    iget-wide v8, v8, Lwv;->a:J

    invoke-virtual {v5, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1347
    const-string v7, "fct"

    iget-object v8, v0, Lwu;->d:Lwv;

    iget-wide v8, v8, Lwv;->b:J

    invoke-virtual {v5, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1348
    const-string v7, "fcwt"

    iget-object v8, v0, Lwu;->d:Lwv;

    iget-wide v8, v8, Lwv;->c:J

    invoke-virtual {v5, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1349
    const-string v7, "frcwc"

    iget-object v8, v0, Lwu;->d:Lwv;

    iget v8, v8, Lwv;->d:I

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1350
    const-string v7, "fwifi"

    iget-object v8, v0, Lwu;->d:Lwv;

    iget-wide v8, v8, Lwv;->e:J

    invoke-virtual {v5, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1351
    const-string v7, "fgps"

    iget-object v8, v0, Lwu;->d:Lwv;

    iget-wide v8, v8, Lwv;->f:J

    invoke-virtual {v5, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1352
    const-string v7, "faudio"

    iget-object v8, v0, Lwu;->d:Lwv;

    iget-wide v8, v8, Lwv;->g:J

    invoke-virtual {v5, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1353
    const-string v7, "fvideo"

    iget-object v8, v0, Lwu;->d:Lwv;

    iget-wide v8, v8, Lwv;->h:J

    invoke-virtual {v5, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1354
    const-string v7, "btu"

    iget-object v8, v0, Lwu;->f:Lwv;

    iget-wide v8, v8, Lwv;->a:J

    iget-object v10, v0, Lwu;->d:Lwv;

    iget-wide v10, v10, Lwv;->a:J

    sub-long/2addr v8, v10

    invoke-virtual {v5, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1355
    const-string v7, "bct"

    iget-object v8, v0, Lwu;->f:Lwv;

    iget-wide v8, v8, Lwv;->b:J

    iget-object v10, v0, Lwu;->d:Lwv;

    iget-wide v10, v10, Lwv;->b:J

    sub-long/2addr v8, v10

    invoke-virtual {v5, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1356
    const-string v7, "bcwt"

    iget-object v8, v0, Lwu;->f:Lwv;

    iget-wide v8, v8, Lwv;->c:J

    iget-object v10, v0, Lwu;->d:Lwv;

    iget-wide v10, v10, Lwv;->c:J

    sub-long/2addr v8, v10

    invoke-virtual {v5, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1358
    const-string v7, "brcwc"

    iget-object v8, v0, Lwu;->f:Lwv;

    iget v8, v8, Lwv;->d:I

    iget-object v9, v0, Lwu;->d:Lwv;

    iget v9, v9, Lwv;->d:I

    sub-int/2addr v8, v9

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1360
    const-string v7, "bwifi"

    iget-object v8, v0, Lwu;->f:Lwv;

    iget-wide v8, v8, Lwv;->e:J

    iget-object v10, v0, Lwu;->d:Lwv;

    iget-wide v10, v10, Lwv;->e:J

    sub-long/2addr v8, v10

    invoke-virtual {v5, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1361
    const-string v7, "bgps"

    iget-object v8, v0, Lwu;->f:Lwv;

    iget-wide v8, v8, Lwv;->f:J

    iget-object v10, v0, Lwu;->d:Lwv;

    iget-wide v10, v10, Lwv;->f:J

    sub-long/2addr v8, v10

    invoke-virtual {v5, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1362
    const-string v7, "baudio"

    iget-object v8, v0, Lwu;->f:Lwv;

    iget-wide v8, v8, Lwv;->g:J

    iget-object v10, v0, Lwu;->d:Lwv;

    iget-wide v10, v10, Lwv;->g:J

    sub-long/2addr v8, v10

    invoke-virtual {v5, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1363
    const-string v7, "bvideo"

    iget-object v8, v0, Lwu;->f:Lwv;

    iget-wide v8, v8, Lwv;->h:J

    iget-object v10, v0, Lwu;->d:Lwv;

    iget-wide v10, v10, Lwv;->h:J

    sub-long/2addr v8, v10

    invoke-virtual {v5, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1364
    const-string v7, "re_cp"

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1365
    iget-object v0, v0, Lwu;->b:Ljava/lang/String;

    invoke-virtual {v3, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1341
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 1366
    :catch_0
    move-exception v0

    .line 1367
    const-string v5, "AppsStatsDataMgr"

    const-string v6, "AppsPower JSONException: "

    invoke-static {v5, v6, v0}, Lzs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1371
    :cond_0
    return-object v3
.end method
