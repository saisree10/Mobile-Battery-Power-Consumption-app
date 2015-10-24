.class public Lacm;
.super Ljava/lang/Object;
.source "ChargingAlgorithAndDBHelper.java"

# interfaces
.implements Ladc;


# static fields
.field public static final a:Ljava/util/ArrayList;

.field private static b:I

.field private static c:Landroid/content/SharedPreferences;

.field private static e:Landroid/database/sqlite/SQLiteDatabase;

.field private static f:Ljava/util/Hashtable;

.field private static g:Ljava/util/Hashtable;

.field private static h:Ljava/util/Hashtable;

.field private static i:Ljava/util/Hashtable;


# instance fields
.field private d:J

.field private j:Ljava/util/Hashtable;

.field private k:Ljava/util/Hashtable;

.field private l:Z

.field private m:Z

.field private n:I

.field private o:J

.field private p:I

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lacm;->a:Ljava/util/ArrayList;

    .line 36
    const/16 v0, 0x12c

    sput v0, Lacm;->b:I

    .line 64
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lacm;->f:Ljava/util/Hashtable;

    .line 65
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lacm;->g:Ljava/util/Hashtable;

    .line 67
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lacm;->h:Ljava/util/Hashtable;

    .line 68
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lacm;->i:Ljava/util/Hashtable;

    return-void
.end method

.method private a(II)I
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 219
    .line 221
    :try_start_0
    sget-object v0, Lacm;->e:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p2}, Lacm;->b(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "from_level="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 223
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    const-string v0, "time_average"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 227
    if-eqz v1, :cond_0

    .line 228
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 232
    :cond_0
    :goto_0
    return v0

    .line 227
    :cond_1
    if-eqz v1, :cond_2

    .line 228
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 232
    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    .line 227
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_1
    if-eqz v1, :cond_3

    .line 228
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 230
    :cond_3
    throw v0

    .line 227
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;I)I
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 503
    .line 505
    :try_start_0
    sget-object v0, Lacm;->e:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "from_level="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 507
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 508
    const-string v0, "time_average"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 511
    if-eqz v1, :cond_0

    .line 512
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 516
    :cond_0
    :goto_0
    return v0

    .line 511
    :cond_1
    if-eqz v1, :cond_2

    .line 512
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 516
    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    .line 511
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_1
    if-eqz v1, :cond_3

    .line 512
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 514
    :cond_3
    throw v0

    .line 511
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Lacm;
    .locals 1
    .parameter

    .prologue
    .line 154
    const/4 v0, 0x0

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lacm;->d:J

    .line 126
    sget-object v0, Lacm;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 127
    const-string v1, "lsdt"

    iget-wide v2, p0, Lacm;->d:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 128
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 129
    return-void
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lacm;->d:J

    .line 147
    sget-object v0, Lacm;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 148
    const-string v1, "fth"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 149
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 150
    return-void
.end method

