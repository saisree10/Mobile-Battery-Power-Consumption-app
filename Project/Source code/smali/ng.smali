.class public abstract Lng;
.super Ljava/lang/Object;
.source "BaseRecommendPuller.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lni;

.field private e:Ljava/lang/String;

.field private f:Lnk;

.field private g:Llz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lng;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lng;->a:Ljava/lang/String;

    .line 33
    const-string v0, "http://ak.dxsvr.com/rec/get"

    sput-object v0, Lng;->b:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lng;->c:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lng;->e:Ljava/lang/String;

    .line 57
    invoke-static {p1}, Lni;->a(Landroid/content/Context;)Lni;

    move-result-object v0

    iput-object v0, p0, Lng;->d:Lni;

    .line 58
    iget-object v0, p0, Lng;->d:Lni;

    invoke-virtual {v0, p2}, Lni;->a(Ljava/lang/String;)Lnk;

    move-result-object v0

    iput-object v0, p0, Lng;->f:Lnk;

    .line 59
    new-instance v0, Llz;

    invoke-direct {v0, p1}, Llz;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lng;->g:Llz;

    .line 60
    return-void
.end method

.method private static a(Lorg/apache/http/HttpResponse;)J
    .locals 2
    .parameter

    .prologue
    .line 178
    const-string v0, "Last-Modified"

    invoke-interface {p0, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_0

    .line 180
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-static {v0}, Llx;->b(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 183
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private a(J)V
    .locals 3
    .parameter

    .prologue
    .line 168
    sget-object v0, Lng;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update last pull time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lng;->f:Lnk;

    iput-wide p1, v0, Lnk;->d:J

    .line 170
    iget-object v0, p0, Lng;->d:Lni;

    iget-object v1, p0, Lng;->f:Lnk;

    invoke-virtual {v0, v1}, Lni;->a(Lnk;)V

    .line 171
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 36
    const-string v0, "prod"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const-string v0, "http://ak.dxsvr.com/rec/get"

    sput-object v0, Lng;->b:Ljava/lang/String;

    .line 46
    :goto_0
    return-void

    .line 38
    :cond_0
    const-string v0, "test"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    const-string v0, "http://t1.tira.cn:8125/recommend/get"

    sput-object v0, Lng;->b:Ljava/lang/String;

    goto :goto_0

    .line 40
    :cond_1
    const-string v0, "dev"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41
    const-string v0, "http://t1.tira.cn:8125/recommend/get"

    sput-object v0, Lng;->b:Ljava/lang/String;

    goto :goto_0

    .line 44
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "env only prod, test and dev: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b(J)Lorg/apache/http/Header;
    .locals 3
    .parameter

    .prologue
    .line 187
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "If-Modified-Since"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2}, Llx;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected static c(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .parameter

    .prologue
    .line 191
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 192
    const-string v1, "datas"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 193
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 194
    return-object v0
.end method

.method private f()J
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lng;->f:Lnk;

    iget-wide v0, v0, Lnk;->d:J

    return-wide v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lng;->f:Lnk;

    iget-object v0, v0, Lnk;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 67
    invoke-static {}, Lpg;->a()Lpg;

    move-result-object v0

    new-instance v1, Lnh;

    invoke-direct {v1, p0}, Lnh;-><init>(Lng;)V

    invoke-virtual {v0, v1}, Lpg;->a(Ljava/lang/Runnable;)V

    .line 73
    return-void
.end method

.method protected abstract b(Ljava/lang/String;)V
.end method

.method public final declared-synchronized c()V
    .locals 11

    .prologue
    const/16 v7, 0x130

    const/16 v10, 0xc8

    .line 76
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lng;->e:Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Lng;->f()J

    move-result-wide v1

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 80
    sub-long v1, v3, v1

    .line 81
    invoke-virtual {p0}, Lng;->e()J

    move-result-wide v5

    cmp-long v1, v1, v5

    if-gez v1, :cond_0

    .line 82
    sget-object v0, Lng;->a:Ljava/lang/String;

    const-string v1, "Less than 6 hours; drop this request."

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :goto_0
    monitor-exit p0

    return-void

    .line 86
    :cond_0
    :try_start_1
    iget-object v1, p0, Lng;->c:Landroid/content/Context;

    invoke-static {v1}, Loa;->a(Landroid/content/Context;)I

    move-result v1

    .line 87
    if-nez v1, :cond_1

    .line 88
    sget-object v0, Lng;->a:Ljava/lang/String;

    const-string v1, "Network not avaliable!"

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 94
    :cond_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v5, Lng;->b:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "?net="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&child="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&rv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "1.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 100
    iget-object v2, p0, Lng;->f:Lnk;

    iget-wide v5, v2, Lnk;->c:J

    invoke-static {v5, v6}, Lng;->b(J)Lorg/apache/http/Header;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v2, p0, Lng;->g:Llz;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Llz;->a(Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 103
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 104
    if-eq v0, v10, :cond_2

    if-eq v0, v7, :cond_2

    .line 106
    sget-object v1, Lng;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Http request failed: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 151
    :try_start_3
    invoke-direct {p0, v3, v4}, Lng;->a(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 110
    :cond_2
    if-ne v0, v7, :cond_3

    .line 112
    :try_start_4
    sget-object v0, Lng;->a:Ljava/lang/String;

    const-string v1, "Content doesn\'t changed."

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 151
    :try_start_5
    invoke-direct {p0, v3, v4}, Lng;->a(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 116
    :cond_3
    :try_start_6
    invoke-static {}, Lnz;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 117
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    array-length v5, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_4

    aget-object v6, v2, v0

    .line 118
    sget-object v7, Lng;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 122
    :cond_4
    invoke-static {v1}, Llz;->d(Lorg/apache/http/HttpResponse;)Lorg/json/JSONObject;

    move-result-object v0

    .line 123
    sget-object v2, Lng;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Content Received: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v2, "responseHeader"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 125
    const-string v5, "errcode"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 127
    if-eq v2, v10, :cond_6

    .line 128
    sget-object v1, Lng;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bad response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/16 v0, 0x194

    if-ne v2, v0, :cond_5

    .line 130
    sget-object v0, Lng;->a:Ljava/lang/String;

    const-string v1, "404 error"

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lng;->d()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 151
    :cond_5
    :try_start_7
    invoke-direct {p0, v3, v4}, Lng;->a(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 135
    :cond_6
    :try_start_8
    const-string v2, "response"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    iget-object v2, p0, Lng;->f:Lnk;

    iput-object v0, v2, Lnk;->b:Ljava/lang/String;

    .line 137
    iget-object v2, p0, Lng;->f:Lnk;

    invoke-static {v1}, Lng;->a(Lorg/apache/http/HttpResponse;)J

    move-result-wide v5

    iput-wide v5, v2, Lnk;->c:J

    .line 138
    iget-object v1, p0, Lng;->f:Lnk;

    iput-wide v3, v1, Lnk;->d:J

    .line 139
    iget-object v1, p0, Lng;->d:Lni;

    iget-object v2, p0, Lng;->f:Lnk;

    invoke-virtual {v1, v2}, Lni;->a(Lnk;)V

    .line 141
    invoke-virtual {p0, v0}, Lng;->b(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 151
    :try_start_9
    invoke-direct {p0, v3, v4}, Lng;->a(J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    :try_start_a
    sget-object v1, Lng;->a:Ljava/lang/String;

    const-string v2, "Unexpected excetpion: "

    invoke-static {v1, v2, v0}, Lnz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 151
    :try_start_b
    invoke-direct {p0, v3, v4}, Lng;->a(J)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    .line 144
    :catch_1
    move-exception v0

    .line 145
    :try_start_c
    sget-object v1, Lng;->a:Ljava/lang/String;

    const-string v2, "Bad content: "

    invoke-static {v1, v2, v0}, Lnz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 151
    :try_start_d
    invoke-direct {p0, v3, v4}, Lng;->a(J)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_0

    .line 146
    :catch_2
    move-exception v0

    .line 147
    :try_start_e
    sget-object v1, Lng;->a:Ljava/lang/String;

    const-string v2, " IllegalStateException: "

    invoke-static {v1, v2, v0}, Lnz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 151
    :try_start_f
    invoke-direct {p0, v3, v4}, Lng;->a(J)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_0

    .line 148
    :catch_3
    move-exception v0

    .line 149
    :try_start_10
    sget-object v1, Lng;->a:Ljava/lang/String;

    const-string v2, " Exception: "

    invoke-static {v1, v2, v0}, Lnz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 151
    :try_start_11
    invoke-direct {p0, v3, v4}, Lng;->a(J)V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    invoke-direct {p0, v3, v4}, Lng;->a(J)V

    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
.end method

.method protected abstract d()V
.end method

.method protected e()J
    .locals 2

    .prologue
    .line 201
    const-wide/32 v0, 0x1499700

    return-wide v0
.end method
