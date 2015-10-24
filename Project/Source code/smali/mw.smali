.class public Lmw;
.super Landroid/os/AsyncTask;
.source "SplashDownloadFileService.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/common/dxsplash/SplashDownloadFileService;

.field private volatile b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J

.field private volatile f:J

.field private g:Lmm;


# direct methods
.method public constructor <init>(Lcom/dianxinos/common/dxsplash/SplashDownloadFileService;Lmm;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lmw;->a:Lcom/dianxinos/common/dxsplash/SplashDownloadFileService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 133
    iput-object p2, p0, Lmw;->g:Lmm;

    .line 134
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 13
    .parameter

    .prologue
    .line 138
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lmw;->c:Ljava/lang/String;

    .line 139
    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lmw;->d:Ljava/lang/String;

    .line 140
    const/4 v0, 0x2

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lmw;->e:J

    .line 141
    const/4 v0, 0x3

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lmw;->f:J

    .line 144
    iget-object v0, p0, Lmw;->a:Lcom/dianxinos/common/dxsplash/SplashDownloadFileService;

    invoke-virtual {v0}, Lcom/dianxinos/common/dxsplash/SplashDownloadFileService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnd;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    const v0, 0x30d43

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 327
    :goto_0
    return-object v0

    .line 151
    :cond_0
    :try_start_0
    new-instance v5, Ljava/net/URL;

    iget-object v0, p0, Lmw;->c:Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    new-instance v6, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmw;->d:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 162
    const-wide/16 v0, 0x0

    :try_start_1
    iput-wide v0, p0, Lmw;->f:J

    .line 163
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 187
    :cond_1
    :goto_1
    const-string v0, "DownloadFileService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "last time have download: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lmw;->f:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :try_start_2
    new-instance v7, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v7, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    .line 198
    const/4 v2, 0x0

    .line 199
    const/4 v1, -0x1

    .line 201
    const v0, 0x8000

    new-array v8, v0, [B

    .line 202
    const/4 v0, 0x0

    move v3, v1

    move-object v1, v0

    move v0, v2

    .line 205
    :goto_2
    iget-boolean v2, p0, Lmw;->b:Z

    if-nez v2, :cond_2

    const/16 v2, 0xa

    if-lt v0, v2, :cond_6

    :cond_2
    move-object v2, v1

    .line 298
    :goto_3
    const-string v0, "DownloadFileService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "this time have download size: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lmw;->f:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    if-eqz v2, :cond_f

    .line 302
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    move v0, v3

    .line 309
    :goto_4
    if-eqz v7, :cond_3

    .line 311
    :try_start_4
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    .line 319
    :cond_3
    :goto_5
    iget-boolean v1, p0, Lmw;->b:Z

    if-eqz v1, :cond_d

    .line 320
    const v0, 0x186a2

    .line 321
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 154
    const v0, 0x30d44

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 164
    :catch_1
    move-exception v0

    .line 165
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 166
    const v0, 0x30d45

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 169
    :cond_4
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 173
    iget-wide v2, p0, Lmw;->f:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 174
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmw;->f:J

    .line 175
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 177
    :try_start_5
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    .line 178
    :catch_2
    move-exception v0

    .line 179
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 180
    const v0, 0x30d45

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 183
    :cond_5
    const v0, 0x30d46

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 193
    :catch_3
    move-exception v0

    .line 194
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 195
    const v0, 0x30d47

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 209
    :cond_6
    :try_start_6
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 213
    iget-wide v9, p0, Lmw;->e:J

    const-wide/16 v11, 0x0

    cmp-long v4, v9, v11

    if-gtz v4, :cond_10

    .line 214
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I

    move-result v2

    int-to-long v9, v2

    iput-wide v9, p0, Lmw;->e:J

    .line 215
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    move-object v4, v2

    .line 217
    :goto_6
    const-string v2, "DownloadFileService"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "file\'s total size: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v10, p0, Lmw;->e:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const/16 v2, 0x4e20

    invoke-virtual {v4, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 221
    const/16 v2, 0x4e20

    invoke-virtual {v4, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 224
    const-string v2, "Range"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "bytes="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v10, p0, Lmw;->f:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v2, v9}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 235
    iget-object v2, p0, Lmw;->d:Ljava/lang/String;

    const-string v9, "/data"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 237
    invoke-static {}, Lnd;->a()J

    move-result-wide v9

    iget-wide v11, p0, Lmw;->e:J

    cmp-long v2, v9, v11

    if-gtz v2, :cond_9

    .line 238
    const v0, 0x30d42

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 226
    :catch_4
    move-exception v2

    .line 227
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 228
    const-string v3, "DownloadFileService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "catch exception when connect network: "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 228
    invoke-static {v3, v2}, Lms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const v2, 0x30d48

    .line 231
    add-int/lit8 v0, v0, 0x1

    move v3, v2

    .line 232
    goto/16 :goto_2

    .line 242
    :cond_7
    invoke-static {}, Lnd;->c()Z

    move-result v2

    if-nez v2, :cond_8

    .line 243
    const v0, 0x30d41

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 247
    :cond_8
    invoke-static {}, Lnd;->b()J

    move-result-wide v9

    iget-wide v11, p0, Lmw;->e:J

    cmp-long v2, v9, v11

    if-gtz v2, :cond_9

    .line 248
    const v0, 0x30d42

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 254
    :cond_9
    :try_start_7
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 264
    :cond_a
    :goto_7
    iget-boolean v1, p0, Lmw;->b:Z

    if-eqz v1, :cond_b

    move-object v1, v2

    goto/16 :goto_2

    .line 255
    :catch_5
    move-exception v2

    .line 256
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 257
    const-string v3, "DownloadFileService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "catch exception when get input stream: "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 257
    invoke-static {v3, v2}, Lms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const v2, 0x30d49

    .line 260
    add-int/lit8 v0, v0, 0x1

    move v3, v2

    .line 261
    goto/16 :goto_2

    .line 267
    :cond_b
    :try_start_8
    invoke-virtual {v2, v8}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    move-result v1

    .line 278
    const/4 v4, -0x1

    if-ne v1, v4, :cond_c

    .line 279
    const v3, 0x186a1

    .line 280
    goto/16 :goto_3

    .line 268
    :catch_6
    move-exception v1

    .line 269
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 270
    const-string v3, "DownloadFileService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "catch exception when reading input stream: "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 270
    invoke-static {v3, v1}, Lms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const v1, 0x30d4a

    .line 274
    add-int/lit8 v0, v0, 0x1

    move v3, v1

    move-object v1, v2

    .line 275
    goto/16 :goto_2

    .line 283
    :cond_c
    if-lez v1, :cond_a

    .line 285
    const/4 v0, 0x0

    :try_start_9
    invoke-virtual {v7, v8, v0, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 286
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V

    .line 287
    const/4 v0, 0x0

    .line 288
    iget-wide v9, p0, Lmw;->f:J

    int-to-long v11, v1

    add-long/2addr v9, v11

    iput-wide v9, p0, Lmw;->f:J

    .line 289
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v9, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v9

    invoke-virtual {p0, v4}, Lmw;->publishProgress([Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto/16 :goto_7

    .line 290
    :catch_7
    move-exception v0

    .line 291
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 292
    const v3, 0x30d4b

    .line 293
    goto/16 :goto_3

    .line 303
    :catch_8
    move-exception v0

    .line 304
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 305
    const v3, 0x30d4d

    move v0, v3

    goto/16 :goto_4

    .line 312
    :catch_9
    move-exception v0

    .line 313
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 314
    const v0, 0x30d4c

    goto/16 :goto_5

    .line 324
    :cond_d
    const v1, 0x186a1

    if-ne v0, v1, :cond_e

    .line 325
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lmw;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 327
    :cond_e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    :cond_f
    move v0, v3

    goto/16 :goto_4

    :cond_10
    move-object v4, v2

    goto/16 :goto_6
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 4
    .parameter

    .prologue
    .line 348
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 349
    iget-object v0, p0, Lmw;->a:Lcom/dianxinos/common/dxsplash/SplashDownloadFileService;

    invoke-static {v0}, Lcom/dianxinos/common/dxsplash/SplashDownloadFileService;->a(Lcom/dianxinos/common/dxsplash/SplashDownloadFileService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lmw;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x186a2

    if-ne v0, v1, :cond_1

    .line 351
    iget-object v0, p0, Lmw;->g:Lmm;

    if-eqz v0, :cond_0

    .line 353
    :try_start_0
    iget-object v0, p0, Lmw;->g:Lmm;

    iget-wide v1, p0, Lmw;->f:J

    invoke-interface {v0, v1, v2}, Lmm;->b(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 354
    :catch_0
    move-exception v0

    .line 356
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 359
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x186a1

    if-ne v0, v1, :cond_2

    .line 360
    iget-object v0, p0, Lmw;->g:Lmm;

    if-eqz v0, :cond_0

    .line 362
    :try_start_1
    iget-object v0, p0, Lmw;->g:Lmm;

    iget-wide v1, p0, Lmw;->f:J

    invoke-interface {v0, v1, v2}, Lmm;->a(J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 363
    :catch_1
    move-exception v0

    .line 365
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 369
    :cond_2
    const-string v0, "DownloadFileService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "download file failed, error code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lmw;->g:Lmm;

    if-eqz v0, :cond_0

    .line 372
    :try_start_2
    iget-object v0, p0, Lmw;->g:Lmm;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-wide v2, p0, Lmw;->f:J

    invoke-interface {v0, v1, v2, v3}, Lmm;->a(IJ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 373
    :catch_2
    move-exception v0

    .line 375
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 382
    iput-boolean p1, p0, Lmw;->b:Z

    .line 383
    return-void
.end method

.method protected varargs a([Ljava/lang/Integer;)V
    .locals 7
    .parameter

    .prologue
    .line 332
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 334
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 335
    iget-object v0, p0, Lmw;->g:Lmm;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmw;->b:Z

    if-nez v0, :cond_0

    .line 337
    :try_start_0
    iget-object v0, p0, Lmw;->g:Lmm;

    iget-object v1, p0, Lmw;->c:Ljava/lang/String;

    iget-wide v3, p0, Lmw;->f:J

    .line 338
    iget-wide v5, p0, Lmw;->e:J

    .line 337
    invoke-interface/range {v0 .. v6}, Lmm;->a(Ljava/lang/String;IJJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 339
    :catch_0
    move-exception v0

    .line 341
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lmw;->a([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lmw;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lmw;->a([Ljava/lang/Integer;)V

    return-void
.end method
