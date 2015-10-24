.class public Lhl;
.super Ljava/lang/Object;
.source "DownLoadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lhf;


# direct methods
.method constructor <init>(Landroid/content/Context;Lhf;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lhl;->a:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lhl;->b:Lhf;

    .line 35
    return-void
.end method

.method private a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpGet;)Lorg/apache/http/HttpResponse;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 363
    :try_start_0
    invoke-interface {p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 371
    :goto_0
    return-object v0

    .line 364
    :catch_0
    move-exception v0

    .line 365
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 371
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 366
    :catch_1
    move-exception v0

    .line 367
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_1

    .line 368
    :catch_2
    move-exception v0

    .line 369
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private a(Lhm;Lorg/apache/http/HttpResponse;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 226
    invoke-direct {p0, p1, p2}, Lhl;->b(Lhm;Lorg/apache/http/HttpResponse;)V

    .line 228
    iget-object v0, p0, Lhl;->b:Lhf;

    invoke-virtual {v0}, Lhf;->d()V

    .line 230
    const-string v0, "DownloadThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lhl;->b:Lhf;

    invoke-virtual {v2}, Lhf;->e()Lhh;

    move-result-object v2

    invoke-virtual {v2}, Lhh;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lhl;->b:Lhf;

    invoke-virtual {v2}, Lhf;->e()Lhh;

    move-result-object v2

    invoke-virtual {v2}, Lhh;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method private a(Lhm;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 185
    iget-wide v2, p1, Lhm;->a:J

    iget-wide v4, p1, Lhm;->d:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1000

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p1, Lhm;->e:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x5dc

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    .line 189
    :cond_1
    iget-wide v2, p1, Lhm;->a:J

    iput-wide v2, p1, Lhm;->d:J

    .line 190
    iput-wide v0, p1, Lhm;->e:J

    .line 192
    iget-object v0, p0, Lhl;->b:Lhf;

    iget-wide v1, p1, Lhm;->a:J

    iget-object v3, p1, Lhm;->c:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lhf;->b(JJ)V

    .line 194
    :cond_2
    return-void
.end method

.method private a(Lhm;[BLjava/io/InputStream;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 159
    .line 161
    :goto_0
    invoke-virtual {p3, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 163
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 164
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lhl;->a(Lhm;Z)V

    .line 165
    return-void

    .line 167
    :cond_0
    invoke-direct {p0, p2, v0}, Lhl;->a([BI)V

    .line 168
    iget-wide v1, p1, Lhm;->a:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p1, Lhm;->a:J

    .line 169
    iget-wide v1, p1, Lhm;->b:J

    int-to-long v3, v0

    add-long v0, v1, v3

    iput-wide v0, p1, Lhm;->b:J

    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lhl;->a(Lhm;Z)V

    .line 176
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0
.end method

.method private a([BI)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 204
    :try_start_0
    iget-object v0, p0, Lhl;->b:Lhf;

    invoke-virtual {v0}, Lhf;->c()Ljava/io/FileOutputStream;

    move-result-object v0

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lhl;->b:Lhf;

    invoke-virtual {v0}, Lhf;->d()V

    .line 207
    :cond_0
    iget-object v0, p0, Lhl;->b:Lhf;

    invoke-virtual {v0}, Lhf;->c()Ljava/io/FileOutputStream;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 208
    iget-object v0, p0, Lhl;->b:Lhf;

    invoke-virtual {v0}, Lhf;->c()Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :cond_1
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 211
    iget-object v0, p0, Lhl;->b:Lhf;

    invoke-virtual {v0}, Lhf;->e()Lhh;

    move-result-object v0

    invoke-virtual {v0}, Lhh;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhi;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lhi;->a(Ljava/io/File;)J

    move-result-wide v0

    .line 215
    int-to-long v2, p2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    goto :goto_0
.end method

.method private a(Lorg/apache/http/HttpResponse;I)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 330
    const-string v1, "DownloadThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got HTTP redirect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const/16 v1, 0x12d

    if-eq p2, v1, :cond_0

    const/16 v1, 0x12e

    if-eq p2, v1, :cond_0

    const/16 v1, 0x12f

    if-eq p2, v1, :cond_0

    const/16 v1, 0x133

    if-ne p2, v1, :cond_1

    .line 335
    :cond_0
    const-string v1, "Location"

    invoke-interface {p1, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 336
    if-nez v1, :cond_2

    .line 355
    :cond_1
    :goto_0
    return v0

    .line 340
    :cond_2
    const-string v0, "DownloadThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Location :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v0, ""

    .line 344
    :try_start_0
    new-instance v2, Ljava/net/URI;

    iget-object v3, p0, Lhl;->b:Lhf;

    invoke-virtual {v3}, Lhf;->e()Lhh;

    move-result-object v3

    invoke-virtual {v3}, Lhh;->e()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/net/URI;

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 351
    :goto_1
    iget-object v1, p0, Lhl;->b:Lhf;

    invoke-virtual {v1}, Lhf;->e()Lhh;

    move-result-object v1

    invoke-virtual {v1, v0}, Lhh;->a(Ljava/lang/String;)V

    .line 353
    const/4 v0, 0x1

    goto :goto_0

    .line 346
    :catch_0
    move-exception v2

    .line 347
    const-string v2, "DownloadThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t resolve redirect URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lhl;->b:Lhf;

    invoke-virtual {v3}, Lhf;->e()Lhh;

    move-result-object v3

    invoke-virtual {v3}, Lhh;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Lorg/apache/http/client/methods/HttpGet;Lhr;)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 104
    new-instance v2, Lhm;

    iget-object v3, p0, Lhl;->b:Lhf;

    invoke-virtual {v3}, Lhf;->e()Lhh;

    move-result-object v3

    invoke-direct {v2, v3}, Lhm;-><init>(Lhh;)V

    .line 105
    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 108
    const-string v4, "Range"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bytes="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v2, Lhm;->a:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0, p2, p1}, Lhl;->a(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpGet;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 112
    invoke-direct {p0, v2, v4}, Lhl;->c(Lhm;Lorg/apache/http/HttpResponse;)I

    move-result v5

    .line 114
    const/16 v6, 0x6d

    if-ne v5, v6, :cond_0

    .line 145
    :goto_0
    return v0

    .line 119
    :cond_0
    const/16 v6, 0x1f4

    if-ne v5, v6, :cond_1

    move v0, v1

    .line 120
    goto :goto_0

    .line 123
    :cond_1
    const-string v5, "DownloadThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "received response for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpGet;->getURI()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", status:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0, v2, v4}, Lhl;->a(Lhm;Lorg/apache/http/HttpResponse;)V

    .line 128
    iget-object v5, p0, Lhl;->b:Lhf;

    iget-wide v6, v2, Lhm;->a:J

    iget-object v8, v2, Lhm;->c:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v5, v6, v7, v8, v9}, Lhf;->a(JJ)V

    .line 132
    :try_start_0
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 141
    invoke-direct {p0, v2, v3, v0}, Lhl;->a(Lhm;[BLjava/io/InputStream;)V

    .line 143
    const-string v0, "DownloadThread"

    const-string v2, " transfer data end "

    invoke-static {v0, v2}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 145
    goto :goto_0

    .line 133
    :catch_0
    move-exception v1

    .line 134
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 136
    :catch_1
    move-exception v1

    .line 137
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private b(Lhm;Lorg/apache/http/HttpResponse;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 241
    const/4 v0, 0x0

    .line 242
    const-string v1, "Transfer-Encoding"

    invoke-interface {p2, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 243
    if-eqz v1, :cond_0

    .line 244
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 247
    :cond_0
    if-nez v0, :cond_4

    .line 248
    const-string v1, "Content-Length"

    invoke-interface {p2, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 249
    if-eqz v1, :cond_1

    .line 251
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-wide v4, p1, Lhm;->a:J

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lhm;->c:Ljava/lang/String;

    .line 252
    iget-object v2, p0, Lhl;->b:Lhf;

    invoke-virtual {v2}, Lhf;->e()Lhh;

    move-result-object v2

    invoke-virtual {v2}, Lhh;->g()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 253
    iget-object v2, p0, Lhl;->b:Lhf;

    invoke-virtual {v2}, Lhf;->e()Lhh;

    move-result-object v2

    iget-object v3, p1, Lhm;->c:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lhh;->a(J)V

    .line 256
    :cond_1
    const-string v2, "DownloadThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content-length:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :goto_0
    const-string v1, "DownloadThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content-Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lhm;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v1, p1, Lhm;->c:Ljava/lang/String;

    if-nez v1, :cond_5

    if-eqz v0, :cond_2

    const-string v1, "chunked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_2
    const/4 v0, 0x1

    .line 268
    :goto_1
    if-eqz v0, :cond_3

    .line 269
    iget-object v0, p0, Lhl;->b:Lhf;

    const/16 v1, 0x1eb

    invoke-virtual {v0, v1}, Lhf;->b(I)V

    .line 271
    :cond_3
    return-void

    .line 259
    :cond_4
    const-string v1, "DownloadThread"

    const-string v2, "ignoring content-length because of xfer-encoding"

    invoke-static {v1, v2}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private c(Lhm;Lorg/apache/http/HttpResponse;)I
    .locals 10
    .parameter
    .parameter

    .prologue
    const/16 v9, 0xce

    const/16 v1, 0xc8

    const/4 v6, 0x1

    const/16 v0, 0x1f7

    const-wide/16 v7, 0x0

    .line 279
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 281
    if-ne v2, v0, :cond_0

    iget-object v3, p0, Lhl;->b:Lhf;

    invoke-virtual {v3}, Lhf;->e()Lhh;

    move-result-object v3

    invoke-virtual {v3}, Lhh;->h()I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_0

    .line 282
    iget-object v1, p0, Lhl;->b:Lhf;

    invoke-virtual {v1, v0}, Lhf;->b(I)V

    .line 322
    :goto_0
    return v0

    .line 286
    :cond_0
    invoke-direct {p0, p2, v2}, Lhl;->a(Lorg/apache/http/HttpResponse;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    const/16 v0, 0x6d

    goto :goto_0

    .line 290
    :cond_1
    const/16 v0, 0x1a0

    if-ne v2, v0, :cond_2

    .line 291
    const-string v0, "Content-Range"

    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 292
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 293
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 294
    const-string v3, "DownloadThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " get values values[0] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " values[1] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-wide v3, p1, Lhm;->a:J

    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    .line 296
    const/16 v0, 0x1f4

    goto :goto_0

    .line 301
    :cond_2
    const-string v0, "DownloadThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleExceptionalStatus  statusCode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    if-ne v2, v9, :cond_3

    iget-wide v3, p1, Lhm;->a:J

    cmp-long v0, v3, v7

    if-gtz v0, :cond_3

    .line 303
    const-string v0, "DownloadThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Status code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Server does not allow to resume the download, start a new file"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lin;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lhl;->b:Lhf;

    invoke-virtual {v2}, Lhf;->e()Lhh;

    move-result-object v2

    invoke-virtual {v2}, Lhh;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 310
    iput-wide v7, p1, Lhm;->a:J

    .line 311
    iput-wide v7, p1, Lhm;->b:J

    .line 312
    const-string v2, "DownloadThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Obsoleted file deleted, start a new file, removed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 315
    goto/16 :goto_0

    .line 318
    :cond_3
    if-ne v2, v9, :cond_4

    iget-wide v2, p1, Lhm;->a:J

    cmp-long v0, v2, v7

    if-lez v0, :cond_4

    move v0, v1

    .line 319
    goto/16 :goto_0

    .line 322
    :cond_4
    const/16 v0, 0x1f4

    goto/16 :goto_0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 39
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 48
    :try_start_0
    iget-object v0, p0, Lhl;->a:Landroid/content/Context;

    invoke-static {v0}, Liq;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 49
    const-string v0, "DownloadThread"

    const-string v2, " NETWORK ERROR DOWNLOAD CANCEL"

    invoke-static {v0, v2}, Lin;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 50
    const/4 v0, 0x3

    .line 87
    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 92
    :cond_0
    const-string v2, "DownloadThread"

    const-string v3, " DownLoad TASK over "

    invoke-static {v2, v3}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v2, p0, Lhl;->b:Lhf;

    invoke-virtual {v2, v0}, Lhf;->b(I)V

    .line 96
    if-eqz v1, :cond_1

    .line 97
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 101
    :cond_1
    :goto_0
    return-void

    .line 54
    :cond_2
    :try_start_1
    invoke-static {}, Liq;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 55
    const-string v0, "DownloadThread"

    const-string v2, " SDSTATE ERROR DOWNLOAD CANCEL"

    invoke-static {v0, v2}, Lin;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 56
    const/4 v0, 0x4

    .line 87
    if-eqz v1, :cond_3

    .line 88
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 92
    :cond_3
    const-string v2, "DownloadThread"

    const-string v3, " DownLoad TASK over "

    invoke-static {v2, v3}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v2, p0, Lhl;->b:Lhf;

    invoke-virtual {v2, v0}, Lhf;->b(I)V

    .line 96
    if-eqz v1, :cond_1

    .line 97
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 60
    :cond_4
    :try_start_2
    iget-object v0, p0, Lhl;->a:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 62
    const/4 v2, 0x1

    const-string v3, "DXAP"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    .line 64
    :try_start_3
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 66
    new-instance v5, Lhr;

    iget-object v0, p0, Lhl;->a:Landroid/content/Context;

    invoke-direct {v5, v0}, Lhr;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-virtual {v5}, Lhr;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 69
    const v2, 0xea60

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move v0, v4

    move-object v2, v1

    .line 72
    :goto_1
    if-nez v0, :cond_5

    .line 73
    :try_start_4
    const-string v0, "DownloadThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " request uri "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lhl;->b:Lhf;

    invoke-virtual {v6}, Lhf;->e()Lhh;

    move-result-object v6

    invoke-virtual {v6}, Lhh;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    iget-object v0, p0, Lhl;->b:Lhf;

    invoke-virtual {v0}, Lhf;->e()Lhh;

    move-result-object v0

    invoke-virtual {v0}, Lhh;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 75
    :try_start_5
    invoke-direct {p0, v1, v5}, Lhl;->a(Lorg/apache/http/client/methods/HttpGet;Lhr;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result v0

    move-object v2, v1

    goto :goto_1

    .line 87
    :cond_5
    if-eqz v2, :cond_6

    .line 88
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 92
    :cond_6
    const-string v0, "DownloadThread"

    const-string v1, " DownLoad TASK over "

    invoke-static {v0, v1}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lhl;->b:Lhf;

    invoke-virtual {v0, v4}, Lhf;->b(I)V

    .line 96
    if-eqz v3, :cond_1

    .line 97
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 79
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 80
    :goto_2
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 81
    const-string v0, "DownloadThread"

    const-string v3, "catch Interrupted Exception over trans"

    invoke-static {v0, v3}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 87
    if-eqz v1, :cond_7

    .line 88
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 92
    :cond_7
    const-string v0, "DownloadThread"

    const-string v1, " DownLoad TASK over "

    invoke-static {v0, v1}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lhl;->b:Lhf;

    invoke-virtual {v0, v7}, Lhf;->b(I)V

    .line 96
    if-eqz v2, :cond_1

    .line 97
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 83
    :catch_1
    move-exception v0

    move-object v3, v1

    .line 84
    :goto_3
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 87
    if-eqz v1, :cond_8

    .line 88
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 92
    :cond_8
    const-string v0, "DownloadThread"

    const-string v1, " DownLoad TASK over "

    invoke-static {v0, v1}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lhl;->b:Lhf;

    invoke-virtual {v0, v8}, Lhf;->b(I)V

    .line 96
    if-eqz v3, :cond_1

    .line 97
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 87
    :catchall_0
    move-exception v0

    move-object v3, v1

    :goto_4
    if-eqz v1, :cond_9

    .line 88
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 92
    :cond_9
    const-string v1, "DownloadThread"

    const-string v2, " DownLoad TASK over "

    invoke-static {v1, v2}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lhl;->b:Lhf;

    invoke-virtual {v1, v8}, Lhf;->b(I)V

    .line 96
    if-eqz v3, :cond_a

    .line 97
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 98
    :cond_a
    throw v0

    .line 87
    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_4

    .line 83
    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 79
    :catch_4
    move-exception v0

    move-object v2, v3

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2
.end method
