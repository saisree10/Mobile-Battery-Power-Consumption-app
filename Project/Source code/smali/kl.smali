.class public Lkl;
.super Ljava/lang/Object;
.source "CMSFrontRestService.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:I

.field public static c:Ljava/lang/String;

.field private static final d:Ljava/security/PublicKey;

.field private static final e:Lorg/apache/http/Header;

.field private static final f:Lorg/apache/http/Header;

.field private static g:Lkl;


# instance fields
.field private h:Lkw;

.field private i:Ljava/lang/String;

.field private j:Landroid/content/Context;

.field private k:Ljava/lang/String;

.field private l:Lkt;

.field private m:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 144
    const-string v0, "91984037215497453715695537150101136180891052789697033543194092619618648264321686995125910645918307527361902207937849374278999247610081485346792920961341041235187112556183400885916498929543480156108595411929206248207390582439108464025592253754008974647620342386179132598251271296121068499378920392705867355039"

    const-string v1, "65537"

    invoke-static {v0, v1}, Llw;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    sput-object v0, Lkl;->d:Ljava/security/PublicKey;

    .line 157
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "Content-Encoding"

    const-string v2, "gzip"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lkl;->e:Lorg/apache/http/Header;

    .line 158
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lkl;->f:Lorg/apache/http/Header;

    .line 164
    const-string v0, "10.18.102.104"

    sput-object v0, Lkl;->a:Ljava/lang/String;

    .line 168
    const/16 v0, 0xe8c

    sput v0, Lkl;->b:I

    .line 172
    const-string v0, "cms/overseas"

    sput-object v0, Lkl;->c:Ljava/lang/String;

    .line 174
    const/4 v0, 0x0

    sput-object v0, Lkl;->g:Lkl;

    .line 80
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 270
    invoke-static {p1}, Lkx;->a(Landroid/content/Context;)Lkx;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lkl;-><init>(Lkw;Landroid/content/Context;)V

    .line 271
    return-void
.end method

.method private constructor <init>(Lkw;Landroid/content/Context;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    const-string v0, "862fe64a3f627a61727cd443ca79f1bf"

    iput-object v0, p0, Lkl;->i:Ljava/lang/String;

    .line 186
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lkl;->m:J

    .line 274
    iput-object p1, p0, Lkl;->h:Lkw;

    .line 275
    iput-object p2, p0, Lkl;->j:Landroid/content/Context;

    .line 276
    invoke-static {p2}, Lgt;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkl;->k:Ljava/lang/String;

    .line 277
    new-instance v0, Lkt;

    const/4 v1, 0x2

    const/4 v2, 0x4

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 278
    new-instance v6, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v7, 0x64

    invoke-direct {v6, v7}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(I)V

    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v7}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    invoke-direct/range {v0 .. v7}, Lkt;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/PriorityBlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 277
    iput-object v0, p0, Lkl;->l:Lkt;

    .line 279
    invoke-static {}, Llu;->a()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    invoke-static {p2}, Llu;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Llu;->a(Lorg/apache/http/impl/client/DefaultHttpClient;Ljava/util/Map;)V

    .line 280
    return-void
.end method

