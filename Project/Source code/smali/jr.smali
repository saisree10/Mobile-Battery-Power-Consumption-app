.class public Ljr;
.super Ljava/lang/Object;
.source "RequestHelper.java"


# static fields
.field private static final c:Z

.field private static e:Landroid/content/Context;


# instance fields
.field public a:Ljy;

.field private b:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lit;->a:Z

    sput-boolean v0, Ljr;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "http://u.dxsvr.com/api/apps"

    iput-object v0, p0, Ljr;->b:Ljava/lang/String;

    .line 46
    const-string v0, "pref_update_info_etag"

    iput-object v0, p0, Ljr;->d:Ljava/lang/String;

    .line 53
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 356
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 357
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 359
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/io/Closeable;)V
    .locals 3
    .parameter

    .prologue
    .line 335
    if-eqz p1, :cond_0

    .line 337
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 338
    :catch_0
    move-exception v0

    .line 339
    sget-boolean v1, Lit;->a:Z

    if-eqz v1, :cond_0

    .line 340
    const-string v1, "RequestHelper"

    const-string v2, "file close errorr"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 287
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 288
    invoke-direct {p0, p2, p1}, Ljr;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 289
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_1

    .line 306
    :cond_0
    :goto_0
    return v0

    .line 293
    :cond_1
    :try_start_0
    invoke-static {v1}, Liw;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 294
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 297
    sget-object v2, Ljr;->e:Landroid/content/Context;

    const-string v3, "pref_cache_file_md5"

    invoke-static {v2, v3}, Ljo;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 298
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 299
    :catch_0
    move-exception v1

    .line 300
    sget-boolean v2, Ljr;->c:Z

    if-eqz v2, :cond_0

    .line 301
    const-string v2, "RequestHelper"

    const-string v3, "isCacheFileValid: cachefile not found"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(Ljava/io/InputStream;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 310
    if-eqz p3, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 311
    const/4 v2, 0x0

    .line 313
    const/16 v1, 0x2000

    :try_start_0
    new-array v1, v1, [B

    .line 314
    const/4 v3, 0x0

    invoke-virtual {p3, p2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 316
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 317
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 321
    :catch_0
    move-exception v1

    .line 322
    :try_start_1
    invoke-direct {p0, p2}, Ljr;->c(Ljava/lang/String;)V

    .line 323
    sget-boolean v3, Ljr;->c:Z

    if-eqz v3, :cond_0

    .line 324
    const-string v3, "RequestHelper"

    const-string v4, "file load into memory error"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    :cond_0
    :goto_1
    invoke-direct {p0, v2}, Ljr;->a(Ljava/io/Closeable;)V

    .line 331
    :cond_1
    return v0

    .line 319
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 320
    const/4 v0, 0x1

    goto :goto_1

    .line 327
    :catchall_0
    move-exception v0

    invoke-direct {p0, v2}, Ljr;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 276
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 277
    invoke-static {p1}, Liw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    const-string v0, "appupdate_info_cache"

    .line 283
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 347
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    sget-object v0, Ljr;->e:Landroid/content/Context;

    invoke-direct {p0, p1, v0}, Ljr;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 349
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 353
    :cond_0
    return-void
.end method

.method private d(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 363
    .line 365
    :try_start_0
    sget-object v1, Ljr;->e:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 373
    :goto_0
    return-object v0

    .line 366
    :catch_0
    move-exception v1

    .line 367
    sget-boolean v2, Lit;->a:Z

    if-eqz v2, :cond_0

    .line 368
    const-string v2, "RequestHelper"

    const-string v3, "loadCacheFile: fail to loadCacheFile,fai not found"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    :cond_0
    invoke-direct {p0, v0}, Ljr;->a(Ljava/io/Closeable;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/io/InputStream;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 179
    .line 180
    if-eqz p3, :cond_5

    .line 181
    const-string v0, "UTF-8"

    invoke-static {p3, v0}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    if-eqz p2, :cond_0

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    :cond_0
    :goto_0
    sget-boolean v2, Ljr;->c:Z

    if-eqz v2, :cond_1

    .line 192
    const-string v2, "RequestHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request url is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_1
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Ljr;->a:Ljy;

    invoke-static {v0}, Lkj;->a(Ljy;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    .line 196
    const-string v3, "User-Agent"

    const-string v4, "Appupdate model"

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-direct {p0, p1}, Ljr;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 199
    sget-object v4, Ljr;->e:Landroid/content/Context;

    iget-object v5, p0, Ljr;->d:Ljava/lang/String;

    invoke-static {v4, v5}, Ljo;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 200
    sget-object v5, Ljr;->e:Landroid/content/Context;

    invoke-direct {p0, v5, v3}, Ljr;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    .line 202
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz v5, :cond_2

    .line 203
    const-string v6, "If-None-Match"

    invoke-virtual {v2, v6, v4}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_2
    :try_start_0
    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 209
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 210
    sget-boolean v7, Ljr;->c:Z

    if-eqz v7, :cond_3

    .line 211
    const-string v7, "RequestHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "old ETag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", cache valid: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const-string v4, "RequestHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Get response for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", status:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_3
    const/16 v2, 0xc8

    if-ne v6, v2, :cond_8

    .line 215
    const-string v2, "ETag"

    invoke-interface {v0, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 216
    if-eqz v2, :cond_4

    .line 217
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 218
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 219
    sget-object v4, Ljr;->e:Landroid/content/Context;

    iget-object v5, p0, Ljr;->d:Ljava/lang/String;

    invoke-static {v4, v5, v2}, Ljo;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    sget-boolean v4, Ljr;->c:Z

    if-eqz v4, :cond_4

    .line 221
    const-string v4, "RequestHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new ETag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_4
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 226
    :try_start_1
    sget-object v0, Ljr;->e:Landroid/content/Context;

    invoke-direct {p0, v2, v3, v0}, Ljr;->a(Ljava/io/InputStream;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    .line 227
    if-eqz v0, :cond_7

    .line 228
    sget-object v0, Ljr;->e:Landroid/content/Context;

    invoke-direct {p0, v3, v0}, Ljr;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Liw;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 230
    sget-object v4, Ljr;->e:Landroid/content/Context;

    const-string v5, "pref_cache_file_md5"

    invoke-static {v4, v5, v0}, Ljo;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-direct {p0, v3}, Ljr;->d(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    .line 270
    invoke-direct {p0, v2}, Ljr;->a(Ljava/io/Closeable;)V

    .line 272
    :goto_1
    return-object v0

    .line 187
    :cond_5
    if-eqz p2, :cond_e

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 233
    :cond_6
    :try_start_2
    sget-object v0, Ljr;->e:Landroid/content/Context;

    const-string v4, "pref_cache_file_md5"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Ljo;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    sget-object v0, Ljr;->e:Landroid/content/Context;

    iget-object v4, p0, Ljr;->d:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Ljo;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-direct {p0, v3}, Ljr;->c(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .line 270
    invoke-direct {p0, v2}, Ljr;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 236
    goto :goto_1

    .line 239
    :cond_7
    :try_start_3
    sget-object v0, Ljr;->e:Landroid/content/Context;

    iget-object v3, p0, Ljr;->d:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Ljo;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 270
    invoke-direct {p0, v2}, Ljr;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 240
    goto :goto_1

    .line 243
    :cond_8
    const/16 v0, 0x130

    if-ne v6, v0, :cond_d

    .line 244
    if-eqz v5, :cond_a

    .line 245
    :try_start_4
    sget-boolean v0, Ljr;->c:Z

    if-eqz v0, :cond_9

    .line 246
    const-string v0, "RequestHelper"

    const-string v2, "get update info for local cache"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_9
    invoke-direct {p0, v3}, Ljr;->d(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v0

    .line 270
    invoke-direct {p0, v1}, Ljr;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :cond_a
    invoke-direct {p0, v1}, Ljr;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 250
    goto :goto_1

    .line 253
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 254
    :goto_2
    :try_start_5
    sget-object v3, Ljr;->e:Landroid/content/Context;

    invoke-static {v3}, Lkj;->e(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 255
    const-wide/32 v3, 0xdbba00

    .line 256
    sget-object v5, Ljr;->e:Landroid/content/Context;

    invoke-static {v5}, Lka;->a(Landroid/content/Context;)Lka;

    move-result-object v7

    .line 257
    invoke-virtual {v7}, Lka;->e()J

    move-result-wide v5

    .line 258
    cmp-long v8, v3, v5

    if-lez v8, :cond_b

    move-wide v3, v5

    .line 261
    :cond_b
    invoke-virtual {v7, v3, v4, v5, v6}, Lka;->a(JJ)V

    .line 263
    :cond_c
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 270
    :goto_3
    invoke-direct {p0, v2}, Ljr;->a(Ljava/io/Closeable;)V

    :goto_4
    move-object v0, v1

    .line 272
    goto/16 :goto_1

    .line 264
    :catch_1
    move-exception v0

    move-object v2, v1

    .line 265
    :goto_5
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 270
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_6
    invoke-direct {p0, v1}, Ljr;->a(Ljava/io/Closeable;)V

    throw v0

    .line 266
    :catch_2
    move-exception v0

    move-object v2, v1

    .line 268
    :goto_7
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 270
    :cond_d
    invoke-direct {p0, v1}, Ljr;->a(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_6

    .line 266
    :catch_3
    move-exception v0

    goto :goto_7

    .line 264
    :catch_4
    move-exception v0

    goto :goto_5

    .line 253
    :catch_5
    move-exception v0

    goto :goto_2

    :cond_e
    move-object v0, p1

    goto/16 :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    invoke-static {}, Lit;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 387
    iget-object v0, p0, Ljr;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 383
    :pswitch_0
    const-string v0, "http://u.dxsvr.com/api/apps"

    goto :goto_0

    .line 385
    :pswitch_1
    sget-object v0, Lit;->c:Ljava/lang/String;

    goto :goto_0

    .line 381
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(ILjava/lang/String;Landroid/content/Context;)Ljs;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Ljr;->e:Landroid/content/Context;

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "ver"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sig"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "uv"

    invoke-static {}, Lkk;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    const-string v2, "pref_appupdate_start_version_code"

    const/4 v3, -0x1

    invoke-static {p3, v2, v3}, Ljo;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 64
    if-eq v2, p1, :cond_0

    .line 65
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sd"

    const-string v4, "0"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljr;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/check_update"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-static {p3}, Lgt;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v1}, Ljr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/io/InputStream;

    move-result-object v1

    .line 73
    if-eqz v1, :cond_6

    .line 75
    const-string v2, ""

    .line 77
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v4, v1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v0, v2

    .line 80
    :goto_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v0

    goto :goto_1

    .line 67
    :cond_0
    const-string v2, "pref_appupdate_start_version_times"

    const/4 v3, 0x0

    invoke-static {p3, v2, v3}, Ljo;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 68
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "sd"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 83
    :cond_1
    :try_start_2
    sget-boolean v1, Ljr;->c:Z

    if-eqz v1, :cond_2

    .line 84
    const-string v1, "RequestHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "response="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 91
    :cond_2
    if-eqz v3, :cond_3

    .line 93
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 98
    :cond_3
    :goto_2
    invoke-virtual {p0, v0}, Ljr;->a(Ljava/lang/String;)Ljs;

    move-result-object v0

    .line 108
    :cond_4
    :goto_3
    return-object v0

    .line 86
    :catch_0
    move-exception v1

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    .line 87
    :goto_4
    :try_start_4
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 91
    if-eqz v2, :cond_3

    .line 93
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 94
    :catch_1
    move-exception v1

    goto :goto_2

    .line 88
    :catch_2
    move-exception v1

    move-object v3, v0

    move-object v0, v2

    .line 89
    :goto_5
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 91
    if-eqz v3, :cond_3

    .line 93
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 91
    :catchall_0
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_6
    if-eqz v3, :cond_5

    .line 93
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 91
    :cond_5
    :goto_7
    throw v0

    .line 100
    :cond_6
    sget-boolean v1, Ljr;->c:Z

    if-eqz v1, :cond_7

    .line 101
    const-string v1, "RequestHelper"

    const-string v2, "Network error when checking update"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_7
    sget-boolean v1, Ljr;->c:Z

    if-eqz v1, :cond_4

    .line 105
    const-string v1, "RequestHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Response format error when checking update for pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 94
    :catch_3
    move-exception v1

    goto :goto_7

    .line 91
    :catchall_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v3, v2

    goto :goto_6

    .line 88
    :catch_4
    move-exception v1

    goto :goto_5

    .line 86
    :catch_5
    move-exception v1

    move-object v2, v3

    goto :goto_4
.end method

.method protected a(Ljava/lang/String;)Ljs;
    .locals 10
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 113
    new-instance v0, Ljs;

    invoke-direct {v0}, Ljs;-><init>()V

    .line 115
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 116
    const-string v3, "ava"

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 117
    if-eqz v3, :cond_4

    .line 118
    const/4 v3, 0x1

    iput-boolean v3, v0, Ljs;->a:Z

    .line 119
    const-string v3, "vc"

    const/4 v5, -0x1

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 120
    const-string v5, "vn"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 121
    const-string v6, "url"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 122
    const-string v7, "size"

    const-wide/16 v8, 0x0

    invoke-virtual {v4, v7, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 123
    if-lez v3, :cond_5

    if-eqz v5, :cond_5

    if-eqz v6, :cond_5

    .line 124
    iput v3, v0, Ljs;->c:I

    .line 125
    iput-object v5, v0, Ljs;->b:Ljava/lang/String;

    .line 126
    iput-object v6, v0, Ljs;->f:Ljava/lang/String;

    .line 127
    const-string v3, "dspt"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Ljs;->d:Ljava/lang/String;

    .line 128
    const-string v3, "md5"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Ljs;->h:Ljava/lang/String;

    .line 129
    const-string v3, "pkg"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Ljs;->i:Ljava/lang/String;

    .line 130
    const-string v3, "prt"

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 131
    if-ltz v3, :cond_0

    const/4 v5, 0x3

    if-le v3, v5, :cond_2

    .line 132
    :cond_0
    sget-boolean v5, Ljr;->c:Z

    if-eqz v5, :cond_1

    .line 133
    const-string v5, "RequestHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Illegal priority:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v3, v2

    .line 137
    :cond_2
    iput v3, v0, Ljs;->e:I

    .line 138
    const-string v3, "markets"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 139
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 140
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 141
    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 142
    array-length v6, v3

    :goto_0
    if-ge v2, v6, :cond_3

    aget-object v9, v3, v2

    .line 143
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    :cond_3
    iput-object v5, v0, Ljs;->j:Ljava/util/List;

    .line 149
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Ljs;->g:Ljava/util/Map;

    .line 150
    iget-object v2, v0, Ljs;->g:Ljava/util/Map;

    const-string v3, "update-file-size"

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v2, v0, Ljs;->g:Ljava/util/Map;

    const-string v3, "udpate-no-check-delay"

    const-string v5, "nocheck_delay"

    const-wide/32 v6, 0xa4cb800

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_4
    :goto_1
    return-object v0

    .line 153
    :cond_5
    const/4 v2, 0x0

    iput-boolean v2, v0, Ljs;->a:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 156
    :catch_0
    move-exception v0

    .line 157
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    .line 158
    goto :goto_1

    :cond_6
    move-object v0, v1

    .line 162
    goto :goto_1
.end method

.method public a(Ljy;)V
    .locals 0
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Ljr;->a:Ljy;

    .line 392
    return-void
.end method
