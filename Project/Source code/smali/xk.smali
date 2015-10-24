.class public Lxk;
.super Lxi;
.source "SystemStateDbTable.java"


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lxi;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 42
    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    const-string v0, "CREATE TABLE IF NOT EXISTS system (_id INTEGER PRIMARY KEY,hour INTEGER,cpu_l INTEGER,cpu_h INTEGER,cpu_a INTEGER,cpu_c INTEGER,ram_l INTEGER,ram_h INTEGER,ram_a INTEGER,ram_c INTEGER);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 4
    .parameter

    .prologue
    .line 136
    const-wide/32 v0, 0x5265c00

    sub-long v0, p1, v0

    .line 137
    invoke-static {v0, v1}, Lxk;->g(J)J

    move-result-wide v0

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hour < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lxk;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "system"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 140
    return-void
.end method

.method public a(Lxb;)V
    .locals 9
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p1, Lxb;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 74
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 75
    const-string v0, "cpu_l"

    iget-object v1, p1, Lxb;->b:Lxl;

    iget v1, v1, Lxl;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 76
    const-string v0, "cpu_h"

    iget-object v1, p1, Lxb;->b:Lxl;

    iget v1, v1, Lxl;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 77
    const-string v0, "cpu_a"

    iget-object v1, p1, Lxb;->b:Lxl;

    iget v1, v1, Lxl;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 78
    const-string v0, "cpu_c"

    iget-object v1, p1, Lxb;->b:Lxl;

    iget v1, v1, Lxl;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 79
    const-string v0, "ram_l"

    iget-object v1, p1, Lxb;->c:Lxl;

    iget v1, v1, Lxl;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 80
    const-string v0, "ram_h"

    iget-object v1, p1, Lxb;->c:Lxl;

    iget v1, v1, Lxl;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 81
    const-string v0, "ram_a"

    iget-object v1, p1, Lxb;->c:Lxl;

    iget v1, v1, Lxl;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 82
    const-string v0, "ram_c"

    iget-object v1, p1, Lxb;->c:Lxl;

    iget v1, v1, Lxl;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 84
    iget-object v0, p0, Lxk;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "system"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v2, v5

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 86
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lxk;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "system"

    invoke-virtual {v1, v2, v8, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 92
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 93
    return-void

    .line 89
    :cond_0
    const-string v1, "hour"

    iget-wide v2, p1, Lxb;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 90
    iget-object v1, p0, Lxk;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "system"

    invoke-virtual {v1, v2, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0
.end method

.method public a(Lxb;J)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 45
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "cpu_l"

    aput-object v0, v2, v8

    const-string v0, "cpu_h"

    aput-object v0, v2, v9

    const-string v0, "cpu_a"

    aput-object v0, v2, v10

    const-string v0, "cpu_c"

    aput-object v0, v2, v11

    const/4 v0, 0x4

    const-string v1, "ram_l"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "ram_h"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "ram_a"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "ram_c"

    aput-object v1, v2, v0

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 56
    iget-object v0, p0, Lxk;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "system"

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 58
    invoke-virtual {p1, p2, p3}, Lxb;->a(J)V

    .line 59
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p1, Lxb;->b:Lxl;

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lxl;->a:I

    .line 61
    iget-object v1, p1, Lxb;->b:Lxl;

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lxl;->b:I

    .line 62
    iget-object v1, p1, Lxb;->b:Lxl;

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lxl;->c:I

    .line 63
    iget-object v1, p1, Lxb;->b:Lxl;

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lxl;->d:I

    .line 64
    iget-object v1, p1, Lxb;->c:Lxl;

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lxl;->a:I

    .line 65
    iget-object v1, p1, Lxb;->c:Lxl;

    const/4 v2, 0x5

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lxl;->b:I

    .line 66
    iget-object v1, p1, Lxb;->c:Lxl;

    const/4 v2, 0x6

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lxl;->c:I

    .line 67
    iget-object v1, p1, Lxb;->c:Lxl;

    const/4 v2, 0x7

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lxl;->d:I

    .line 69
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 70
    return-void
.end method
