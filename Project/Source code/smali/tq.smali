.class Ltq;
.super Ljava/lang/Object;
.source "EventReporter.java"


# instance fields
.field final synthetic a:Ltp;

.field private final b:Lui;

.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ltp;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Ltq;->a:Ltp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    invoke-static {p2}, Lui;->a(Landroid/content/Context;)Lui;

    move-result-object v0

    iput-object v0, p0, Ltq;->b:Lui;

    .line 171
    iput-object p2, p0, Ltq;->c:Landroid/content/Context;

    .line 172
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 260
    invoke-static {}, Ltg;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lte;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    sget-boolean v1, Lud;->b:Z

    if-eqz v1, :cond_0

    .line 263
    const-string v1, "stat.EventReporter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pub = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const-string v1, "stat.EventReporter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cipher = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_0
    const-string v1, "a"

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    const-string v1, "b"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 272
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 274
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    sget-object v3, Ltn;->a:Ljava/util/TimeZone;

    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 276
    const-string v2, "c"

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    :cond_1
    const-string v2, "d"

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ltn;->a(J)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 279
    const-string v1, "e"

    invoke-static {}, Ltn;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    const-string v1, "f"

    iget-object v2, p0, Ltq;->c:Landroid/content/Context;

    invoke-static {v2}, Lgy;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 281
    const-string v1, "g"

    iget-object v2, p0, Ltq;->c:Landroid/content/Context;

    invoke-static {v2}, Lgw;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 283
    const-string v1, "c"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ltg;->b()[B

    move-result-object v2

    invoke-static {v0, v2}, Lte;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 285
    return-void
.end method

.method private a(Lug;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 255
    invoke-static {}, Ltg;->b()[B

    move-result-object v0

    invoke-static {p3, v0}, Lte;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lug;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method private a(I)[B
    .locals 3
    .parameter

    .prologue
    .line 288
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 289
    const/4 v1, 0x3

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 290
    const/4 v1, 0x2

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 291
    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 292
    const/4 v1, 0x0

    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 293
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 175
    iget-object v1, p0, Ltq;->c:Landroid/content/Context;

    invoke-static {v1}, Lgw;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    sget-boolean v1, Lud;->c:Z

    if-eqz v1, :cond_0

    .line 177
    const-string v1, "stat.EventReporter"

    const-string v2, "No lc info!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_0
    :goto_0
    return v0

    .line 181
    :cond_1
    iget-object v1, p0, Ltq;->b:Lui;

    invoke-virtual {v1}, Lui;->b()Ljava/lang/String;

    move-result-object v1

    .line 182
    iget-object v2, p0, Ltq;->c:Landroid/content/Context;

    invoke-static {v2}, Lse;->a(Landroid/content/Context;)Lse;

    move-result-object v2

    invoke-virtual {v2}, Lse;->b()Z

    .line 184
    sget-boolean v2, Lud;->c:Z

    if-eqz v2, :cond_2

    .line 185
    const-string v2, "stat.EventReporter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Try to upload with token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    const-string v2, "data"

    iget-object v3, p0, Ltq;->c:Landroid/content/Context;

    invoke-static {v2, v3}, Lud;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 198
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 202
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 204
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 207
    :try_start_0
    invoke-direct {p0, v4, p1}, Ltq;->a(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :try_start_1
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ltn;->a(Ljava/lang/String;)[B

    move-result-object v4

    .line 218
    invoke-static {p2}, Ltn;->a(Ljava/lang/String;)[B

    move-result-object v5

    .line 220
    array-length v6, v4

    array-length v7, v5

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x4

    new-array v6, v6, [B

    .line 222
    array-length v7, v4

    invoke-direct {p0, v7}, Ltq;->a(I)[B

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-static {v7, v8, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    const/4 v7, 0x0

    const/4 v8, 0x4

    array-length v9, v4

    invoke-static {v4, v7, v6, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    const/4 v7, 0x0

    array-length v4, v4

    add-int/lit8 v4, v4, 0x4

    array-length v8, v5

    invoke-static {v5, v7, v6, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    new-instance v4, Landroid/util/Pair;

    const-string v5, "data"

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 235
    new-instance v4, Lug;

    iget-object v5, p0, Ltq;->c:Landroid/content/Context;

    const-string v6, "DXCoreService"

    const-string v7, "stat.EventReporter"

    invoke-direct {v4, v5, v2, v6, v7}, Lug;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v2, "token"

    invoke-direct {p0, v4, v2, v1}, Ltq;->a(Lug;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const/4 v1, 0x0

    invoke-virtual {v4, v1, v3}, Lug;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 240
    sget-boolean v1, Lud;->d:Z

    if-eqz v1, :cond_0

    .line 241
    const-string v1, "stat.EventReporter"

    const-string v2, "Failed to connect the stat server."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 208
    :catch_0
    move-exception v1

    .line 209
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_0

    .line 210
    const-string v2, "stat.EventReporter"

    const-string v3, "Can not generate the header."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 227
    :catch_1
    move-exception v1

    .line 228
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_0

    .line 229
    const-string v2, "stat.EventReporter"

    const-string v3, "Can not zip the data."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 247
    :cond_3
    sget-boolean v0, Lud;->c:Z

    if-eqz v0, :cond_4

    .line 248
    const-string v0, "stat.EventReporter"

    const-string v1, "Successfully upload the content."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_0
.end method
