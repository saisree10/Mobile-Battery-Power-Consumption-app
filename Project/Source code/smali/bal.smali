.class public Lbal;
.super Ljava/lang/Object;
.source "StatsReportHelper.java"


# direct methods
.method public static a(Landroid/content/Context;Laev;)Lorg/json/JSONObject;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 369
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 371
    :try_start_0
    const-string v1, "sspid"

    iget-wide v2, p1, Laev;->r:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 372
    const-string v1, "sstid"

    iget-wide v2, p1, Laev;->s:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 373
    const-string v1, "ssgid"

    iget-wide v2, p1, Laev;->t:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 374
    const-string v1, "sssid"

    iget-wide v2, p1, Laev;->u:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 375
    const-string v1, "ssco"

    invoke-static {p0}, Lgy;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :goto_0
    return-object v0

    .line 377
    :catch_0
    move-exception v0

    .line 379
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-static {p0}, Lsb;->a(Landroid/content/Context;)Lsb;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lsb;->b()Z

    .line 49
    invoke-virtual {v0}, Lsb;->c()Z

    .line 52
    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-static {p0}, Lsb;->a(Landroid/content/Context;)Lsb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsb;->a(I)V

    .line 42
    return-void
.end method

.method public static a(Landroid/content/Context;Laon;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 345
    invoke-static {p0}, Lsb;->a(Landroid/content/Context;)Lsb;

    move-result-object v0

    .line 346
    iget-object v6, p1, Laon;->a:Ljava/util/ArrayList;

    .line 347
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 358
    :cond_0
    return-void

    .line 350
    :cond_1
    const-string v1, "sspd"

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laev;

    invoke-static {p0, v5}, Lbal;->b(Landroid/content/Context;Laev;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lsb;->a(Ljava/lang/String;IIILjava/lang/Object;)Z

    .line 353
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Laev;

    .line 354
    const-string v1, "ssdis"

    invoke-static {p0, v5}, Lbal;->a(Landroid/content/Context;Laev;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lsb;->a(Ljava/lang/String;IIILjava/lang/Object;)Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 653
    invoke-static {p0}, Lsb;->a(Landroid/content/Context;)Lsb;

    move-result-object v0

    .line 654
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 656
    :try_start_0
    const-string v1, "r"

    invoke-virtual {v5, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 658
    const-string v1, "install_referrer"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual/range {v0 .. v5}, Lsb;->a(Ljava/lang/String;IIILjava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    :goto_0
    return-void

    .line 660
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 194
    invoke-static {p0}, Lbal;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 198
    :try_start_0
    const-string v0, "a"

    invoke-virtual {v5, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 199
    const-string v0, "f"

    invoke-virtual {v5, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    invoke-static {p0}, Lsb;->a(Landroid/content/Context;)Lsb;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lsb;->a(Ljava/lang/String;IIILjava/lang/Object;)Z

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Laev;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 334
    if-eqz p2, :cond_0

    .line 335
    invoke-static {p0}, Lsb;->a(Landroid/content/Context;)Lsb;

    move-result-object v0

    .line 336
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-static {p0, p2}, Lbal;->a(Landroid/content/Context;Laev;)Lorg/json/JSONObject;

    move-result-object v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lsb;->a(Ljava/lang/String;IIILjava/lang/Object;)Z

    .line 339
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-static {p0}, Lbal;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-static {p0}, Lsb;->a(Landroid/content/Context;)Lsb;

    move-result-object v0

    .line 116
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsb;->a(Ljava/lang/String;IIILjava/lang/Object;)Z

    .line 119
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    invoke-static {p0}, Lbal;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 176
    :try_start_0
    const-string v0, "mid"

    invoke-virtual {v5, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    const-string v0, "mst"

    invoke-virtual {v5, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 178
    invoke-static {p0}, Lsb;->a(Landroid/content/Context;)Lsb;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lsb;->a(Ljava/lang/String;IIILjava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 181
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;Z)V

    .line 131
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    invoke-static {p0}, Lbal;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p4, :cond_1

    .line 141
    :cond_0
    invoke-static {p0}, Lsb;->a(Landroid/content/Context;)Lsb;

    move-result-object v0

    .line 142
    invoke-virtual {v0, p1, p2, p3}, Lsb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Z

    .line 146
    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONObject;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 227
    invoke-static {}, Lcom/dianxinos/powermanager/PowerMangerApplication;->a()Lcom/dianxinos/powermanager/PowerMangerApplication;

    move-result-object v0

    .line 228
    invoke-static {}, Lcom/dianxinos/powermanager/PowerMangerApplication;->a()Lcom/dianxinos/powermanager/PowerMangerApplication;

    move-result-object v1

    invoke-static {v1}, Lbal;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    invoke-static {v0}, Lsb;->a(Landroid/content/Context;)Lsb;

    move-result-object v0

    .line 231
    invoke-virtual {v0, p0, p1, p2}, Lsb;->a(Ljava/lang/String;Lorg/json/JSONObject;I)Z

    .line 233
    :cond_0
    return-void
.end method

.method public static a(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    if-eqz p0, :cond_0

    .line 124
    invoke-static {p1, p2, p3, p4}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 126
    :cond_0
    return-void
.end method

.method public static a(ZLandroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 187
    if-eqz p0, :cond_0

    invoke-static {p1}, Lbal;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-static {p1}, Lsb;->a(Landroid/content/Context;)Lsb;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    move-object v1, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lsb;->a(Ljava/lang/String;IIILjava/lang/Object;)Z

    .line 191
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;IJ)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 594
    invoke-static {p0}, Lbal;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 598
    invoke-static {p0}, Lsb;->a(Landroid/content/Context;)Lsb;

    move-result-object v0

    .line 599
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 601
    const/16 v1, 0x64

    if-ne p1, v1, :cond_1

    .line 602
    :try_start_0
    const-string v1, "rhct"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p2

    invoke-virtual {v5, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 607
    :goto_0
    const-string v1, "rhcc"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-virtual/range {v0 .. v5}, Lsb;->a(Ljava/lang/String;IIILjava/lang/Object;)Z

    move-result v0

    .line 610
    :cond_0
    :goto_1
    return v0

    .line 605
    :cond_1
    const-string v1, "rfcp"

    invoke-virtual {v5, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 609
    :catch_0
    move-exception v0

    move v0, v6

    .line 610
    goto :goto_1
.end method

.method public static a(Landroid/content/Context;IZ)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 616
    invoke-static {p0}, Lbal;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 620
    invoke-static {p0}, Lsb;->a(Landroid/content/Context;)Lsb;

    move-result-object v0

    .line 621
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 623
    :try_start_0
    const-string v1, "sap"

    invoke-virtual {v5, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 624
    const-string v1, "san"

    invoke-virtual {v5, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 625
    const-string v1, "sac"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-virtual/range {v0 .. v5}, Lsb;->a(Ljava/lang/String;IIILjava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 628
    :cond_0
    :goto_0
    return v0

    .line 627
    :catch_0
    move-exception v0

    move v0, v6

    .line 628
    goto :goto_0
.end method

.method public static varargs a(Landroid/content/Context;I[Ljava/lang/String;)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 532
    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 588
    :cond_0
    :goto_0
    return v2

    .line 536
    :cond_1
    invoke-static {p0}, Lbal;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    move v2, v3

    .line 538
    goto :goto_0

    .line 540
    :cond_2
    invoke-static {p0}, Lsb;->a(Landroid/content/Context;)Lsb;

    move-result-object v0

    .line 541
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 578
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 580
    :try_start_0
    const-string v1, "capacity"

    const/4 v4, 0x0

    aget-object v4, p2, v4

    invoke-virtual {v5, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    const-string v1, "battery"

    const/4 v4, 0x4

    invoke-virtual/range {v0 .. v5}, Lsb;->a(Ljava/lang/String;IIILjava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 581
    :catch_0
    move-exception v0

    .line 582
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Laev;)Lorg/json/JSONObject;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 383
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 385
    :try_start_0
    const-string v1, "sspid"

    iget-wide v2, p1, Laev;->r:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 386
    const-string v1, "sstid"

    iget-wide v2, p1, Laev;->s:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 387
    const-string v1, "ssgid"

    iget-wide v2, p1, Laev;->t:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :goto_0
    return-object v0

    .line 389
    :catch_0
    move-exception v0

    .line 391
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 56
    invoke-static {p0}, Lsb;->a(Landroid/content/Context;)Lsb;

    move-result-object v0

    .line 57
    const-string v1, "dxpower_reserve"

    const-string v2, "start"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lsb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Z

    .line 59
    return-void
.end method

.method public static b(Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    if-gtz p1, :cond_0

    .line 98
    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 667
    invoke-static {p0}, Lbal;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    invoke-static {p0}, Lsb;->a(Landroid/content/Context;)Lsb;

    move-result-object v0

    .line 670
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 672
    :try_start_0
    const-string v1, "bids"

    invoke-virtual {v5, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 673
    const-string v1, "bic"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-virtual/range {v0 .. v5}, Lsb;->a(Ljava/lang/String;IIILjava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    :cond_0
    :goto_0
    return-void

    .line 675
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 62
    invoke-static {p0}, Lagl;->a(Landroid/content/Context;)Lagl;

    move-result-object v0

    invoke-virtual {v0}, Lagl;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 102
    invoke-static {p0}, Lsb;->a(Landroid/content/Context;)Lsb;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lsb;->c()Z

    .line 107
    return-void
.end method

.method public static e(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 150
    invoke-static {p0}, Lsb;->a(Landroid/content/Context;)Lsb;

    move-result-object v0

    .line 152
    const-string v1, "cloud"

    const-string v2, "f"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lsb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Z

    .line 156
    return-void
.end method

.method public static f(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    .line 251
    invoke-static {p0}, Lbal;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    :goto_0
    return-void

    .line 256
    :cond_0
    invoke-static {p0}, Lazr;->a(Landroid/content/Context;)Lazr;

    move-result-object v0

    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 258
    invoke-virtual {v0}, Lazr;->g()J

    move-result-wide v3

    const-wide/32 v5, 0x4ef6d80

    add-long/2addr v3, v5

    cmp-long v3, v1, v3

    if-gez v3, :cond_1

    .line 259
    const-string v0, "Stats"

    const-string v1, "Ignore status report in 12 hours."

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 262
    :cond_1
    invoke-virtual {v0, v1, v2}, Lazr;->a(J)V

    .line 263
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbam;

    invoke-direct {v1, p0}, Lbam;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static g(Landroid/content/Context;)V
    .locals 8
    .parameter

    .prologue
    .line 298
    invoke-static {p0}, Lcom/dianxinos/common/coins/CoinManager;->a(Landroid/content/Context;)Lcom/dianxinos/common/coins/CoinManager;

    move-result-object v1

    .line 299
    invoke-static {}, Laoe;->values()[Laoe;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 300
    const-string v5, "10"

    invoke-virtual {v4}, Laoe;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/dianxinos/common/coins/CoinManager;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 301
    const-string v5, "status"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "func_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Laoe;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p0, v5, v4, v6}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 299
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    :cond_1
    return-void
.end method

.method public static h(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 364
    const-string v0, "ssc"

    const-string v1, "ssac"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 366
    return-void
.end method

.method public static i(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    .line 633
    invoke-static {p0}, Lbal;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    invoke-static {p0}, Lsb;->a(Landroid/content/Context;)Lsb;

    move-result-object v0

    .line 638
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 639
    const-string v1, "com.android.vending"

    invoke-static {v1}, Lazy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 640
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    :try_start_0
    const-string v2, "gpv"

    invoke-virtual {v5, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 645
    const-string v1, "gpvc"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-virtual/range {v0 .. v5}, Lsb;->a(Ljava/lang/String;IIILjava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 647
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic j(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-static {p0}, Lbal;->u(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic k(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-static {p0}, Lbal;->t(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic l(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-static {p0}, Lbal;->r(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic m(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-static {p0}, Lbal;->p(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic n(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-static {p0}, Lbal;->q(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic o(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-static {p0}, Lbal;->s(Landroid/content/Context;)V

    return-void
.end method

.method private static p(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 311
    invoke-static {p0}, Ladp;->a(Landroid/content/Context;)Ladp;

    move-result-object v0

    .line 312
    invoke-virtual {v0}, Ladp;->f()Ljava/lang/String;

    move-result-object v1

    .line 313
    const-string v2, "pt_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 331
    :goto_0
    return-void

    .line 316
    :cond_0
    invoke-virtual {v0}, Ladp;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 318
    :pswitch_0
    const-string v0, "preuse"

    const-string v1, "bspone"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_0

    .line 322
    :pswitch_1
    const-string v0, "preuse"

    const-string v1, "bsptwo"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_0

    .line 326
    :pswitch_2
    const-string v0, "preuse"

    const-string v1, "bspthree"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_0

    .line 316
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static q(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 398
    invoke-static {p0}, Ladp;->a(Landroid/content/Context;)Ladp;

    move-result-object v6

    .line 399
    invoke-virtual {v6}, Ladp;->f()Ljava/lang/String;

    move-result-object v0

    .line 400
    const-string v1, "pt_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 401
    const-string v0, "bsnc"

    const-string v1, "bspu"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    const-string v1, "ct_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 404
    const-string v0, "bsnc"

    const-string v1, "bscu"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_0

    .line 406
    :cond_2
    const-string v1, "ot_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    const-string v0, "bsnc"

    const-string v1, "bsos"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 409
    invoke-static {p0}, Lsb;->a(Landroid/content/Context;)Lsb;

    move-result-object v0

    .line 411
    :try_start_0
    const-string v1, "bsos"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v6}, Ladp;->j()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v0 .. v5}, Lsb;->a(Ljava/lang/String;IIILjava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 414
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static r(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 420
    invoke-static {p0}, Lbag;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    const-string v0, "status"

    const-string v1, "root"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 424
    :cond_0
    return-void
.end method

.method private static s(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 427
    invoke-static {p0}, Lbal;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.dianxinos.optimizer.duplay"

    invoke-static {p0, v0}, Lazy;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    const-string v0, "ddic"

    const-string v1, "di"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 433
    :cond_0
    return-void
.end method

.method private static t(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 443
    invoke-static {p0}, Lamb;->a(Landroid/content/Context;)Lamb;

    move-result-object v0

    .line 446
    invoke-virtual {v0}, Lamb;->m()Z

    move-result v1

    if-nez v1, :cond_0

    .line 447
    const-string v1, "status"

    const-string v2, "lbr"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 451
    :cond_0
    invoke-virtual {v0}, Lamb;->a()Z

    move-result v1

    if-nez v1, :cond_6

    .line 452
    const-string v1, "status"

    const-string v2, "stab"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 481
    :goto_0
    invoke-virtual {v0}, Lamb;->k()Z

    move-result v1

    if-nez v1, :cond_1

    .line 482
    const-string v1, "status"

    const-string v2, "cnf"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 486
    :cond_1
    invoke-virtual {v0}, Lamb;->l()Z

    move-result v1

    if-nez v1, :cond_2

    .line 487
    const-string v1, "status"

    const-string v2, "cdnf"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 490
    :cond_2
    invoke-virtual {v0}, Lamb;->j()Z

    move-result v1

    if-nez v1, :cond_3

    .line 491
    const-string v1, "status"

    const-string v2, "snf"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 494
    :cond_3
    invoke-virtual {v0}, Lamb;->e()Z

    move-result v1

    if-nez v1, :cond_4

    .line 495
    const-string v1, "status"

    const-string v2, "sfw"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 498
    :cond_4
    invoke-virtual {v0}, Lamb;->d()Z

    move-result v0

    if-nez v0, :cond_5

    .line 499
    const-string v0, "status"

    const-string v1, "usef"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 502
    :cond_5
    return-void

    .line 455
    :cond_6
    invoke-virtual {v0}, Lamb;->b()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 457
    :pswitch_0
    const-string v1, "status"

    const-string v2, "sbstyle1"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_0

    .line 462
    :pswitch_1
    const-string v1, "status"

    const-string v2, "sbstyle2"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_0

    .line 467
    :pswitch_2
    const-string v1, "status"

    const-string v2, "sbstyle3"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    goto/16 :goto_0

    .line 472
    :pswitch_3
    const-string v1, "status"

    const-string v2, "sbstyle4"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    goto/16 :goto_0

    .line 455
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static u(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 505
    invoke-static {p0}, Lapg;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    const-string v0, "status"

    const-string v1, "wo"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 510
    :cond_0
    invoke-static {p0}, Lapg;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 511
    const-string v0, "status"

    const-string v1, "swo"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 515
    :cond_1
    invoke-static {p0}, Lbaj;->a(Landroid/content/Context;)Lbaj;

    move-result-object v0

    invoke-virtual {v0}, Lbaj;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 516
    const-string v0, "status"

    const-string v1, "dwo"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 520
    :cond_2
    invoke-static {p0}, Lapg;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 521
    const-string v0, "desk"

    const-string v1, "bwe"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 524
    :cond_3
    return-void
.end method
