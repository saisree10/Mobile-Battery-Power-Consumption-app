.class public Lxe;
.super Lxi;
.source "AppRamDbTable.java"


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lxi;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 52
    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    const-string v0, "CREATE TABLE IF NOT EXISTS ram (_id INTEGER PRIMARY KEY,hour INTEGER,pkg_name TEXT,version INTEGER,fg_l INTEGER,fg_h INTEGER,fg_a INTEGER,fg_c INTEGER,bg_l INTEGER,bg_h INTEGER,bg_a INTEGER,bg_c INTEGER);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 48
    return-void
.end method


# virtual methods
.method public a(J)Ljava/util/List;
    .locals 13
    .parameter

    .prologue
    .line 162
    invoke-static {p1, p2}, Lxe;->h(J)J

    move-result-wide v0

    .line 163
    invoke-static {p1, p2}, Lxe;->i(J)J

    move-result-wide v5

    .line 164
    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "pkg_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "version"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "fg_l"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "fg_h"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "fg_a"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "fg_c"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "bg_l"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "bg_h"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "bg_a"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "bg_c"

    aput-object v4, v2, v3

    .line 176
    const-string v3, "hour >= ? and hour <= ?"

    .line 177
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    const/4 v0, 0x1

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 181
    iget-object v0, p0, Lxe;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ram"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 183
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 184
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 186
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 187
    invoke-static {v3}, Lxe;->c(Ljava/lang/String;)I

    move-result v4

    .line 188
    if-ne v0, v4, :cond_0

    .line 191
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 192
    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 193
    const/4 v0, 0x4

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 194
    const/4 v0, 0x5

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 195
    const/4 v0, 0x6

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 196
    const/4 v0, 0x7

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 197
    const/16 v0, 0x8

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 198
    const/16 v0, 0x9

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 200
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lww;

    .line 201
    if-nez v0, :cond_1

    .line 202
    new-instance v0, Lww;

    invoke-direct {v0}, Lww;-><init>()V

    .line 203
    iput-object v3, v0, Lww;->a:Ljava/lang/String;

    .line 204
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_1
    iget-object v3, v0, Lww;->b:Lxl;

    new-instance v12, Lxl;

    invoke-direct {v12, v4, v5, v6, v7}, Lxl;-><init>(IIII)V

    invoke-virtual {v3, v12}, Lxl;->a(Lxl;)V

    .line 207
    iget-object v0, v0, Lww;->c:Lxl;

    new-instance v3, Lxl;

    invoke-direct {v3, v8, v9, v10, v11}, Lxl;-><init>(IIII)V

    invoke-virtual {v0, v3}, Lxl;->a(Lxl;)V

    goto :goto_0

    .line 209
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 113
    const-string v0, "pkg_name=?"

    .line 114
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 115
    iget-object v2, p0, Lxe;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "ram"

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 116
    return-void
.end method

.method public a(Ljava/util/HashMap;J)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 55
    const/16 v0, 0x9

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "pkg_name"

    aput-object v0, v2, v8

    const-string v0, "fg_l"

    aput-object v0, v2, v9

    const-string v0, "fg_h"

    aput-object v0, v2, v10

    const-string v0, "fg_a"

    aput-object v0, v2, v11

    const/4 v0, 0x4

    const-string v1, "fg_c"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "bg_l"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "bg_h"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "bg_a"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string v1, "bg_c"

    aput-object v1, v2, v0

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 67
    iget-object v0, p0, Lxe;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ram"

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 68
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 69
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    new-instance v1, Lww;

    invoke-direct {v1}, Lww;-><init>()V

    .line 71
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lww;->a:Ljava/lang/String;

    .line 72
    iget-object v2, v1, Lww;->b:Lxl;

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lxl;->a:I

    .line 73
    iget-object v2, v1, Lww;->b:Lxl;

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lxl;->b:I

    .line 74
    iget-object v2, v1, Lww;->b:Lxl;

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lxl;->c:I

    .line 75
    iget-object v2, v1, Lww;->b:Lxl;

    const/4 v3, 0x4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lxl;->d:I

    .line 76
    iget-object v2, v1, Lww;->c:Lxl;

    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lxl;->a:I

    .line 77
    iget-object v2, v1, Lww;->c:Lxl;

    const/4 v3, 0x6

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lxl;->b:I

    .line 78
    iget-object v2, v1, Lww;->c:Lxl;

    const/4 v3, 0x7

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lxl;->c:I

    .line 79
    iget-object v2, v1, Lww;->c:Lxl;

    const/16 v3, 0x8

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lxl;->d:I

    .line 80
    iget-object v2, v1, Lww;->a:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 82
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 83
    return-void
.end method

.method public a(Lww;J)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 86
    const-string v3, "pkg_name=? AND hour=?"

    .line 87
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p1, Lww;->a:Ljava/lang/String;

    aput-object v0, v4, v7

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .line 88
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 89
    const-string v0, "fg_l"

    iget-object v1, p1, Lww;->b:Lxl;

    iget v1, v1, Lxl;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 90
    const-string v0, "fg_h"

    iget-object v1, p1, Lww;->b:Lxl;

    iget v1, v1, Lxl;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 91
    const-string v0, "fg_a"

    iget-object v1, p1, Lww;->b:Lxl;

    iget v1, v1, Lxl;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 92
    const-string v0, "fg_c"

    iget-object v1, p1, Lww;->b:Lxl;

    iget v1, v1, Lxl;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    const-string v0, "bg_l"

    iget-object v1, p1, Lww;->c:Lxl;

    iget v1, v1, Lxl;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 94
    const-string v0, "bg_h"

    iget-object v1, p1, Lww;->c:Lxl;

    iget v1, v1, Lxl;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    const-string v0, "bg_a"

    iget-object v1, p1, Lww;->c:Lxl;

    iget v1, v1, Lxl;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 96
    const-string v0, "bg_c"

    iget-object v1, p1, Lww;->c:Lxl;

    iget v1, v1, Lxl;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    iget-object v0, p0, Lxe;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ram"

    new-array v2, v2, [Ljava/lang/String;

    const-string v6, "_id"

    aput-object v6, v2, v7

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 100
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lxe;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "ram"

    invoke-virtual {v1, v2, v8, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 109
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 110
    return-void

    .line 103
    :cond_0
    const-string v1, "hour"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 104
    const-string v1, "pkg_name"

    iget-object v2, p1, Lww;->a:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v1, "version"

    iget-object v2, p1, Lww;->a:Ljava/lang/String;

    invoke-static {v2}, Lxe;->c(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    iget-object v1, p0, Lxe;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "ram"

    invoke-virtual {v1, v2, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0
.end method

.method public b(J)V
    .locals 4
    .parameter

    .prologue
    .line 215
    const-wide/32 v0, 0xa4cb800

    sub-long v0, p1, v0

    .line 216
    invoke-static {v0, v1}, Lxe;->f(J)J

    move-result-wide v0

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hour < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lxe;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "ram"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 219
    return-void
.end method
