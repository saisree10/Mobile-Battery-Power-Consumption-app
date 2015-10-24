.class public Lajw;
.super Landroid/os/AsyncTask;
.source "DownloadFileService.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/download/DownloadFileService;

.field private volatile b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J

.field private volatile f:J

.field private g:Lajy;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/download/DownloadFileService;Lajy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lajw;->a:Lcom/dianxinos/powermanager/download/DownloadFileService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 152
    iput-object p2, p0, Lajw;->g:Lajy;

    .line 153
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 14
    .parameter

    .prologue
    .line 170
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lajw;->c:Ljava/lang/String;

    .line 171
    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lajw;->d:Ljava/lang/String;

    .line 172
    const/4 v0, 0x2

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lajw;->e:J

    .line 173
    const/4 v0, 0x3

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lajw;->f:J

    .line 176
    iget-object v0, p0, Lajw;->a:Lcom/dianxinos/powermanager/download/DownloadFileService;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/download/DownloadFileService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lazx;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    const v0, 0x30d43

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 374
    :goto_0
    return-object v0

    .line 187
    :cond_0
    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v0, p0, Lajw;->c:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    new-instance v6, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lajw;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 198
    const-wide/16 v0, 0x0

    :try_start_1
    iput-wide v0, p0, Lajw;->f:J

    .line 199
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 223
    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last time have download: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lajw;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/powermanager/download/DownloadFileService;->c(Ljava/lang/String;)V

    .line 228
    :try_start_2
    new-instance v7, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v7, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    .line 234
    const/4 v2, 0x0

    .line 235
    const/4 v1, -0x1

    .line 237
    const v0, 0x8000

    new-array v8, v0, [B

    .line 238
    const/4 v0, 0x0

    move v4, v1

    move-object v5, v3

    move v1, v2

    move-object v2, v0

    .line 241
    :goto_2
    iget-boolean v0, p0, Lajw;->b:Z

    if-nez v0, :cond_11

    const/16 v0, 0xa

    if-ge v1, v0, :cond_11

    .line 245
    :try_start_3
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 249
    iget-wide v9, p0, Lajw;->e:J

    const-wide/16 v11, 0x0

    cmp-long v3, v9, v11

    if-gtz v3, :cond_2

    .line 250
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v9, v0

    iput-wide v9, p0, Lajw;->e:J

    .line 251
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 253
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file\'s total size: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v9, p0, Lajw;->e:J

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dianxinos/powermanager/download/DownloadFileService;->c(Ljava/lang/String;)V

    .line 256
    const/16 v3, 0x4e20

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 257
    const/16 v3, 0x4e20

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 261
    const-string v3, "Range"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bytes="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lajw;->f:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v3, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 264
    const/16 v9, 0x12d

    if-eq v3, v9, :cond_3

    const/16 v9, 0x12e

    if-eq v3, v9, :cond_3

    const/16 v9, 0x12f

    if-eq v3, v9, :cond_3

    const/16 v9, 0x133

    if-ne v3, v9, :cond_6

    .line 265
    :cond_3
    const-string v3, "Location"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 266
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 267
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 268
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "redirect to "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dianxinos/powermanager/download/DownloadFileService;->c(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a

    move-object v5, v0

    .line 269
    goto/16 :goto_2

    .line 188
    :catch_0
    move-exception v0

    .line 189
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 190
    const v0, 0x30d44

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 200
    :catch_1
    move-exception v0

    .line 201
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 202
    const v0, 0x30d45

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 205
    :cond_4
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 209
    iget-wide v4, p0, Lajw;->f:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 210
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lajw;->f:J

    .line 211
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 213
    :try_start_5
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    .line 214
    :catch_2
    move-exception v0

    .line 215
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 216
    const v0, 0x30d45

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 219
    :cond_5
    const v0, 0x30d46

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 229
    :catch_3
    move-exception v0

    .line 230
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 231
    const v0, 0x30d47

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 273
    :catch_4
    move-exception v0

    move-object v3, v5

    .line 274
    :goto_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 275
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "catch exception when connect network: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/powermanager/download/DownloadFileService;->c(Ljava/lang/String;)V

    .line 277
    const v0, 0x30d48

    .line 278
    add-int/lit8 v1, v1, 0x1

    move v4, v0

    move-object v5, v3

    .line 279
    goto/16 :goto_2

    .line 282
    :cond_6
    iget-object v3, p0, Lajw;->d:Ljava/lang/String;

    const-string v9, "/data"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 284
    invoke-static {}, Lazu;->b()J

    move-result-wide v9

    iget-wide v11, p0, Lajw;->e:J

    cmp-long v3, v9, v11

    if-gtz v3, :cond_9

    .line 285
    const v0, 0x30d42

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 289
    :cond_7
    invoke-static {}, Lazu;->a()Z

    move-result v3

    if-nez v3, :cond_8

    .line 290
    const v0, 0x30d41

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 294
    :cond_8
    invoke-static {}, Lazu;->c()J

    move-result-wide v9

    iget-wide v11, p0, Lajw;->e:J

    cmp-long v3, v9, v11

    if-gtz v3, :cond_9

    .line 295
    const v0, 0x30d42

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 301
    :cond_9
    :try_start_6
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    move v0, v1

    .line 311
    :cond_a
    :goto_4
    iget-boolean v1, p0, Lajw;->b:Z

    if-nez v1, :cond_d

    .line 314
    :try_start_7
    invoke-virtual {v3, v8}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    move-result v1

    .line 325
    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    .line 326
    const v4, 0x186a1

    .line 345
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "this time have download size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lajw;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/powermanager/download/DownloadFileService;->c(Ljava/lang/String;)V

    .line 347
    if-eqz v3, :cond_10

    .line 349
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    move v0, v4

    .line 356
    :goto_6
    if-eqz v7, :cond_b

    .line 358
    :try_start_9
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    .line 366
    :cond_b
    :goto_7
    iget-boolean v1, p0, Lajw;->b:Z

    if-eqz v1, :cond_e

    .line 367
    const v0, 0x186a2

    .line 368
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 302
    :catch_5
    move-exception v0

    .line 303
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 304
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "catch exception when get input stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/powermanager/download/DownloadFileService;->c(Ljava/lang/String;)V

    .line 306
    const v0, 0x30d49

    .line 307
    add-int/lit8 v1, v1, 0x1

    move v4, v0

    .line 308
    goto/16 :goto_2

    .line 315
    :catch_6
    move-exception v1

    .line 316
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "catch exception when reading input stream: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dianxinos/powermanager/download/DownloadFileService;->c(Ljava/lang/String;)V

    .line 319
    const v1, 0x30d4a

    .line 321
    add-int/lit8 v0, v0, 0x1

    move-object v2, v3

    move v4, v1

    move v1, v0

    .line 322
    goto/16 :goto_2

    .line 330
    :cond_c
    if-lez v1, :cond_a

    .line 332
    const/4 v0, 0x0

    :try_start_a
    invoke-virtual {v7, v8, v0, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 333
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V

    .line 334
    const/4 v0, 0x0

    .line 335
    iget-wide v9, p0, Lajw;->f:J

    int-to-long v11, v1

    add-long/2addr v9, v11

    iput-wide v9, p0, Lajw;->f:J

    .line 336
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v9, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v9

    invoke-virtual {p0, v2}, Lajw;->publishProgress([Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto/16 :goto_4

    .line 337
    :catch_7
    move-exception v0

    .line 338
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 339
    const v4, 0x30d4b

    .line 340
    goto/16 :goto_5

    :cond_d
    move-object v2, v3

    move v1, v0

    .line 344
    goto/16 :goto_2

    .line 350
    :catch_8
    move-exception v0

    .line 351
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 352
    const v4, 0x30d4d

    move v0, v4

    goto/16 :goto_6

    .line 359
    :catch_9
    move-exception v0

    .line 360
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 361
    const v0, 0x30d4c

    goto/16 :goto_7

    .line 371
    :cond_e
    const v1, 0x186a1

    if-ne v0, v1, :cond_f

    .line 372
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lajw;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 374
    :cond_f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 273
    :catch_a
    move-exception v3

    move-object v13, v3

    move-object v3, v0

    move-object v0, v13

    goto/16 :goto_3

    :cond_10
    move v0, v4

    goto/16 :goto_6

    :cond_11
    move-object v3, v2

    goto/16 :goto_5
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 5
    .parameter

    .prologue
    .line 395
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 396
    iget-object v0, p0, Lajw;->a:Lcom/dianxinos/powermanager/download/DownloadFileService;

    invoke-static {v0}, Lcom/dianxinos/powermanager/download/DownloadFileService;->a(Lcom/dianxinos/powermanager/download/DownloadFileService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lajw;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x186a2

    if-ne v0, v1, :cond_1

    .line 398
    iget-object v0, p0, Lajw;->g:Lajy;

    if-eqz v0, :cond_0

    .line 400
    :try_start_0
    iget-object v0, p0, Lajw;->g:Lajy;

    iget-object v1, p0, Lajw;->c:Ljava/lang/String;

    iget-wide v2, p0, Lajw;->f:J

    invoke-interface {v0, v1, v2, v3}, Lajy;->b(Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 401
    :catch_0
    move-exception v0

    .line 403
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 406
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x186a1

    if-ne v0, v1, :cond_2

    .line 407
    iget-object v0, p0, Lajw;->g:Lajy;

    if-eqz v0, :cond_0

    .line 409
    :try_start_1
    iget-object v0, p0, Lajw;->g:Lajy;

    iget-object v1, p0, Lajw;->c:Ljava/lang/String;

    iget-wide v2, p0, Lajw;->f:J

    invoke-interface {v0, v1, v2, v3}, Lajy;->a(Ljava/lang/String;J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 410
    :catch_1
    move-exception v0

    .line 412
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 416
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "download file failed, error code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/powermanager/download/DownloadFileService;->c(Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lajw;->g:Lajy;

    if-eqz v0, :cond_0

    .line 419
    :try_start_2
    iget-object v0, p0, Lajw;->g:Lajy;

    iget-object v1, p0, Lajw;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-wide v3, p0, Lajw;->f:J

    invoke-interface {v0, v1, v2, v3, v4}, Lajy;->a(Ljava/lang/String;IJ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 420
    :catch_2
    move-exception v0

    .line 422
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 429
    iput-boolean p1, p0, Lajw;->b:Z

    .line 430
    return-void
.end method

.method protected varargs a([Ljava/lang/Integer;)V
    .locals 7
    .parameter

    .prologue
    .line 379
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 381
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 382
    iget-object v0, p0, Lajw;->g:Lajy;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lajw;->b:Z

    if-nez v0, :cond_0

    .line 384
    :try_start_0
    iget-object v0, p0, Lajw;->g:Lajy;

    iget-object v1, p0, Lajw;->c:Ljava/lang/String;

    iget-wide v3, p0, Lajw;->f:J

    iget-wide v5, p0, Lajw;->e:J

    invoke-interface/range {v0 .. v6}, Lajy;->a(Ljava/lang/String;IJJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 386
    :catch_0
    move-exception v0

    .line 388
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lajw;->a([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lajw;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 157
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 158
    iget-object v0, p0, Lajw;->g:Lajy;

    if-eqz v0, :cond_0

    .line 160
    :try_start_0
    iget-object v0, p0, Lajw;->g:Lajy;

    iget-object v1, p0, Lajw;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lajy;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 163
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lajw;->a([Ljava/lang/Integer;)V

    return-void
.end method
