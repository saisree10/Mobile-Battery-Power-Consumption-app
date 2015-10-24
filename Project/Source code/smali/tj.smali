.class public final Ltj;
.super Ljava/lang/Object;
.source "EventDispatcher.java"


# static fields
.field private static final a:Ljava/lang/Long;


# instance fields
.field private b:Lts;

.field private final c:Ltr;

.field private final d:Ltp;

.field private final e:Lto;

.field private final f:Landroid/content/Context;

.field private g:Ljava/lang/Runnable;

.field private h:Ljava/util/Queue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-wide/16 v0, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Ltj;->a:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ltk;

    invoke-direct {v0, p0}, Ltk;-><init>(Ltj;)V

    iput-object v0, p0, Ltj;->g:Ljava/lang/Runnable;

    .line 74
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ltj;->h:Ljava/util/Queue;

    .line 78
    iput-object p1, p0, Ltj;->f:Landroid/content/Context;

    .line 80
    new-instance v0, Ltr;

    iget-object v1, p0, Ltj;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Ltr;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltj;->c:Ltr;

    .line 81
    new-instance v0, Ltp;

    iget-object v1, p0, Ltj;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Ltp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltj;->d:Ltp;

    .line 82
    new-instance v0, Lto;

    iget-object v1, p0, Ltj;->f:Landroid/content/Context;

    const-string v2, "sk"

    invoke-direct {v0, v1, v2}, Lto;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Ltj;->e:Lto;

    .line 83
    return-void
.end method

