.class public Laik;
.super Ljava/lang/Object;
.source "BatteryCurveChartDBHelper.java"


# static fields
.field private static b:Laik;


# instance fields
.field private a:Landroid/content/Context;

.field private c:Lail;

.field private d:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Laik;->a:Landroid/content/Context;

    .line 57
    new-instance v0, Lail;

    iget-object v2, p0, Laik;->a:Landroid/content/Context;

    const-string v3, "batterycurve.db"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lail;-><init>(Laik;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Laik;->c:Lail;

    .line 59
    iget-object v0, p0, Laik;->c:Lail;

    invoke-virtual {v0}, Lail;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Laik;->d:Landroid/database/sqlite/SQLiteDatabase;

    .line 60
    return-void
.end method

.method public static a(Landroid/content/Context;)Laik;
    .locals 2
    .parameter

    .prologue
    .line 63
    sget-object v0, Laik;->b:Laik;

    if-nez v0, :cond_1

    .line 64
    const-class v1, Laik;

    monitor-enter v1

    .line 65
    :try_start_0
    sget-object v0, Laik;->b:Laik;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Laik;

    invoke-direct {v0, p0}, Laik;-><init>(Landroid/content/Context;)V

    sput-object v0, Laik;->b:Laik;

    .line 68
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_1
    sget-object v0, Laik;->b:Laik;

    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a()Lain;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 74
    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v0, p0, Laik;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "battery_info"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "cdate"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "yesterday"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "today"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 79
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    new-instance v0, Lain;

    iget-object v2, p0, Laik;->a:Landroid/content/Context;

    invoke-static {v2}, Laim;->a(Landroid/content/Context;)Laim;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v2}, Lain;-><init>(Laim;)V

    .line 81
    const-string v2, "cdate"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lain;->a:J

    .line 82
    const-string v2, "yesterday"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lain;->b:Ljava/lang/String;

    .line 83
    const-string v2, "today"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lain;->c:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 87
    if-eqz v1, :cond_0

    .line 88
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 91
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 87
    :cond_1
    if-eqz v1, :cond_2

    .line 88
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v8

    .line 91
    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v8, :cond_3

    .line 88
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 74
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 87
    :catchall_2
    move-exception v0

    move-object v8, v1

    goto :goto_1
.end method

.method public declared-synchronized a(Lain;)V
    .locals 4
    .parameter

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 96
    const-string v1, "cdate"

    iget-wide v2, p1, Lain;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 97
    iget-object v1, p1, Lain;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    const-string v1, "yesterday"

    iget-object v2, p1, Lain;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_0
    iget-object v1, p1, Lain;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 101
    const-string v1, "today"

    iget-object v2, p1, Lain;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_1
    iget-object v1, p0, Laik;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "battery_info"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lain;)V
    .locals 5
    .parameter

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 108
    const-string v1, "cdate"

    iget-wide v2, p1, Lain;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 109
    const-string v1, "yesterday"

    iget-object v2, p1, Lain;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v1, "today"

    iget-object v2, p1, Lain;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :try_start_1
    iget-object v1, p0, Laik;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "battery_info"

    const-string v3, "id=1"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 115
    :goto_0
    monitor-exit p0

    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 113
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized c(Lain;)V
    .locals 5
    .parameter

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 119
    const-string v1, "today"

    iget-object v2, p1, Lain;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :try_start_1
    iget-object v1, p0, Laik;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "battery_info"

    const-string v3, "id=1"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 124
    :goto_0
    monitor-exit p0

    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 122
    :catch_0
    move-exception v0

    goto :goto_0
.end method
