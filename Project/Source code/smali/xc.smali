.class public Lxc;
.super Ljava/lang/Object;
.source "AppsStatsPubApi.java"


# direct methods
.method public static a()I
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x2

    return v0
.end method

.method public static a(J)Lorg/json/JSONObject;
    .locals 1
    .parameter

    .prologue
    .line 247
    invoke-static {}, Lws;->a()Lws;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lws;->d(J)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 186
    invoke-static {p0}, Lxc;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-static {}, Lws;->a()Lws;

    move-result-object v0

    invoke-virtual {v0}, Lws;->b()V

    .line 188
    invoke-static {p0}, Lcom/dianxinos/optimizer/analysis/PerformanceMonitorService;->a(Landroid/content/Context;)V

    .line 189
    invoke-static {p0}, Lwl;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lwl;->a(Landroid/content/Context;Z)V

    .line 196
    :cond_0
    return-void
.end method

.method public static b(J)Lorg/json/JSONObject;
    .locals 1
    .parameter

    .prologue
    .line 251
    invoke-static {}, Lws;->a()Lws;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lws;->a(J)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static b()Z
    .locals 2

    .prologue
    .line 376
    invoke-static {}, Lxc;->a()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 199
    invoke-static {p0}, Lwl;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static c(J)Lorg/json/JSONObject;
    .locals 1
    .parameter

    .prologue
    .line 255
    invoke-static {}, Lws;->a()Lws;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lws;->b(J)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 9
    .parameter

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x2

    .line 263
    invoke-static {p0}, Lwk;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 268
    invoke-static {p0, v7, v8}, Lwl;->a(Landroid/content/Context;J)J

    move-result-wide v2

    .line 269
    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 276
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2, v0, v1}, Ljava/util/Random;-><init>(J)V

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 277
    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 279
    invoke-static {}, Lxc;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 280
    invoke-static {v0, v1}, Lxc;->a(J)Lorg/json/JSONObject;

    move-result-object v2

    .line 281
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 282
    const-string v3, "resource"

    invoke-static {v3, v2, v6}, Lbal;->a(Ljava/lang/String;Lorg/json/JSONObject;I)V

    .line 290
    :cond_2
    invoke-static {}, Lxc;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 291
    invoke-static {v0, v1}, Lxc;->c(J)Lorg/json/JSONObject;

    move-result-object v2

    .line 292
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 293
    const-string v3, "resource"

    invoke-static {v3, v2, v6}, Lbal;->a(Ljava/lang/String;Lorg/json/JSONObject;I)V

    .line 301
    :cond_3
    invoke-static {}, Lxc;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 302
    invoke-static {v0, v1}, Lxc;->d(J)Lorg/json/JSONObject;

    move-result-object v2

    .line 303
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-eqz v3, :cond_4

    .line 304
    const-string v3, "resource"

    invoke-static {v3, v2, v6}, Lbal;->a(Ljava/lang/String;Lorg/json/JSONObject;I)V

    .line 315
    :cond_4
    invoke-static {}, Lxc;->f()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 316
    invoke-static {p0, v7, v8}, Lwl;->c(Landroid/content/Context;J)J

    move-result-wide v2

    .line 317
    sub-long v2, v0, v2

    const-wide/32 v4, 0x240c8400

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    .line 318
    invoke-static {v0, v1}, Lxc;->b(J)Lorg/json/JSONObject;

    move-result-object v2

    .line 319
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-eqz v3, :cond_5

    .line 320
    const-string v3, "resource"

    invoke-static {v3, v2, v6}, Lbal;->a(Ljava/lang/String;Lorg/json/JSONObject;I)V

    .line 330
    :cond_5
    invoke-static {v0, v1}, Lxi;->n(J)J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lwl;->d(Landroid/content/Context;J)V

    .line 332
    invoke-static {p0, v0, v1}, Lwl;->b(Landroid/content/Context;J)V

    goto/16 :goto_0
.end method

.method public static c()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 380
    invoke-static {}, Lxc;->a()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(J)Lorg/json/JSONObject;
    .locals 1
    .parameter

    .prologue
    .line 259
    invoke-static {}, Lws;->a()Lws;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lws;->c(J)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static d()Z
    .locals 2

    .prologue
    .line 384
    invoke-static {}, Lxc;->a()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e()Z
    .locals 2

    .prologue
    .line 388
    invoke-static {}, Lxc;->a()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f()Z
    .locals 2

    .prologue
    .line 392
    invoke-static {}, Lxc;->a()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
