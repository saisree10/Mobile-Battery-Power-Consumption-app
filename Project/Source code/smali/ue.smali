.class public Lue;
.super Ljava/lang/Object;
.source "DBUtils.java"


# direct methods
.method public static a(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 26
    const/4 v3, 0x0

    .line 28
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    .line 30
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c

    move-result v0

    .line 59
    if-eqz v2, :cond_0

    .line 61
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 62
    :catch_0
    move-exception v1

    .line 63
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_0

    .line 64
    const-string v2, "stat.DBUtils"

    const-string v3, "Close has IOException!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 33
    :catch_1
    move-exception v1

    move-object v2, v3

    .line 34
    :goto_1
    :try_start_3
    sget-boolean v3, Lud;->d:Z

    if-eqz v3, :cond_1

    .line 35
    const-string v3, "stat.DBUtils"

    const-string v4, "GetDbSize has FileNotFoundException!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 59
    :cond_1
    if-eqz v2, :cond_0

    .line 61
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 62
    :catch_2
    move-exception v1

    .line 63
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_0

    .line 64
    const-string v2, "stat.DBUtils"

    const-string v3, "Close has IOException!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 38
    :catch_3
    move-exception v1

    .line 39
    :goto_2
    :try_start_5
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_2

    .line 40
    const-string v2, "stat.DBUtils"

    const-string v4, "GetDbSize has SecurityException!"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 59
    :cond_2
    if-eqz v3, :cond_0

    .line 61
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 62
    :catch_4
    move-exception v1

    .line 63
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_0

    .line 64
    const-string v2, "stat.DBUtils"

    const-string v3, "Close has IOException!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 43
    :catch_5
    move-exception v1

    .line 44
    :goto_3
    :try_start_7
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_3

    .line 45
    const-string v2, "stat.DBUtils"

    const-string v4, "GetDbSize has NullPointerException!"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 59
    :cond_3
    if-eqz v3, :cond_0

    .line 61
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_0

    .line 62
    :catch_6
    move-exception v1

    .line 63
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_0

    .line 64
    const-string v2, "stat.DBUtils"

    const-string v3, "Close has IOException!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 48
    :catch_7
    move-exception v1

    .line 49
    :goto_4
    :try_start_9
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_4

    .line 50
    const-string v2, "stat.DBUtils"

    const-string v4, "GetDbSize has IOException!"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 59
    :cond_4
    if-eqz v3, :cond_0

    .line 61
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_0

    .line 62
    :catch_8
    move-exception v1

    .line 63
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_0

    .line 64
    const-string v2, "stat.DBUtils"

    const-string v3, "Close has IOException!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 53
    :catch_9
    move-exception v1

    .line 54
    :goto_5
    :try_start_b
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_5

    .line 55
    const-string v2, "stat.DBUtils"

    const-string v4, "GetDbSize has Exception!"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 59
    :cond_5
    if-eqz v3, :cond_0

    .line 61
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    goto/16 :goto_0

    .line 62
    :catch_a
    move-exception v1

    .line 63
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_0

    .line 64
    const-string v2, "stat.DBUtils"

    const-string v3, "Close has IOException!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 59
    :catchall_0
    move-exception v0

    :goto_6
    if-eqz v3, :cond_6

    .line 61
    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    .line 66
    :cond_6
    :goto_7
    throw v0

    .line 62
    :catch_b
    move-exception v1

    .line 63
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_6

    .line 64
    const-string v2, "stat.DBUtils"

    const-string v3, "Close has IOException!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 59
    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_6

    .line 53
    :catch_c
    move-exception v1

    move-object v3, v2

    goto :goto_5

    .line 48
    :catch_d
    move-exception v1

    move-object v3, v2

    goto :goto_4

    .line 43
    :catch_e
    move-exception v1

    move-object v3, v2

    goto :goto_3

    .line 38
    :catch_f
    move-exception v1

    move-object v3, v2

    goto/16 :goto_2

    .line 33
    :catch_10
    move-exception v1

    goto/16 :goto_1
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)J
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x0

    .line 89
    .line 90
    const-wide/16 v9, 0x0

    .line 93
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ASC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 97
    if-eqz v2, :cond_5

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 98
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 99
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-wide v9

    move-wide v0, v9

    .line 109
    :goto_0
    if-eqz v2, :cond_0

    .line 110
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 113
    :cond_0
    :goto_1
    return-wide v0

    .line 101
    :catch_0
    move-exception v0

    move-object v1, v11

    .line 102
    :goto_2
    :try_start_2
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_1

    .line 103
    const-string v2, "stat.DBUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to query the db of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 109
    :cond_1
    if-eqz v1, :cond_4

    .line 110
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-wide v0, v9

    goto :goto_1

    .line 104
    :catch_1
    move-exception v0

    .line 105
    :goto_3
    :try_start_3
    sget-boolean v1, Lud;->d:Z

    if-eqz v1, :cond_2

    .line 106
    const-string v1, "stat.DBUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to query the db of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 109
    :cond_2
    if-eqz v11, :cond_4

    .line 110
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    move-wide v0, v9

    goto :goto_1

    .line 109
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v11, :cond_3

    .line 110
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 109
    :catchall_1
    move-exception v0

    move-object v11, v2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v11, v1

    goto :goto_4

    .line 104
    :catch_2
    move-exception v0

    move-object v11, v2

    goto :goto_3

    .line 101
    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :cond_4
    move-wide v0, v9

    goto :goto_1

    :cond_5
    move-wide v0, v9

    goto :goto_0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)J
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    .line 132
    .line 134
    :try_start_0
    invoke-static {p3}, Lue;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 135
    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 136
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 137
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-wide v0

    .line 150
    if-eqz v2, :cond_0

    .line 151
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-wide v0

    .line 150
    :cond_1
    if-eqz v2, :cond_2

    .line 151
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    move-wide v0, v8

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    move-object v1, v10

    .line 141
    :goto_1
    :try_start_2
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_3

    .line 142
    const-string v2, "stat.DBUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to query to DB of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 150
    :cond_3
    if-eqz v1, :cond_4

    .line 151
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move-wide v0, v8

    goto :goto_0

    .line 144
    :catch_1
    move-exception v0

    move-object v2, v10

    .line 145
    :goto_2
    :try_start_3
    sget-boolean v1, Lud;->d:Z

    if-eqz v1, :cond_5

    .line 146
    const-string v1, "stat.DBUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to query to DB of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 150
    :cond_5
    if-eqz v2, :cond_6

    .line 151
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6
    move-wide v0, v8

    goto :goto_0

    .line 150
    :catchall_0
    move-exception v0

    move-object v2, v10

    :goto_3
    if-eqz v2, :cond_7

    .line 151
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    .line 150
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 144
    :catch_2
    move-exception v0

    goto :goto_2

    .line 140
    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private static a([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 168
    const/4 v0, 0x0

    .line 169
    array-length v2, p0

    if-lez v2, :cond_2

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    const/4 v0, 0x1

    .line 172
    array-length v4, p0

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, p0, v2

    .line 173
    if-nez v0, :cond_0

    .line 174
    const-string v6, " AND "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    :goto_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string v5, "=?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 176
    goto :goto_1

    .line 181
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    :cond_2
    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    invoke-static {p1}, Lue;->a(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v0

    .line 120
    invoke-static {p0}, Ltg;->b(Landroid/content/Context;)J

    move-result-wide v1

    .line 122
    int-to-long v3, v0

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    .line 123
    invoke-static {p1, p2, p3}, Lue;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 125
    invoke-static {p1, p2, p3, v0, v1}, Lue;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;J)V

    .line 127
    :cond_0
    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    sget-boolean v0, Lud;->c:Z

    if-eqz v0, :cond_0

    .line 73
    const-string v0, "stat.DBUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The record in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with rowId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "will be delete."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    :cond_1
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    sget-boolean v1, Lud;->d:Z

    if-eqz v1, :cond_1

    .line 81
    const-string v1, "stat.DBUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to deleteByRowId in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 82
    :catch_1
    move-exception v0

    .line 83
    sget-boolean v1, Lud;->d:Z

    if-eqz v1, :cond_1

    .line 84
    const-string v1, "stat.DBUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to deleteByRowId in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 159
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 160
    const/4 v0, 0x0

    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 161
    aget-object v2, p2, v0

    aget-object v3, p3, v0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_0
    invoke-static {p4}, Lue;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0, p5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 165
    return-void
.end method
