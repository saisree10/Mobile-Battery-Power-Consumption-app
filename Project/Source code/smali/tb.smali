.class public Ltb;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static b:Ltb;


# instance fields
.field private a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private c:Landroid/content/Context;

.field private d:Ltc;

.field private e:Z

.field private f:Lsz;

.field private g:Ljava/util/regex/Pattern;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltb;->e:Z

    .line 48
    iput-object p1, p0, Ltb;->c:Landroid/content/Context;

    .line 49
    new-instance v0, Ltc;

    invoke-direct {v0}, Ltc;-><init>()V

    iput-object v0, p0, Ltb;->d:Ltc;

    .line 50
    new-instance v0, Lsz;

    iget-object v1, p0, Ltb;->c:Landroid/content/Context;

    const-string v2, "c"

    invoke-direct {v0, v1, v2}, Lsz;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Ltb;->f:Lsz;

    .line 51
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ltb;
    .locals 3
    .parameter

    .prologue
    .line 54
    const-class v1, Ltb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ltb;->b:Ltb;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Ltb;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Ltb;-><init>(Landroid/content/Context;)V

    sput-object v0, Ltb;->b:Ltb;

    .line 57
    :cond_0
    sget-object v0, Ltb;->b:Ltb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Ltb;->d:Ltc;

    invoke-virtual {v0}, Ltc;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Ltb;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Luk;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method private b(Ljava/lang/Throwable;)V
    .locals 3
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Ltb;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 146
    iget-object v1, p0, Ltb;->d:Ltc;

    invoke-virtual {v1, v0}, Ltc;->b(Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Ltb;->d:Ltc;

    iget-object v2, p0, Ltb;->c:Landroid/content/Context;

    invoke-static {v2, v0}, Luc;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ltc;->a(I)V

    .line 148
    iget-object v1, p0, Ltb;->d:Ltc;

    iget-object v2, p0, Ltb;->c:Landroid/content/Context;

    invoke-static {v2, v0}, Luc;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ltc;->c(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 152
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Ltb;->d:Ltc;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltc;->d(Ljava/lang/String;)V

    .line 155
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 156
    array-length v1, v0

    if-lez v1, :cond_2

    .line 157
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 158
    iget-object v1, p0, Ltb;->d:Ltc;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltc;->f(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Ltb;->d:Ltc;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltc;->g(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Ltb;->d:Ltc;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    invoke-virtual {v1, v0}, Ltc;->b(I)V

    .line 163
    :cond_2
    invoke-direct {p0, p1}, Ltb;->c(Ljava/lang/Throwable;)V

    .line 164
    return-void
.end method

.method private c(Ljava/lang/Throwable;)V
    .locals 10
    .parameter

    .prologue
    const/16 v9, 0xa

    const/4 v0, 0x0

    .line 225
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 226
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 233
    array-length v6, v3

    move v2, v0

    move v1, v0

    :goto_0
    if-ge v2, v6, :cond_3

    aget-object v7, v3, v2

    .line 236
    iget-boolean v0, p0, Ltb;->e:Z

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Ltb;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    .line 240
    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 241
    sget-boolean v0, Lud;->c:Z

    if-eqz v0, :cond_0

    .line 242
    const-string v0, "stat.CrashHandler"

    const-string v1, "Splite the crash end in last appear of mStarWith"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_0
    iget-object v0, p0, Ltb;->d:Ltc;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltc;->e(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Ltb;->d:Ltc;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lud;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltc;->a(Ljava/lang/String;)V

    .line 257
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 249
    :cond_2
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 255
    :cond_3
    iget-object v0, p0, Ltb;->d:Ltc;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltc;->e(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Ltb;->d:Ltc;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lud;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltc;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private c()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 171
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 173
    :try_start_0
    const-string v0, "type"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 174
    const-string v0, "packageName"

    iget-object v3, p0, Ltb;->d:Ltc;

    invoke-virtual {v3}, Ltc;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    const-string v0, "versionName"

    iget-object v3, p0, Ltb;->d:Ltc;

    invoke-virtual {v3}, Ltc;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    const-string v0, "versionCode"

    iget-object v3, p0, Ltb;->d:Ltc;

    invoke-virtual {v3}, Ltc;->e()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 177
    const-string v0, "md5"

    iget-object v3, p0, Ltb;->d:Ltc;

    invoke-virtual {v3}, Ltc;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    const-string v0, "systemApp"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 179
    const-string v0, "count"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 181
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 182
    const-string v3, "exceptionClassName"

    iget-object v4, p0, Ltb;->d:Ltc;

    invoke-virtual {v4}, Ltc;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    const-string v3, "throwClassName"

    iget-object v4, p0, Ltb;->d:Ltc;

    invoke-virtual {v4}, Ltc;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    const-string v3, "throwMethodName"

    iget-object v4, p0, Ltb;->d:Ltc;

    invoke-virtual {v4}, Ltc;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    const-string v3, "throwLineNumber"

    iget-object v4, p0, Ltb;->d:Ltc;

    invoke-virtual {v4}, Ltc;->j()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 186
    const-string v3, "exceptionMessage"

    iget-object v4, p0, Ltb;->d:Ltc;

    invoke-virtual {v4}, Ltc;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    const-string v3, "Crash"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    new-instance v0, Ltf;

    sget-object v3, Ltx;->a:Ltx;

    invoke-direct {v0, v3, v2}, Ltf;-><init>(Ltx;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltb;->a(Ltf;)Z

    move-result v0

    .line 190
    sget-boolean v3, Lud;->c:Z

    if-eqz v3, :cond_0

    .line 191
    const-string v3, "stat.CrashHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Report Crash : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " and report "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :cond_0
    :goto_0
    return v0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_1

    .line 195
    const-string v2, "stat.CrashHandler"

    const-string v3, "JSONException!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move v0, v1

    .line 196
    goto :goto_0
.end method

.method private d()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 201
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 203
    :try_start_0
    const-string v0, "type"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 204
    const-string v0, "packageName"

    iget-object v3, p0, Ltb;->d:Ltc;

    invoke-virtual {v3}, Ltc;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    const-string v0, "versionName"

    iget-object v3, p0, Ltb;->d:Ltc;

    invoke-virtual {v3}, Ltc;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 206
    const-string v0, "versionCode"

    iget-object v3, p0, Ltb;->d:Ltc;

    invoke-virtual {v3}, Ltc;->e()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 207
    const-string v0, "systemApp"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 208
    const-string v0, "md5"

    iget-object v3, p0, Ltb;->d:Ltc;

    invoke-virtual {v3}, Ltc;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    const-string v0, "count"

    iget-object v3, p0, Ltb;->d:Ltc;

    invoke-virtual {v3}, Ltc;->b()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 210
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 211
    const-string v3, "Crash"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    new-instance v0, Ltf;

    sget-object v3, Ltx;->a:Ltx;

    invoke-direct {v0, v3, v2}, Ltf;-><init>(Ltx;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ltb;->a(Ltf;)Z

    move-result v0

    .line 214
    sget-boolean v3, Lud;->c:Z

    if-eqz v3, :cond_0

    .line 215
    const-string v3, "stat.CrashHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "report Crash : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " and report "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :cond_0
    :goto_0
    return v0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_1

    .line 219
    const-string v2, "stat.CrashHandler"

    const-string v3, "JSONException!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move v0, v1

    .line 220
    goto :goto_0
.end method

.method private e()Ljava/lang/String;
    .locals 4

    .prologue
    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    const-string v1, "VersionName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    iget-object v1, p0, Ltb;->d:Ltc;

    invoke-virtual {v1}, Ltc;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    const-string v1, " VersionCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    iget-object v1, p0, Ltb;->d:Ltc;

    invoke-virtual {v1}, Ltc;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 265
    const-string v1, " Model : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    iget-object v1, p0, Ltb;->c:Landroid/content/Context;

    invoke-static {v1}, Lgy;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const-string v1, " Time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 269
    const-string v1, "\nExceptionType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    iget-object v1, p0, Ltb;->d:Ltc;

    invoke-virtual {v1}, Ltc;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    const-string v1, "\nExceptionClass:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    iget-object v1, p0, Ltb;->d:Ltc;

    invoke-virtual {v1}, Ltc;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    const-string v1, "\nExceptionMethod:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    iget-object v1, p0, Ltb;->d:Ltc;

    invoke-virtual {v1}, Ltc;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    const-string v1, "\tExceptionLine:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    iget-object v1, p0, Ltb;->d:Ltc;

    invoke-virtual {v1}, Ltc;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 277
    const-string v1, "\ntraces:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    iget-object v1, p0, Ltb;->d:Ltc;

    invoke-virtual {v1}, Ltc;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    sget-boolean v1, Lud;->c:Z

    if-eqz v1, :cond_0

    .line 281
    const-string v1, "stat.CrashHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeMessage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltb;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v0, :cond_0

    .line 62
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Ltb;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 63
    :cond_0
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(ZLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 72
    iput-boolean p1, p0, Ltb;->e:Z

    .line 73
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Ltb;->g:Ljava/util/regex/Pattern;

    .line 74
    return-void
.end method

.method public a(Ljava/lang/Throwable;)Z
    .locals 6
    .parameter

    .prologue
    .line 94
    if-nez p1, :cond_0

    .line 95
    const/4 v0, 0x0

    .line 141
    :goto_0
    return v0

    .line 97
    :cond_0
    invoke-direct {p0, p1}, Ltb;->b(Ljava/lang/Throwable;)V

    .line 99
    sget-boolean v0, Lud;->c:Z

    if-eqz v0, :cond_1

    .line 100
    const-string v0, "stat.CrashHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExClass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltb;->d:Ltc;

    invoke-virtual {v2}, Ltc;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nExLine : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltb;->d:Ltc;

    invoke-virtual {v2}, Ltc;->j()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nExMethod : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltb;->d:Ltc;

    invoke-virtual {v2}, Ltc;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nExTraces : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltb;->d:Ltc;

    invoke-virtual {v2}, Ltc;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nExType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltb;->d:Ltc;

    invoke-virtual {v2}, Ltc;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nMD5: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltb;->d:Ltc;

    invoke-virtual {v2}, Ltc;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nPkgName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltb;->d:Ltc;

    invoke-virtual {v2}, Ltc;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nVersionCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltb;->d:Ltc;

    invoke-virtual {v2}, Ltc;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nVersionName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltb;->d:Ltc;

    invoke-virtual {v2}, Ltc;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_1
    invoke-direct {p0}, Ltb;->b()V

    .line 112
    iget-object v0, p0, Ltb;->f:Lsz;

    iget-object v1, p0, Ltb;->d:Ltc;

    invoke-virtual {v0, v1}, Lsz;->b(Ltc;)J

    move-result-wide v0

    .line 114
    sget-boolean v2, Lud;->c:Z

    if-eqz v2, :cond_2

    .line 115
    const-string v2, "stat.CrashHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Crash MD5 :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ltb;->d:Ltc;

    invoke-virtual {v4}, Ltc;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_2
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_5

    .line 118
    sget-boolean v0, Lud;->c:Z

    if-eqz v0, :cond_3

    .line 119
    const-string v0, "stat.CrashHandler"

    const-string v1, "Crash first occurs!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_3
    invoke-direct {p0}, Ltb;->c()Z

    .line 122
    iget-object v0, p0, Ltb;->f:Lsz;

    iget-object v1, p0, Ltb;->d:Ltc;

    invoke-virtual {v0, v1}, Lsz;->a(Ltc;)Z

    .line 140
    :cond_4
    :goto_1
    iget-object v0, p0, Ltb;->f:Lsz;

    invoke-virtual {v0}, Lsz;->a()V

    .line 141
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 124
    :cond_5
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 125
    iget-object v2, p0, Ltb;->f:Lsz;

    iget-object v3, p0, Ltb;->d:Ltc;

    invoke-virtual {v2, v3}, Lsz;->c(Ltc;)J

    move-result-wide v2

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-lez v2, :cond_7

    .line 128
    sget-boolean v2, Lud;->c:Z

    if-eqz v2, :cond_6

    .line 129
    const-string v2, "stat.CrashHandler"

    const-string v3, "Should report the count of the crash!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_6
    iget-object v2, p0, Ltb;->d:Ltc;

    invoke-virtual {v2, v0, v1}, Ltc;->a(J)V

    .line 132
    invoke-direct {p0}, Ltb;->d()Z

    move-result v0

    .line 133
    if-eqz v0, :cond_4

    .line 134
    iget-object v0, p0, Ltb;->f:Lsz;

    iget-object v1, p0, Ltb;->d:Ltc;

    invoke-virtual {v0, v1}, Lsz;->d(Ltc;)V

    goto :goto_1

    .line 137
    :cond_7
    iget-object v2, p0, Ltb;->f:Lsz;

    iget-object v3, p0, Ltb;->d:Ltc;

    invoke-virtual {v2, v3, v0, v1}, Lsz;->a(Ltc;J)V

    goto :goto_1
.end method

.method public a(Ltf;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 287
    :try_start_0
    const-string v0, "pkv"

    .line 289
    iget-object v1, p0, Ltb;->c:Landroid/content/Context;

    invoke-static {v1}, Ltg;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 291
    if-nez v2, :cond_0

    move v0, v9

    .line 309
    :goto_0
    return v0

    .line 295
    :cond_0
    invoke-static {}, Ltg;->a()Ljava/lang/String;

    move-result-object v3

    .line 296
    invoke-virtual {p1}, Ltf;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lte;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 297
    invoke-static {v3, v2}, Lte;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 299
    iget-object v2, p0, Ltb;->c:Landroid/content/Context;

    const-string v3, "i"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 300
    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 302
    new-instance v0, Lth;

    iget-object v2, p0, Ltb;->c:Landroid/content/Context;

    const-string v3, "i"

    invoke-direct {v0, v2, v3}, Lth;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 303
    invoke-virtual {p1}, Ltf;->c()I

    move-result v2

    invoke-virtual {p1}, Ltf;->d()I

    move-result v3

    invoke-virtual {p1}, Ltf;->g()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ltf;->i()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {p1}, Ltf;->f()I

    move-result v8

    invoke-virtual/range {v0 .. v8}, Lth;->a(Ljava/lang/String;IILjava/lang/String;Ljava/util/Date;Ljava/lang/String;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 305
    :catch_0
    move-exception v0

    .line 306
    sget-boolean v1, Lud;->d:Z

    if-eqz v1, :cond_1

    .line 307
    const-string v1, "stat.CrashHandler"

    const-string v2, "Failed to push crash to the Db."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move v0, v9

    .line 309
    goto :goto_0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 79
    :try_start_0
    invoke-virtual {p0, p2}, Ltb;->a(Ljava/lang/Throwable;)Z

    .line 80
    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    iget-object v0, p0, Ltb;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltb;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    sget-boolean v0, Lud;->c:Z

    if-eqz v0, :cond_0

    .line 87
    const-string v0, "stat.CrashHandler"

    const-string v1, "Give back to default uncaughtException!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    iget-object v0, p0, Ltb;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 91
    :cond_1
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    :try_start_1
    sget-boolean v1, Lud;->d:Z

    if-eqz v1, :cond_2

    .line 83
    const-string v1, "stat.CrashHandler"

    const-string v2, "UncaughtException has Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :cond_2
    iget-object v0, p0, Ltb;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltb;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    sget-boolean v0, Lud;->c:Z

    if-eqz v0, :cond_3

    .line 87
    const-string v0, "stat.CrashHandler"

    const-string v1, "Give back to default uncaughtException!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_3
    iget-object v0, p0, Ltb;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    iget-object v1, p0, Ltb;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_5

    iget-object v1, p0, Ltb;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 86
    sget-boolean v1, Lud;->c:Z

    if-eqz v1, :cond_4

    .line 87
    const-string v1, "stat.CrashHandler"

    const-string v2, "Give back to default uncaughtException!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_4
    iget-object v1, p0, Ltb;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_5
    throw v0
.end method
