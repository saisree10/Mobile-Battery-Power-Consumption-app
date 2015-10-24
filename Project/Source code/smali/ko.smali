.class Lko;
.super Lkq;
.source "CMSFrontRestService.java"


# instance fields
.field final synthetic a:Lkl;

.field private final synthetic d:J

.field private final synthetic e:J

.field private final synthetic f:J

.field private final synthetic g:I

.field private final synthetic h:I

.field private final synthetic i:Lkr;

.field private final synthetic j:Lkz;


# direct methods
.method constructor <init>(Lkl;JJJIILkr;Lkz;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lko;->a:Lkl;

    iput-wide p2, p0, Lko;->d:J

    iput-wide p4, p0, Lko;->e:J

    iput-wide p6, p0, Lko;->f:J

    iput p8, p0, Lko;->g:I

    iput p9, p0, Lko;->h:I

    iput-object p10, p0, Lko;->i:Lkr;

    iput-object p11, p0, Lko;->j:Lkz;

    .line 655
    invoke-direct {p0, p1}, Lkq;-><init>(Lkl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/16 v12, 0xc8

    const/4 v6, 0x0

    .line 659
    .line 661
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 662
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "pid"

    iget-wide v2, p0, Lko;->d:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "tid"

    iget-wide v2, p0, Lko;->e:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "id"

    iget-wide v2, p0, Lko;->f:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 665
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "pn"

    iget v2, p0, Lko;->g:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 666
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "ps"

    iget v2, p0, Lko;->h:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 667
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "sort"

    iget-object v2, p0, Lko;->i:Lkr;

    invoke-virtual {v2}, Lkr;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    const-string v0, "http"

    sget-object v1, Lkl;->a:Ljava/lang/String;

    sget v2, Lkl;->b:I

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v5, Lkl;->c:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/materials"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 669
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lko;->a:Lkl;

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

    .line 668
    invoke-static/range {v0 .. v5}, Lorg/apache/http/client/utils/URIUtils;->createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 670
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 671
    iget-object v0, p0, Lko;->a:Lkl;

    invoke-static {v0}, Lkl;->a(Lkl;)Lkw;

    move-result-object v0

    invoke-interface {v0, v9}, Lkw;->a(Ljava/lang/String;)Lkv;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v8

    .line 672
    :try_start_1
    new-instance v4, Lkp;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lkp;-><init>(Lkp;)V

    .line 673
    if-nez v8, :cond_1

    .line 674
    new-instance v7, Lkv;

    invoke-direct {v7}, Lkv;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 675
    :try_start_2
    iget-object v0, p0, Lko;->a:Lkl;

    const/4 v2, 0x0

    iget-object v3, p0, Lko;->j:Lkz;

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lkl;->c(Lkl;Ljava/net/URI;Ljava/util/List;Lkz;Lkp;I)I

    move-result v0

    .line 676
    if-ne v12, v0, :cond_0

    .line 677
    iget-object v1, v4, Lkp;->a:Lorg/json/JSONObject;

    const-string v2, "datas"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 678
    iget-wide v2, v4, Lkp;->c:J

    iput-wide v2, v7, Lkv;->b:J

    .line 679
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lkv;->a:Ljava/lang/String;

    .line 680
    iget-object v2, p0, Lko;->a:Lkl;

    invoke-static {v2}, Lkl;->a(Lkl;)Lkw;

    move-result-object v2

    invoke-interface {v2, v9, v7}, Lkw;->a(Ljava/lang/String;Lkv;)Z

    .line 681
    iget-object v2, p0, Lko;->j:Lkz;

    invoke-static {v1}, Llb;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lkz;->a(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 684
    :cond_1
    :try_start_3
    new-instance v2, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 685
    iget-wide v10, v8, Lkv;->b:J

    invoke-static {v10, v11}, Lkl;->a(J)Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    iget-object v0, p0, Lko;->a:Lkl;

    iget-object v3, p0, Lko;->j:Lkz;

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lkl;->c(Lkl;Ljava/net/URI;Ljava/util/List;Lkz;Lkp;I)I

    move-result v0

    .line 687
    if-ne v0, v12, :cond_2

    .line 688
    iget-object v1, v4, Lkp;->a:Lorg/json/JSONObject;

    const-string v2, "datas"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 689
    iget-wide v2, v4, Lkp;->c:J

    iput-wide v2, v8, Lkv;->b:J

    .line 690
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lkv;->a:Ljava/lang/String;

    .line 691
    iget-object v2, p0, Lko;->a:Lkl;

    invoke-static {v2}, Lkl;->a(Lkl;)Lkw;

    move-result-object v2

    invoke-interface {v2, v9, v8}, Lkw;->a(Ljava/lang/String;Lkv;)Z

    .line 692
    iget-object v2, p0, Lko;->j:Lkz;

    invoke-static {v1}, Llb;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lkz;->a(ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 697
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    .line 700
    :goto_1
    if-eqz v0, :cond_3

    :try_start_4
    iget-object v2, v0, Lkv;->a:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 701
    new-instance v2, Lorg/json/JSONArray;

    iget-object v0, v0, Lkv;->a:Ljava/lang/String;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Llb;->a(Lorg/json/JSONArray;)Ljava/util/List;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    .line 706
    :goto_2
    iget-object v2, p0, Lko;->j:Lkz;

    invoke-interface {v2, v1, v0}, Lkz;->a(Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 707
    const-string v0, "CMSFrontRestService"

    const-string v2, "failed to get materials"

    invoke-static {v0, v2, v1}, Lla;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 693
    :cond_2
    const/16 v1, 0x130

    if-ne v0, v1, :cond_0

    .line 694
    :try_start_5
    iget-object v1, p0, Lko;->j:Lkz;

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, v8, Lkv;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Llb;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lkz;->a(ILjava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 703
    :catch_1
    move-exception v0

    .line 704
    const-string v2, "CMSFrontRestService"

    const-string v3, "failed to parse materials"

    invoke-static {v2, v3, v0}, Lla;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    move-object v0, v6

    goto :goto_2

    .line 697
    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v1, v0

    move-object v0, v7

    goto :goto_1
.end method
