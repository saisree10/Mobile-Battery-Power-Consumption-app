.class Lpe;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ToolboxSQLiteHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 105
    const-string v0, "toolbox.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 106
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 110
    const-string v0, "CREATE TABLE IF NOT EXISTS tb_cache(_id INTEGER  primary key autoincrement,ad_tag TEXT,pid INTEGER,tid INTEGER,gid INTEGER,iid INTEGER,name TEXT,pkg_name TEXT,desc TEXT,short_desc TEXT,position INTEGER,open_type INTEGER,url_source TEXT,icon TEXT,url_play TEXT,url_apk TEXT,pts INTEGER,points INTEGER,download INTEGER,new INTEGER,click_time INTEGER,finish_flag INTEGER,update_time INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 145
    const-string v0, "CREATE TABLE IF NOT EXISTS tb_validclick(_id INTEGER  primary key autoincrement,pkg_name TEXT,click_DATA TEXT,click_time INTEGER,status INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 161
    const-string v0, "ToolboxSQLHelper"

    const-string v1, "upgrade db from %d to %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v0, "DROP TABLE IF EXISTS tb_cache"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 163
    const-string v0, "DROP TABLE IF EXISTS tb_validclick"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 165
    if-ne p2, v5, :cond_0

    .line 167
    const-string v0, "DROP TABLE IF EXISTS tb_cache_view"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 168
    const-string v0, "DROP TABLE IF EXISTS tb_cache_banner"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 171
    const-string v0, "DROP TABLE IF EXISTS tb_cache_ADUNLOCK"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 174
    :cond_0
    invoke-virtual {p0, p1}, Lpe;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 175
    return-void
.end method
