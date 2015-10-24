.class public Lhc;
.super Ljava/lang/Object;
.source "ADResponseContent.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:J

.field public f:I

.field public g:I

.field public h:Ljava/lang/String;

.field public i:J

.field public j:Ljava/util/ArrayList;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:[Lhd;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string v0, "default_not_null"

    iput-object v0, p0, Lhc;->b:Ljava/lang/String;

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lhc;->g:I

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lhc;->h:Ljava/lang/String;

    .line 77
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lhc;->i:J

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhc;->j:Ljava/util/ArrayList;

    .line 373
    const-string v0, "ADResponseContent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " got jso object for content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :try_start_0
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhc;->b:Ljava/lang/String;

    .line 379
    :cond_0
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhc;->c:Ljava/lang/String;

    .line 383
    :cond_1
    const-string v0, "statusBarIcon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 384
    const-string v0, "statusBarIcon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhc;->h:Ljava/lang/String;

    .line 387
    :cond_2
    const-string v0, "allowDelay"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lhc;->i:J

    .line 389
    const-string v0, "blackPkgs"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 390
    if-eqz v2, :cond_3

    move v0, v1

    .line 391
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 392
    const-string v3, "ADResponseContent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " black list get index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pkgname "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v3, p0, Lhc;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 397
    :cond_3
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 398
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhc;->a:Ljava/lang/String;

    .line 401
    :cond_4
    const-string v0, "description"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 402
    const-string v0, "description"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhc;->d:Ljava/lang/String;

    .line 405
    :cond_5
    const-string v0, "next"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 406
    const-string v0, "next"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lhc;->e:J

    .line 408
    :cond_6
    const-string v0, "icon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 409
    const-string v0, "icon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhc;->l:Ljava/lang/String;

    .line 411
    :cond_7
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 412
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lhc;->g:I

    .line 414
    :cond_8
    const-string v0, "version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 415
    const-string v0, "version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhc;->k:Ljava/lang/String;

    .line 417
    :cond_9
    const-string v0, "action"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 418
    const-string v0, "action"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lhc;->f:I

    .line 421
    :cond_a
    const-string v0, "datas"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 422
    const-string v0, "datas"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 423
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 424
    new-array v0, v4, [Lhd;

    iput-object v0, p0, Lhc;->m:[Lhd;

    move v2, v1

    .line 426
    :goto_1
    if-ge v2, v4, :cond_e

    .line 427
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 428
    iget-object v0, p0, Lhc;->m:[Lhd;

    new-instance v6, Lhd;

    invoke-direct {v6}, Lhd;-><init>()V

    aput-object v6, v0, v2

    .line 430
    iget-object v0, p0, Lhc;->m:[Lhd;

    aget-object v0, v0, v2

    const-string v6, "description"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lhd;->d:Ljava/lang/String;

    .line 431
    iget-object v0, p0, Lhc;->m:[Lhd;

    aget-object v0, v0, v2

    const-string v6, "download"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lhd;->g:Ljava/lang/String;

    .line 432
    iget-object v0, p0, Lhc;->m:[Lhd;

    aget-object v0, v0, v2

    const-string v6, "pkg"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lhd;->f:Ljava/lang/String;

    .line 433
    iget-object v0, p0, Lhc;->m:[Lhd;

    aget-object v0, v0, v2

    const-string v6, "summary"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lhd;->a:Ljava/lang/String;

    .line 434
    iget-object v0, p0, Lhc;->m:[Lhd;

    aget-object v0, v0, v2

    const-string v6, "title"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lhd;->b:Ljava/lang/String;

    .line 435
    iget-object v0, p0, Lhc;->m:[Lhd;

    aget-object v0, v0, v2

    const-string v6, "template"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lhd;->k:I

    .line 436
    iget-object v0, p0, Lhc;->m:[Lhd;

    aget-object v0, v0, v2

    iget v0, v0, Lhd;->k:I

    if-nez v0, :cond_b

    .line 437
    iget-object v0, p0, Lhc;->m:[Lhd;

    aget-object v0, v0, v2

    const/4 v6, 0x3

    iput v6, v0, Lhd;->k:I

    .line 439
    :cond_b
    iget-object v0, p0, Lhc;->m:[Lhd;

    aget-object v0, v0, v2

    iget v0, v0, Lhd;->k:I

    const/4 v6, 0x2

    if-ne v0, v6, :cond_d

    .line 440
    iget-object v0, p0, Lhc;->m:[Lhd;

    aget-object v0, v0, v2

    const/4 v6, 0x1

    iput v6, v0, Lhd;->c:I

    .line 445
    :goto_2
    const-string v0, "ADResponseContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " got title: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lhc;->m:[Lhd;

    aget-object v7, v7, v2

    iget-object v7, v7, Lhd;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lhc;->m:[Lhd;

    aget-object v0, v0, v2

    const-string v6, "type"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lhd;->i:I

    .line 448
    iget-object v0, p0, Lhc;->m:[Lhd;

    aget-object v0, v0, v2

    iget v0, v0, Lhd;->i:I

    if-ge v0, v10, :cond_c

    .line 449
    iget-object v0, p0, Lhc;->m:[Lhd;

    aget-object v0, v0, v2

    const/4 v6, 0x1

    iput v6, v0, Lhd;->i:I

    .line 451
    :cond_c
    iget-object v0, p0, Lhc;->m:[Lhd;

    aget-object v0, v0, v2

    const-string v6, "versionCode"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lhd;->e:I

    .line 452
    iget-object v0, p0, Lhc;->m:[Lhd;

    aget-object v0, v0, v2

    const-string v6, "versionName"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lhd;->h:Ljava/lang/String;

    .line 454
    const-string v0, "icons"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 455
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 456
    iget-object v7, p0, Lhc;->m:[Lhd;

    aget-object v7, v7, v2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, v7, Lhd;->j:[Ljava/lang/String;

    move v0, v1

    .line 457
    :goto_3
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v0, v7, :cond_f

    .line 458
    iget-object v7, p0, Lhc;->m:[Lhd;

    aget-object v7, v7, v2

    iget-object v7, v7, Lhd;->j:[Ljava/lang/String;

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    .line 459
    const-string v7, "ADResponseContent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " got url "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lhc;->m:[Lhd;

    aget-object v9, v9, v2

    iget-object v9, v9, Lhd;->j:[Ljava/lang/String;

    aget-object v9, v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 442
    :cond_d
    iget-object v0, p0, Lhc;->m:[Lhd;

    aget-object v0, v0, v2

    const/4 v6, 0x0

    iput v6, v0, Lhd;->c:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 464
    :catch_0
    move-exception v0

    .line 465
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 467
    :cond_e
    return-void

    .line 461
    :cond_f
    :try_start_1
    iget-object v0, p0, Lhc;->m:[Lhd;

    aget-object v0, v0, v2

    const-string v6, "button"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lhd;->l:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 426
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1
.end method


# virtual methods
.method public a(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lhc;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhc;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 98
    :cond_0
    const-string v0, "ADResponseContent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " title: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lhc;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  des: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lhc;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lhc;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v0, -0x1

    .line 101
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lhc;->b(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method public a()V
    .locals 4

    .prologue
    .line 114
    :try_start_0
    const-string v0, "ADResponseContent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show content:    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lhc;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lhc;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lhc;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-boolean v0, Lij;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhc;->m:[Lhd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhc;->m:[Lhd;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lhc;->m:[Lhd;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 117
    const-string v1, "ADResponseContent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lhd;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lhd;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lhd;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)I
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lhc;->l:Ljava/lang/String;

    invoke-static {p1, v0}, Lim;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_0

    .line 107
    const/4 v0, 0x1

    .line 109
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lorg/json/JSONObject;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 314
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 316
    :try_start_0
    const-string v0, "id"

    iget-object v2, p0, Lhc;->b:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 317
    const-string v0, "title"

    iget-object v2, p0, Lhc;->c:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 318
    const-string v0, "description"

    iget-object v2, p0, Lhc;->d:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 319
    const-string v0, "next"

    iget-wide v4, p0, Lhc;->e:J

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 320
    const-string v0, "icon"

    iget-object v2, p0, Lhc;->l:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 321
    const-string v0, "type"

    iget v2, p0, Lhc;->g:I

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 322
    const-string v0, "version"

    iget-object v2, p0, Lhc;->k:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 323
    const-string v0, "id"

    iget-object v2, p0, Lhc;->a:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 324
    const-string v0, "allowDelay"

    iget-wide v4, p0, Lhc;->i:J

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 325
    const-string v0, "statusBarIcon"

    iget-object v2, p0, Lhc;->h:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 327
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 329
    iget-object v0, p0, Lhc;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 330
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 364
    :catch_0
    move-exception v0

    .line 366
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 369
    :goto_1
    return-object v3

    .line 333
    :cond_0
    :try_start_1
    const-string v0, "blackPkgs"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 335
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 336
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 337
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 338
    iget-object v0, p0, Lhc;->m:[Lhd;

    if-eqz v0, :cond_2

    .line 339
    iget-object v0, p0, Lhc;->m:[Lhd;

    array-length v5, v0

    move v2, v1

    .line 340
    :goto_2
    if-ge v2, v5, :cond_2

    .line 341
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 343
    const-string v0, "description"

    iget-object v7, p0, Lhc;->m:[Lhd;

    aget-object v7, v7, v2

    iget-object v7, v7, Lhd;->d:Ljava/lang/String;

    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 344
    const-string v0, "download"

    iget-object v7, p0, Lhc;->m:[Lhd;

    aget-object v7, v7, v2

    iget-object v7, v7, Lhd;->g:Ljava/lang/String;

    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 345
    const-string v0, "pkg"

    iget-object v7, p0, Lhc;->m:[Lhd;

    aget-object v7, v7, v2

    iget-object v7, v7, Lhd;->f:Ljava/lang/String;

    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 346
    const-string v0, "summary"

    iget-object v7, p0, Lhc;->m:[Lhd;

    aget-object v7, v7, v2

    iget-object v7, v7, Lhd;->a:Ljava/lang/String;

    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 347
    const-string v0, "title"

    iget-object v7, p0, Lhc;->m:[Lhd;

    aget-object v7, v7, v2

    iget-object v7, v7, Lhd;->b:Ljava/lang/String;

    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 348
    const-string v0, "type"

    iget-object v7, p0, Lhc;->m:[Lhd;

    aget-object v7, v7, v2

    iget v7, v7, Lhd;->i:I

    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 349
    const-string v0, "versionCode"

    iget-object v7, p0, Lhc;->m:[Lhd;

    aget-object v7, v7, v2

    iget v7, v7, Lhd;->e:I

    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 350
    const-string v0, "versionName"

    iget-object v7, p0, Lhc;->m:[Lhd;

    aget-object v7, v7, v2

    iget-object v7, v7, Lhd;->h:Ljava/lang/String;

    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 351
    const-string v0, "template"

    iget-object v7, p0, Lhc;->m:[Lhd;

    aget-object v7, v7, v2

    iget v7, v7, Lhd;->k:I

    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 352
    const-string v0, "button"

    iget-object v7, p0, Lhc;->m:[Lhd;

    aget-object v7, v7, v2

    iget-object v7, v7, Lhd;->l:Ljava/lang/String;

    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    move v0, v1

    .line 355
    :goto_3
    iget-object v8, p0, Lhc;->m:[Lhd;

    aget-object v8, v8, v2

    iget-object v8, v8, Lhd;->j:[Ljava/lang/String;

    array-length v8, v8

    if-ge v0, v8, :cond_1

    .line 356
    iget-object v8, p0, Lhc;->m:[Lhd;

    aget-object v8, v8, v2

    iget-object v8, v8, Lhd;->j:[Ljava/lang/String;

    aget-object v8, v8, v0

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 355
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 358
    :cond_1
    const-string v0, "icons"

    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 360
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 340
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_2

    .line 363
    :cond_2
    const-string v0, "datas"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public c(Landroid/content/Context;)I
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 132
    invoke-virtual {p0, p1}, Lhc;->a(Landroid/content/Context;)I

    move-result v0

    .line 134
    const-string v2, "ADResponseContent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " status state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    if-ge v0, v1, :cond_0

    .line 153
    :goto_0
    return v0

    .line 140
    :cond_0
    iget-object v0, p0, Lhc;->m:[Lhd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhc;->m:[Lhd;

    array-length v0, v0

    if-ge v0, v1, :cond_2

    .line 141
    :cond_1
    const/4 v0, -0x2

    goto :goto_0

    .line 144
    :cond_2
    iget-object v0, p0, Lhc;->m:[Lhd;

    array-length v3, v0

    .line 146
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_4

    .line 147
    iget-object v0, p0, Lhc;->m:[Lhd;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lhd;->a(Landroid/content/Context;)I

    move-result v0

    .line 148
    if-eq v0, v1, :cond_3

    .line 149
    const-string v1, "ADResponseContent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " data of index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can\'t be shown"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    move v0, v1

    .line 153
    goto :goto_0
.end method
