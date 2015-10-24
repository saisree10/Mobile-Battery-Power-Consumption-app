.class public Lni;
.super Ljava/lang/Object;
.source "RecommandCacheHelper.java"


# static fields
.field private static a:Lni;


# instance fields
.field private b:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Lnj;

    invoke-direct {v0, p1}, Lnj;-><init>(Landroid/content/Context;)V

    .line 82
    invoke-virtual {v0}, Lnj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lni;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 83
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lni;
    .locals 2
    .parameter

    .prologue
    .line 72
    const-class v1, Lni;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lni;->a:Lni;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lni;

    invoke-direct {v0, p0}, Lni;-><init>(Landroid/content/Context;)V

    sput-object v0, Lni;->a:Lni;

    .line 75
    :cond_0
    sget-object v0, Lni;->a:Lni;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lnk;
    .locals 11
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 86
    new-instance v8, Lnk;

    invoke-direct {v8, p1}, Lnk;-><init>(Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "json"

    aput-object v0, v2, v9

    const-string v0, "last_modified"

    aput-object v0, v2, v10

    const/4 v0, 0x2

    const-string v1, "last_pull"

    aput-object v1, v2, v0

    .line 93
    const-string v3, "child=?"

    .line 94
    new-array v4, v10, [Ljava/lang/String;

    aput-object p1, v4, v9

    .line 97
    iget-object v0, p0, Lni;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "tb_recommend"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 101
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lnk;->b:Ljava/lang/String;

    .line 103
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v8, Lnk;->c:J

    .line 104
    const-wide/16 v1, 0x0

    iput-wide v1, v8, Lnk;->d:J

    .line 106
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 107
    return-object v8
.end method

.method public a(Lnk;)V
    .locals 6
    .parameter

    .prologue
    .line 111
    const-string v0, "child=?"

    .line 112
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p1, Lnk;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 116
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 117
    const-string v3, "json"

    iget-object v4, p1, Lnk;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v3, "last_modified"

    iget-wide v4, p1, Lnk;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 119
    const-string v3, "last_pull"

    iget-wide v4, p1, Lnk;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 121
    iget-object v3, p0, Lni;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "tb_recommend"

    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 123
    if-nez v0, :cond_0

    .line 124
    const-string v0, "child"

    iget-object v1, p1, Lnk;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lni;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "tb_recommend"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 127
    :cond_0
    return-void
.end method
