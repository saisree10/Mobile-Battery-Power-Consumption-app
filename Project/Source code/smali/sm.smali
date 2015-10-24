.class public final Lsm;
.super Ljava/lang/Object;
.source "AppInfoService.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Landroid/content/Context;

.field private static c:Lsj;

.field private static d:Z

.field private static e:I

.field private static f:Z


# instance fields
.field private final g:Ljava/lang/Runnable;

.field private final h:Ljava/lang/Runnable;

.field private i:Landroid/content/IntentFilter;

.field private j:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lsn;

    invoke-direct {v0, p0}, Lsn;-><init>(Lsm;)V

    iput-object v0, p0, Lsm;->g:Ljava/lang/Runnable;

    .line 88
    new-instance v0, Lso;

    invoke-direct {v0, p0}, Lso;-><init>(Lsm;)V

    iput-object v0, p0, Lsm;->h:Ljava/lang/Runnable;

    .line 102
    iput-object v1, p0, Lsm;->i:Landroid/content/IntentFilter;

    .line 104
    iput-object v1, p0, Lsm;->j:Landroid/content/BroadcastReceiver;

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lsm;->b:Landroid/content/Context;

    .line 108
    new-instance v0, Lsj;

    sget-object v1, Lsm;->b:Landroid/content/Context;

    const-string v2, "z"

    invoke-direct {v0, v1, v2}, Lsj;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lsm;->c:Lsj;

    .line 109
    invoke-static {p1}, Lui;->a(Landroid/content/Context;)Lui;

    move-result-object v0

    invoke-virtual {v0}, Lui;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsm;->a:Ljava/lang/String;

    .line 110
    sput v3, Lsm;->e:I

    .line 111
    sput-boolean v3, Lsm;->f:Z

    .line 112
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 192
    invoke-static {p1}, Lub;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 194
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsr;

    .line 195
    invoke-static {v0}, Lub;->a(Lsr;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 196
    invoke-direct {p0, v0}, Lsm;->a(Lsr;)Z

    move-result v2

    .line 197
    if-eqz v2, :cond_0

    .line 198
    sget-boolean v2, Lud;->b:Z

    if-eqz v2, :cond_1

    .line 199
    const-string v2, "stat.AppInfoService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Success to putToDB with token : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lsm;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lsr;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_1
    invoke-static {v0}, Lub;->b(Lsr;)V

    goto :goto_0

    .line 205
    :cond_2
    return-void
.end method

.method static synthetic a(Lsm;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lsm;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lsm;)Z
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lsm;->i()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lsm;Lsr;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lsm;->a(Lsr;)Z

    move-result v0

    return v0
.end method

.method private a(Lsr;)Z
    .locals 4
    .parameter

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lsm;->b(Lsr;)Ltd;

    move-result-object v0

    .line 177
    :try_start_0
    sget-object v1, Lsm;->c:Lsj;

    invoke-virtual {v1, v0}, Lsj;->a(Ltd;)Z

    move-result v0

    .line 179
    if-eqz v0, :cond_0

    sget-boolean v1, Lud;->b:Z

    if-eqz v1, :cond_0

    .line 180
    const-string v1, "stat.AppInfoService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Success to putToDB with token : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lsm;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lsr;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :cond_0
    :goto_0
    return v0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    sget-boolean v1, Lud;->d:Z

    if-eqz v1, :cond_1

    .line 186
    const-string v1, "stat.AppInfoService"

    const-string v2, "Failed to push DbAppInfo into Datebase!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Z)Z
    .locals 0
    .parameter

    .prologue
    .line 33
    sput-boolean p0, Lsm;->f:Z

    return p0
.end method

.method private b(Lsr;)Ltd;
    .locals 7
    .parameter

    .prologue
    .line 286
    sget-object v0, Lsm;->b:Landroid/content/Context;

    invoke-static {v0}, Ltg;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 288
    if-nez v0, :cond_0

    .line 289
    const/4 v0, 0x0

    .line 306
    :goto_0
    return-object v0

    .line 291
    :cond_0
    invoke-static {}, Ltg;->a()Ljava/lang/String;

    move-result-object v5

    .line 292
    invoke-static {v5, v0}, Lte;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 294
    sget-object v1, Lsm;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 296
    const-string v3, "android.{F46B117B-CBC7-4ac2-8F3C-43C1649DC7PK}"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 297
    const-string v4, "android.{F46B117B-CBC7-4ac2-8F3C-43C1649DC7PV}"

    const/4 v6, 0x0

    invoke-static {v1, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    sput v4, Lsm;->e:I

    .line 299
    if-eqz v3, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 300
    sget-object v4, Lsm;->c:Lsj;

    sget v6, Lsm;->e:I

    invoke-virtual {v4, v6}, Lsj;->a(I)V

    .line 302
    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 303
    :cond_2
    const-string v3, "android.{F46B117B-CBC7-4ac2-8F3C-43C1649DC7PK}"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 304
    const-string v0, "android.{F46B117B-CBC7-4ac2-8F3C-43C1649DC7PV}"

    sget v3, Lsm;->e:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lsm;->e:I

    invoke-static {v1, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 306
    :cond_3
    new-instance v0, Ltd;

    sget-object v3, Lsm;->a:Ljava/lang/String;

    sget v4, Lsm;->e:I

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ltd;-><init>(Lsr;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic d()Z
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lsm;->f:Z

    return v0
.end method

.method static synthetic e()Lsj;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lsm;->c:Lsj;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lsm;->i:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lsm;->i:Landroid/content/IntentFilter;

    .line 151
    iget-object v0, p0, Lsm;->i:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lsm;->i:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lsm;->i:Landroid/content/IntentFilter;

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 156
    :cond_0
    iget-object v0, p0, Lsm;->j:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 157
    new-instance v0, Lsp;

    invoke-direct {v0, p0}, Lsp;-><init>(Lsm;)V

    iput-object v0, p0, Lsm;->j:Landroid/content/BroadcastReceiver;

    .line 165
    :cond_1
    sget-object v0, Lsm;->b:Landroid/content/Context;

    iget-object v1, p0, Lsm;->j:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lsm;->i:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 166
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lsm;->j:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 170
    sget-object v0, Lsm;->b:Landroid/content/Context;

    iget-object v1, p0, Lsm;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 172
    :cond_0
    return-void
.end method

.method private h()Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 215
    sget-object v2, Lsm;->b:Landroid/content/Context;

    const-string v3, "rt"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 216
    const-string v3, "al"

    const-wide/16 v4, -0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 218
    sget-object v3, Lsm;->c:Lsj;

    if-eqz v3, :cond_1

    sget-object v3, Lsm;->c:Lsj;

    invoke-virtual {v3}, Lsj;->a()I

    move-result v3

    const/16 v4, 0x5000

    if-le v3, v4, :cond_1

    .line 229
    :cond_0
    :goto_0
    return v0

    .line 222
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v2, v3, v5

    const-wide/32 v4, 0x48190800

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 223
    sget-object v2, Lsm;->c:Lsj;

    if-eqz v2, :cond_2

    sget-object v2, Lsm;->c:Lsj;

    invoke-virtual {v2}, Lsj;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    :cond_2
    invoke-direct {p0}, Lsm;->j()V

    :cond_3
    move v0, v1

    .line 229
    goto :goto_0
.end method

.method private i()Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 235
    sget-object v1, Lsm;->b:Landroid/content/Context;

    invoke-static {v1}, Lud;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 236
    sget-boolean v1, Lud;->b:Z

    if-eqz v1, :cond_0

    .line 237
    const-string v1, "stat.AppInfoService"

    const-string v2, "Network is unavailable!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_0
    :goto_0
    return v0

    .line 242
    :cond_1
    :try_start_0
    const-string v1, "appInfo"

    sget-object v2, Lsm;->b:Landroid/content/Context;

    invoke-static {v1, v2}, Lud;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 244
    sget-object v2, Lsm;->c:Lsj;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lsj;->b(I)Lsk;

    move-result-object v2

    .line 245
    invoke-virtual {v2}, Lsk;->a()Ljava/lang/String;

    move-result-object v3

    .line 246
    invoke-static {v3}, Ltn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 248
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 249
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "token"

    sget-object v7, Lsm;->a:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    sget-object v5, Lsm;->b:Landroid/content/Context;

    invoke-static {v5}, Ltg;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 252
    invoke-static {}, Ltg;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lte;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 254
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "pu"

    invoke-direct {v7, v8, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "ci"

    invoke-direct {v5, v7, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "ap"

    invoke-static {}, Ltg;->b()[B

    move-result-object v7

    invoke-static {v3, v7}, Lte;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v6, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    new-instance v3, Lug;

    sget-object v5, Lsm;->b:Landroid/content/Context;

    const-string v6, "DXStatisticAppInfo"

    const-string v7, "stat.AppInfoService"

    invoke-direct {v3, v5, v1, v6, v7}, Lug;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-virtual {v3, v4}, Lug;->a(Ljava/util/List;)Z

    move-result v1

    .line 262
    if-eqz v1, :cond_3

    .line 263
    sget-boolean v3, Lud;->b:Z

    if-eqz v3, :cond_2

    .line 264
    const-string v3, "stat.AppInfoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Success to reportAppInfo with maxRowId :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lsk;->b()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_2
    sget-object v3, Lsm;->c:Lsj;

    invoke-virtual {v2}, Lsk;->b()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lsj;->a(J)V

    .line 269
    sget-object v2, Lsm;->b:Landroid/content/Context;

    const-string v3, "rt"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 271
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 272
    const-string v3, "al"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 274
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move v0, v1

    .line 276
    goto/16 :goto_0

    .line 277
    :catch_0
    move-exception v1

    .line 278
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_0

    .line 279
    const-string v2, "stat.AppInfoService"

    const-string v3, "Can not report AppInfo!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private j()V
    .locals 3

    .prologue
    .line 374
    new-instance v0, Lsr;

    sget-object v1, Lsm;->b:Landroid/content/Context;

    const-string v2, "beat"

    invoke-direct {v0, v1, v2}, Lsr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 375
    invoke-direct {p0, v0}, Lsm;->a(Lsr;)Z

    .line 376
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 115
    sget-boolean v0, Lud;->b:Z

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "stat.AppInfoService"

    const-string v1, "Start!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    sget-object v0, Lsm;->b:Landroid/content/Context;

    invoke-static {v0}, Lub;->a(Landroid/content/Context;)V

    .line 119
    sget-object v0, Lsm;->b:Landroid/content/Context;

    invoke-static {v0}, Lud;->b(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lsm;->d:Z

    .line 120
    sget-boolean v0, Lsm;->d:Z

    if-nez v0, :cond_2

    .line 121
    sget-boolean v0, Lud;->b:Z

    if-eqz v0, :cond_1

    .line 122
    const-string v0, "stat.AppInfoService"

    const-string v1, "Not the app to report!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_1
    :goto_0
    return-void

    .line 126
    :cond_2
    sget-object v0, Lsm;->c:Lsj;

    if-eqz v0, :cond_3

    sget-object v0, Lsm;->c:Lsj;

    invoke-virtual {v0}, Lsj;->b()Z

    move-result v0

    if-nez v0, :cond_3

    .line 127
    iget-object v0, p0, Lsm;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Luf;->a(Ljava/lang/Runnable;)Z

    .line 129
    :cond_3
    iget-object v0, p0, Lsm;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Luf;->a(Ljava/lang/Runnable;)Z

    .line 131
    invoke-direct {p0}, Lsm;->f()V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 136
    sget-boolean v0, Lsm;->d:Z

    if-nez v0, :cond_0

    .line 145
    :goto_0
    return-void

    .line 139
    :cond_0
    sget-boolean v0, Lud;->b:Z

    if-eqz v0, :cond_1

    .line 140
    const-string v0, "stat.AppInfoService"

    const-string v1, "Shutdown!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_1
    invoke-direct {p0}, Lsm;->g()V

    .line 144
    sget-object v0, Lsm;->b:Landroid/content/Context;

    invoke-static {v0}, Lud;->c(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 208
    invoke-direct {p0}, Lsm;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lsm;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Luf;->a(Ljava/lang/Runnable;)Z

    .line 211
    :cond_0
    return-void
.end method
