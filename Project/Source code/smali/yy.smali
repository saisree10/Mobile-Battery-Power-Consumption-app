.class public Lyy;
.super Lzf;
.source "MessageBoxRecommend.java"

# interfaces
.implements Lanz;


# static fields
.field private static volatile d:Lyy;


# instance fields
.field private e:Lyx;

.field private f:Ljava/util/ArrayList;

.field private g:Ljava/util/List;

.field private h:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lzf;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyy;->f:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyy;->g:Ljava/util/List;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lyy;->h:Z

    .line 93
    new-instance v0, Lyw;

    sget-object v1, Lyy;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lyw;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lyw;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 95
    new-instance v1, Lyx;

    invoke-direct {v1, v0}, Lyx;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lyy;->e:Lyx;

    .line 96
    return-void
.end method

.method public static a(Landroid/content/Context;)Lyy;
    .locals 3
    .parameter

    .prologue
    .line 99
    sget-object v0, Lyy;->d:Lyy;

    if-nez v0, :cond_1

    .line 100
    const-class v1, Lyy;

    monitor-enter v1

    .line 101
    :try_start_0
    sget-object v0, Lyy;->d:Lyy;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lyy;

    const-string v2, "msgbox"

    invoke-direct {v0, p0, v2}, Lyy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lyy;->d:Lyy;

    .line 104
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :cond_1
    sget-object v0, Lyy;->d:Lyy;

    return-object v0

    .line 104
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Lorg/json/JSONObject;JLjava/lang/String;)Lzd;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 243
    new-instance v1, Lzd;

    invoke-direct {v1}, Lzd;-><init>()V

    .line 244
    const-string v2, "msg_type"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lzd;->a:I

    .line 245
    iget v2, v1, Lzd;->a:I

    invoke-direct {p0, v2}, Lyy;->b(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 246
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "not support type"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_0
    const-string v2, "click_action"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lzd;->i:I

    .line 249
    iget v2, v1, Lzd;->i:I

    invoke-direct {p0, v2}, Lyy;->c(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 250
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "not support action"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lzd;->c:Ljava/lang/Long;

    .line 253
    iput-object p4, v1, Lzd;->k:Ljava/lang/String;

    .line 254
    const-string v2, "text"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lzd;->d:Ljava/lang/String;

    .line 255
    const-string v2, "icon_url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lzd;->e:Ljava/lang/String;

    .line 256
    const-string v2, "click_params"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lzd;->f:Ljava/lang/String;

    .line 257
    iput v0, v1, Lzd;->g:I

    .line 258
    const-string v2, "show_time"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, v1, Lzd;->j:Z

    .line 260
    const-string v0, "guide_page_params"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 261
    const-string v0, "guide_page_params"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lzd;->l:Ljava/lang/String;

    .line 265
    :cond_3
    return-object v1
.end method

.method private a(Lzd;)V
    .locals 1
    .parameter

    .prologue
    .line 224
    sget-object v0, Lyy;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lzc;->a(Landroid/content/Context;Lzd;)Z

    .line 225
    return-void
.end method

.method private b(Ljava/util/List;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 147
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 148
    iget-object v4, p0, Lyy;->f:Ljava/util/ArrayList;

    monitor-enter v4

    .line 149
    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lyy;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 150
    iget-object v0, p0, Lyy;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lza;

    .line 151
    iget-object v1, v0, Lza;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzb;

    .line 152
    if-nez v1, :cond_0

    .line 153
    iget-object v0, p0, Lyy;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v2

    :goto_1
    move v2, v0

    .line 158
    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    .line 159
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lza;

    .line 161
    iget-boolean v2, v0, Lza;->b:Z

    if-nez v2, :cond_2

    .line 162
    iget-object v0, v0, Lza;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzb;

    .line 163
    if-eqz v0, :cond_2

    .line 166
    invoke-interface {v0}, Lzb;->a()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lyy;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Lzb;->a(Ljava/util/List;)V

    goto :goto_2

    .line 159
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 170
    :cond_3
    return-void
.end method

.method private b(I)Z
    .locals 1
    .parameter

    .prologue
    .line 234
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 7

    .prologue
    .line 283
    .line 285
    iget-boolean v0, p0, Lyy;->h:Z

    if-nez v0, :cond_2

    .line 286
    iget-object v0, p0, Lyy;->e:Lyx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lyx;->a(I)Ljava/util/List;

    move-result-object v2

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 290
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 291
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzd;

    .line 292
    iget-object v0, v0, Lzd;->c:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-gtz v0, :cond_0

    .line 293
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 290
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 295
    :cond_1
    iget-object v0, p0, Lyy;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lyy;->h:Z

    .line 301
    :cond_2
    return-void
.end method

.method private c(I)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 238
    if-lt p1, v0, :cond_0

    const/4 v1, 0x2

    if-gt p1, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/util/List;I)Ljava/util/List;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 309
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 311
    if-eqz p1, :cond_1

    .line 312
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzd;

    .line 313
    iget v3, v0, Lzd;->a:I

    if-ne v3, p2, :cond_0

    .line 314
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 319
    :cond_1
    return-object v1
.end method

.method public a(I)V
    .locals 3
    .parameter

    .prologue
    .line 324
    iget-object v2, p0, Lyy;->g:Ljava/util/List;

    monitor-enter v2

    .line 325
    :try_start_0
    iget-object v0, p0, Lyy;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 326
    iget-object v0, p0, Lyy;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzd;

    .line 327
    iget v0, v0, Lzd;->a:I

    if-ne v0, p1, :cond_0

    .line 328
    iget-object v0, p0, Lyy;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 325
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 330
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    iget-object v0, p0, Lyy;->e:Lyx;

    invoke-virtual {v0}, Lyx;->a()V

    .line 335
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lyy;->b(Ljava/util/List;I)V

    .line 336
    return-void

    .line 330
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected a(Ljava/util/List;)V
    .locals 4
    .parameter

    .prologue
    .line 228
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzd;

    .line 229
    iget-object v2, p0, Lyy;->e:Lyx;

    sget-object v3, Lyy;->b:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lyx;->a(Landroid/content/Context;Lzd;)V

    goto :goto_0

    .line 231
    :cond_0
    return-void
.end method

.method protected a(Lorg/json/JSONArray;)V
    .locals 4
    .parameter

    .prologue
    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 177
    invoke-virtual {p0, p1}, Lyy;->b(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    .line 179
    iget-object v2, p0, Lyy;->g:Ljava/util/List;

    monitor-enter v2

    .line 180
    :try_start_0
    invoke-direct {p0}, Lyy;->c()V

    .line 181
    iget-object v3, p0, Lyy;->g:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 182
    iget-object v3, p0, Lyy;->g:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 183
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    invoke-virtual {p0, v1}, Lyy;->a(Ljava/util/List;)V

    .line 187
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lyy;->b(Ljava/util/List;I)V

    .line 188
    return-void

    .line 183
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 340
    sget-object v0, Lyy;->b:Landroid/content/Context;

    invoke-static {v0}, Lyy;->a(Landroid/content/Context;)Lyy;

    move-result-object v0

    invoke-virtual {v0}, Lyy;->b()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 342
    :goto_0
    sget-object v2, Lyy;->b:Landroid/content/Context;

    const-string v3, "msgbox"

    const-string v4, "mbp"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 345
    if-eqz v0, :cond_1

    .line 346
    sget-object v2, Lyy;->b:Landroid/content/Context;

    const-string v3, "msgbox"

    const-string v4, "mbps"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v3, v4, v1}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 355
    :goto_1
    return v0

    .line 340
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 350
    :cond_1
    sget-object v2, Lyy;->b:Landroid/content/Context;

    const-string v3, "msgbox"

    const-string v4, "mbde"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v3, v4, v1}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_1
.end method

.method protected b(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 11
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 191
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 192
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 194
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 195
    const-string v4, "to"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 196
    const-string v6, "id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 197
    const-string v7, "contents"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    move v2, v1

    .line 199
    :goto_1
    const/4 v8, 0x1

    if-ge v2, v8, :cond_1

    .line 200
    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {p0, v8, v4, v5, v6}, Lyy;->a(Lorg/json/JSONObject;JLjava/lang/String;)Lzd;

    move-result-object v8

    .line 203
    invoke-direct {p0, v8}, Lyy;->a(Lzd;)V

    .line 204
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-static {}, Lazu;->a()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, v8, Lzd;->e:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, v8, Lzd;->e:Ljava/lang/String;

    invoke-static {v9}, Lyi;->c(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 207
    invoke-static {}, Lazi;->a()Lazi;

    move-result-object v9

    new-instance v10, Lyz;

    invoke-direct {v10, p0, v8}, Lyz;-><init>(Lyy;Lzd;)V

    invoke-virtual {v9, v10}, Lazi;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 216
    :catch_0
    move-exception v2

    .line 217
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 192
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_2
    return-object v3
.end method
