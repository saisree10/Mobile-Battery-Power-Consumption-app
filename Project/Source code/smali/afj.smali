.class public Lafj;
.super Ljava/lang/Object;
.source "ChargingStatsReportHelper.java"


# static fields
.field private static a:Lafj;


# instance fields
.field private b:Landroid/content/Context;

.field private c:J

.field private d:I

.field private e:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lafj;->c:J

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lafj;->d:I

    .line 52
    iput-object p1, p0, Lafj;->b:Landroid/content/Context;

    .line 53
    return-void
.end method

.method private a(J)I
    .locals 4
    .parameter

    .prologue
    .line 349
    iget-wide v0, p0, Lafj;->c:J

    sub-long v0, p1, v0

    .line 350
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    .line 351
    long-to-int v0, v0

    return v0
.end method

.method private a(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    .line 343
    iget-object v0, p0, Lafj;->b:Landroid/content/Context;

    const-string v1, "charge_stats_report"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 345
    const/4 v1, -0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;)Lafj;
    .locals 2
    .parameter

    .prologue
    .line 56
    sget-object v0, Lafj;->a:Lafj;

    if-nez v0, :cond_1

    .line 57
    const-class v1, Lafj;

    monitor-enter v1

    .line 58
    :try_start_0
    sget-object v0, Lafj;->a:Lafj;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lafj;

    invoke-direct {v0, p0}, Lafj;-><init>(Landroid/content/Context;)V

    sput-object v0, Lafj;->a:Lafj;

    .line 61
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_1
    sget-object v0, Lafj;->a:Lafj;

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;II)Ljava/lang/String;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 199
    new-array v0, v9, [Ljava/lang/String;

    const-string v1, "none"

    aput-object v1, v0, v2

    .line 202
    const-string v1, "|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 203
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    move v1, v2

    .line 209
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_a

    .line 210
    aget-object v4, v0, v1

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 211
    aget-object v5, v4, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 212
    aget-object v4, v4, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 214
    if-le p2, v4, :cond_2

    .line 216
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_5

    .line 217
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    move v1, v3

    .line 241
    :goto_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 242
    if-le v1, v3, :cond_0

    .line 243
    :goto_3
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 244
    add-int/lit8 v3, v1, 0x1

    array-length v5, v0

    if-ne v3, v5, :cond_6

    .line 264
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 265
    :goto_4
    array-length v3, v0

    if-ge v2, v3, :cond_8

    .line 266
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 265
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 205
    :cond_1
    aput-object p1, v0, v2

    goto :goto_0

    .line 225
    :cond_2
    if-ge p3, v5, :cond_3

    .line 227
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    move v1, v3

    .line 229
    goto :goto_2

    .line 230
    :cond_3
    if-lt p2, v5, :cond_4

    if-gt p3, v4, :cond_4

    move v1, v3

    .line 232
    goto :goto_2

    .line 235
    :cond_4
    invoke-direct {p0, v5, v4, p2, p3}, Lafj;->b(IIII)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    goto :goto_2

    .line 209
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 247
    :cond_6
    aget-object v3, v0, v1

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 248
    aget-object v5, v3, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 249
    aget-object v3, v3, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 251
    add-int/lit8 v6, v1, 0x1

    aget-object v6, v0, v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 252
    aget-object v7, v6, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 253
    aget-object v6, v6, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 255
    invoke-direct {p0, v5, v3, v7, v6}, Lafj;->a(IIII)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 256
    add-int/lit8 v8, v1, 0x1

    invoke-direct {p0, v5, v3, v7, v6}, Lafj;->b(IIII)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v8

    .line 257
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 269
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "|"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v5, v0, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 272
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 274
    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 277
    :cond_9
    return-object v0

    :cond_a
    move v1, v3

    goto/16 :goto_2
.end method

.method private a()V
    .locals 3

    .prologue
    .line 323
    iget-object v0, p0, Lafj;->b:Landroid/content/Context;

    const-string v1, "charge_stats_report"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 325
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 326
    const-string v1, "sentCount"

    invoke-direct {p0, v1}, Lafj;->a(Ljava/lang/String;)I

    move-result v1

    .line 327
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 328
    const-string v1, "sentCount"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 338
    :goto_0
    const-string v1, "batteryLevelIntervals"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 339
    invoke-static {v0}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 340
    return-void

    .line 333
    :cond_0
    const-string v2, "sentCount"

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private a(JJLadd;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 113
    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    .line 115
    iput-wide p1, p0, Lafj;->c:J

    .line 116
    iget v0, p5, Ladd;->j:I

    iput v0, p0, Lafj;->d:I

    .line 117
    iput-boolean v2, p0, Lafj;->e:Z

    .line 161
    :goto_0
    return-void

    .line 124
    :cond_0
    iget v0, p5, Ladd;->j:I

    iget v1, p0, Lafj;->d:I

    sub-int/2addr v0, v1

    .line 125
    if-gtz v0, :cond_1

    if-eqz p6, :cond_3

    .line 126
    :cond_1
    iget-boolean v0, p0, Lafj;->e:Z

    if-eqz v0, :cond_4

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lafj;->e:Z

    .line 158
    :cond_2
    :goto_1
    iput-wide p1, p0, Lafj;->c:J

    .line 160
    :cond_3
    iget v0, p5, Ladd;->j:I

    iput v0, p0, Lafj;->d:I

    goto :goto_0

    .line 134
    :cond_4
    iget v0, p0, Lafj;->d:I

    iget v1, p5, Ladd;->j:I

    invoke-direct {p0, v0, v1}, Lafj;->a(II)Z

    move-result v0

    .line 135
    if-nez v0, :cond_5

    if-eqz p6, :cond_2

    .line 136
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lafj;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p5, Ladd;->j:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    iget v1, p5, Ladd;->e:I

    if-ne v1, v2, :cond_7

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_ac"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    :cond_6
    :goto_2
    invoke-direct {p0, p1, p2}, Lafj;->a(J)I

    goto :goto_1

    .line 139
    :cond_7
    iget v1, p5, Ladd;->e:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_usb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_2
.end method

.method private a(I)Z
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 297
    iget-object v0, p0, Lafj;->b:Landroid/content/Context;

    const-string v3, "charge_stats_report"

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 299
    const-string v3, "batteryLevelIntervals"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 300
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 319
    :goto_0
    return v0

    .line 303
    :cond_0
    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "-1,-1"

    aput-object v4, v0, v1

    .line 306
    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 307
    const-string v0, "\\|"

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 312
    :goto_1
    aget-object v4, v0, v1

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 313
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    aget-object v0, v0, v5

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 314
    const-string v5, "|"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    aget-object v3, v4, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xa

    if-gt v3, v4, :cond_2

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, p1, :cond_2

    move v0, v2

    .line 316
    goto :goto_0

    .line 309
    :cond_1
    aput-object v3, v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 319
    goto :goto_0
.end method

.method private a(II)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 164
    iget-object v1, p0, Lafj;->b:Landroid/content/Context;

    const-string v2, "charge_stats_report"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 166
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 168
    const-string v3, "batteryLevelIntervals"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 177
    const-string v0, "batteryLevelIntervals"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 194
    :goto_0
    invoke-static {v2}, Lgm;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 195
    const/4 v0, 0x1

    :cond_0
    return v0

    .line 183
    :cond_1
    invoke-direct {p0, v1, p1, p2}, Lafj;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    .line 184
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    const-string v0, "batteryLevelIntervals"

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private a(IIII)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 281
    if-lt p3, p1, :cond_0

    if-le p3, p2, :cond_1

    :cond_0
    if-lt p4, p1, :cond_2

    if-gt p4, p2, :cond_2

    .line 282
    :cond_1
    const/4 v0, 0x1

    .line 284
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(IIII)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 288
    if-ge p1, p3, :cond_0

    .line 289
    :goto_0
    if-le p2, p4, :cond_1

    .line 290
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move p1, p3

    .line 288
    goto :goto_0

    :cond_1
    move p2, p4

    .line 289
    goto :goto_1
.end method


# virtual methods
.method public a(JLadd;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v6, 0x0

    const/4 v9, -0x1

    const-wide/16 v7, -0x1

    .line 67
    iget-object v0, p0, Lafj;->b:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 68
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sentCount"

    invoke-direct {p0, v0}, Lafj;->a(Ljava/lang/String;)I

    move-result v0

    if-lt v0, v2, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-wide v3, p0, Lafj;->c:J

    .line 72
    iget v0, p3, Ladd;->a:I

    if-ne v0, v2, :cond_2

    move-object v0, p0

    move-wide v1, p1

    move-object v5, p3

    .line 74
    invoke-direct/range {v0 .. v6}, Lafj;->a(JJLadd;Z)V

    goto :goto_0

    .line 75
    :cond_2
    iget v0, p3, Ladd;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    cmp-long v0, v3, v7

    if-eqz v0, :cond_3

    move-object v0, p0

    move-wide v1, p1

    move-object v5, p3

    .line 78
    invoke-direct/range {v0 .. v6}, Lafj;->a(JJLadd;Z)V

    .line 79
    iput-wide v7, p0, Lafj;->c:J

    .line 80
    iput v9, p0, Lafj;->d:I

    goto :goto_0

    .line 84
    :cond_3
    iget v0, p3, Ladd;->a:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 86
    const/4 v6, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lafj;->a(JJLadd;Z)V

    .line 103
    iget v0, p3, Ladd;->j:I

    invoke-direct {p0, v0}, Lafj;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 104
    invoke-direct {p0}, Lafj;->a()V

    .line 107
    :cond_4
    iput-wide v7, p0, Lafj;->c:J

    .line 108
    iput v9, p0, Lafj;->d:I

    goto :goto_0
.end method
