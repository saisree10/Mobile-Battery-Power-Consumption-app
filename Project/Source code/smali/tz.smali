.class public Ltz;
.super Ljava/lang/Object;
.source "UserReturnStatService.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/Long;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/content/ContentResolver;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lua;

.field private i:Lua;

.field private j:Lua;

.field private k:Lua;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-wide/32 v0, 0x5265c00

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Ltz;->a:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ltz;->b:Landroid/content/Context;

    .line 68
    iget-object v0, p0, Ltz;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Ltz;->c:Landroid/content/ContentResolver;

    .line 69
    iget-object v0, p0, Ltz;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltz;->d:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltz;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltz;->e:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltz;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltz;->f:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltz;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "rt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltz;->g:Ljava/lang/String;

    .line 73
    return-void
.end method

.method private a(Landroid/content/pm/PackageInfo;)Ljava/lang/Long;
    .locals 8
    .parameter

    .prologue
    const-wide/16 v5, 0x0

    .line 445
    const/4 v1, 0x0

    .line 447
    :try_start_0
    iget-object v0, p0, Ltz;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 448
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "fakeFi"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 449
    iget-object v0, p0, Ltz;->b:Landroid/content/Context;

    const-string v3, "utils"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 451
    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 452
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-object v0

    .line 455
    :cond_1
    const-string v1, "firstInstallTime"

    invoke-static {p1, v1}, Luc;->a(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 457
    iget-object v1, p0, Ltz;->b:Landroid/content/Context;

    const-string v3, "utils"

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 459
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 460
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 461
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 462
    :catch_0
    move-exception v1

    .line 463
    :goto_1
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_0

    .line 464
    const-string v2, "stat.UserReturnStatService"

    const-string v3, "Failed to getFirstInstallTime!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 462
    :catch_1
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Lua;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 201
    iget-object v0, p0, Ltz;->b:Landroid/content/Context;

    invoke-static {v0}, Lsb;->a(Landroid/content/Context;)Lsb;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Ltz;->b(Ljava/lang/String;Lua;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lsb;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    .line 203
    return-void
.end method

.method private a(Lua;)V
    .locals 0
    .parameter

    .prologue
    .line 363
    invoke-direct {p0, p1}, Ltz;->b(Lua;)V

    .line 364
    invoke-direct {p0, p1}, Ltz;->c(Lua;)V

    .line 365
    invoke-direct {p0, p1}, Ltz;->d(Lua;)V

    .line 366
    return-void
.end method

.method private b(Ljava/lang/String;Lua;)Lorg/json/JSONObject;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 206
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 209
    :try_start_0
    const-string v0, "INS-UR-LC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    invoke-virtual {p2}, Lua;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 226
    :cond_0
    :goto_0
    return-object v1

    .line 212
    :cond_1
    invoke-virtual {p2}, Lua;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/sql/Date;

    invoke-virtual {p2}, Lua;->c()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/sql/Date;-><init>(J)V

    invoke-static {v2}, Lud;->a(Ljava/sql/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_0

    .line 218
    const-string v2, "stat.UserReturnStatService"

    const-string v3, "Failed to get Json!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 220
    :catch_1
    move-exception v0

    .line 221
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_0

    .line 222
    const-string v2, "stat.UserReturnStatService"

    const-string v3, "Failed to get Json!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Ltz;->h:Lua;

    invoke-virtual {v0}, Lua;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltz;->j:Lua;

    invoke-virtual {v0}, Lua;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltz;->k:Lua;

    invoke-virtual {v0}, Lua;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    const-string v0, "INS-FI"

    iget-object v1, p0, Ltz;->i:Lua;

    invoke-direct {p0, v0, v1}, Ltz;->a(Ljava/lang/String;Lua;)V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Ltz;->h:Lua;

    invoke-virtual {v0}, Lua;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltz;->k:Lua;

    invoke-virtual {v0}, Lua;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltz;->j:Lua;

    invoke-virtual {v0}, Lua;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 169
    const-string v0, "INS-CDASD"

    iget-object v1, p0, Ltz;->i:Lua;

    invoke-direct {p0, v0, v1}, Ltz;->a(Ljava/lang/String;Lua;)V

    .line 173
    :cond_2
    iget-object v0, p0, Ltz;->h:Lua;

    invoke-virtual {v0}, Lua;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ltz;->j:Lua;

    invoke-virtual {v0}, Lua;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ltz;->k:Lua;

    invoke-virtual {v0}, Lua;->d()Z

    move-result v0

    if-nez v0, :cond_3

    .line 175
    const-string v0, "INS-WD"

    iget-object v1, p0, Ltz;->i:Lua;

    invoke-direct {p0, v0, v1}, Ltz;->a(Ljava/lang/String;Lua;)V

    .line 178
    :cond_3
    iget-object v0, p0, Ltz;->h:Lua;

    invoke-virtual {v0}, Lua;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ltz;->j:Lua;

    invoke-virtual {v0}, Lua;->d()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Ltz;->k:Lua;

    invoke-virtual {v0}, Lua;->d()Z

    move-result v0

    if-nez v0, :cond_4

    .line 180
    const-string v0, "INS-CD"

    iget-object v1, p0, Ltz;->i:Lua;

    invoke-direct {p0, v0, v1}, Ltz;->a(Ljava/lang/String;Lua;)V

    .line 183
    :cond_4
    const/4 v0, 0x0

    .line 185
    iget-object v1, p0, Ltz;->h:Lua;

    invoke-virtual {v1}, Lua;->d()Z

    move-result v1

    if-nez v1, :cond_6

    .line 186
    iget-object v0, p0, Ltz;->h:Lua;

    .line 193
    :cond_5
    :goto_1
    iget-object v1, p0, Ltz;->i:Lua;

    invoke-virtual {v1, v0}, Lua;->a(Lua;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    const-string v1, "INS-PU"

    invoke-direct {p0, v1, v0}, Ltz;->a(Ljava/lang/String;Lua;)V

    .line 195
    const-string v0, "INS-UR"

    iget-object v1, p0, Ltz;->i:Lua;

    invoke-direct {p0, v0, v1}, Ltz;->a(Ljava/lang/String;Lua;)V

    .line 196
    const-string v0, "INS-UR-LC"

    iget-object v1, p0, Ltz;->i:Lua;

    invoke-direct {p0, v0, v1}, Ltz;->a(Ljava/lang/String;Lua;)V

    goto/16 :goto_0

    .line 187
    :cond_6
    iget-object v1, p0, Ltz;->j:Lua;

    invoke-virtual {v1}, Lua;->d()Z

    move-result v1

    if-nez v1, :cond_7

    .line 188
    iget-object v0, p0, Ltz;->j:Lua;

    goto :goto_1

    .line 189
    :cond_7
    iget-object v1, p0, Ltz;->k:Lua;

    invoke-virtual {v1}, Lua;->d()Z

    move-result v1

    if-nez v1, :cond_5

    .line 190
    iget-object v0, p0, Ltz;->k:Lua;

    goto :goto_1
.end method

.method private b(Lua;)V
    .locals 4
    .parameter

    .prologue
    .line 370
    :try_start_0
    iget-object v0, p0, Ltz;->b:Landroid/content/Context;

    const-string v1, "utils"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 372
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 373
    iget-object v1, p0, Ltz;->e:Ljava/lang/String;

    invoke-static {p1}, Lua;->b(Lua;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 374
    iget-object v1, p0, Ltz;->f:Ljava/lang/String;

    invoke-static {p1}, Lua;->c(Lua;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 376
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 377
    :catch_0
    move-exception v0

    .line 378
    sget-boolean v1, Lud;->d:Z

    if-eqz v1, :cond_0

    .line 379
    const-string v1, "stat.UserReturnStatService"

    const-string v2, "Failed to updateSharedPerferencedInfo!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private c()Lua;
    .locals 4

    .prologue
    .line 230
    new-instance v1, Lua;

    invoke-direct {v1, p0}, Lua;-><init>(Ltz;)V

    .line 233
    :try_start_0
    iget-object v0, p0, Ltz;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 235
    iget-object v2, p0, Ltz;->d:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 236
    invoke-direct {p0, v0}, Ltz;->a(Landroid/content/pm/PackageInfo;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lua;->a(Ljava/lang/Long;)V

    .line 237
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lua;->a(Ljava/lang/Integer;)V

    .line 238
    iget-object v0, p0, Ltz;->b:Landroid/content/Context;

    invoke-static {v0}, Lgw;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lua;->a(Ljava/lang/String;)V

    .line 239
    sget-boolean v0, Lud;->c:Z

    if-eqz v0, :cond_0

    .line 240
    const-string v0, "stat.UserReturnStatService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppUserReturnStat:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lua;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 251
    :cond_0
    :goto_0
    return-object v1

    .line 242
    :catch_0
    move-exception v0

    .line 243
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_0

    .line 244
    const-string v2, "stat.UserReturnStatService"

    const-string v3, "Failed to processAppUserReturnStat!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 246
    :catch_1
    move-exception v0

    .line 247
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_0

    .line 248
    const-string v2, "stat.UserReturnStatService"

    const-string v3, "Failed to processAppUserReturnStat!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private c(Lua;)V
    .locals 4
    .parameter

    .prologue
    .line 386
    :try_start_0
    iget-object v0, p0, Ltz;->c:Landroid/content/ContentResolver;

    iget-object v1, p0, Ltz;->g:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 388
    iget-object v0, p0, Ltz;->c:Landroid/content/ContentResolver;

    iget-object v1, p0, Ltz;->e:Ljava/lang/String;

    invoke-static {p1}, Lua;->b(Lua;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 391
    iget-object v0, p0, Ltz;->c:Landroid/content/ContentResolver;

    iget-object v1, p0, Ltz;->f:Ljava/lang/String;

    invoke-static {p1}, Lua;->c(Lua;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 393
    :catch_0
    move-exception v0

    .line 394
    sget-boolean v1, Lud;->d:Z

    if-eqz v1, :cond_0

    .line 395
    const-string v1, "stat.UserReturnStatService"

    const-string v2, "Failed to updateSettingsInfo!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private d()Lua;
    .locals 5

    .prologue
    .line 255
    new-instance v1, Lua;

    invoke-direct {v1, p0}, Lua;-><init>(Ltz;)V

    .line 257
    :try_start_0
    iget-object v0, p0, Ltz;->b:Landroid/content/Context;

    const-string v2, "utils"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 259
    iget-object v2, p0, Ltz;->e:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 260
    iget-object v3, p0, Ltz;->f:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 262
    invoke-virtual {v1, v2}, Lua;->a(Ljava/lang/Long;)V

    .line 263
    invoke-virtual {v1, v0}, Lua;->a(Ljava/lang/Integer;)V

    .line 264
    sget-boolean v0, Lud;->c:Z

    if-eqz v0, :cond_0

    .line 265
    const-string v0, "stat.UserReturnStatService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SharePrefrenceUserReturnStat:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lua;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :cond_0
    :goto_0
    return-object v1

    .line 267
    :catch_0
    move-exception v0

    .line 268
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_0

    .line 269
    const-string v2, "stat.UserReturnStatService"

    const-string v3, "Failed to processSharedPrefrenceUserReturnStat!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private d(Lua;)V
    .locals 5
    .parameter

    .prologue
    .line 401
    const/4 v1, 0x0

    .line 403
    :try_start_0
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 404
    new-instance v0, Ljava/io/File;

    const-string v2, "/sdcard/.userReturn"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 406
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 408
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 409
    iget-object v2, p0, Ltz;->e:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    const-string v2, "\t"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-static {p1}, Lua;->b(Lua;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 412
    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    iget-object v2, p0, Ltz;->f:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    const-string v2, "\t"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-static {p1}, Lua;->c(Lua;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 417
    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 420
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 421
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 428
    :goto_0
    if-eqz v2, :cond_1

    .line 430
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 442
    :cond_1
    :goto_1
    return-void

    .line 431
    :catch_0
    move-exception v0

    .line 432
    sget-boolean v1, Lud;->d:Z

    if-eqz v1, :cond_1

    .line 433
    const-string v1, "stat.UserReturnStatService"

    const-string v2, "Close fileOutputStream has IOException!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 435
    :catch_1
    move-exception v0

    .line 436
    sget-boolean v1, Lud;->d:Z

    if-eqz v1, :cond_1

    .line 437
    const-string v1, "stat.UserReturnStatService"

    const-string v2, "Close fileOutputStream has Exception!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 423
    :catch_2
    move-exception v0

    .line 424
    :goto_2
    :try_start_3
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_2

    .line 425
    const-string v2, "stat.UserReturnStatService"

    const-string v3, "Failed to updateSDCardInfo!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 428
    :cond_2
    if-eqz v1, :cond_1

    .line 430
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_1

    .line 431
    :catch_3
    move-exception v0

    .line 432
    sget-boolean v1, Lud;->d:Z

    if-eqz v1, :cond_1

    .line 433
    const-string v1, "stat.UserReturnStatService"

    const-string v2, "Close fileOutputStream has IOException!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 435
    :catch_4
    move-exception v0

    .line 436
    sget-boolean v1, Lud;->d:Z

    if-eqz v1, :cond_1

    .line 437
    const-string v1, "stat.UserReturnStatService"

    const-string v2, "Close fileOutputStream has Exception!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 428
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_3

    .line 430
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 439
    :cond_3
    :goto_4
    throw v0

    .line 431
    :catch_5
    move-exception v1

    .line 432
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_3

    .line 433
    const-string v2, "stat.UserReturnStatService"

    const-string v3, "Close fileOutputStream has IOException!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 435
    :catch_6
    move-exception v1

    .line 436
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_3

    .line 437
    const-string v2, "stat.UserReturnStatService"

    const-string v3, "Close fileOutputStream has Exception!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 428
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 423
    :catch_7
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :cond_4
    move-object v2, v1

    goto :goto_0
.end method

.method private e()Lua;
    .locals 5

    .prologue
    .line 277
    new-instance v1, Lua;

    invoke-direct {v1, p0}, Lua;-><init>(Ltz;)V

    .line 279
    :try_start_0
    iget-object v0, p0, Ltz;->c:Landroid/content/ContentResolver;

    iget-object v2, p0, Ltz;->e:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 281
    iget-object v2, p0, Ltz;->c:Landroid/content/ContentResolver;

    iget-object v3, p0, Ltz;->f:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 282
    invoke-virtual {v1, v0}, Lua;->a(Ljava/lang/Long;)V

    .line 283
    invoke-virtual {v1, v2}, Lua;->a(Ljava/lang/Integer;)V

    .line 284
    sget-boolean v0, Lud;->c:Z

    if-eqz v0, :cond_0

    .line 285
    const-string v0, "stat.UserReturnStatService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SettingsUserReturnStat:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lua;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :cond_0
    :goto_0
    return-object v1

    .line 287
    :catch_0
    move-exception v0

    .line 288
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_0

    .line 289
    const-string v2, "stat.UserReturnStatService"

    const-string v3, "Failed to processSettingsUserReturnStat!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private f()Lua;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 296
    const/4 v1, 0x0

    .line 297
    const/4 v2, 0x0

    .line 299
    new-instance v0, Lua;

    invoke-direct {v0, p0}, Lua;-><init>(Ltz;)V

    .line 301
    :try_start_0
    const-string v4, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 302
    new-instance v5, Ljava/io/File;

    const-string v4, "/sdcard/.userReturn"

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v5}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_16

    move-result v4

    if-nez v4, :cond_2

    .line 332
    if-eqz v3, :cond_0

    .line 334
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 345
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 347
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 359
    :cond_1
    :goto_1
    return-object v0

    .line 335
    :catch_0
    move-exception v1

    .line 336
    sget-boolean v4, Lud;->d:Z

    if-eqz v4, :cond_0

    .line 337
    const-string v4, "stat.UserReturnStatService"

    const-string v5, "Close fileInputStream has IOException!"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 339
    :catch_1
    move-exception v1

    .line 340
    sget-boolean v4, Lud;->d:Z

    if-eqz v4, :cond_0

    .line 341
    const-string v4, "stat.UserReturnStatService"

    const-string v5, "Close fileInputStream has Exception!"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 348
    :catch_2
    move-exception v1

    .line 349
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_1

    .line 350
    const-string v2, "stat.UserReturnStatService"

    const-string v3, "Close bufferedReader has IOException!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 352
    :catch_3
    move-exception v1

    .line 353
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_1

    .line 354
    const-string v2, "stat.UserReturnStatService"

    const-string v3, "Close bufferedReader has Exception!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 306
    :cond_2
    :try_start_3
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_18
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_16

    .line 307
    :try_start_4
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_19
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_17

    .line 309
    :cond_3
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 310
    const-string v3, "\t"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 311
    iget-object v3, p0, Ltz;->e:Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 312
    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 313
    invoke-virtual {v0, v1}, Lua;->a(Ljava/lang/Long;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_2

    .line 323
    :catch_4
    move-exception v1

    move-object v3, v4

    .line 324
    :goto_3
    :try_start_6
    sget-boolean v4, Lud;->d:Z

    if-eqz v4, :cond_4

    .line 325
    const-string v4, "stat.UserReturnStatService"

    const-string v5, "Failed to processSDCardUserReturnStat!"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 332
    :cond_4
    if-eqz v3, :cond_5

    .line 334
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_d

    .line 345
    :cond_5
    :goto_4
    if-eqz v2, :cond_1

    .line 347
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_e

    goto/16 :goto_1

    .line 348
    :catch_5
    move-exception v1

    .line 349
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_1

    .line 350
    const-string v2, "stat.UserReturnStatService"

    const-string v3, "Close bufferedReader has IOException!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 314
    :cond_6
    :try_start_9
    iget-object v3, p0, Ltz;->f:Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 315
    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 316
    invoke-virtual {v0, v1}, Lua;->a(Ljava/lang/Integer;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_2

    .line 327
    :catch_6
    move-exception v1

    .line 328
    :goto_5
    :try_start_a
    sget-boolean v3, Lud;->d:Z

    if-eqz v3, :cond_7

    .line 329
    const-string v3, "stat.UserReturnStatService"

    const-string v5, "Failed to processSDCardUserReturnStat!"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 332
    :cond_7
    if-eqz v4, :cond_8

    .line 334
    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_10

    .line 345
    :cond_8
    :goto_6
    if-eqz v2, :cond_1

    .line 347
    :try_start_c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_11

    goto/16 :goto_1

    .line 348
    :catch_7
    move-exception v1

    .line 349
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_1

    .line 350
    const-string v2, "stat.UserReturnStatService"

    const-string v3, "Close bufferedReader has IOException!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 319
    :cond_9
    :try_start_d
    sget-boolean v1, Lud;->c:Z

    if-eqz v1, :cond_a

    .line 320
    const-string v1, "stat.UserReturnStatService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SDCardUserReturnStat:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lua;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    .line 332
    :cond_a
    :goto_7
    if-eqz v4, :cond_b

    .line 334
    :try_start_e
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    .line 345
    :cond_b
    :goto_8
    if-eqz v2, :cond_1

    .line 347
    :try_start_f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b

    goto/16 :goto_1

    .line 348
    :catch_8
    move-exception v1

    .line 349
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_1

    .line 350
    const-string v2, "stat.UserReturnStatService"

    const-string v3, "Close bufferedReader has IOException!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 335
    :catch_9
    move-exception v1

    .line 336
    sget-boolean v3, Lud;->d:Z

    if-eqz v3, :cond_b

    .line 337
    const-string v3, "stat.UserReturnStatService"

    const-string v4, "Close fileInputStream has IOException!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 339
    :catch_a
    move-exception v1

    .line 340
    sget-boolean v3, Lud;->d:Z

    if-eqz v3, :cond_b

    .line 341
    const-string v3, "stat.UserReturnStatService"

    const-string v4, "Close fileInputStream has Exception!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 352
    :catch_b
    move-exception v1

    .line 353
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_1

    .line 354
    const-string v2, "stat.UserReturnStatService"

    const-string v3, "Close bufferedReader has Exception!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 335
    :catch_c
    move-exception v1

    .line 336
    sget-boolean v3, Lud;->d:Z

    if-eqz v3, :cond_5

    .line 337
    const-string v3, "stat.UserReturnStatService"

    const-string v4, "Close fileInputStream has IOException!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 339
    :catch_d
    move-exception v1

    .line 340
    sget-boolean v3, Lud;->d:Z

    if-eqz v3, :cond_5

    .line 341
    const-string v3, "stat.UserReturnStatService"

    const-string v4, "Close fileInputStream has Exception!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 352
    :catch_e
    move-exception v1

    .line 353
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_1

    .line 354
    const-string v2, "stat.UserReturnStatService"

    const-string v3, "Close bufferedReader has Exception!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 335
    :catch_f
    move-exception v1

    .line 336
    sget-boolean v3, Lud;->d:Z

    if-eqz v3, :cond_8

    .line 337
    const-string v3, "stat.UserReturnStatService"

    const-string v4, "Close fileInputStream has IOException!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 339
    :catch_10
    move-exception v1

    .line 340
    sget-boolean v3, Lud;->d:Z

    if-eqz v3, :cond_8

    .line 341
    const-string v3, "stat.UserReturnStatService"

    const-string v4, "Close fileInputStream has Exception!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 352
    :catch_11
    move-exception v1

    .line 353
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_1

    .line 354
    const-string v2, "stat.UserReturnStatService"

    const-string v3, "Close bufferedReader has Exception!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 332
    :catchall_0
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    :goto_9
    if-eqz v4, :cond_c

    .line 334
    :try_start_10
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_13

    .line 345
    :cond_c
    :goto_a
    if-eqz v2, :cond_d

    .line 347
    :try_start_11
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_15

    .line 356
    :cond_d
    :goto_b
    throw v0

    .line 335
    :catch_12
    move-exception v1

    .line 336
    sget-boolean v3, Lud;->d:Z

    if-eqz v3, :cond_c

    .line 337
    const-string v3, "stat.UserReturnStatService"

    const-string v4, "Close fileInputStream has IOException!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 339
    :catch_13
    move-exception v1

    .line 340
    sget-boolean v3, Lud;->d:Z

    if-eqz v3, :cond_c

    .line 341
    const-string v3, "stat.UserReturnStatService"

    const-string v4, "Close fileInputStream has Exception!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 348
    :catch_14
    move-exception v1

    .line 349
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_d

    .line 350
    const-string v2, "stat.UserReturnStatService"

    const-string v3, "Close bufferedReader has IOException!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 352
    :catch_15
    move-exception v1

    .line 353
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_d

    .line 354
    const-string v2, "stat.UserReturnStatService"

    const-string v3, "Close bufferedReader has Exception!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 332
    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_9

    :catchall_2
    move-exception v0

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object v4, v3

    goto :goto_9

    .line 327
    :catch_16
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    goto/16 :goto_5

    :catch_17
    move-exception v1

    move-object v2, v3

    goto/16 :goto_5

    .line 323
    :catch_18
    move-exception v1

    move-object v2, v3

    goto/16 :goto_3

    :catch_19
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_3

    :cond_e
    move-object v2, v3

    move-object v4, v3

    goto/16 :goto_7
.end method


# virtual methods
.method public a()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 144
    :try_start_0
    iget-object v1, p0, Ltz;->c:Landroid/content/ContentResolver;

    iget-object v2, p0, Ltz;->g:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 146
    sget-boolean v2, Lud;->c:Z

    if-eqz v2, :cond_0

    .line 147
    const-string v2, "stat.UserReturnStatService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Last reportTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and now:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v1, v2, v4

    sget-object v3, Ltz;->a:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 157
    :cond_1
    :goto_0
    return v0

    .line 152
    :catch_0
    move-exception v1

    .line 153
    sget-boolean v1, Lud;->d:Z

    if-eqz v1, :cond_1

    .line 154
    const-string v1, "stat.UserReturnStatService"

    const-string v2, "Failed to get user return reportTime"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Ltz;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-direct {p0}, Ltz;->c()Lua;

    move-result-object v0

    iput-object v0, p0, Ltz;->i:Lua;

    .line 133
    invoke-direct {p0}, Ltz;->d()Lua;

    move-result-object v0

    iput-object v0, p0, Ltz;->h:Lua;

    .line 134
    invoke-direct {p0}, Ltz;->e()Lua;

    move-result-object v0

    iput-object v0, p0, Ltz;->j:Lua;

    .line 135
    invoke-direct {p0}, Ltz;->f()Lua;

    move-result-object v0

    iput-object v0, p0, Ltz;->k:Lua;

    .line 137
    invoke-direct {p0}, Ltz;->b()V

    .line 138
    iget-object v0, p0, Ltz;->i:Lua;

    invoke-direct {p0, v0}, Ltz;->a(Lua;)V

    .line 140
    :cond_0
    return-void
.end method
