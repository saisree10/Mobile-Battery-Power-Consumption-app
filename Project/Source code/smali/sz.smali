.class final Lsz;
.super Ljava/lang/Object;
.source "CrashDatabase.java"


# static fields
.field public static final a:Ljava/lang/Long;


# instance fields
.field private b:Lta;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:[Ljava/lang/String;

.field private f:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const-wide v0, 0x9a7ec800L

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lsz;->a:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "e"

    aput-object v1, v0, v2

    const-string v1, "f"

    aput-object v1, v0, v3

    const-string v1, "b"

    aput-object v1, v0, v4

    iput-object v0, p0, Lsz;->e:[Ljava/lang/String;

    .line 43
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "c"

    aput-object v1, v0, v2

    const-string v1, "d"

    aput-object v1, v0, v3

    iput-object v0, p0, Lsz;->f:[Ljava/lang/String;

    .line 46
    new-instance v0, Lta;

    invoke-direct {v0, p0, p1, p2}, Lta;-><init>(Lsz;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lsz;->b:Lta;

    .line 47
    iput-object p1, p0, Lsz;->c:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lsz;->d:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 149
    const/4 v1, 0x0

    .line 151
    :try_start_0
    iget-object v0, p0, Lsz;->b:Lta;

    invoke-virtual {v0}, Lta;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v0, Lsz;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 153
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 154
    iget-object v0, p0, Lsz;->d:Ljava/lang/String;

    const-string v3, "d<?"

    invoke-virtual {v1, v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 160
    if-eqz v1, :cond_0

    .line 162
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    sget-boolean v1, Lud;->d:Z

    if-eqz v1, :cond_0

    .line 165
    const-string v1, "stat.CrashDatabase"

    const-string v2, "Failed to close the db!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 155
    :catch_1
    move-exception v0

    .line 156
    :try_start_2
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_1

    .line 157
    const-string v2, "stat.CrashDatabase"

    const-string v3, "Failed to clean!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    :cond_1
    if-eqz v1, :cond_0

    .line 162
    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 163
    :catch_2
    move-exception v0

    .line 164
    sget-boolean v1, Lud;->d:Z

    if-eqz v1, :cond_0

    .line 165
    const-string v1, "stat.CrashDatabase"

    const-string v2, "Failed to close the db!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 162
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 167
    :cond_2
    :goto_1
    throw v0

    .line 163
    :catch_3
    move-exception v1

    .line 164
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_2

    .line 165
    const-string v2, "stat.CrashDatabase"

    const-string v3, "Failed to close the db!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public a(Ltc;J)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 99
    const/4 v1, 0x0

    .line 101
    :try_start_0
    iget-object v0, p0, Lsz;->b:Lta;

    invoke-virtual {v0}, Lta;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 102
    const/4 v1, 0x1

    :try_start_1
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "c"

    aput-object v3, v2, v1

    .line 103
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 104
    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ltc;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Ltc;->e()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Ltc;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v1

    .line 105
    iget-object v1, p0, Lsz;->d:Ljava/lang/String;

    iget-object v4, p0, Lsz;->e:[Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lue;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 111
    if-eqz v0, :cond_0

    .line 113
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    sget-boolean v1, Lud;->d:Z

    if-eqz v1, :cond_0

    .line 116
    const-string v1, "stat.CrashDatabase"

    const-string v2, "Failed to close the db!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 106
    :catch_1
    move-exception v0

    .line 107
    :goto_1
    :try_start_3
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_1

    .line 108
    const-string v2, "stat.CrashDatabase"

    const-string v3, "Faile to updateCount!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 111
    :cond_1
    if-eqz v1, :cond_0

    .line 113
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 114
    :catch_2
    move-exception v0

    .line 115
    sget-boolean v1, Lud;->d:Z

    if-eqz v1, :cond_0

    .line 116
    const-string v1, "stat.CrashDatabase"

    const-string v2, "Failed to close the db!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    .line 113
    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 118
    :cond_2
    :goto_3
    throw v0

    .line 114
    :catch_3
    move-exception v1

    .line 115
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_2

    .line 116
    const-string v2, "stat.CrashDatabase"

    const-string v3, "Failed to close the db!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 111
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    .line 106
    :catch_4
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1
.end method

.method public a(Ltc;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 52
    .line 54
    :try_start_0
    iget-object v3, p0, Lsz;->b:Lta;

    invoke-virtual {v3}, Lta;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 56
    :try_start_1
    iget-object v3, p0, Lsz;->c:Landroid/content/Context;

    iget-object v4, p0, Lsz;->d:Ljava/lang/String;

    const-string v5, "a"

    invoke-static {v3, v2, v4, v5}, Lue;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 59
    const-string v4, "b"

    invoke-virtual {p1}, Ltc;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v4, "c"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 61
    const-string v4, "d"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 62
    const-string v4, "e"

    invoke-virtual {p1}, Ltc;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v4, "f"

    invoke-virtual {p1}, Ltc;->e()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 65
    iget-object v4, p0, Lsz;->d:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-wide v3

    .line 66
    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    .line 72
    :goto_0
    if-eqz v2, :cond_0

    .line 74
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 79
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v1

    .line 66
    goto :goto_0

    .line 75
    :catch_0
    move-exception v1

    .line 76
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_0

    .line 77
    const-string v2, "stat.CrashDatabase"

    const-string v3, "Failed to close the db!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 67
    :catch_1
    move-exception v0

    move-object v0, v2

    .line 68
    :goto_2
    :try_start_3
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_2

    .line 69
    const-string v2, "stat.CrashDatabase"

    const-string v3, "failed to push to DB!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 72
    :cond_2
    if-eqz v0, :cond_3

    .line 74
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_3
    move v0, v1

    .line 79
    goto :goto_1

    .line 75
    :catch_2
    move-exception v0

    .line 76
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_3

    .line 77
    const-string v2, "stat.CrashDatabase"

    const-string v3, "Failed to close the db!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 72
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v2, :cond_4

    .line 74
    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 79
    :cond_4
    :goto_5
    throw v0

    .line 75
    :catch_3
    move-exception v1

    .line 76
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_4

    .line 77
    const-string v2, "stat.CrashDatabase"

    const-string v3, "Failed to close the db!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 72
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_4

    .line 67
    :catch_4
    move-exception v0

    move-object v0, v2

    goto :goto_2
.end method

.method public b(Ltc;)J
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 85
    iget-object v0, p0, Lsz;->b:Lta;

    invoke-virtual {v0}, Lta;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 86
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "c"

    aput-object v2, v1, v4

    .line 87
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Ltc;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1}, Ltc;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-virtual {p1}, Ltc;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 88
    iget-object v3, p0, Lsz;->d:Ljava/lang/String;

    iget-object v4, p0, Lsz;->e:[Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lue;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public c(Ltc;)J
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 92
    iget-object v0, p0, Lsz;->b:Lta;

    invoke-virtual {v0}, Lta;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 93
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "d"

    aput-object v2, v1, v4

    .line 94
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Ltc;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1}, Ltc;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-virtual {p1}, Ltc;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 95
    iget-object v3, p0, Lsz;->d:Ljava/lang/String;

    iget-object v4, p0, Lsz;->e:[Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lue;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public d(Ltc;)V
    .locals 7
    .parameter

    .prologue
    .line 124
    const/4 v1, 0x0

    .line 126
    :try_start_0
    iget-object v0, p0, Lsz;->b:Lta;

    invoke-virtual {v0}, Lta;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 127
    const/4 v1, 0x2

    :try_start_1
    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    .line 128
    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ltc;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Ltc;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Ltc;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 129
    iget-object v1, p0, Lsz;->d:Ljava/lang/String;

    iget-object v2, p0, Lsz;->f:[Ljava/lang/String;

    iget-object v4, p0, Lsz;->e:[Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lue;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 135
    if-eqz v0, :cond_0

    .line 137
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    sget-boolean v1, Lud;->d:Z

    if-eqz v1, :cond_0

    .line 140
    const-string v1, "stat.CrashDatabase"

    const-string v2, "Failed to close the db!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 130
    :catch_1
    move-exception v0

    .line 131
    :goto_1
    :try_start_3
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_1

    .line 132
    const-string v2, "stat.CrashDatabase"

    const-string v3, "Failed to resetCount!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 135
    :cond_1
    if-eqz v1, :cond_0

    .line 137
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 138
    :catch_2
    move-exception v0

    .line 139
    sget-boolean v1, Lud;->d:Z

    if-eqz v1, :cond_0

    .line 140
    const-string v1, "stat.CrashDatabase"

    const-string v2, "Failed to close the db!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    .line 137
    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 142
    :cond_2
    :goto_3
    throw v0

    .line 138
    :catch_3
    move-exception v1

    .line 139
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_2

    .line 140
    const-string v2, "stat.CrashDatabase"

    const-string v3, "Failed to close the db!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 135
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    .line 130
    :catch_4
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1
.end method
