.class public Lxd;
.super Lxi;
.source "AppPowerDbTable.java"


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lxi;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 78
    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    const-string v0, "CREATE TABLE IF NOT EXISTS power (_id INTEGER PRIMARY KEY,hour INTEGER,uid INTEGER,pkg_name TEXT,version INTEGER,fg_timeu INTEGER,fg_cpu INTEGER,fg_wakelock INTEGER,fg_wakeup INTEGER,fg_wifi INTEGER,fg_gps INTEGER,fg_audio INTEGER,fg_video INTEGER,bg_timeu INTEGER,bg_cpu INTEGER,bg_wakelock INTEGER,bg_wakeup INTEGER,bg_wifi INTEGER,bg_gps INTEGER,bg_audio INTEGER,bg_video INTEGER,create_time INTEGER);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method private b(Lwu;J)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    const-string v1, "hour"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 161
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "uid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lwu;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(J)Landroid/util/SparseArray;
    .locals 40
    .parameter

    .prologue
    .line 300
    invoke-static/range {p1 .. p2}, Lxd;->h(J)J

    move-result-wide v2

    .line 301
    invoke-static/range {p1 .. p2}, Lxd;->i(J)J

    move-result-wide v7

    .line 303
    const/16 v4, 0x13

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "uid"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "pkg_name"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "version"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "fg_timeu"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "fg_cpu"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "fg_wakelock"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "fg_wakeup"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "fg_wifi"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "fg_gps"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string v6, "fg_audio"

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "fg_video"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    const-string v6, "bg_timeu"

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string v6, "bg_cpu"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    const-string v6, "bg_wakelock"

    aput-object v6, v4, v5

    const/16 v5, 0xe

    const-string v6, "bg_wakeup"

    aput-object v6, v4, v5

    const/16 v5, 0xf

    const-string v6, "bg_wifi"

    aput-object v6, v4, v5

    const/16 v5, 0x10

    const-string v6, "bg_gps"

    aput-object v6, v4, v5

    const/16 v5, 0x11

    const-string v6, "bg_audio"

    aput-object v6, v4, v5

    const/16 v5, 0x12

    const-string v6, "bg_video"

    aput-object v6, v4, v5

    .line 324
    const-string v5, "hour >= ? and hour <= ?"

    .line 325
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v9

    const/4 v2, 0x1

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lxd;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "power"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 331
    invoke-static {}, Lws;->a()Lws;

    move-result-object v5

    .line 333
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 334
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 335
    const/4 v2, 0x0

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 336
    const/4 v2, 0x1

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 337
    const/4 v3, 0x2

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 338
    if-nez v2, :cond_4

    .line 339
    invoke-virtual {v5, v7}, Lws;->a(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 341
    :goto_1
    if-nez v3, :cond_0

    .line 342
    const-string v2, "AppPowerDbTable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "skip, no package name found for uid: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lzs;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 345
    :cond_0
    invoke-static {v3}, Lxd;->c(Ljava/lang/String;)I

    move-result v2

    .line 346
    if-eq v8, v2, :cond_1

    .line 347
    const-string v2, "AppPowerDbTable"

    const-string v3, "skip old version"

    invoke-static {v2, v3}, Lzs;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 350
    :cond_1
    const/4 v2, 0x3

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 351
    const/4 v2, 0x4

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 352
    const/4 v2, 0x5

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 353
    const/4 v2, 0x6

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 354
    const/4 v2, 0x7

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 355
    const/16 v2, 0x8

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 356
    const/16 v2, 0x9

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 357
    const/16 v2, 0xa

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 358
    const/16 v2, 0xb

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 359
    const/16 v2, 0xc

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 360
    const/16 v2, 0xd

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    .line 361
    const/16 v2, 0xe

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 362
    const/16 v2, 0xf

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    .line 363
    const/16 v2, 0x10

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    .line 364
    const/16 v2, 0x11

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    .line 365
    const/16 v2, 0x12

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    .line 367
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwu;

    .line 368
    if-nez v2, :cond_2

    .line 369
    new-instance v2, Lwu;

    invoke-direct {v2}, Lwu;-><init>()V

    .line 370
    iput v7, v2, Lwu;->a:I

    .line 371
    invoke-static {v3}, Lxd;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lwu;->b:Ljava/lang/String;

    .line 372
    invoke-virtual {v6, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 374
    :cond_2
    iget-object v3, v2, Lwu;->d:Lwv;

    iget-wide v0, v3, Lwv;->a:J

    move-wide/from16 v38, v0

    add-long v38, v38, v8

    move-wide/from16 v0, v38

    iput-wide v0, v3, Lwv;->a:J

    .line 375
    iget-object v3, v2, Lwu;->d:Lwv;

    iget-wide v0, v3, Lwv;->b:J

    move-wide/from16 v38, v0

    add-long v38, v38, v10

    move-wide/from16 v0, v38

    iput-wide v0, v3, Lwv;->b:J

    .line 376
    iget-object v3, v2, Lwu;->d:Lwv;

    iget-wide v0, v3, Lwv;->c:J

    move-wide/from16 v38, v0

    add-long v38, v38, v12

    move-wide/from16 v0, v38

    iput-wide v0, v3, Lwv;->c:J

    .line 377
    iget-object v3, v2, Lwu;->d:Lwv;

    iget v7, v3, Lwv;->d:I

    add-int/2addr v7, v14

    iput v7, v3, Lwv;->d:I

    .line 378
    iget-object v3, v2, Lwu;->d:Lwv;

    iget-wide v0, v3, Lwv;->e:J

    move-wide/from16 v38, v0

    add-long v38, v38, v15

    move-wide/from16 v0, v38

    iput-wide v0, v3, Lwv;->e:J

    .line 379
    iget-object v3, v2, Lwu;->d:Lwv;

    iget-wide v0, v3, Lwv;->f:J

    move-wide/from16 v38, v0

    add-long v38, v38, v17

    move-wide/from16 v0, v38

    iput-wide v0, v3, Lwv;->f:J

    .line 380
    iget-object v3, v2, Lwu;->d:Lwv;

    iget-wide v0, v3, Lwv;->g:J

    move-wide/from16 v38, v0

    add-long v38, v38, v19

    move-wide/from16 v0, v38

    iput-wide v0, v3, Lwv;->g:J

    .line 381
    iget-object v3, v2, Lwu;->d:Lwv;

    iget-wide v0, v3, Lwv;->h:J

    move-wide/from16 v38, v0

    add-long v38, v38, v21

    move-wide/from16 v0, v38

    iput-wide v0, v3, Lwv;->h:J

    .line 382
    iget-object v3, v2, Lwu;->f:Lwv;

    iget-wide v0, v3, Lwv;->a:J

    move-wide/from16 v38, v0

    add-long v7, v8, v23

    add-long v7, v7, v38

    iput-wide v7, v3, Lwv;->a:J

    .line 383
    iget-object v3, v2, Lwu;->f:Lwv;

    iget-wide v7, v3, Lwv;->b:J

    add-long v9, v10, v25

    add-long/2addr v7, v9

    iput-wide v7, v3, Lwv;->b:J

    .line 384
    iget-object v3, v2, Lwu;->f:Lwv;

    iget-wide v7, v3, Lwv;->c:J

    add-long v9, v12, v27

    add-long/2addr v7, v9

    iput-wide v7, v3, Lwv;->c:J

    .line 385
    iget-object v3, v2, Lwu;->f:Lwv;

    iget v7, v3, Lwv;->d:I

    add-int v8, v14, v29

    add-int/2addr v7, v8

    iput v7, v3, Lwv;->d:I

    .line 386
    iget-object v3, v2, Lwu;->f:Lwv;

    iget-wide v7, v3, Lwv;->e:J

    add-long v9, v15, v30

    add-long/2addr v7, v9

    iput-wide v7, v3, Lwv;->e:J

    .line 387
    iget-object v3, v2, Lwu;->f:Lwv;

    iget-wide v7, v3, Lwv;->f:J

    add-long v9, v17, v32

    add-long/2addr v7, v9

    iput-wide v7, v3, Lwv;->f:J

    .line 388
    iget-object v3, v2, Lwu;->f:Lwv;

    iget-wide v7, v3, Lwv;->g:J

    add-long v9, v19, v34

    add-long/2addr v7, v9

    iput-wide v7, v3, Lwv;->g:J

    .line 389
    iget-object v2, v2, Lwu;->f:Lwv;

    iget-wide v7, v2, Lwv;->h:J

    add-long v9, v21, v36

    add-long/2addr v7, v9

    iput-wide v7, v2, Lwv;->h:J

    goto/16 :goto_0

    .line 391
    :cond_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 392
    return-object v6

    :cond_4
    move-object v3, v2

    goto/16 :goto_1
.end method

.method public a(I)V
    .locals 4
    .parameter

    .prologue
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lxd;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "power"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 226
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 217
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 218
    const-string v1, "pkg_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 220
    iget-object v2, p0, Lxd;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "power"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 221
    return-void
.end method

.method public a(Landroid/util/SparseArray;J)V
    .locals 37
    .parameter
    .parameter

    .prologue
    .line 81
    const/16 v2, 0x12

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "uid"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "pkg_name"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "fg_timeu"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "fg_cpu"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "fg_wakelock"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string v3, "fg_wakeup"

    aput-object v3, v4, v2

    const/4 v2, 0x6

    const-string v3, "fg_wifi"

    aput-object v3, v4, v2

    const/4 v2, 0x7

    const-string v3, "fg_gps"

    aput-object v3, v4, v2

    const/16 v2, 0x8

    const-string v3, "fg_audio"

    aput-object v3, v4, v2

    const/16 v2, 0x9

    const-string v3, "fg_video"

    aput-object v3, v4, v2

    const/16 v2, 0xa

    const-string v3, "bg_timeu"

    aput-object v3, v4, v2

    const/16 v2, 0xb

    const-string v3, "bg_cpu"

    aput-object v3, v4, v2

    const/16 v2, 0xc

    const-string v3, "bg_wakelock"

    aput-object v3, v4, v2

    const/16 v2, 0xd

    const-string v3, "bg_wakeup"

    aput-object v3, v4, v2

    const/16 v2, 0xe

    const-string v3, "bg_wifi"

    aput-object v3, v4, v2

    const/16 v2, 0xf

    const-string v3, "bg_gps"

    aput-object v3, v4, v2

    const/16 v2, 0x10

    const-string v3, "bg_audio"

    aput-object v3, v4, v2

    const/16 v2, 0x11

    const-string v3, "bg_video"

    aput-object v3, v4, v2

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hour="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 102
    move-object/from16 v0, p0

    iget-object v2, v0, Lxd;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "power"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 104
    invoke-static {}, Lws;->a()Lws;

    move-result-object v4

    .line 106
    invoke-virtual/range {p1 .. p1}, Landroid/util/SparseArray;->clear()V

    .line 107
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 109
    const/4 v2, 0x1

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 110
    if-nez v2, :cond_0

    .line 111
    invoke-virtual {v4, v5}, Lws;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 113
    :cond_0
    if-nez v2, :cond_1

    .line 114
    const-string v2, "AppPowerDbTable"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "skip, no package name found for uid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lzs;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_1
    const/4 v6, 0x2

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 118
    const/4 v8, 0x3

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 119
    const/4 v10, 0x4

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 120
    const/4 v12, 0x5

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 121
    const/4 v13, 0x6

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 122
    const/4 v15, 0x7

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 123
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 124
    const/16 v19, 0x9

    move/from16 v0, v19

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 125
    const/16 v21, 0xa

    move/from16 v0, v21

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 126
    const/16 v23, 0xb

    move/from16 v0, v23

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 127
    const/16 v25, 0xc

    move/from16 v0, v25

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 128
    const/16 v27, 0xd

    move/from16 v0, v27

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 129
    const/16 v28, 0xe

    move/from16 v0, v28

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    .line 130
    const/16 v30, 0xf

    move/from16 v0, v30

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    .line 131
    const/16 v32, 0x10

    move/from16 v0, v32

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    .line 132
    const/16 v34, 0x11

    move/from16 v0, v34

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    .line 134
    new-instance v36, Lwu;

    invoke-direct/range {v36 .. v36}, Lwu;-><init>()V

    .line 135
    move-object/from16 v0, v36

    iput v5, v0, Lwu;->a:I

    .line 136
    move-object/from16 v0, v36

    iput-object v2, v0, Lwu;->b:Ljava/lang/String;

    .line 137
    move-object/from16 v0, v36

    iget-object v2, v0, Lwu;->d:Lwv;

    iput-wide v6, v2, Lwv;->a:J

    .line 138
    move-object/from16 v0, v36

    iget-object v2, v0, Lwu;->d:Lwv;

    iput-wide v8, v2, Lwv;->b:J

    .line 139
    move-object/from16 v0, v36

    iget-object v2, v0, Lwu;->d:Lwv;

    iput-wide v10, v2, Lwv;->c:J

    .line 140
    move-object/from16 v0, v36

    iget-object v2, v0, Lwu;->d:Lwv;

    iput v12, v2, Lwv;->d:I

    .line 141
    move-object/from16 v0, v36

    iget-object v2, v0, Lwu;->d:Lwv;

    iput-wide v13, v2, Lwv;->e:J

    .line 142
    move-object/from16 v0, v36

    iget-object v2, v0, Lwu;->d:Lwv;

    iput-wide v15, v2, Lwv;->f:J

    .line 143
    move-object/from16 v0, v36

    iget-object v2, v0, Lwu;->d:Lwv;

    move-wide/from16 v0, v17

    iput-wide v0, v2, Lwv;->g:J

    .line 144
    move-object/from16 v0, v36

    iget-object v2, v0, Lwu;->d:Lwv;

    move-wide/from16 v0, v19

    iput-wide v0, v2, Lwv;->h:J

    .line 145
    move-object/from16 v0, v36

    iget-object v2, v0, Lwu;->f:Lwv;

    add-long v6, v6, v21

    iput-wide v6, v2, Lwv;->a:J

    .line 146
    move-object/from16 v0, v36

    iget-object v2, v0, Lwu;->f:Lwv;

    add-long v6, v8, v23

    iput-wide v6, v2, Lwv;->b:J

    .line 147
    move-object/from16 v0, v36

    iget-object v2, v0, Lwu;->f:Lwv;

    add-long v6, v10, v25

    iput-wide v6, v2, Lwv;->c:J

    .line 148
    move-object/from16 v0, v36

    iget-object v2, v0, Lwu;->f:Lwv;

    add-int v6, v12, v27

    iput v6, v2, Lwv;->d:I

    .line 149
    move-object/from16 v0, v36

    iget-object v2, v0, Lwu;->f:Lwv;

    add-long v6, v13, v28

    iput-wide v6, v2, Lwv;->e:J

    .line 150
    move-object/from16 v0, v36

    iget-object v2, v0, Lwu;->f:Lwv;

    add-long v6, v15, v30

    iput-wide v6, v2, Lwv;->f:J

    .line 151
    move-object/from16 v0, v36

    iget-object v2, v0, Lwu;->f:Lwv;

    add-long v6, v17, v32

    iput-wide v6, v2, Lwv;->g:J

    .line 152
    move-object/from16 v0, v36

    iget-object v2, v0, Lwu;->f:Lwv;

    add-long v6, v19, v34

    iput-wide v6, v2, Lwv;->h:J

    .line 153
    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 155
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 156
    return-void
.end method

.method public a(Lwu;J)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 166
    iget-object v0, p1, Lwu;->d:Lwv;

    iget-wide v0, v0, Lwv;->a:J

    iget-object v2, p1, Lwu;->f:Lwv;

    iget-wide v2, v2, Lwv;->a:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p1, Lwu;->d:Lwv;

    iget-wide v0, v0, Lwv;->b:J

    iget-object v2, p1, Lwu;->f:Lwv;

    iget-wide v2, v2, Lwv;->b:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p1, Lwu;->d:Lwv;

    iget-wide v0, v0, Lwv;->c:J

    iget-object v2, p1, Lwu;->f:Lwv;

    iget-wide v2, v2, Lwv;->c:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p1, Lwu;->d:Lwv;

    iget v0, v0, Lwv;->d:I

    iget-object v1, p1, Lwu;->f:Lwv;

    iget v1, v1, Lwv;->d:I

    if-gt v0, v1, :cond_0

    iget-object v0, p1, Lwu;->d:Lwv;

    iget-wide v0, v0, Lwv;->e:J

    iget-object v2, p1, Lwu;->f:Lwv;

    iget-wide v2, v2, Lwv;->e:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p1, Lwu;->d:Lwv;

    iget-wide v0, v0, Lwv;->f:J

    iget-object v2, p1, Lwu;->f:Lwv;

    iget-wide v2, v2, Lwv;->f:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p1, Lwu;->d:Lwv;

    iget-wide v0, v0, Lwv;->g:J

    iget-object v2, p1, Lwu;->f:Lwv;

    iget-wide v2, v2, Lwv;->g:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p1, Lwu;->d:Lwv;

    iget-wide v0, v0, Lwv;->h:J

    iget-object v2, p1, Lwu;->f:Lwv;

    iget-wide v2, v2, Lwv;->h:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 174
    :cond_0
    const-string v0, "AppPowerDbTable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad power stat, pkgName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lwu;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fgData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lwu;->d:Lwv;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", totalData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lwu;->f:Lwv;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lzs;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v5

    .line 213
    :goto_0
    return v0

    .line 179
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lxd;->b(Lwu;J)Ljava/lang/String;

    move-result-object v3

    .line 180
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 181
    const-string v0, "fg_timeu"

    iget-object v1, p1, Lwu;->d:Lwv;

    iget-wide v1, v1, Lwv;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 182
    const-string v0, "fg_cpu"

    iget-object v1, p1, Lwu;->d:Lwv;

    iget-wide v1, v1, Lwv;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 183
    const-string v0, "fg_wakelock"

    iget-object v1, p1, Lwu;->d:Lwv;

    iget-wide v1, v1, Lwv;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 184
    const-string v0, "fg_wakeup"

    iget-object v1, p1, Lwu;->d:Lwv;

    iget v1, v1, Lwv;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 185
    const-string v0, "fg_wifi"

    iget-object v1, p1, Lwu;->d:Lwv;

    iget-wide v1, v1, Lwv;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 186
    const-string v0, "fg_gps"

    iget-object v1, p1, Lwu;->d:Lwv;

    iget-wide v1, v1, Lwv;->f:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 187
    const-string v0, "fg_audio"

    iget-object v1, p1, Lwu;->d:Lwv;

    iget-wide v1, v1, Lwv;->g:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 188
    const-string v0, "fg_video"

    iget-object v1, p1, Lwu;->d:Lwv;

    iget-wide v1, v1, Lwv;->h:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 189
    const-string v0, "bg_timeu"

    iget-object v1, p1, Lwu;->f:Lwv;

    iget-wide v1, v1, Lwv;->a:J

    iget-object v6, p1, Lwu;->d:Lwv;

    iget-wide v6, v6, Lwv;->a:J

    sub-long/2addr v1, v6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 190
    const-string v0, "bg_cpu"

    iget-object v1, p1, Lwu;->f:Lwv;

    iget-wide v1, v1, Lwv;->b:J

    iget-object v6, p1, Lwu;->d:Lwv;

    iget-wide v6, v6, Lwv;->b:J

    sub-long/2addr v1, v6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 191
    const-string v0, "bg_wakelock"

    iget-object v1, p1, Lwu;->f:Lwv;

    iget-wide v1, v1, Lwv;->c:J

    iget-object v6, p1, Lwu;->d:Lwv;

    iget-wide v6, v6, Lwv;->c:J

    sub-long/2addr v1, v6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 192
    const-string v0, "bg_wakeup"

    iget-object v1, p1, Lwu;->f:Lwv;

    iget v1, v1, Lwv;->d:I

    iget-object v2, p1, Lwu;->d:Lwv;

    iget v2, v2, Lwv;->d:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 193
    const-string v0, "bg_wifi"

    iget-object v1, p1, Lwu;->f:Lwv;

    iget-wide v1, v1, Lwv;->e:J

    iget-object v6, p1, Lwu;->d:Lwv;

    iget-wide v6, v6, Lwv;->e:J

    sub-long/2addr v1, v6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 194
    const-string v0, "bg_gps"

    iget-object v1, p1, Lwu;->f:Lwv;

    iget-wide v1, v1, Lwv;->f:J

    iget-object v6, p1, Lwu;->d:Lwv;

    iget-wide v6, v6, Lwv;->f:J

    sub-long/2addr v1, v6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 195
    const-string v0, "bg_audio"

    iget-object v1, p1, Lwu;->f:Lwv;

    iget-wide v1, v1, Lwv;->g:J

    iget-object v6, p1, Lwu;->d:Lwv;

    iget-wide v6, v6, Lwv;->g:J

    sub-long/2addr v1, v6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 196
    const-string v0, "bg_video"

    iget-object v1, p1, Lwu;->f:Lwv;

    iget-wide v1, v1, Lwv;->h:J

    iget-object v6, p1, Lwu;->d:Lwv;

    iget-wide v6, v6, Lwv;->h:J

    sub-long/2addr v1, v6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 198
    iget-object v0, p0, Lxd;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "power"

    new-array v2, v8, [Ljava/lang/String;

    const-string v6, "_id"

    aput-object v6, v2, v5

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 200
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 201
    iget-object v1, p0, Lxd;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "power"

    invoke-virtual {v1, v2, v9, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 212
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 213
    goto/16 :goto_0

    .line 204
    :cond_2
    const-string v1, "hour"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 205
    const-string v1, "uid"

    iget v2, p1, Lwu;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 206
    const-string v1, "pkg_name"

    iget-object v2, p1, Lwu;->b:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v1, "version"

    iget-object v2, p1, Lwu;->b:Ljava/lang/String;

    invoke-static {v2}, Lxd;->c(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 208
    const-string v1, "create_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 210
    iget-object v1, p0, Lxd;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "power"

    invoke-virtual {v1, v2, v4, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_1
.end method

.method public b(J)V
    .locals 4
    .parameter

    .prologue
    .line 396
    const-wide/32 v0, 0xa4cb800

    sub-long v0, p1, v0

    .line 397
    invoke-static {v0, v1}, Lxd;->f(J)J

    move-result-wide v0

    .line 398
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hour < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 399
    iget-object v1, p0, Lxd;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "power"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 400
    return-void
.end method