.method private a(Ljava/net/URI;Ljava/util/List;Lkz;Lkp;I)I
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0xc8

    .line 492
    const/4 v0, 0x2

    if-le p5, v0, :cond_0

    .line 493
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Too much recursion:2"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 495
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lkl;->a(Ljava/net/URI;Ljava/util/List;Z)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 497
    :try_start_0
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 498
    if-eq v0, v4, :cond_2

    const/16 v2, 0x130

    if-eq v0, v2, :cond_2

    .line 499
    const-string v2, "NETWORK_FAIL"

    invoke-interface {p3, v0, v2}, Lkz;->a(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lkl;->a(Lorg/apache/http/HttpResponse;)V

    .line 516
    :goto_1
    return v0

    .line 500
    :cond_2
    if-ne v0, v4, :cond_1

    .line 501
    :try_start_1
    invoke-static {v1}, Lkl;->c(Lorg/apache/http/HttpResponse;)Lorg/json/JSONObject;

    move-result-object v2

    .line 502
    const-string v0, "responseHeader"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 503
    iput-object v3, p4, Lkp;->b:Lorg/json/JSONObject;

    .line 504
    const-string v0, "status"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 505
    if-ne v0, v4, :cond_3

    .line 506
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, p4, Lkp;->a:Lorg/json/JSONObject;

    .line 507
    invoke-static {v1}, Lkl;->b(Lorg/apache/http/HttpResponse;)J

    move-result-wide v2

    iput-wide v2, p4, Lkp;->c:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 517
    :catchall_0
    move-exception v0

    .line 518
    invoke-direct {p0, v1}, Lkl;->a(Lorg/apache/http/HttpResponse;)V

    .line 519
    throw v0

    .line 508
    :cond_3
    const/16 v2, 0x193

    if-ne v0, v2, :cond_4

    .line 510
    :try_start_2
    invoke-direct {p0}, Lkl;->a()V

    .line 511
    add-int/lit8 v0, p5, 0x1

    invoke-direct/range {p0 .. p5}, Lkl;->a(Ljava/net/URI;Ljava/util/List;Lkz;Lkp;I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .line 518
    invoke-direct {p0, v1}, Lkl;->a(Lorg/apache/http/HttpResponse;)V

    goto :goto_1

    .line 513
    :cond_4
    :try_start_3
    const-string v2, "msg"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v0, v2}, Lkz;->a(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method static synthetic a(Lkl;Ljava/net/URI;Ljava/util/List;Lkz;Lkp;I)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 491
    invoke-direct/range {p0 .. p5}, Lkl;->a(Ljava/net/URI;Ljava/util/List;Lkz;Lkp;I)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lkl;
    .locals 2
    .parameter

    .prologue
    .line 263
    const-class v1, Lkl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lkl;->g:Lkl;

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Lkl;

    invoke-direct {v0, p0}, Lkl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lkl;->g:Lkl;

    .line 266
    :cond_0
    sget-object v0, Lkl;->g:Lkl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lkl;)Lkw;
    .locals 1
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lkl;->h:Lkw;

    return-object v0
.end method

.method static synthetic a(J)Lorg/apache/http/Header;
    .locals 1
    .parameter

    .prologue
    .line 1174
    invoke-static {p0, p1}, Lkl;->b(J)Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/net/URI;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1201
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1202
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    .line 1203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&sid="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lkl;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&cv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "1.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&cflv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lks;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1205
    :cond_0
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 1206
    if-eqz p3, :cond_1

    .line 1207
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1211
    :cond_1
    sget-object v0, Lkl;->e:Lorg/apache/http/Header;

    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Lorg/apache/http/Header;)V

    .line 1212
    sget-object v0, Lkl;->f:Lorg/apache/http/Header;

    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Lorg/apache/http/Header;)V

    .line 1213
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-static {p2}, Llx;->c(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1214
    const-string v0, "CMSFrontRestService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request uri:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",body:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",headers:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lla;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v2, "http.socket.timeout"

    const/16 v3, 0x4e20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1216
    invoke-static {}, Llu;->a()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    .line 1218
    :try_start_0
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1207
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    .line 1208
    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_0

    .line 1219
    :catch_0
    move-exception v0

    .line 1220
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 1221
    throw v0
.end method

.method private a(Ljava/net/URI;Ljava/util/List;Z)Lorg/apache/http/HttpResponse;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1226
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1227
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    .line 1228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&sid="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lkl;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&cv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "1.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&cflv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lks;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1231
    :cond_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1232
    if-eqz p2, :cond_1

    .line 1233
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1237
    :cond_1
    if-eqz p3, :cond_2

    .line 1238
    sget-object v0, Lkl;->f:Lorg/apache/http/Header;

    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Lorg/apache/http/Header;)V

    .line 1240
    :cond_2
    const-string v0, "CMSFrontRestService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request uri: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    invoke-static {v0, v2}, Lla;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v2, "http.socket.timeout"

    const/16 v3, 0x4e20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1242
    invoke-static {}, Llu;->a()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    .line 1244
    :try_start_0
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1233
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    .line 1234
    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_0

    .line 1245
    :catch_0
    move-exception v0

    .line 1246
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 1247
    throw v0
.end method

