.class final Lsj;
.super Ljava/lang/Object;
.source "AppDatabase.java"


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private b:Lsl;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "a"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "b"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "c"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "d"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "e"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "f"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "g"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "h"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "i"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "k"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "l"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "m"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "n"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "o"

    aput-object v2, v0, v1

    sput-object v0, Lsj;->a:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lsl;

    invoke-direct {v0, p0, p1, p2}, Lsl;-><init>(Lsj;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lsj;->b:Lsl;

    .line 67
    iput-object p1, p0, Lsj;->c:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lsj;->d:Ljava/lang/String;

    .line 69
    return-void
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lsk;
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 293
    .line 297
    :try_start_0
    iget-object v0, p0, Lsj;->b:Lsl;

    invoke-virtual {v0}, Lsl;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 298
    iget-object v1, p0, Lsj;->d:Ljava/lang/String;

    sget-object v2, Lsj;->a:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "a ASC"

    move-object v3, p1

    move-object v4, p2

    move-object v8, p3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 302
    :try_start_1
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 303
    const-wide/16 v2, 0x0

    .line 306
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 307
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move v4, v10

    .line 310
    :goto_0
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-wide v2

    .line 313
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 315
    const-string v6, "b"

    const/4 v7, 0x1

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 316
    const-string v6, "c"

    const/4 v7, 0x2

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 317
    const-string v6, "d"

    const/4 v7, 0x3

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 318
    const-string v6, "e"

    const/4 v7, 0x4

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 319
    const-string v6, "f"

    const/4 v7, 0x5

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 320
    const-string v6, "g"

    const/4 v7, 0x6

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 321
    const-string v6, "h"

    const/4 v7, 0x7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 322
    const-string v6, "i"

    const/16 v7, 0x8

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 323
    const-string v6, "k"

    const/16 v7, 0x9

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 324
    const-string v6, "l"

    const/16 v7, 0xa

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 325
    const-string v6, "m"

    const/16 v7, 0xb

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 326
    const-string v6, "n"

    const/16 v7, 0xc

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 327
    const-string v6, "o"

    const/16 v7, 0xd

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 329
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 331
    add-int/lit8 v0, v4, 0x1

    .line 339
    :goto_1
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_6

    .line 342
    :goto_2
    sget-boolean v4, Lud;->c:Z

    if-eqz v4, :cond_0

    .line 343
    const-string v4, "stat.AppDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "There are "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " records are dumped out and the largest row id is "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_0
    new-instance v0, Lsk;

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p0, v4, v2, v3}, Lsk;-><init>(Lsj;Ljava/lang/String;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 354
    if-eqz v1, :cond_1

    .line 355
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 359
    :cond_1
    :goto_3
    return-object v0

    .line 332
    :catch_0
    move-exception v0

    .line 334
    :try_start_4
    sget-boolean v6, Lud;->d:Z

    if-eqz v6, :cond_2

    .line 335
    const-string v6, "stat.AppDatabase"

    const-string v7, "Failed to creat JSONObject!"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 337
    :cond_2
    invoke-direct {p0, v2, v3}, Lsj;->b(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move v0, v4

    goto :goto_1

    .line 349
    :catch_1
    move-exception v0

    move-object v1, v9

    .line 350
    :goto_4
    :try_start_5
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_3

    .line 351
    const-string v2, "stat.AppDatabase"

    const-string v3, "Failed to query the db."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 354
    :cond_3
    if-eqz v1, :cond_4

    .line 355
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v9

    .line 359
    goto :goto_3

    .line 354
    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_5
    if-eqz v1, :cond_5

    .line 355
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 354
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 349
    :catch_2
    move-exception v0

    goto :goto_4

    :cond_6
    move v4, v0

    goto/16 :goto_0

    :cond_7
    move v0, v10

    goto :goto_2
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 257
    const/4 v1, 0x0

    .line 259
    :try_start_0
    iget-object v0, p0, Lsj;->b:Lsl;

    invoke-virtual {v0}, Lsl;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 261
    iget-object v0, p0, Lsj;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 267
    if-eqz v1, :cond_0

    .line 269
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 271
    sget-boolean v1, Lud;->d:Z

    if-eqz v1, :cond_0

    .line 272
    const-string v1, "stat.AppDatabase"

    const-string v2, "Failed to close the db!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 262
    :catch_1
    move-exception v0

    .line 263
    :try_start_2
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_1

    .line 264
    const-string v2, "stat.AppDatabase"

    const-string v3, "Faild to clear data from db!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 267
    :cond_1
    if-eqz v1, :cond_0

    .line 269
    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 270
    :catch_2
    move-exception v0

    .line 271
    sget-boolean v1, Lud;->d:Z

    if-eqz v1, :cond_0

    .line 272
    const-string v1, "stat.AppDatabase"

    const-string v2, "Failed to close the db!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 267
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 269
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 274
    :cond_2
    :goto_1
    throw v0

    .line 270
    :catch_3
    move-exception v1

    .line 271
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_2

    .line 272
    const-string v2, "stat.AppDatabase"

    const-string v3, "Failed to close the db!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private b(J)V
    .locals 6
    .parameter

    .prologue
    .line 162
    sget-boolean v0, Lud;->c:Z

    if-eqz v0, :cond_0

    .line 163
    const-string v0, "stat.AppDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The record with rowId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " will be deleted."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_0
    const/4 v1, 0x0

    .line 168
    :try_start_0
    iget-object v0, p0, Lsj;->b:Lsl;

    invoke-virtual {v0}, Lsl;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 170
    iget-object v0, p0, Lsj;->d:Ljava/lang/String;

    const-string v2, "a=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 177
    if-eqz v1, :cond_1

    .line 179
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 187
    :cond_1
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 181
    sget-boolean v1, Lud;->d:Z

    if-eqz v1, :cond_1

    .line 182
    const-string v1, "stat.AppDatabase"

    const-string v2, "Failed to close the db!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 172
    :catch_1
    move-exception v0

    .line 173
    :try_start_2
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_2

    .line 174
    const-string v2, "stat.AppDatabase"

    const-string v3, "Failed to deleteByRowId!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    :cond_2
    if-eqz v1, :cond_1

    .line 179
    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 180
    :catch_2
    move-exception v0

    .line 181
    sget-boolean v1, Lud;->d:Z

    if-eqz v1, :cond_1

    .line 182
    const-string v1, "stat.AppDatabase"

    const-string v2, "Failed to close the db!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 179
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 184
    :cond_3
    :goto_1
    throw v0

    .line 180
    :catch_3
    move-exception v1

    .line 181
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_3

    .line 182
    const-string v2, "stat.AppDatabase"

    const-string v3, "Failed to close the db!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private c()J
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 191
    .line 193
    const-wide/16 v9, 0x0

    .line 196
    :try_start_0
    iget-object v0, p0, Lsj;->b:Lsl;

    invoke-virtual {v0}, Lsl;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lsj;->d:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "a"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "a ASC"

    const-string v8, "1"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 200
    if-eqz v2, :cond_4

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 201
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 202
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v9

    move-wide v0, v9

    .line 209
    :goto_0
    if-eqz v2, :cond_0

    .line 210
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 214
    :cond_0
    :goto_1
    return-wide v0

    .line 204
    :catch_0
    move-exception v0

    move-object v1, v11

    .line 205
    :goto_2
    :try_start_2
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_1

    .line 206
    const-string v2, "stat.AppDatabase"

    const-string v3, "Failed to query the db."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 209
    :cond_1
    if-eqz v1, :cond_3

    .line 210
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-wide v0, v9

    goto :goto_1

    .line 209
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v11, :cond_2

    .line 210
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 209
    :catchall_1
    move-exception v0

    move-object v11, v2

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v11, v1

    goto :goto_3

    .line 204
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :cond_3
    move-wide v0, v9

    goto :goto_1

    :cond_4
    move-wide v0, v9

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 3

    .prologue
    .line 144
    :try_start_0
    iget-object v0, p0, Lsj;->b:Lsl;

    invoke-virtual {v0}, Lsl;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 145
    invoke-static {v0}, Lue;->a(Landroid/database/sqlite/SQLiteDatabase;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 151
    :goto_0
    return v0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    sget-boolean v1, Lud;->d:Z

    if-eqz v1, :cond_0

    .line 148
    const-string v1, "stat.AppDatabase"

    const-string v2, "Failed to get the Size of DB"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)V
    .locals 6
    .parameter

    .prologue
    .line 218
    const/4 v1, 0x0

    .line 220
    :try_start_0
    iget-object v0, p0, Lsj;->b:Lsl;

    invoke-virtual {v0}, Lsl;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 222
    iget-object v0, p0, Lsj;->d:Ljava/lang/String;

    const-string v2, "j=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 229
    if-eqz v1, :cond_0

    .line 231
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 233
    sget-boolean v1, Lud;->d:Z

    if-eqz v1, :cond_0

    .line 234
    const-string v1, "stat.AppDatabase"

    const-string v2, "Failed to close the db!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 224
    :catch_1
    move-exception v0

    .line 225
    :try_start_2
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_1

    .line 226
    const-string v2, "stat.AppDatabase"

    const-string v3, "DeleteByPublicKeyVersion has Exception!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 229
    :cond_1
    if-eqz v1, :cond_0

    .line 231
    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 232
    :catch_2
    move-exception v0

    .line 233
    sget-boolean v1, Lud;->d:Z

    if-eqz v1, :cond_0

    .line 234
    const-string v1, "stat.AppDatabase"

    const-string v2, "Failed to close the db!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 229
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 231
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 236
    :cond_2
    :goto_1
    throw v0

    .line 232
    :catch_3
    move-exception v1

    .line 233
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_2

    .line 234
    const-string v2, "stat.AppDatabase"

    const-string v3, "Failed to close the db!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public a(J)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 248
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 249
    invoke-direct {p0, v2, v2}, Lsj;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 254
    :goto_0
    return-void

    .line 251
    :cond_0
    const-string v0, "a<=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lsj;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ltd;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 76
    .line 78
    :try_start_0
    iget-object v1, p0, Lsj;->b:Lsl;

    invoke-virtual {v1}, Lsl;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 80
    invoke-static {v2}, Lue;->a(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    .line 81
    iget-object v3, p0, Lsj;->c:Landroid/content/Context;

    invoke-static {v3}, Ltg;->b(Landroid/content/Context;)J

    move-result-wide v3

    .line 83
    sget-boolean v5, Lud;->c:Z

    if-eqz v5, :cond_0

    .line 84
    const-string v5, "stat.AppDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Current db file is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and its size is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and its max size is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    int-to-long v5, v1

    cmp-long v1, v5, v3

    if-lez v1, :cond_1

    .line 90
    invoke-direct {p0}, Lsj;->c()J

    move-result-wide v3

    .line 92
    invoke-direct {p0, v3, v4}, Lsj;->b(J)V

    .line 95
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 96
    invoke-virtual {p1}, Ltd;->o()Ljava/lang/String;

    move-result-object v3

    .line 98
    const-string v4, "b"

    invoke-virtual {p1}, Ltd;->m()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lte;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v4, "c"

    invoke-virtual {p1}, Ltd;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lte;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v4, "d"

    invoke-virtual {p1}, Ltd;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lte;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v4, "e"

    invoke-virtual {p1}, Ltd;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lte;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v4, "f"

    invoke-virtual {p1}, Ltd;->g()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lte;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v4, "g"

    invoke-virtual {p1}, Ltd;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lte;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v4, "h"

    invoke-virtual {p1}, Ltd;->f()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lte;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v4, "i"

    invoke-virtual {p1}, Ltd;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v4, "j"

    invoke-virtual {p1}, Ltd;->n()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 114
    const-string v4, "k"

    invoke-virtual {p1}, Ltd;->h()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lte;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v4, "l"

    invoke-virtual {p1}, Ltd;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lte;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v4, "m"

    invoke-virtual {p1}, Ltd;->i()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lte;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v4, "n"

    invoke-virtual {p1}, Ltd;->j()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lte;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v4, "o"

    invoke-virtual {p1}, Ltd;->k()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lte;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v3, p0, Lsj;->d:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v3

    .line 123
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_2

    const/4 v0, 0x1

    .line 130
    :cond_2
    if-eqz v2, :cond_3

    .line 132
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 137
    :cond_3
    :goto_0
    return v0

    .line 133
    :catch_0
    move-exception v1

    .line 134
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_3

    .line 135
    const-string v2, "stat.AppDatabase"

    const-string v3, "Failed to close the db!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 124
    :catch_1
    move-exception v1

    .line 125
    :try_start_2
    sget-boolean v3, Lud;->d:Z

    if-eqz v3, :cond_4

    .line 126
    const-string v3, "stat.AppDatabase"

    const-string v4, "Failed to push to DB!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    :cond_4
    if-eqz v2, :cond_3

    .line 132
    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 133
    :catch_2
    move-exception v1

    .line 134
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_3

    .line 135
    const-string v2, "stat.AppDatabase"

    const-string v3, "Failed to close the db!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_5

    .line 132
    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 137
    :cond_5
    :goto_1
    throw v0

    .line 133
    :catch_3
    move-exception v1

    .line 134
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_5

    .line 135
    const-string v2, "stat.AppDatabase"

    const-string v3, "Failed to close the db!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public b(I)Lsk;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 287
    if-gtz p1, :cond_0

    move-object v0, v1

    :goto_0
    invoke-direct {p0, v1, v1, v0}, Lsj;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lsk;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 364
    :try_start_0
    iget-object v0, p0, Lsj;->b:Lsl;

    invoke-virtual {v0}, Lsl;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 365
    iget-object v1, p0, Lsj;->d:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "1"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 367
    if-eqz v0, :cond_0

    .line 368
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 369
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    if-nez v1, :cond_1

    move v0, v9

    :goto_0
    move v9, v0

    .line 378
    :cond_0
    :goto_1
    return v9

    .line 370
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 374
    :catch_0
    move-exception v0

    .line 375
    sget-boolean v1, Lud;->d:Z

    if-eqz v1, :cond_0

    .line 376
    const-string v1, "stat.AppDatabase"

    const-string v2, "Failed to judge db empty!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
