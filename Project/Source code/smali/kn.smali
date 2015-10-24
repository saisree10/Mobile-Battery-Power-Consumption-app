.class Lkn;
.super Lkq;
.source "CMSFrontRestService.java"


# instance fields
.field final synthetic a:Lkl;

.field private final synthetic d:J

.field private final synthetic e:J

.field private final synthetic f:I

.field private final synthetic g:[J

.field private final synthetic h:Lkz;


# direct methods
.method constructor <init>(Lkl;JJI[JLkz;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkn;->a:Lkl;

    iput-wide p2, p0, Lkn;->d:J

    iput-wide p4, p0, Lkn;->e:J

    iput p6, p0, Lkn;->f:I

    iput-object p7, p0, Lkn;->g:[J

    iput-object p8, p0, Lkn;->h:Lkz;

    .line 554
    invoke-direct {p0, p1}, Lkq;-><init>(Lkl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/16 v12, 0xc8

    const/4 v6, 0x0

    .line 558
    .line 560
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 561
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "pid"

    iget-wide v2, p0, Lkn;->d:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "tid"

    iget-wide v2, p0, Lkn;->e:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "top"

    iget v2, p0, Lkn;->f:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkn;->g:[J

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 567
    const-string v0, "http"

    sget-object v1, Lkl;->a:Ljava/lang/String;

    sget v2, Lkl;->b:I

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v5, Lkl;->c:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/materialGroup"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 568
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lkn;->a:Lkl;

    invoke-static {v7}, Lkl;->b(Lkl;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "&"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "UTF-8"

    invoke-static {v4, v7}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 567
    invoke-static/range {v0 .. v5}, Lorg/apache/http/client/utils/URIUtils;->createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 569
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 570
    iget-object v0, p0, Lkn;->a:Lkl;

    invoke-static {v0}, Lkl;->a(Lkl;)Lkw;

    move-result-object v0

    invoke-interface {v0, v9}, Lkw;->a(Ljava/lang/String;)Lkv;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v8

    .line 571
    :try_start_1
    new-instance v4, Lkp;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lkp;-><init>(Lkp;)V

    .line 572
    if-nez v8, :cond_2

    .line 573
    new-instance v7, Lkv;

    invoke-direct {v7}, Lkv;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 574
    :try_start_2
    iget-object v0, p0, Lkn;->a:Lkl;

    const/4 v2, 0x0

    iget-object v3, p0, Lkn;->h:Lkz;

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lkl;->b(Lkl;Ljava/net/URI;Ljava/util/List;Lkz;Lkp;I)I

    move-result v0

    .line 575
    if-ne v12, v0, :cond_0

    .line 576
    iget-object v1, v4, Lkp;->a:Lorg/json/JSONObject;

    const-string v2, "datas"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 577
    iget-wide v2, v4, Lkp;->c:J

    iput-wide v2, v7, Lkv;->b:J

    .line 578
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lkv;->a:Ljava/lang/String;

    .line 579
    iget-object v2, p0, Lkn;->a:Lkl;

    invoke-static {v2}, Lkl;->a(Lkl;)Lkw;

    move-result-object v2

    invoke-interface {v2, v9, v7}, Lkw;->a(Ljava/lang/String;Lkv;)Z

    .line 580
    iget-object v2, p0, Lkn;->h:Lkz;

    iget-wide v3, p0, Lkn;->d:J

    iget-wide v8, p0, Lkn;->e:J

    invoke-static {v1, v3, v4, v8, v9}, Llb;->a(Lorg/json/JSONArray;JJ)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lkz;->a(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 608
    :cond_0
    :goto_1
    return-void

    .line 565
    :cond_1
    :try_start_3
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "ids"

    iget-object v3, p0, Lkn;->g:[J

    aget-wide v7, v3, v0

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 564
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 583
    :cond_2
    :try_start_4
    new-instance v2, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 584
    iget-wide v10, v8, Lkv;->b:J

    invoke-static {v10, v11}, Lkl;->a(J)Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    iget-object v0, p0, Lkn;->a:Lkl;

    iget-object v3, p0, Lkn;->h:Lkz;

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lkl;->b(Lkl;Ljava/net/URI;Ljava/util/List;Lkz;Lkp;I)I

    move-result v0

    .line 586
    if-ne v0, v12, :cond_3

    .line 587
    iget-object v1, v4, Lkp;->a:Lorg/json/JSONObject;

    const-string v2, "datas"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 588
    iget-wide v2, v4, Lkp;->c:J

    iput-wide v2, v8, Lkv;->b:J

    .line 589
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lkv;->a:Ljava/lang/String;

    .line 590
    iget-object v2, p0, Lkn;->a:Lkl;

    invoke-static {v2}, Lkl;->a(Lkl;)Lkw;

    move-result-object v2

    invoke-interface {v2, v9, v8}, Lkw;->a(Ljava/lang/String;Lkv;)Z

    .line 591
    iget-object v2, p0, Lkn;->h:Lkz;

    iget-wide v3, p0, Lkn;->d:J

    iget-wide v9, p0, Lkn;->e:J

    invoke-static {v1, v3, v4, v9, v10}, Llb;->a(Lorg/json/JSONArray;JJ)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lkz;->a(ILjava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 596
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    .line 599
    :goto_2
    if-eqz v0, :cond_4

    :try_start_5
    iget-object v2, v0, Lkv;->a:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 600
    new-instance v2, Lorg/json/JSONArray;

    iget-object v0, v0, Lkv;->a:Ljava/lang/String;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lkn;->d:J

    iget-wide v7, p0, Lkn;->e:J

    invoke-static {v2, v3, v4, v7, v8}, Llb;->a(Lorg/json/JSONArray;JJ)Ljava/util/List;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v0

    .line 605
    :goto_3
    iget-object v2, p0, Lkn;->h:Lkz;

    invoke-interface {v2, v1, v0}, Lkz;->a(Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 606
    const-string v0, "CMSFrontRestService"

    const-string v2, "failed to get material group"

    invoke-static {v0, v2, v1}, Lla;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 592
    :cond_3
    const/16 v1, 0x130

    if-ne v0, v1, :cond_0

    .line 593
    :try_start_6
    iget-object v1, p0, Lkn;->h:Lkz;

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, v8, Lkv;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lkn;->d:J

    iget-wide v9, p0, Lkn;->e:J

    invoke-static {v2, v3, v4, v9, v10}, Llb;->a(Lorg/json/JSONArray;JJ)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lkz;->a(ILjava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_1

    .line 602
    :catch_1
    move-exception v0

    .line 603
    const-string v2, "CMSFrontRestService"

    const-string v3, "failed to parse material groups"

    invoke-static {v2, v3, v0}, Lla;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    move-object v0, v6

    goto :goto_3

    .line 596
    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v1, v0

    move-object v0, v7

    goto :goto_2
.end method
