.class public Lnt;
.super Lnq;
.source "CmsDataPuller.java"


# static fields
.field static final c:Ljava/util/Random;


# instance fields
.field private d:Lkl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 99
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lnt;->c:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Loq;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lnq;-><init>(Landroid/content/Context;Loq;)V

    .line 105
    invoke-static {p1}, Lkl;->a(Landroid/content/Context;)Lkl;

    move-result-object v0

    iput-object v0, p0, Lnt;->d:Lkl;

    .line 106
    return-void
.end method

.method static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 264
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 266
    invoke-static {p0}, Lgy;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 267
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "locale"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-static {p0}, Lgy;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 270
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 271
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "op"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    :cond_0
    const-string v0, "com.android.vending"

    invoke-static {p0, v0}, Lpi;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    .line 275
    :goto_0
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "play"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    invoke-static {}, Lpa;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "0"

    .line 278
    :goto_1
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "china"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "locale"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "op"

    aput-object v3, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 281
    invoke-static {p0, v0}, Lgt;->a(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 284
    return-object v0

    .line 274
    :cond_1
    const-string v0, "0"

    goto :goto_0

    .line 277
    :cond_2
    const-string v0, "1"

    goto :goto_1
.end method

.method private static a(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 336
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v0, v5, :cond_1

    .line 337
    :cond_0
    const-string v0, ""

    .line 351
    :goto_0
    return-object v0

    .line 339
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_5

    .line 340
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 339
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 343
    :cond_3
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 345
    const-string v3, "type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 346
    if-eq v3, v5, :cond_4

    const/16 v4, 0x16

    if-ne v3, v4, :cond_2

    .line 347
    :cond_4
    const-string v0, "url"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 351
    :cond_5
    const-string v0, ""

    goto :goto_0
.end method

.method static a(Ljava/lang/String;ILorg/json/JSONObject;)Lou;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 305
    new-instance v0, Lou;

    invoke-direct {v0}, Lou;-><init>()V

    .line 307
    iput p1, v0, Lou;->i:I

    .line 308
    iput-object p0, v0, Lou;->q:Ljava/lang/String;

    .line 310
    const-string v1, "id"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lou;->d:J

    .line 311
    const-string v1, "title"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lou;->e:Ljava/lang/String;

    .line 312
    const-string v1, "pkg"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lou;->f:Ljava/lang/String;

    .line 313
    const-string v1, "shortdesc"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lou;->h:Ljava/lang/String;

    .line 314
    const-string v1, "description"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lou;->g:Ljava/lang/String;

    .line 316
    const-string v1, "opentype"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lou;->j:I

    .line 317
    const-string v1, "url_source"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lou;->k:Ljava/lang/String;

    .line 319
    const-string v1, "play_url"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lou;->m:Ljava/lang/String;

    .line 320
    const-string v1, "directdl_url"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lou;->n:Ljava/lang/String;

    .line 321
    const-string v1, "images"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lnt;->a(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lou;->l:Ljava/lang/String;

    .line 323
    const-string v1, "pts"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lou;->o:I

    .line 324
    const-string v1, "integral"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lou;->p:I

    .line 326
    const-string v1, "downloadCount"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lou;->s:J

    .line 327
    const-string v1, "hot"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lou;->r:Z

    .line 328
    iget-wide v1, v0, Lou;->s:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 329
    sget-object v1, Lnt;->c:Ljava/util/Random;

    const v2, 0x186a0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit16 v1, v1, 0x2710

    int-to-long v1, v1

    iput-wide v1, v0, Lou;->s:J

    .line 332
    :cond_0
    return-object v0
.end method

.method static a(Llk;JILorg/json/JSONObject;)Lou;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 293
    iget-object v0, p0, Llk;->h:Ljava/lang/String;

    .line 294
    invoke-static {v0, p3, p4}, Lnt;->a(Ljava/lang/String;ILorg/json/JSONObject;)Lou;

    move-result-object v0

    .line 296
    iget-wide v1, p0, Llk;->g:J

    iput-wide v1, v0, Lou;->a:J

    .line 297
    iget-wide v1, p0, Llk;->a:J

    iput-wide v1, v0, Lou;->b:J

    .line 298
    iput-wide p1, v0, Lou;->c:J

    .line 300
    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 355
    const-string v0, "CmsDataPuller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    return-void
.end method

.method static synthetic a(Lnt;Lod;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lnt;->c(Lod;)V

    return-void
.end method

.method static synthetic a(Lnt;Lod;Llk;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lnt;->a(Lod;Llk;)V

    return-void
.end method

.method private a(Lod;Llk;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    .line 191
    invoke-virtual {p1, p2}, Lod;->a(Llk;)V

    .line 192
    iget-object v0, p2, Llk;->h:Ljava/lang/String;

    .line 193
    const-string v1, "[Material]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " tid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p2, Llk;->a:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const/16 v1, 0x66

    invoke-virtual {p2, v1}, Llk;->a(I)[J

    move-result-object v1

    .line 195
    const-string v2, "[Material]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gids = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lnt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 199
    const/4 v2, 0x0

    aget-wide v5, v1, v2

    .line 200
    invoke-virtual {p0, v0}, Lnt;->d(Ljava/lang/String;)I

    move-result v8

    .line 201
    invoke-virtual {p1, v5, v6}, Lod;->a(J)V

    .line 202
    iget-object v0, p0, Lnt;->b:Landroid/content/Context;

    invoke-static {v0}, Lnt;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lnt;->d:Lkl;

    invoke-virtual {v1, v0}, Lkl;->b(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lnt;->d:Lkl;

    iget-wide v1, p2, Llk;->g:J

    iget-wide v3, p2, Llk;->a:J

    const/4 v7, 0x1

    sget-object v9, Lkr;->a:Lkr;

    new-instance v10, Lnw;

    const/4 v11, 0x0

    invoke-direct {v10, p0, p1, v11}, Lnw;-><init>(Lnt;Lod;Lnu;)V

    invoke-virtual/range {v0 .. v10}, Lkl;->a(JJJIILkr;Lkz;)V

    .line 214
    :goto_0
    return-void

    .line 210
    :cond_0
    const-string v1, "[Material]"

    const-string v2, " Pull failed: empty ids."

    invoke-static {v0, v1, v2}, Lnt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const/16 v0, 0x194

    invoke-virtual {p0, p1, v0}, Lnt;->a(Lod;I)V

    goto :goto_0
.end method

.method private c(Lod;)V
    .locals 3
    .parameter

    .prologue
    .line 121
    iget-object v0, p1, Lod;->a:Ljava/lang/String;

    .line 122
    const-string v1, "[Project]"

    const-string v2, " Pull start"

    invoke-static {v0, v1, v2}, Lnt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lnt;->b:Landroid/content/Context;

    invoke-static {v0}, Lnt;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lnt;->d:Lkl;

    invoke-virtual {v1, v0}, Lkl;->b(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lnt;->d:Lkl;

    const-string v1, "dxtoolbox"

    new-instance v2, Lnx;

    invoke-direct {v2, p0, p1}, Lnx;-><init>(Lnt;Lod;)V

    invoke-virtual {v0, v1, v2}, Lkl;->a(Ljava/lang/String;Lkz;)V

    .line 126
    return-void
.end method


# virtual methods
.method public a(Lod;)V
    .locals 2
    .parameter

    .prologue
    .line 110
    invoke-static {}, Lpg;->a()Lpg;

    move-result-object v0

    new-instance v1, Lnu;

    invoke-direct {v1, p0, p1}, Lnu;-><init>(Lnt;Lod;)V

    invoke-virtual {v0, v1}, Lpg;->a(Ljava/lang/Runnable;)V

    .line 118
    return-void
.end method

.method protected a(Lod;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 288
    new-instance v0, Loe;

    invoke-direct {v0, p1, p2}, Loe;-><init>(Lod;I)V

    invoke-virtual {p0, v0}, Lnt;->a(Loe;)V

    .line 289
    return-void
.end method
