.class public Lxj;
.super Lxi;
.source "NetTrafficDbTable.java"


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lxi;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 55
    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    const-string v0, "CREATE TABLE IF NOT EXISTS traffic (_id INTEGER PRIMARY KEY,date INTEGER,uid INTEGER,pkg_name TEXT,version INTEGER,fg_received INTEGER,fg_sended INTEGER,fg_timeu INTEGER,bg_received INTEGER,bg_sended INTEGER,bg_timeu INTEGER,create_time INTEGER);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method private b(Lwy;J)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    const-string v1, "date"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 111
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "uid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lwy;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/HashSet;J)Landroid/util/SparseArray;
    .locals 22
    .parameter
    .parameter

    .prologue
    .line 219
    invoke-static/range {p2 .. p3}, Lxj;->l(J)J

    move-result-wide v2

    .line 220
    invoke-static/range {p2 .. p3}, Lxj;->m(J)J

    move-result-wide v7

    .line 221
    const/16 v4, 0xa

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

    const-string v6, "fg_received"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "fg_sended"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "fg_timeu"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "bg_received"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "bg_sended"

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "bg_timeu"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-string v6, "date"

    aput-object v6, v4, v5

    .line 233
    const-string v5, "date >= ? and date <= ?"

    .line 234
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lxj;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "traffic"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 240
    invoke-static {}, Lws;->a()Lws;

    move-result-object v5

    .line 242
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 243
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 244
    const/4 v2, 0x0

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 245
    const/4 v2, 0x1

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 246
    const/4 v3, 0x2

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 247
    if-nez v2, :cond_4

    .line 248
    invoke-virtual {v5, v7}, Lws;->a(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 250
    :goto_1
    if-nez v3, :cond_0

    .line 251
    const-string v2, "NetTrafficDbTable"

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

    .line 254
    :cond_0
    invoke-static {v3}, Lxj;->c(Ljava/lang/String;)I

    move-result v2

    .line 255
    if-eq v8, v2, :cond_1

    .line 256
    const-string v2, "NetTrafficDbTable"

    const-string v3, "skip old version"

    invoke-static {v2, v3}, Lzs;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :cond_1
    const/4 v2, 0x3

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 260
    const/4 v2, 0x4

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 261
    const/4 v2, 0x5

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 262
    const/4 v2, 0x6

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 263
    const/4 v2, 0x7

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 264
    const/16 v2, 0x8

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 265
    const/16 v2, 0x9

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v20, v0

    .line 267
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwy;

    .line 270
    if-nez v2, :cond_2

    .line 271
    new-instance v2, Lwy;

    invoke-direct {v2}, Lwy;-><init>()V

    .line 272
    iput v7, v2, Lwy;->a:I

    .line 273
    invoke-static {v3}, Lxj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lwy;->b:Ljava/lang/String;

    .line 274
    invoke-virtual {v6, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 276
    :cond_2
    iget-object v3, v2, Lwy;->d:Lwz;

    iget-wide v0, v3, Lwz;->a:J

    move-wide/from16 v20, v0

    add-long v20, v20, v8

    move-wide/from16 v0, v20

    iput-wide v0, v3, Lwz;->a:J

    .line 277
    iget-object v3, v2, Lwy;->d:Lwz;

    iget-wide v0, v3, Lwz;->b:J

    move-wide/from16 v20, v0

    add-long v20, v20, v10

    move-wide/from16 v0, v20

    iput-wide v0, v3, Lwz;->b:J

    .line 278
    iget-object v3, v2, Lwy;->d:Lwz;

    iget-wide v0, v3, Lwz;->c:J

    move-wide/from16 v20, v0

    add-long v20, v20, v12

    move-wide/from16 v0, v20

    iput-wide v0, v3, Lwz;->c:J

    .line 279
    iget-object v3, v2, Lwy;->e:Lwz;

    iget-wide v0, v3, Lwz;->a:J

    move-wide/from16 v20, v0

    add-long v7, v8, v14

    add-long v7, v7, v20

    iput-wide v7, v3, Lwz;->a:J

    .line 280
    iget-object v3, v2, Lwy;->e:Lwz;

    iget-wide v7, v3, Lwz;->b:J

    add-long v9, v10, v16

    add-long/2addr v7, v9

    iput-wide v7, v3, Lwz;->b:J

    .line 281
    iget-object v2, v2, Lwy;->e:Lwz;

    iget-wide v7, v2, Lwz;->c:J

    add-long v9, v12, v18

    add-long/2addr v7, v9

    iput-wide v7, v2, Lwz;->c:J

    goto/16 :goto_0

    .line 283
    :cond_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 284
    return-object v6

    :cond_4
    move-object v3, v2

    goto/16 :goto_1
.end method

.method public a(I)V
    .locals 4
    .parameter

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lxj;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "traffic"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 161
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 152
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 153
    const-string v1, "pkg_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 155
    iget-object v2, p0, Lxj;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "traffic"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 156
    return-void
.end method

.method public a(J)V
    .locals 4
    .parameter

    .prologue
    .line 288
    const-wide v0, 0x9a7ec800L

    sub-long v0, p1, v0

    .line 289
    invoke-static {v0, v1}, Lxj;->e(J)J

    move-result-wide v0

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "date < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    iget-object v1, p0, Lxj;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "traffic"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 292
    return-void
.end method

.method public a(Landroid/util/SparseArray;J)V
    .locals 19
    .parameter
    .parameter

    .prologue
    .line 61
    const/16 v2, 0x8

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "uid"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "pkg_name"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "fg_received"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "fg_sended"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "fg_timeu"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string v3, "bg_received"

    aput-object v3, v4, v2

    const/4 v2, 0x6

    const-string v3, "bg_sended"

    aput-object v3, v4, v2

    const/4 v2, 0x7

    const-string v3, "bg_timeu"

    aput-object v3, v4, v2

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "date="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 72
    move-object/from16 v0, p0

    iget-object v2, v0, Lxj;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "traffic"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 74
    invoke-static {}, Lws;->a()Lws;

    move-result-object v4

    .line 76
    invoke-virtual/range {p1 .. p1}, Landroid/util/SparseArray;->clear()V

    .line 77
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 78
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 79
    const/4 v2, 0x1

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 80
    if-nez v2, :cond_0

    .line 81
    invoke-virtual {v4, v5}, Lws;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 83
    :cond_0
    if-nez v2, :cond_1

    .line 84
    const-string v2, "NetTrafficDbTable"

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

    .line 87
    :cond_1
    const/4 v6, 0x2

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 88
    const/4 v8, 0x3

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 89
    const/4 v10, 0x4

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 90
    const/4 v12, 0x5

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 91
    const/4 v14, 0x6

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 92
    const/16 v16, 0x7

    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 94
    new-instance v18, Lwy;

    invoke-direct/range {v18 .. v18}, Lwy;-><init>()V

    .line 95
    move-object/from16 v0, v18

    iput v5, v0, Lwy;->a:I

    .line 96
    move-object/from16 v0, v18

    iput-object v2, v0, Lwy;->b:Ljava/lang/String;

    .line 97
    move-object/from16 v0, v18

    iget-object v2, v0, Lwy;->d:Lwz;

    iput-wide v6, v2, Lwz;->a:J

    .line 98
    move-object/from16 v0, v18

    iget-object v2, v0, Lwy;->d:Lwz;

    iput-wide v8, v2, Lwz;->b:J

    .line 99
    move-object/from16 v0, v18

    iget-object v2, v0, Lwy;->d:Lwz;

    iput-wide v10, v2, Lwz;->c:J

    .line 100
    move-object/from16 v0, v18

    iget-object v2, v0, Lwy;->e:Lwz;

    add-long/2addr v6, v12

    iput-wide v6, v2, Lwz;->a:J

    .line 101
    move-object/from16 v0, v18

    iget-object v2, v0, Lwy;->e:Lwz;

    add-long v6, v8, v14

    iput-wide v6, v2, Lwz;->b:J

    .line 102
    move-object/from16 v0, v18

    iget-object v2, v0, Lwy;->e:Lwz;

    add-long v6, v10, v16

    iput-wide v6, v2, Lwz;->c:J

    .line 103
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 105
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 106
    return-void
.end method

.method public a(Lwy;J)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 116
    iget-object v0, p1, Lwy;->d:Lwz;

    iget-wide v0, v0, Lwz;->c:J

    iget-object v2, p1, Lwy;->e:Lwz;

    iget-wide v2, v2, Lwz;->c:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p1, Lwy;->d:Lwz;

    iget-wide v0, v0, Lwz;->a:J

    iget-object v2, p1, Lwy;->e:Lwz;

    iget-wide v2, v2, Lwz;->a:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p1, Lwy;->d:Lwz;

    iget-wide v0, v0, Lwz;->b:J

    iget-object v2, p1, Lwy;->e:Lwz;

    iget-wide v2, v2, Lwz;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 119
    :cond_0
    const-string v0, "NetTrafficDbTable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad traffic stat, pkgName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lwy;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fgData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lwy;->d:Lwz;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", totalData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lwy;->e:Lwz;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lzs;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v5

    .line 148
    :goto_0
    return v0

    .line 124
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lxj;->b(Lwy;J)Ljava/lang/String;

    move-result-object v3

    .line 125
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 126
    const-string v0, "fg_received"

    iget-object v1, p1, Lwy;->d:Lwz;

    iget-wide v1, v1, Lwz;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 127
    const-string v0, "fg_sended"

    iget-object v1, p1, Lwy;->d:Lwz;

    iget-wide v1, v1, Lwz;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 128
    const-string v0, "fg_timeu"

    iget-object v1, p1, Lwy;->d:Lwz;

    iget-wide v1, v1, Lwz;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 129
    const-string v0, "bg_received"

    iget-object v1, p1, Lwy;->e:Lwz;

    iget-wide v1, v1, Lwz;->a:J

    iget-object v6, p1, Lwy;->d:Lwz;

    iget-wide v6, v6, Lwz;->a:J

    sub-long/2addr v1, v6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 130
    const-string v0, "bg_sended"

    iget-object v1, p1, Lwy;->e:Lwz;

    iget-wide v1, v1, Lwz;->b:J

    iget-object v6, p1, Lwy;->d:Lwz;

    iget-wide v6, v6, Lwz;->b:J

    sub-long/2addr v1, v6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 131
    const-string v0, "bg_timeu"

    iget-object v1, p1, Lwy;->e:Lwz;

    iget-wide v1, v1, Lwz;->c:J

    iget-object v6, p1, Lwy;->d:Lwz;

    iget-wide v6, v6, Lwz;->c:J

    sub-long/2addr v1, v6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 133
    iget-object v0, p0, Lxj;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "traffic"

    new-array v2, v8, [Ljava/lang/String;

    const-string v6, "_id"

    aput-object v6, v2, v5

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 135
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 136
    iget-object v1, p0, Lxj;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "traffic"

    invoke-virtual {v1, v2, v9, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 147
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 148
    goto/16 :goto_0

    .line 139
    :cond_2
    const-string v1, "date"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 140
    const-string v1, "uid"

    iget v2, p1, Lwy;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 141
    const-string v1, "pkg_name"

    iget-object v2, p1, Lwy;->b:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v1, "version"

    iget-object v2, p1, Lwy;->b:Ljava/lang/String;

    invoke-static {v2}, Lxj;->c(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 143
    const-string v1, "create_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 145
    iget-object v1, p0, Lxj;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "traffic"

    invoke-virtual {v1, v2, v4, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_1
.end method
