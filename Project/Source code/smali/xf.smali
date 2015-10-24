.class public Lxf;
.super Lxi;
.source "AppStartupAipDbTable.java"


# static fields
.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pkg_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "fg"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "bg"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "screen"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "count"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "last_startup"

    aput-object v2, v0, v1

    sput-object v0, Lxf;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lxi;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 53
    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 40
    const-string v0, "CREATE TABLE IF NOT EXISTS startup_aip (_id INTEGER PRIMARY KEY,date INTEGER,pkg_name TEXT,fg INTEGER,bg INTEGER,screen INTEGER,count INTEGER,last_startup INTEGER);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 49
    return-void
.end method


# virtual methods
.method public a(J)Ljava/util/HashMap;
    .locals 2
    .parameter

    .prologue
    .line 59
    invoke-static {p1, p2}, Lxf;->j(J)J

    move-result-wide v0

    .line 60
    invoke-virtual {p0, v0, v1}, Lxf;->c(J)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 123
    const-string v0, "pkg_name=?"

    .line 124
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 125
    iget-object v2, p0, Lxf;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "startup_aip"

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 126
    return-void
.end method

.method public a(Lwx;J)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 95
    const-string v3, "pkg_name=? AND date=?"

    .line 96
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p1, Lwx;->a:Ljava/lang/String;

    aput-object v0, v4, v7

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    .line 97
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 98
    const-string v0, "pkg_name"

    iget-object v1, p1, Lwx;->a:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v0, "date"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 100
    const-string v0, "fg"

    iget-wide v1, p1, Lwx;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 101
    const-string v0, "bg"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    const-string v0, "screen"

    iget-wide v1, p1, Lwx;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 103
    const-string v0, "count"

    iget v1, p1, Lwx;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 104
    const-string v0, "last_startup"

    iget-wide v1, p1, Lwx;->g:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 106
    iget-object v0, p0, Lxf;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "startup_aip"

    new-array v2, v6, [Ljava/lang/String;

    const-string v6, "_id"

    aput-object v6, v2, v7

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 108
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lxf;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "startup_aip"

    invoke-virtual {v1, v2, v8, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 113
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 114
    return-void

    .line 111
    :cond_0
    iget-object v1, p0, Lxf;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "startup_aip"

    invoke-virtual {v1, v2, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0
.end method

.method public b(J)Ljava/util/HashMap;
    .locals 2
    .parameter

    .prologue
    .line 67
    invoke-static {p1, p2}, Lxf;->k(J)J

    move-result-wide v0

    .line 68
    invoke-virtual {p0, v0, v1}, Lxf;->c(J)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public c(J)Ljava/util/HashMap;
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 72
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 73
    const-string v3, "date = ? "

    .line 74
    new-array v4, v9, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 77
    iget-object v0, p0, Lxf;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "startup_aip"

    sget-object v2, Lxf;->b:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 78
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 79
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    new-instance v3, Lwx;

    invoke-direct {v3}, Lwx;-><init>()V

    .line 81
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lwx;->a:Ljava/lang/String;

    .line 82
    iput-wide v1, v3, Lwx;->b:J

    .line 83
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lwx;->c:J

    .line 84
    iput-wide v1, v3, Lwx;->d:J

    .line 85
    const/4 v4, 0x4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lwx;->e:J

    .line 86
    const/4 v4, 0x5

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v3, Lwx;->f:I

    .line 87
    const/4 v4, 0x6

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lwx;->g:J

    .line 88
    iget-object v4, v3, Lwx;->a:Ljava/lang/String;

    invoke-virtual {v8, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 90
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 91
    return-object v8
.end method

.method public d(J)V
    .locals 4
    .parameter

    .prologue
    .line 117
    invoke-static {p1, p2}, Lxf;->k(J)J

    move-result-wide v0

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "date < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lxf;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "startup_aip"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 120
    return-void
.end method