.method private declared-synchronized a()V
    .locals 7

    .prologue
    const/16 v6, 0xc8

    .line 1117
    monitor-enter p0

    :try_start_0
    const-string v0, "http"

    sget-object v1, Lkl;->a:Ljava/lang/String;

    sget v2, Lkl;->b:I

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lkl;->c:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/rs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1118
    iget-object v4, p0, Lkl;->k:Ljava/lang/String;

    const/4 v5, 0x0

    .line 1117
    invoke-static/range {v0 .. v5}, Lorg/apache/http/client/utils/URIUtils;->createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 1120
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1122
    :try_start_1
    const-string v0, "ms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1123
    const-string v0, "tk"

    iget-object v3, p0, Lkl;->j:Landroid/content/Context;

    invoke-static {v3}, Lgx;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1127
    :goto_0
    :try_start_2
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lkl;->d:Ljava/security/PublicKey;

    invoke-static {v2, v3}, Llw;->a(Ljava/lang/String;Ljava/security/Key;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Llq;->c([BI)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 1128
    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lkl;->a(Ljava/net/URI;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 1130
    :try_start_3
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 1131
    if-ne v0, v6, :cond_1

    .line 1132
    invoke-static {v1}, Lkl;->c(Lorg/apache/http/HttpResponse;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1133
    const-string v2, "responseHeader"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1134
    const-string v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1135
    if-ne v3, v6, :cond_0

    .line 1136
    const-string v2, "response"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "session"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1137
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Llq;->a(Ljava/lang/String;I)[B

    move-result-object v0

    sget-object v3, Lkl;->d:Ljava/security/PublicKey;

    invoke-static {v0, v3}, Llw;->a([BLjava/security/Key;)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 1138
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "sid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkl;->i:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1146
    :try_start_4
    invoke-direct {p0, v1}, Lkl;->a(Lorg/apache/http/HttpResponse;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1148
    monitor-exit p0

    return-void

    .line 1124
    :catch_0
    move-exception v0

    .line 1125
    :try_start_5
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 1117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1140
    :cond_0
    :try_start_6
    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "failed to get sid,status:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "msg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1145
    :catchall_1
    move-exception v0

    .line 1146
    :try_start_7
    invoke-direct {p0, v1}, Lkl;->a(Lorg/apache/http/HttpResponse;)V

    .line 1147
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1143
    :cond_1
    :try_start_8
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failed to get sid,status:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 194
    const-string v0, "dev"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    const-string v0, "10.18.102.104"

    sput-object v0, Lkl;->a:Ljava/lang/String;

    .line 196
    const/16 v0, 0xe8c

    sput v0, Lkl;->b:I

    .line 197
    const-string v0, "cms/overseas"

    sput-object v0, Lkl;->c:Ljava/lang/String;

    .line 198
    sput v1, Lla;->a:I

    .line 212
    :goto_0
    return-void

    .line 199
    :cond_0
    const-string v0, "test"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    const-string v0, "t1.tira.cn"

    sput-object v0, Lkl;->a:Ljava/lang/String;

    .line 201
    const/16 v0, 0x1fbd

    sput v0, Lkl;->b:I

    .line 202
    const-string v0, "overseas"

    sput-object v0, Lkl;->c:Ljava/lang/String;

    .line 203
    sput v1, Lla;->a:I

    goto :goto_0

    .line 204
    :cond_1
    const-string v0, "prod"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    const-string v0, "overseas.jccjd.com"

    sput-object v0, Lkl;->a:Ljava/lang/String;

    .line 206
    const/16 v0, 0x50

    sput v0, Lkl;->b:I

    .line 207
    const-string v0, "cf/"

    sput-object v0, Lkl;->c:Ljava/lang/String;

    .line 208
    const/4 v0, 0x5

    sput v0, Lla;->a:I

    goto :goto_0

    .line 210
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bad env:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Lorg/apache/http/HttpResponse;)V
    .locals 3
    .parameter

    .prologue
    .line 523
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 528
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 529
    :catch_0
    move-exception v0

    .line 530
    const-string v1, "CMSFrontRestService"

    const-string v2, "failed to cosume entity"

    invoke-static {v1, v2, v0}, Lla;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b(Ljava/net/URI;Ljava/util/List;Lkz;Lkp;I)I
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0xc8

    .line 614
    const/4 v0, 0x2

    if-le p5, v0, :cond_0

    .line 615
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Too much recursion:2"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 617
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lkl;->a(Ljava/net/URI;Ljava/util/List;Z)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 619
    :try_start_0
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 620
    if-eq v0, v4, :cond_2

    const/16 v2, 0x130

    if-eq v0, v2, :cond_2

    .line 621
    const-string v2, "NETWORK_FAIL"

    invoke-interface {p3, v0, v2}, Lkz;->a(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 640
    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lkl;->a(Lorg/apache/http/HttpResponse;)V

    .line 638
    :goto_1
    return v0

    .line 622
    :cond_2
    if-ne v0, v4, :cond_1

    .line 623
    :try_start_1
    invoke-static {v1}, Lkl;->c(Lorg/apache/http/HttpResponse;)Lorg/json/JSONObject;

    move-result-object v2

    .line 624
    const-string v0, "responseHeader"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 625
    iput-object v3, p4, Lkp;->b:Lorg/json/JSONObject;

    .line 626
    const-string v0, "status"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 627
    if-ne v0, v4, :cond_3

    .line 628
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, p4, Lkp;->a:Lorg/json/JSONObject;

    .line 629
    invoke-static {v1}, Lkl;->b(Lorg/apache/http/HttpResponse;)J

    move-result-wide v2

    iput-wide v2, p4, Lkp;->c:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 639
    :catchall_0
    move-exception v0

    .line 640
    invoke-direct {p0, v1}, Lkl;->a(Lorg/apache/http/HttpResponse;)V

    .line 641
    throw v0

    .line 630
    :cond_3
    const/16 v2, 0x193

    if-ne v0, v2, :cond_4

    .line 632
    :try_start_2
    invoke-direct {p0}, Lkl;->a()V

    .line 633
    add-int/lit8 v0, p5, 0x1

    invoke-direct/range {p0 .. p5}, Lkl;->b(Ljava/net/URI;Ljava/util/List;Lkz;Lkp;I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .line 640
    invoke-direct {p0, v1}, Lkl;->a(Lorg/apache/http/HttpResponse;)V

    goto :goto_1

    .line 635
    :cond_4
    :try_start_3
    const-string v2, "msg"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v0, v2}, Lkz;->a(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method static synthetic b(Lkl;Ljava/net/URI;Ljava/util/List;Lkz;Lkp;I)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 613
    invoke-direct/range {p0 .. p5}, Lkl;->b(Ljava/net/URI;Ljava/util/List;Lkz;Lkp;I)I

    move-result v0

    return v0
.end method

.method private static b(Lorg/apache/http/HttpResponse;)J
    .locals 2
    .parameter

    .prologue
    .line 1166
    const-string v0, "Last-Modified"

    invoke-interface {p0, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 1167
    if-eqz v0, :cond_0

    .line 1168
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1169
    invoke-static {v0}, Llx;->b(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 1171
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lkl;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lkl;->k:Ljava/lang/String;

    return-object v0
.end method

.method private static b(J)Lorg/apache/http/Header;
    .locals 3
    .parameter

    .prologue
    .line 1175
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "If-Modified-Since"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2}, Llx;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private c(Ljava/net/URI;Ljava/util/List;Lkz;Lkp;I)I
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0xc8

    .line 782
    const/4 v0, 0x2

    if-le p5, v0, :cond_0

    .line 783
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Too much recursion:2"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 785
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lkl;->a(Ljava/net/URI;Ljava/util/List;Z)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 787
    :try_start_0
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 788
    if-eq v0, v4, :cond_2

    const/16 v2, 0x130

    if-eq v0, v2, :cond_2

    .line 789
    const-string v2, "NETWORK_FAIL"

    invoke-interface {p3, v0, v2}, Lkz;->a(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 808
    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lkl;->a(Lorg/apache/http/HttpResponse;)V

    .line 806
    :goto_1
    return v0

    .line 790
    :cond_2
    if-ne v0, v4, :cond_1

    .line 791
    :try_start_1
    invoke-static {v1}, Lkl;->c(Lorg/apache/http/HttpResponse;)Lorg/json/JSONObject;

    move-result-object v2

    .line 792
    const-string v0, "responseHeader"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 793
    iput-object v3, p4, Lkp;->b:Lorg/json/JSONObject;

    .line 794
    const-string v0, "status"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 795
    if-ne v0, v4, :cond_3

    .line 796
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, p4, Lkp;->a:Lorg/json/JSONObject;

    .line 797
    invoke-static {v1}, Lkl;->b(Lorg/apache/http/HttpResponse;)J

    move-result-wide v2

    iput-wide v2, p4, Lkp;->c:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 807
    :catchall_0
    move-exception v0

    .line 808
    invoke-direct {p0, v1}, Lkl;->a(Lorg/apache/http/HttpResponse;)V

    .line 809
    throw v0

    .line 798
    :cond_3
    const/16 v2, 0x193

    if-ne v0, v2, :cond_4

    .line 800
    :try_start_2
    invoke-direct {p0}, Lkl;->a()V

    .line 801
    add-int/lit8 v0, p5, 0x1

    invoke-direct/range {p0 .. p5}, Lkl;->c(Ljava/net/URI;Ljava/util/List;Lkz;Lkp;I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .line 808
    invoke-direct {p0, v1}, Lkl;->a(Lorg/apache/http/HttpResponse;)V

    goto :goto_1

    .line 803
    :cond_4
    :try_start_3
    const-string v2, "msg"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v0, v2}, Lkz;->a(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method static synthetic c(Lkl;Ljava/net/URI;Ljava/util/List;Lkz;Lkp;I)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 781
    invoke-direct/range {p0 .. p5}, Lkl;->c(Ljava/net/URI;Ljava/util/List;Lkz;Lkp;I)I

    move-result v0

    return v0
.end method

.method private static c(Lorg/apache/http/HttpResponse;)Lorg/json/JSONObject;
    .locals 7
    .parameter

    .prologue
    const/16 v1, 0x400

    const/4 v6, -0x1

    .line 1179
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 1180
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 1181
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    long-to-int v0, v4

    .line 1182
    if-gez v0, :cond_0

    move v0, v1

    .line 1185
    :cond_0
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v2

    .line 1186
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v4, "gzip"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v6, :cond_2

    .line 1187
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1189
    :goto_0
    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1190
    new-instance v2, Lorg/apache/http/util/CharArrayBuffer;

    invoke-direct {v2, v0}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 1191
    new-array v0, v1, [C

    .line 1193
    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 1196
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1194
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v1}, Lorg/apache/http/util/CharArrayBuffer;->append([CII)V

    goto :goto_1

    :cond_2
    move-object v2, v3

    goto :goto_0
.end method


# virtual methods
.method public a(JJJIILkr;Lkz;)V
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 655
    iget-object v13, p0, Lkl;->l:Lkt;

    new-instance v1, Lko;

    move-object v2, p0

    move-wide v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-direct/range {v1 .. v12}, Lko;-><init>(Lkl;JJJIILkr;Lkz;)V

    invoke-virtual {v13, v1}, Lkt;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    move-object/from16 v0, p10

    invoke-interface {v0, v1}, Lkz;->a(Ljava/util/concurrent/Future;)V

    .line 711
    return-void
.end method

.method public a(JJ[JILkz;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 554
    iget-object v10, p0, Lkl;->l:Lkt;

    new-instance v1, Lkn;

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move/from16 v7, p6

    move-object/from16 v8, p5

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lkn;-><init>(Lkl;JJI[JLkz;)V

    invoke-virtual {v10, v1}, Lkt;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-interface {v0, v1}, Lkz;->a(Ljava/util/concurrent/Future;)V

    .line 611
    return-void
.end method

.method public a(JJ[JLkz;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 541
    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lkl;->a(JJ[JILkz;)V

    .line 542
    return-void
.end method

.method public a(Ljava/lang/String;Lkz;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 440
    iget-object v0, p0, Lkl;->l:Lkt;

    new-instance v1, Lkm;

    invoke-direct {v1, p0, p1, p2}, Lkm;-><init>(Lkl;Ljava/lang/String;Lkz;)V

    invoke-virtual {v0, v1}, Lkt;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {p2, v0}, Lkz;->a(Ljava/util/concurrent/Future;)V

    .line 489
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lkl;->k:Ljava/lang/String;

    .line 289
    return-void
.end method
