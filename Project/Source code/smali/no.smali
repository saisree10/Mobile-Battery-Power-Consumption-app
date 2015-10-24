.class public Lno;
.super Lnt;
.source "BaiduDataPuller.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Loq;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lnt;-><init>(Landroid/content/Context;Loq;)V

    .line 40
    return-void
.end method

.method private static a(Lorg/apache/http/HttpResponse;)J
    .locals 2
    .parameter

    .prologue
    .line 177
    const-string v0, "Last-Modified"

    invoke-interface {p0, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_0

    .line 179
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {v0}, Llx;->b(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 182
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;II)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "pn"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "ps"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "sort"

    sget-object v3, Lkr;->a:Lkr;

    invoke-virtual {v3}, Lkr;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    sget-boolean v2, Lpa;->a:Z

    if-eqz v2, :cond_0

    .line 163
    const-string v2, "http://t1.tira.cn:8125/overseathird/getbaidurec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    :goto_0
    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lno;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 165
    :cond_0
    const-string v2, "http://overseasmisc.jccjd.com/overseathird/getbaidurec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static a(J)Lorg/apache/http/Header;
    .locals 3
    .parameter

    .prologue
    .line 186
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "If-Modified-Since"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2}, Llx;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&cv=1.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&cflv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lks;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 197
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 198
    if-eqz p1, :cond_0

    .line 199
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    .line 200
    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_0

    .line 203
    :cond_0
    sget-object v0, Llz;->b:Lorg/apache/http/Header;

    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Lorg/apache/http/Header;)V

    .line 204
    invoke-static {}, Lnz;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    const-string v0, "BaiduDataPuller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", headers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_1
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const/16 v2, 0x4e20

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 209
    invoke-static {}, Llu;->a()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    .line 211
    :try_start_0
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 214
    throw v0
.end method

.method static synthetic a(Lno;Lod;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lno;->c(Lod;)V

    return-void
.end method

.method private c(Lod;)V
    .locals 11
    .parameter

    .prologue
    const/16 v10, 0xc8

    const/4 v0, 0x0

    const/16 v5, 0x130

    const/4 v9, -0x1

    .line 67
    :try_start_0
    iget-object v1, p0, Lno;->b:Landroid/content/Context;

    iget-object v2, p1, Lod;->a:Ljava/lang/String;

    const-string v3, "st"

    invoke-static {v1, v2, v3}, Lob;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v1, "baidu"

    invoke-virtual {p0, v1}, Lno;->d(Ljava/lang/String;)I

    move-result v1

    .line 71
    iget-object v2, p0, Lno;->b:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3, v1}, Lno;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 72
    iget-object v2, p0, Lno;->b:Landroid/content/Context;

    const-string v3, "baidu"

    invoke-static {v2, v3}, Lom;->h(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    .line 73
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-static {v2, v3}, Lno;->a(J)Lorg/apache/http/Header;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lno;->a(Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 77
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 78
    if-eq v1, v10, :cond_1

    if-eq v1, v5, :cond_1

    .line 80
    const-string v0, "BaiduDataPuller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Http request failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lno;->a(Lod;I)V

    .line 83
    iget-object v0, p0, Lno;->b:Landroid/content/Context;

    invoke-static {v0}, Lpi;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lno;->b:Landroid/content/Context;

    const-string v1, "baidu"

    const-string v2, "404"

    invoke-static {v0, v1, v2}, Lob;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lno;->b:Landroid/content/Context;

    const-string v1, "baidu"

    const-string v2, "nn"

    invoke-static {v0, v1, v2}, Lob;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    const-string v1, "BaiduDataPuller"

    const-string v2, " Exception: "

    invoke-static {v1, v2, v0}, Lnz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    invoke-virtual {p0, p1, v9}, Lno;->a(Lod;I)V

    .line 150
    iget-object v0, p0, Lno;->b:Landroid/content/Context;

    const-string v1, "baidu"

    const-string v2, "nn"

    invoke-static {v0, v1, v2}, Lob;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_1
    if-ne v1, v5, :cond_2

    .line 95
    :try_start_1
    const-string v0, "BaiduDataPuller"

    const-string v1, "Content doesn\'t changed."

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const/16 v0, 0x130

    invoke-virtual {p0, p1, v0}, Lno;->a(Lod;I)V

    .line 98
    iget-object v0, p0, Lno;->b:Landroid/content/Context;

    const-string v1, "baidu"

    const-string v2, "sc"

    invoke-static {v0, v1, v2}, Lob;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_2
    invoke-static {}, Lnz;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 104
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    array-length v4, v3

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_3

    aget-object v5, v3, v1

    .line 105
    const-string v6, "BaiduDataPuller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 109
    :cond_3
    invoke-static {v2}, Llz;->d(Lorg/apache/http/HttpResponse;)Lorg/json/JSONObject;

    move-result-object v1

    .line 110
    const-string v3, "responseHeader"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 111
    const-string v4, "status"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 113
    if-eq v3, v10, :cond_4

    .line 114
    const-string v0, "BaiduDataPuller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lno;->a(Lod;I)V

    .line 117
    iget-object v0, p0, Lno;->b:Landroid/content/Context;

    const-string v1, "baidu"

    const-string v2, "nn"

    invoke-static {v0, v1, v2}, Lob;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 122
    :cond_4
    invoke-static {v2}, Lno;->a(Lorg/apache/http/HttpResponse;)J

    move-result-wide v2

    .line 123
    iget-object v4, p0, Lno;->b:Landroid/content/Context;

    const-string v5, "baidu"

    invoke-static {v4, v5, v2, v3}, Lom;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 125
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "datas"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 129
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 130
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    :goto_2
    if-ge v0, v3, :cond_6

    .line 131
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 132
    const-string v5, "baidu"

    invoke-static {v5, v0, v4}, Lno;->a(Ljava/lang/String;ILorg/json/JSONObject;)Lou;

    move-result-object v4

    .line 133
    invoke-virtual {v4}, Lou;->a()Z

    move-result v5

    if-nez v5, :cond_5

    .line 130
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 137
    :cond_5
    invoke-virtual {p0, v4}, Lno;->a(Lou;)V

    .line 138
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 141
    :cond_6
    new-instance v0, Loe;

    const/16 v1, 0x193

    invoke-direct {v0, p1, v1, v2}, Loe;-><init>(Lod;ILjava/util/List;)V

    .line 143
    iget-object v1, p0, Lno;->b:Landroid/content/Context;

    const-string v2, "baidu"

    const-string v3, "sc"

    invoke-static {v1, v2, v3}, Lob;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0, v0}, Lno;->a(Loe;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Lod;)V
    .locals 2
    .parameter

    .prologue
    .line 46
    const-string v0, "baidu"

    iget-object v1, p1, Lod;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lno;->b:Landroid/content/Context;

    invoke-static {v0}, Lnl;->a(Landroid/content/Context;)Lnl;

    move-result-object v0

    invoke-virtual {v0}, Lnl;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    const-string v0, "BaiduDataPuller"

    const-string v1, "baidu list is disabled."

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const/16 v0, 0x130

    invoke-virtual {p0, p1, v0}, Lno;->a(Lod;I)V

    .line 63
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-static {}, Lpg;->a()Lpg;

    move-result-object v0

    new-instance v1, Lnp;

    invoke-direct {v1, p0, p1}, Lnp;-><init>(Lno;Lod;)V

    invoke-virtual {v0, v1}, Lpg;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 61
    :cond_1
    invoke-super {p0, p1}, Lnt;->a(Lod;)V

    goto :goto_0
.end method