.method private declared-synchronized a(III)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 236
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 237
    const-string v1, "from_level"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 238
    const-string v1, "time_average"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 240
    invoke-direct {p0, p2, p1}, Lacm;->a(II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 241
    sget-object v1, Lacm;->e:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p1}, Lacm;->b(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    :goto_0
    monitor-exit p0

    return-void

    .line 243
    :cond_0
    :try_start_1
    sget-object v1, Lacm;->e:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p1}, Lacm;->b(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "from_level="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(II)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 248
    .line 249
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 250
    sget-object v0, Lacm;->f:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 251
    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    move v1, v0

    .line 256
    :cond_0
    :goto_1
    return v1

    .line 251
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 252
    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 253
    sget-object v0, Lacm;->g:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 254
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1
.end method

.method private b(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 210
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 211
    const-string v0, "usbccharging"

    .line 215
    :goto_0
    return-object v0

    .line 212
    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 213
    const-string v0, "accharging"

    goto :goto_0

    .line 215
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lacm;->d:J

    .line 133
    sget-object v0, Lacm;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 134
    const-string v1, "cupl"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 135
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 136
    return-void
.end method

.method private b(III)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 260
    invoke-direct {p0, p1, p3}, Lacm;->b(II)I

    move-result v0

    .line 261
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 267
    :goto_0
    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    .line 268
    sget-object v0, Lacm;->f:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    :cond_0
    :goto_1
    invoke-direct {p0, p3, p1, p2}, Lacm;->c(III)V

    .line 274
    return-void

    .line 264
    :cond_1
    invoke-direct {p0, v0, p2}, Lacm;->c(II)I

    move-result p2

    goto :goto_0

    .line 269
    :cond_2
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 270
    sget-object v0, Lacm;->g:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private c(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 313
    mul-int/lit8 v0, p1, 0x5

    mul-int/lit8 v1, p2, 0x2

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x7

    return v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lacm;->d:J

    .line 140
    sget-object v0, Lacm;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 141
    const-string v1, "capl"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 142
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 143
    return-void
.end method

.method private static c(I)V
    .locals 10
    .parameter

    .prologue
    const/16 v3, 0x64

    const/4 v7, -0x1

    .line 409
    const/4 v0, 0x2

    if-ne v0, p0, :cond_1

    .line 410
    sget-object v1, Lacm;->f:Ljava/util/Hashtable;

    .line 411
    sget-object v0, Lacm;->h:Ljava/util/Hashtable;

    move-object v2, v1

    move-object v1, v0

    .line 421
    :goto_0
    const/4 v4, 0x0

    move v8, v3

    move v5, v3

    move v6, v7

    .line 423
    :goto_1
    if-ltz v8, :cond_0

    .line 424
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 425
    if-nez v0, :cond_2

    move v3, v7

    .line 426
    :goto_2
    if-ne v3, v7, :cond_3

    .line 427
    if-nez v8, :cond_6

    .line 458
    :cond_0
    return-void

    .line 412
    :cond_1
    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    .line 413
    sget-object v1, Lacm;->g:Ljava/util/Hashtable;

    .line 414
    sget-object v0, Lacm;->i:Ljava/util/Hashtable;

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    .line 425
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_2

    .line 437
    :cond_3
    if-ge v8, v5, :cond_4

    .line 439
    if-eq v6, v7, :cond_5

    .line 440
    add-int v0, v6, v3

    div-int/lit8 v0, v0, 0x2

    .line 443
    :goto_3
    add-int/lit8 v6, v8, 0x1

    if-le v5, v6, :cond_4

    .line 444
    add-int/2addr v4, v0

    .line 445
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v6, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_4
    move v0, v4

    .line 449
    add-int v4, v0, v3

    .line 450
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    add-int/lit8 v0, v8, -0x1

    .line 423
    :goto_4
    add-int/lit8 v5, v8, -0x1

    move v8, v5

    move v6, v3

    move v5, v0

    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_3

    :cond_6
    move v0, v5

    move v3, v6

    goto :goto_4
.end method

.method private c(III)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 277
    const/4 v0, 0x2

    if-ne v0, p1, :cond_2

    .line 278
    iget-object v0, p0, Lacm;->j:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lacm;->d:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 284
    invoke-direct {p0}, Lacm;->a()V

    .line 285
    invoke-direct {p0}, Lacm;->d()V

    .line 286
    sget v0, Lacm;->b:I

    invoke-direct {p0, v0}, Lacm;->a(I)V

    .line 288
    :cond_1
    return-void

    .line 279
    :cond_2
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 280
    iget-object v0, p0, Lacm;->k:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private d()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, -0x1

    .line 293
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    const/16 v0, 0x64

    if-gt v2, v0, :cond_4

    .line 294
    iget-object v0, p0, Lacm;->j:Ljava/util/Hashtable;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 295
    if-nez v0, :cond_2

    move v0, v1

    .line 296
    :goto_1
    if-eq v0, v1, :cond_0

    .line 297
    iput-boolean v4, p0, Lacm;->l:Z

    .line 298
    const/4 v3, 0x2

    invoke-direct {p0, v3, v2, v0}, Lacm;->a(III)V

    .line 301
    :cond_0
    iget-object v0, p0, Lacm;->k:Ljava/util/Hashtable;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 302
    if-nez v0, :cond_3

    move v0, v1

    .line 303
    :goto_2
    if-eq v0, v1, :cond_1

    .line 304
    iput-boolean v4, p0, Lacm;->m:Z

    .line 305
    invoke-direct {p0, v4, v2, v0}, Lacm;->a(III)V

    .line 293
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 295
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    .line 302
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    .line 308
    :cond_4
    iget-object v0, p0, Lacm;->j:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 309
    iget-object v0, p0, Lacm;->k:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 310
    return-void
.end method

.method private d(I)V
    .locals 0
    .parameter

    .prologue
    .line 461
    invoke-static {p1}, Lacm;->c(I)V

    .line 462
    invoke-direct {p0, p1}, Lacm;->e(I)V

    .line 463
    return-void
.end method

.method private d(III)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 395
    iget-boolean v0, p0, Lacm;->l:Z

    if-eqz v0, :cond_0

    .line 396
    iput-boolean v1, p0, Lacm;->l:Z

    .line 397
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lacm;->d(I)V

    .line 400
    :cond_0
    iget-boolean v0, p0, Lacm;->m:Z

    if-eqz v0, :cond_1

    .line 401
    iput-boolean v1, p0, Lacm;->m:Z

    .line 402
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lacm;->d(I)V

    .line 404
    :cond_1
    return-void
.end method

.method private declared-synchronized e(I)V
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 468
    monitor-enter p0

    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 469
    :try_start_0
    sget-object v1, Lacm;->h:Ljava/util/Hashtable;

    .line 470
    const-string v0, "usbpredict"

    .line 471
    invoke-direct {p0}, Lacm;->b()V

    move-object v2, v1

    move-object v1, v0

    :goto_0
    move v4, v3

    .line 481
    :goto_1
    const/16 v0, 0x64

    if-gt v3, v0, :cond_3

    .line 482
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 483
    if-nez v0, :cond_1

    .line 484
    sget v0, Lacm;->b:I

    add-int/2addr v0, v4

    .line 488
    :goto_2
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 489
    const-string v5, "from_level"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 490
    const-string v5, "time_average"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 492
    invoke-direct {p0, v1, v3}, Lacm;->a(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 493
    sget-object v5, Lacm;->e:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 481
    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v4, v0

    goto :goto_1

    .line 472
    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_3

    .line 473
    sget-object v1, Lacm;->i:Ljava/util/Hashtable;

    .line 474
    const-string v0, "acpredict"

    .line 475
    invoke-direct {p0}, Lacm;->c()V

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    .line 486
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    .line 495
    :cond_2
    sget-object v5, Lacm;->e:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "from_level="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v1, v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 468
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 500
    :cond_3
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public a(Ladd;)V
    .locals 2
    .parameter

    .prologue
    .line 319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lacm;->a(Ladd;J)V

    .line 320
    return-void
.end method

.method public a(Ladd;J)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x64

    const-wide/16 v3, -0x1

    const/4 v0, 0x0

    .line 328
    iget v1, p1, Ladd;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 329
    iget-wide v1, p0, Lacm;->o:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 330
    iget v0, p1, Ladd;->j:I

    iput v0, p0, Lacm;->n:I

    .line 331
    iput-wide p2, p0, Lacm;->o:J

    .line 332
    iget v0, p1, Ladd;->e:I

    iput v0, p0, Lacm;->p:I

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    iget v1, p1, Ladd;->j:I

    iget v2, p0, Lacm;->n:I

    if-le v1, v2, :cond_0

    iget-wide v1, p0, Lacm;->o:J

    cmp-long v1, p2, v1

    if-lez v1, :cond_0

    iget v1, p1, Ladd;->e:I

    iget v2, p0, Lacm;->p:I

    if-ne v1, v2, :cond_0

    .line 336
    iget v1, p1, Ladd;->j:I

    iget v2, p0, Lacm;->n:I

    sub-int/2addr v1, v2

    .line 337
    iget-wide v2, p0, Lacm;->o:J

    sub-long v2, p2, v2

    long-to-int v2, v2

    div-int/2addr v2, v1

    div-int/lit16 v2, v2, 0x3e8

    .line 338
    sget v3, Lacm;->b:I

    invoke-direct {p0, v3, v2}, Lacm;->c(II)I

    move-result v3

    sput v3, Lacm;->b:I

    .line 339
    :goto_1
    if-ge v0, v1, :cond_2

    .line 340
    iget v3, p0, Lacm;->n:I

    add-int/2addr v3, v0

    iget v4, p1, Ladd;->e:I

    invoke-direct {p0, v3, v2, v4}, Lacm;->b(III)V

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 342
    :cond_2
    iget v0, p1, Ladd;->j:I

    iput v0, p0, Lacm;->n:I

    .line 343
    iput-wide p2, p0, Lacm;->o:J

    goto :goto_0

    .line 347
    :cond_3
    iget v1, p1, Ladd;->a:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 348
    iget-boolean v0, p0, Lacm;->q:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lacm;->o:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lacm;->q:Z

    .line 350
    iget-wide v0, p0, Lacm;->o:J

    sub-long v0, p2, v0

    long-to-int v0, v0

    div-int/lit16 v0, v0, 0x3e8

    .line 351
    iget v1, p1, Ladd;->e:I

    invoke-direct {p0, v5, v0, v1}, Lacm;->b(III)V

    .line 352
    iget v1, p1, Ladd;->e:I

    invoke-direct {p0, v5, v0, v1}, Lacm;->d(III)V

    goto :goto_0

    .line 355
    :cond_4
    iput v0, p0, Lacm;->n:I

    .line 356
    iput-wide v3, p0, Lacm;->o:J

    .line 357
    iput v0, p0, Lacm;->p:I

    .line 358
    iput-boolean v0, p0, Lacm;->q:Z

    goto :goto_0
.end method