.method private a(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 366
    if-nez p2, :cond_1

    .line 367
    const/4 p1, 0x0

    .line 388
    :cond_0
    :goto_0
    return-object p1

    .line 370
    :cond_1
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_2

    .line 371
    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Number;->byteValue()B

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 372
    :cond_2
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_3

    .line 373
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 374
    :cond_3
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 375
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    .line 376
    :cond_4
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 377
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    .line 378
    :cond_5
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_6

    .line 379
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_0

    .line 380
    :cond_6
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_7

    .line 381
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_0

    .line 382
    :cond_7
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_8

    .line 383
    check-cast p1, Ljava/math/BigInteger;

    check-cast p2, Ljava/math/BigInteger;

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_0

    .line 384
    :cond_8
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_0

    .line 385
    check-cast p1, Ljava/math/BigDecimal;

    check-cast p2, Ljava/math/BigDecimal;

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    goto/16 :goto_0
.end method

.method private static a(ILjava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 332
    const/16 v0, 0xa

    if-ne v0, p0, :cond_1

    .line 333
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 354
    :cond_0
    :goto_0
    return-object p1

    .line 334
    :cond_1
    const/16 v0, 0x9

    if-ne v0, p0, :cond_2

    .line 335
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_0

    .line 336
    :cond_2
    if-nez p0, :cond_3

    .line 337
    invoke-static {p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    goto :goto_0

    .line 338
    :cond_3
    const/4 v0, 0x1

    if-ne v0, p0, :cond_4

    .line 339
    invoke-static {p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    goto :goto_0

    .line 340
    :cond_4
    const/4 v0, 0x2

    if-ne v0, p0, :cond_5

    .line 341
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 342
    :cond_5
    const/4 v0, 0x3

    if-ne v0, p0, :cond_6

    .line 343
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    .line 344
    :cond_6
    const/4 v0, 0x4

    if-ne v0, p0, :cond_7

    .line 345
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_0

    .line 346
    :cond_7
    const/4 v0, 0x5

    if-ne v0, p0, :cond_8

    .line 347
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_0

    .line 348
    :cond_8
    const/4 v0, 0x6

    if-ne v0, p0, :cond_9

    .line 349
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_0

    .line 350
    :cond_9
    const/4 v0, 0x7

    if-ne v0, p0, :cond_0

    .line 351
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_0
.end method

.method private static a(ILjava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 358
    const/16 v0, 0xa

    if-ne v0, p0, :cond_0

    .line 359
    new-instance v0, Ljava/lang/String;

    check-cast p1, [B

    check-cast p1, [B

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 362
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Ltj;)Ljava/util/Queue;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Ltj;->h:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic a(Ltj;Ljava/util/Queue;)Ljava/util/Queue;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Ltj;->h:Ljava/util/Queue;

    return-object p1
.end method

.method private a(Ljava/lang/String;Ltf;)Z
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v12, 0x1

    const/4 v4, 0x0

    const/16 v11, 0x9

    const/4 v9, 0x0

    .line 198
    :try_start_0
    iget-object v0, p0, Ltj;->f:Landroid/content/Context;

    invoke-static {v0}, Ltg;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 200
    if-nez v5, :cond_0

    move v0, v9

    .line 327
    :goto_0
    return v0

    .line 205
    :cond_0
    invoke-static {}, Ltg;->a()Ljava/lang/String;

    move-result-object v7

    .line 206
    invoke-virtual {p2}, Ltf;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lte;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-static {v7, v5}, Lte;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 211
    invoke-virtual {p2}, Ltf;->d()I

    move-result v0

    if-ne v12, v0, :cond_3

    .line 212
    invoke-virtual {p2}, Ltf;->c()I

    move-result v0

    if-ne v11, v0, :cond_13

    .line 213
    invoke-virtual {p2}, Ltf;->g()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ltf;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    move-object v2, v0

    .line 216
    :goto_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 218
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 219
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 220
    invoke-static {v0, v7}, Lte;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 322
    :catch_0
    move-exception v0

    .line 323
    sget-boolean v1, Lud;->d:Z

    if-eqz v1, :cond_1

    .line 324
    const-string v1, "stat.EventDispatcher"

    const-string v2, "Failed to push the event."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move v0, v9

    .line 327
    goto :goto_0

    .line 213
    :cond_2
    :try_start_1
    invoke-virtual {p2}, Ltf;->c()I

    move-result v0

    invoke-virtual {p2}, Ltf;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ltj;->a(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    move-object v2, v0

    goto :goto_1

    .line 225
    :cond_3
    const/4 v0, 0x3

    invoke-virtual {p2}, Ltf;->d()I

    move-result v2

    if-ne v0, v2, :cond_9

    .line 226
    invoke-virtual {p2}, Ltf;->g()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 227
    invoke-virtual {p2}, Ltf;->c()I

    move-result v0

    invoke-virtual {p2}, Ltf;->g()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ltj;->a(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v4

    move-object v4, v0

    .line 241
    :cond_4
    :goto_3
    iget-object v0, p0, Ltj;->c:Ltr;

    invoke-virtual {v0, p1}, Ltr;->a(Ljava/lang/String;)Lth;

    move-result-object v0

    .line 243
    iget-object v2, p0, Ltj;->f:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual {v2, p1, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 244
    const-string v7, "pk"

    const/4 v8, 0x0

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 245
    const-string v7, "pkv"

    const/4 v10, 0x0

    invoke-interface {v2, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 247
    invoke-virtual {v0}, Lth;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 250
    if-eqz v8, :cond_5

    :try_start_2
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 251
    invoke-virtual {v0, v7}, Lth;->a(I)V

    .line 254
    :cond_5
    if-eqz v8, :cond_6

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 255
    :cond_6
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 256
    const-string v8, "pk"

    invoke-interface {v2, v8, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 257
    const-string v5, "pkv"

    add-int/lit8 v7, v7, 0x1

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 258
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 261
    :cond_7
    invoke-virtual {p2}, Ltf;->d()I

    move-result v2

    if-ne v12, v2, :cond_12

    .line 262
    invoke-virtual {p2}, Ltf;->i()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v6}, Lth;->a(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 264
    if-eqz v2, :cond_f

    .line 267
    invoke-virtual {p2}, Ltf;->c()I

    move-result v4

    if-ne v11, v4, :cond_d

    .line 268
    invoke-virtual {p2}, Ltf;->c()I

    move-result v4

    invoke-static {v4, v2}, Ltj;->a(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 270
    check-cast v3, Lorg/json/JSONObject;

    .line 272
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 273
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 275
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    .line 277
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 278
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-direct {p0, v7, v5}, Ltj;->a(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 320
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Lth;->b()V

    throw v1

    .line 229
    :cond_8
    invoke-virtual {p2}, Ltf;->h()Ljava/lang/String;

    move-result-object v0

    move-object v3, v4

    move-object v4, v0

    goto/16 :goto_3

    .line 232
    :cond_9
    invoke-virtual {p2}, Ltf;->g()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 233
    invoke-virtual {p2}, Ltf;->c()I

    move-result v0

    invoke-virtual {p2}, Ltf;->g()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ltj;->a(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lte;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v4

    move-object v4, v0

    goto/16 :goto_3

    .line 236
    :cond_a
    invoke-virtual {p2}, Ltf;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lte;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    move-object v3, v4

    move-object v4, v0

    goto/16 :goto_3

    .line 280
    :cond_b
    :try_start_4
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 284
    :cond_c
    invoke-virtual {p2}, Ltf;->c()I

    move-result v3

    invoke-static {v3, v2}, Ltj;->a(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 298
    :goto_5
    invoke-virtual {p2}, Ltf;->i()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v6}, Lth;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v1

    .line 320
    :try_start_5
    invoke-virtual {v0}, Lth;->b()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move v0, v1

    goto/16 :goto_0

    .line 287
    :cond_d
    :try_start_6
    invoke-virtual {p2}, Ltf;->c()I

    move-result v3

    invoke-static {v3, v2}, Ltj;->a(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    .line 289
    invoke-virtual {p2}, Ltf;->g()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {p2}, Ltf;->g()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    .line 293
    :goto_6
    invoke-direct {p0, v2, v3}, Ltj;->a(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v2

    .line 295
    invoke-virtual {p2}, Ltf;->c()I

    move-result v3

    invoke-static {v3, v2}, Ltj;->a(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 289
    :cond_e
    invoke-virtual {p2}, Ltf;->c()I

    move-result v3

    invoke-virtual {p2}, Ltf;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ltj;->a(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    goto :goto_6

    .line 302
    :cond_f
    invoke-virtual {p2}, Ltf;->c()I

    move-result v2

    if-ne v11, v2, :cond_10

    .line 303
    invoke-virtual {p2}, Ltf;->c()I

    move-result v2

    invoke-static {v2, v3}, Ltj;->a(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 311
    :goto_7
    invoke-virtual {p2}, Ltf;->c()I

    move-result v2

    invoke-virtual {p2}, Ltf;->d()I

    move-result v3

    invoke-virtual {p2}, Ltf;->i()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {p2}, Ltf;->f()I

    move-result v8

    invoke-virtual/range {v0 .. v8}, Lth;->a(Ljava/lang/String;IILjava/lang/String;Ljava/util/Date;Ljava/lang/String;II)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v1

    .line 320
    :try_start_7
    invoke-virtual {v0}, Lth;->b()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move v0, v1

    goto/16 :goto_0

    .line 306
    :cond_10
    :try_start_8
    invoke-virtual {p2}, Ltf;->h()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {p2}, Ltf;->h()Ljava/lang/String;

    move-result-object v2

    :goto_8
    move-object v4, v2

    goto :goto_7

    :cond_11
    invoke-virtual {p2}, Ltf;->c()I

    move-result v2

    invoke-virtual {p2}, Ltf;->g()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ltj;->a(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    .line 317
    :cond_12
    invoke-virtual {p2}, Ltf;->c()I

    move-result v2

    invoke-virtual {p2}, Ltf;->d()I

    move-result v3

    invoke-virtual {p2}, Ltf;->i()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {p2}, Ltf;->f()I

    move-result v8

    invoke-virtual/range {v0 .. v8}, Lth;->a(Ljava/lang/String;IILjava/lang/String;Ljava/util/Date;Ljava/lang/String;II)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v1

    .line 320
    :try_start_9
    invoke-virtual {v0}, Lth;->b()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    move v0, v1

    goto/16 :goto_0

    :cond_13
    move-object v3, v4

    goto/16 :goto_3
.end method

.method private a(Ltf;)Z
    .locals 1
    .parameter

    .prologue
    .line 120
    .line 122
    new-instance v0, Ltl;

    invoke-direct {v0, p0, p1}, Ltl;-><init>(Ltj;Ltf;)V

    .line 133
    invoke-static {v0}, Luf;->a(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method private a(Ltf;Ljava/lang/String;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 156
    invoke-direct {p0, p2, p1}, Ltj;->a(Ljava/lang/String;Ltf;)Z

    move-result v0

    .line 157
    if-eqz v0, :cond_3

    .line 158
    sget-boolean v1, Lud;->c:Z

    if-eqz v1, :cond_0

    .line 159
    const-string v1, "stat.EventDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Push to db "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " success!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    const-string v1, "d"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    iget-object v1, p0, Ltj;->e:Lto;

    invoke-virtual {p1}, Ltf;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lto;->a(Ljava/lang/String;J)V

    .line 164
    :cond_1
    invoke-virtual {p0}, Ltj;->c()Z

    .line 168
    :cond_2
    :goto_0
    return v0

    .line 165
    :cond_3
    sget-boolean v1, Lud;->c:Z

    if-eqz v1, :cond_2

    .line 166
    const-string v1, "stat.EventDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Push event:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " db failed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Ltj;Ltf;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Ltj;->b(Ltf;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Ltj;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Ltj;->g:Ljava/lang/Runnable;

    return-object v0
.end method

.method private b(Ltf;)Z
    .locals 3
    .parameter

    .prologue
    .line 138
    sget-boolean v0, Lud;->b:Z

    if-eqz v0, :cond_0

    .line 139
    const-string v0, "stat.EventDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HandleEvent :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ltf;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    invoke-virtual {p1}, Ltf;->b()I

    move-result v0

    if-nez v0, :cond_2

    .line 142
    iget-object v0, p0, Ltj;->e:Lto;

    invoke-virtual {p1}, Ltf;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lto;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {p1}, Ltf;->f()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    .line 144
    invoke-virtual {p1, v0}, Ltf;->b(I)V

    .line 145
    const-string v0, "i"

    invoke-direct {p0, p1, v0}, Ltj;->a(Ltf;Ljava/lang/String;)Z

    move-result v0

    .line 152
    :goto_0
    return v0

    .line 147
    :cond_1
    const-string v0, "d"

    invoke-direct {p0, p1, v0}, Ltj;->a(Ltf;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 149
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p1}, Ltf;->b()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 150
    const-string v0, "i"

    invoke-direct {p0, p1, v0}, Ltj;->a(Ltf;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 152
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Ltj;)Ltp;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Ltj;->d:Ltp;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Ltj;->a:Ljava/lang/Long;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 86
    sget-boolean v0, Lud;->b:Z

    if-eqz v0, :cond_0

    .line 87
    const-string v0, "stat.EventDispatcher"

    const-string v1, "Start!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    return-void
.end method

.method public a(Ltf;Z)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 103
    sget-boolean v0, Lud;->b:Z

    if-eqz v0, :cond_0

    .line 104
    const-string v0, "stat.EventDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DispatchEvent:event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    iget-object v0, p0, Ltj;->b:Lts;

    if-nez v0, :cond_1

    .line 108
    new-instance v0, Lts;

    iget-object v1, p0, Ltj;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lts;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltj;->b:Lts;

    .line 109
    iget-object v0, p0, Ltj;->b:Lts;

    invoke-virtual {v0}, Lts;->a()V

    .line 112
    :cond_1
    if-eqz p2, :cond_2

    .line 113
    invoke-direct {p0, p1}, Ltj;->a(Ltf;)Z

    move-result v0

    .line 115
    :goto_0
    return v0

    :cond_2
    invoke-direct {p0, p1}, Ltj;->b(Ltf;)Z

    move-result v0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 93
    sget-boolean v0, Lud;->b:Z

    if-eqz v0, :cond_0

    .line 94
    const-string v0, "stat.EventDispatcher"

    const-string v1, "Shutdown!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    iget-object v0, p0, Ltj;->b:Lts;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Ltj;->b:Lts;

    invoke-virtual {v0}, Lts;->b()V

    .line 100
    :cond_1
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 172
    new-instance v0, Ltm;

    invoke-direct {v0, p0}, Ltm;-><init>(Ltj;)V

    .line 173
    invoke-static {v0}, Luf;->a(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method
