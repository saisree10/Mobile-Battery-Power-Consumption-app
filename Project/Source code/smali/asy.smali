.class public Lasy;
.super Ljava/lang/Object;
.source "AppStatsMgr.java"


# static fields
.field private static f:Lasy;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lata;

.field private c:Landroid/database/sqlite/SQLiteDatabase;

.field private d:Landroid/util/SparseArray;

.field private e:Landroid/util/SparseArray;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lasy;->d:Landroid/util/SparseArray;

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lasy;->e:Landroid/util/SparseArray;

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lasy;->a:Landroid/content/Context;

    .line 117
    new-instance v0, Lata;

    iget-object v1, p0, Lasy;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lata;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lasy;->b:Lata;

    .line 118
    iget-object v0, p0, Lasy;->b:Lata;

    invoke-virtual {v0}, Lata;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lasy;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 119
    return-void
.end method

.method public static a(Landroid/content/Context;)Lasy;
    .locals 2
    .parameter

    .prologue
    .line 105
    sget-object v0, Lasy;->f:Lasy;

    if-nez v0, :cond_1

    .line 106
    const-class v1, Lasy;

    monitor-enter v1

    .line 107
    :try_start_0
    sget-object v0, Lasy;->f:Lasy;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lasy;

    invoke-direct {v0, p0}, Lasy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lasy;->f:Lasy;

    .line 110
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :cond_1
    sget-object v0, Lasy;->f:Lasy;

    return-object v0

    .line 110
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(I)Latb;
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 175
    iget-object v0, p0, Lasy;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latb;

    .line 176
    if-nez v0, :cond_0

    .line 177
    new-instance v8, Latb;

    invoke-direct {v8, p0, v4}, Latb;-><init>(Lasy;Lasz;)V

    .line 178
    iget-object v0, p0, Lasy;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 181
    iget-object v0, p0, Lasy;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "hw"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "total_app_time"

    aput-object v3, v2, v9

    const-string v3, "total_hw_time"

    aput-object v3, v2, v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uid=-5 AND hw_type="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 185
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 186
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v8, Latb;->a:J

    .line 187
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v8, Latb;->b:J

    .line 188
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v8

    .line 190
    :cond_0
    return-object v0
.end method

.method private a(IJJ)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v5, 0x2

    .line 201
    invoke-direct {p0, p1}, Lasy;->a(I)Latb;

    move-result-object v0

    .line 205
    iget-wide v1, v0, Latb;->a:J

    const-wide v3, 0x3fffffffffffffffL

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 206
    iget-wide v1, v0, Latb;->a:J

    div-long/2addr v1, v5

    iput-wide v1, v0, Latb;->a:J

    .line 207
    iget-wide v1, v0, Latb;->b:J

    div-long/2addr v1, v5

    iput-wide v1, v0, Latb;->b:J

    .line 210
    :cond_0
    iget-wide v1, v0, Latb;->a:J

    add-long/2addr v1, p2

    iput-wide v1, v0, Latb;->a:J

    .line 211
    iget-wide v1, v0, Latb;->b:J

    add-long/2addr v1, p4

    iput-wide v1, v0, Latb;->b:J

    .line 214
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 215
    const-string v2, "total_app_time"

    iget-wide v3, v0, Latb;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 216
    const-string v2, "total_hw_time"

    iget-wide v3, v0, Latb;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 217
    iget-object v0, p0, Lasy;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "hw"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uid=-5 AND hw_type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 220
    return-void
.end method


# virtual methods
.method public a(Landroid/util/SparseArray;I)D
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 364
    invoke-direct {p0, p2}, Lasy;->a(I)Latb;

    move-result-object v2

    .line 365
    const-wide/16 v0, 0x0

    .line 366
    iget-wide v3, v2, Latb;->a:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 367
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-wide v3, v2, Latb;->b:J

    long-to-double v3, v3

    mul-double/2addr v0, v3

    iget-wide v2, v2, Latb;->a:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    .line 369
    :cond_0
    return-wide v0
