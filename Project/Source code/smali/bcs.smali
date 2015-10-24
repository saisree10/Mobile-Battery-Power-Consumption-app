.class public abstract Lbcs;
.super Ljava/lang/Object;
.source "AbstractHttpClient.java"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Lbdf;

.field protected final c:Lbde;

.field protected d:I

.field protected e:I

.field private f:Ljava/util/Map;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 27
    invoke-static {}, Lbcs;->b()V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lbde;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lbcs;->a:Ljava/lang/String;

    .line 35
    new-instance v0, Lbcx;

    invoke-direct {v0}, Lbcx;-><init>()V

    iput-object v0, p0, Lbcs;->b:Lbdf;

    .line 37
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lbcs;->f:Ljava/util/Map;

    .line 42
    const/16 v0, 0x7d0

    iput v0, p0, Lbcs;->d:I

    .line 46
    const/16 v0, 0x1f40

    iput v0, p0, Lbcs;->e:I

    .line 81
    iput-object p1, p0, Lbcs;->a:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lbcs;->c:Lbde;

    .line 83
    return-void
.end method

.method protected static b()V
    .locals 1

    .prologue
    .line 436
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 437
    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 439
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Ljava/net/HttpURLConnection;[B)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 301
    const/4 v1, 0x0

    .line 303
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 304
    if-eqz v1, :cond_0

    .line 305
    iget-object v0, p0, Lbcs;->c:Lbde;

    invoke-interface {v0, v1, p2}, Lbde;->a(Ljava/io/OutputStream;[B)V

    .line 307
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 310
    if-eqz v1, :cond_1

    .line 312
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 307
    :cond_1
    :goto_0
    return v0

    .line 310
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 312
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 310
    :cond_2
    :goto_1
    throw v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lbcs;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 398
    iget-object v0, p0, Lbcs;->f:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    return-object p0
.end method

.method public a(Lbda;)Lbdc;
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 174
    .line 176
    :try_start_0
    invoke-virtual {p1}, Lbda;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lbda;->b()Lbcz;

    move-result-object v2

    invoke-virtual {p1}, Lbda;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lbda;->d()[B

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lbcs;->a(Ljava/lang/String;Lbcz;Ljava/lang/String;[B)Lbdc;
    :try_end_0
    .catch Lbdb; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 185
    :goto_0
    return-object v0

    .line 179
    :catch_0
    move-exception v1

    .line 180
    iget-object v2, p0, Lbcs;->c:Lbde;

    invoke-interface {v2, v1}, Lbde;->a(Lbdb;)Z

    goto :goto_0

    .line 181
    :catch_1
    move-exception v1

    .line 183
    iget-object v2, p0, Lbcs;->c:Lbde;

    new-instance v3, Lbdb;

    invoke-direct {v3, v1, v0}, Lbdb;-><init>(Ljava/lang/Exception;Lbdc;)V

    invoke-interface {v2, v3}, Lbde;->a(Lbdb;)Z

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Lbcz;Ljava/lang/String;[B)Lbdc;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 204
    .line 205
    const/4 v4, 0x0

    .line 208
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lbcs;->g:Z

    .line 209
    invoke-virtual {p0, p1}, Lbcs;->a(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 210
    :try_start_1
    invoke-virtual {p0, v3, p2, p3}, Lbcs;->a(Ljava/net/HttpURLConnection;Lbcz;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lbcs;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lbcs;->f:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 230
    :goto_1
    :try_start_2
    invoke-virtual {p0, v3}, Lbcs;->b(Ljava/net/HttpURLConnection;)Lbdc;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 236
    if-eqz v0, :cond_e

    :try_start_3
    invoke-virtual {v0}, Lbdc;->a()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v2

    if-lez v2, :cond_e

    .line 241
    iget-object v1, p0, Lbcs;->b:Lbdf;

    invoke-interface {v1}, Lbdf;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    iget-object v1, p0, Lbcs;->b:Lbdf;

    invoke-interface {v1, v0}, Lbdf;->a(Lbdc;)V

    .line 245
    :cond_0
    if-eqz v3, :cond_1

    .line 246
    :goto_2
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 249
    :cond_1
    :goto_3
    return-object v0

    .line 212
    :cond_2
    :try_start_4
    iget-object v0, p0, Lbcs;->b:Lbdf;

    invoke-interface {v0}, Lbdf;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 213
    iget-object v0, p0, Lbcs;->b:Lbdf;

    invoke-interface {v0, v3, p4}, Lbdf;->a(Ljava/net/HttpURLConnection;Ljava/lang/Object;)V

    .line 217
    :cond_3
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbcs;->g:Z

    .line 219
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p4, :cond_4

    .line 220
    invoke-virtual {p0, v3, p4}, Lbcs;->a(Ljava/net/HttpURLConnection;[B)I

    .line 222
    :cond_4
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getDoInput()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 223
    invoke-virtual {p0, v3}, Lbcs;->a(Ljava/net/HttpURLConnection;)Lbdc;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v0

    .line 241
    :goto_4
    iget-object v1, p0, Lbcs;->b:Lbdf;

    invoke-interface {v1}, Lbdf;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 243
    iget-object v1, p0, Lbcs;->b:Lbdf;

    invoke-interface {v1, v0}, Lbdf;->a(Lbdc;)V

    .line 245
    :cond_5
    if-eqz v3, :cond_1

    goto :goto_2

    .line 225
    :cond_6
    :try_start_5
    new-instance v0, Lbdc;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v1}, Lbdc;-><init>(Ljava/net/HttpURLConnection;[B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4

    .line 241
    :catchall_0
    move-exception v0

    :goto_5
    iget-object v1, p0, Lbcs;->b:Lbdf;

    invoke-interface {v1}, Lbdf;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 243
    iget-object v1, p0, Lbcs;->b:Lbdf;

    invoke-interface {v1, v2}, Lbdf;->a(Lbdc;)V

    .line 245
    :cond_7
    if-eqz v3, :cond_8

    .line 246
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 241
    :cond_8
    throw v0

    .line 232
    :catch_1
    move-exception v0

    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 236
    if-eqz v2, :cond_d

    :try_start_7
    invoke-virtual {v4}, Lbdc;->a()I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v0

    if-lez v0, :cond_d

    .line 241
    iget-object v0, p0, Lbcs;->b:Lbdf;

    invoke-interface {v0}, Lbdf;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 243
    iget-object v0, p0, Lbcs;->b:Lbdf;

    invoke-interface {v0, v2}, Lbdf;->a(Lbdc;)V

    .line 245
    :cond_9
    if-eqz v3, :cond_a

    .line 246
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    :goto_6
    move-object v0, v2

    .line 237
    goto :goto_3

    :catchall_1
    move-exception v0

    .line 236
    if-eqz v2, :cond_c

    :try_start_8
    invoke-virtual {v4}, Lbdc;->a()I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v0

    if-lez v0, :cond_c

    .line 241
    iget-object v0, p0, Lbcs;->b:Lbdf;

    invoke-interface {v0}, Lbdf;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 243
    iget-object v0, p0, Lbcs;->b:Lbdf;

    invoke-interface {v0, v2}, Lbdf;->a(Lbdc;)V

    .line 245
    :cond_b
    if-eqz v3, :cond_a

    .line 246
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_6

    .line 239
    :cond_c
    :try_start_9
    new-instance v0, Lbdb;

    invoke-direct {v0, v1, v4}, Lbdb;-><init>(Ljava/lang/Exception;Lbdc;)V

    throw v0

    :cond_d
    new-instance v0, Lbdb;

    invoke-direct {v0, v1, v4}, Lbdb;-><init>(Ljava/lang/Exception;Lbdc;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_e
    :try_start_a
    new-instance v2, Lbdb;

    invoke-direct {v2, v1, v0}, Lbdb;-><init>(Ljava/lang/Exception;Lbdc;)V

    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 241
    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_5

    .line 227
    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v3, v2

    goto/16 :goto_1
.end method

.method public a(Ljava/lang/String;Lbdd;)Lbdc;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 106
    new-instance v0, Lbcy;

    invoke-direct {v0, p1, p2}, Lbcy;-><init>(Ljava/lang/String;Lbdd;)V

    invoke-virtual {p0, v0}, Lbcs;->a(Lbda;)Lbdc;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/net/HttpURLConnection;)Lbdc;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 328
    .line 331
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 332
    if-eqz v1, :cond_0

    .line 333
    :try_start_1
    iget-object v0, p0, Lbcs;->c:Lbde;

    invoke-interface {v0, v1}, Lbde;->a(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 335
    :cond_0
    new-instance v0, Lbdc;

    invoke-direct {v0, p1, v2}, Lbdc;-><init>(Ljava/net/HttpURLConnection;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 337
    if-eqz v1, :cond_1

    .line 339
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 335
    :cond_1
    :goto_0
    return-object v0

    .line 337
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_2

    .line 339
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 337
    :cond_2
    :goto_2
    throw v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public a()Lbdd;
    .locals 1

    .prologue
    .line 381
    new-instance v0, Lbdd;

    invoke-direct {v0}, Lbdd;-><init>()V

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 4
    .parameter

    .prologue
    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbcs;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 264
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    iget-object v0, p0, Lbcs;->c:Lbde;

    invoke-interface {v0, v1}, Lbde;->a(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is not a valid URL"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 470
    iput p1, p0, Lbcs;->d:I

    .line 471
    return-void
.end method

.method public a(Lbdf;)V
    .locals 0
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lbcs;->b:Lbdf;

    .line 428
    return-void
.end method

.method protected a(Ljava/net/HttpURLConnection;Lbcz;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 273
    iget v0, p0, Lbcs;->d:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 274
    iget v0, p0, Lbcs;->e:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 275
    iget-object v0, p0, Lbcs;->c:Lbde;

    invoke-interface {v0, p1, p2, p3}, Lbde;->a(Ljava/net/HttpURLConnection;Lbcz;Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method protected b(Ljava/net/HttpURLConnection;)Lbdc;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 356
    .line 359
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 360
    if-eqz v1, :cond_0

    .line 361
    :try_start_1
    iget-object v0, p0, Lbcs;->c:Lbde;

    invoke-interface {v0, v1}, Lbde;->a(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 363
    :cond_0
    new-instance v0, Lbdc;

    invoke-direct {v0, p1, v2}, Lbdc;-><init>(Ljava/net/HttpURLConnection;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 365
    if-eqz v1, :cond_1

    .line 367
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 363
    :cond_1
    :goto_0
    return-object v0

    .line 365
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_2

    .line 367
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 365
    :cond_2
    :goto_2
    throw v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 481
    iput p1, p0, Lbcs;->e:I

    .line 482
    return-void
.end method
