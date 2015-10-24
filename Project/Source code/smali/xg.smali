.class public Lxg;
.super Lxi;
.source "AppStartupDbTable.java"


# static fields
.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "pkg_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "fg"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "bg"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "screen"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "count"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "last_startup"

    aput-object v2, v0, v1

    sput-object v0, Lxg;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lxi;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 50
    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    const-string v0, "CREATE TABLE IF NOT EXISTS startup (_id INTEGER PRIMARY KEY,pkg_name TEXT,fg INTEGER,bg INTEGER,screen INTEGER,count INTEGER,last_startup INTEGER);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 46
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 92
    const-string v0, "pkg_name=?"

    .line 93
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 94
    iget-object v2, p0, Lxg;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "startup"

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 95
    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 53
    iget-object v0, p0, Lxg;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "startup"

    sget-object v2, Lxg;->b:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 54
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 55
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 56
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    new-instance v3, Lwx;

    invoke-direct {v3}, Lwx;-><init>()V

    .line 58
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lwx;->a:Ljava/lang/String;

    .line 59
    iput-wide v1, v3, Lwx;->b:J

    .line 60
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lwx;->c:J

    .line 61
    iput-wide v1, v3, Lwx;->d:J

    .line 62
    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lwx;->e:J

    .line 63
    const/4 v4, 0x4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v3, Lwx;->f:I

    .line 64
    const/4 v4, 0x5

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lwx;->g:J

    .line 65
    iget-object v4, v3, Lwx;->a:Ljava/lang/String;

    invoke-virtual {p1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 67
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 68
    return-void
.end method

.method public a(Lwx;)V
    .locals 9
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 71
    const-string v3, "pkg_name=?"

    .line 72
    new-array v4, v6, [Ljava/lang/String;

    iget-object v0, p1, Lwx;->a:Ljava/lang/String;

    aput-object v0, v4, v7

    .line 73
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 74
    const-string v0, "pkg_name"

    iget-object v1, p1, Lwx;->a:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v0, "fg"

    iget-wide v1, p1, Lwx;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 76
    const-string v0, "bg"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 77
    const-string v0, "screen"

    iget-wide v1, p1, Lwx;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 78
    const-string v0, "count"

    iget v1, p1, Lwx;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 79
    const-string v0, "last_startup"

    iget-wide v1, p1, Lwx;->g:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 81
    iget-object v0, p0, Lxg;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "startup"

    new-array v2, v6, [Ljava/lang/String;

    const-string v6, "_id"

    aput-object v6, v2, v7

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 83
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lxg;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "startup"

    invoke-virtual {v1, v2, v8, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 88
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 89
    return-void

    .line 86
    :cond_0
    iget-object v1, p0, Lxg;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "startup"

    invoke-virtual {v1, v2, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0
.end method