.end method

.method public a(Landroid/util/SparseArray;ILjava/lang/String;)D
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 329
    const-wide/16 v8, 0x0

    .line 331
    iget-object v0, p0, Lasy;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "hw"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "hw_type"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "total_app_time"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "total_hw_time"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 335
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    move-wide v1, v8

    .line 337
    :goto_0
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 338
    const/4 v0, 0x1

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 339
    const/4 v0, 0x2

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 340
    const-wide/16 v9, 0x0

    cmp-long v0, v5, v9

    if-lez v0, :cond_2

    .line 341
    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    long-to-double v7, v7

    mul-double/2addr v7, v9

    long-to-double v5, v5

    div-double v5, v7, v5

    .line 345
    const/4 v0, 0x1

    if-eq v4, v0, :cond_2

    .line 347
    add-double/2addr v1, v5

    move-wide v0, v1

    .line 350
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 354
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 360
    return-wide v0

    .line 352
    :cond_0
    const-wide/high16 v0, -0x4010

    goto :goto_2

    :cond_1
    move-wide v1, v0

    goto :goto_0

    :cond_2
    move-wide v0, v1

    goto :goto_1
.end method

.method public a(ILjava/lang/String;IJJ)Z
    .locals 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 232
    cmp-long v2, p6, p4

    if-gtz v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p6, v2

    if-gtz v2, :cond_1

    .line 233
    :cond_0
    const-string v2, "AppStatsMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad data discarded, uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", appTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hwTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p6

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lazt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const/4 v2, 0x0

    .line 291
    :goto_0
    return v2

    .line 241
    :cond_1
    const/4 v10, 0x0

    .line 242
    iget-object v2, p0, Lasy;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "hw"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "total_app_time"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "total_hw_time"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "hw_type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 246
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 248
    const/4 v2, 0x1

    .line 249
    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    add-long v5, p4, v3

    .line 250
    const/4 v3, 0x1

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    add-long v3, v3, p6

    .line 252
    const-wide v9, 0x3fffffffffffffffL

    cmp-long v7, v5, v9

    if-lez v7, :cond_5

    .line 253
    const-wide/16 v9, 0x2

    div-long/2addr v5, v9

    .line 254
    const-wide/16 v9, 0x2

    div-long/2addr v3, v9

    move-wide v11, v3

    move v3, v2

    move-wide v13, v5

    move-wide v6, v13

    move-wide v4, v11

    .line 257
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 260
    div-long v8, v4, v6

    long-to-double v8, v8

    .line 261
    iget-object v2, p0, Lasy;->d:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 262
    if-nez v2, :cond_2

    .line 263
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 264
    iget-object v10, p0, Lasy;->d:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v10, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 266
    :cond_2
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    move/from16 v0, p3

    invoke-virtual {v2, v0, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 269
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 270
    const-string v8, "total_app_time"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 271
    const-string v6, "total_hw_time"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 274
    if-eqz v3, :cond_3

    .line 276
    :try_start_0
    iget-object v3, p0, Lasy;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "hw"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "hw_type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_2
    move-object v2, p0

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    .line 287
    invoke-direct/range {v2 .. v7}, Lasy;->a(IJJ)V

    .line 288
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 281
    :cond_3
    const-string v3, "hw_type"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 282
    const-string v3, "uid"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 283
    const-string v3, "pkg_name"

    if-nez p1, :cond_4

    const-string p2, "system"

    :cond_4
    move-object/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v3, p0, Lasy;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "hw"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 289
    :catch_0
    move-exception v2

    .line 290
    const-string v3, "AppStatsMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "db error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lazt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_5
    move-wide v11, v3

    move v3, v2

    move-wide v13, v5

    move-wide v6, v13

    move-wide v4, v11

    goto/16 :goto_1

    :cond_6
    move v3, v10

    move-wide/from16 v4, p6

    move-wide/from16 v6, p4

    goto/16 :goto_1
.end method
