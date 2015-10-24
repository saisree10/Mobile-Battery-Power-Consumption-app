.class public Laub;
.super Ljava/lang/Object;
.source "ChargingTimeHelper.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static s:Laub;


# instance fields
.field private b:J

.field private c:J

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:J

.field private j:Lazr;

.field private k:Landroid/content/Context;

.field private l:Landroid/content/ContentResolver;

.field private m:Latz;

.field private n:I

.field private o:I

.field private p:I

.field private q:J

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, Laub;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/16 v0, 0x64

    iput v0, p0, Laub;->n:I

    .line 65
    iput v2, p0, Laub;->o:I

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Laub;->p:I

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laub;->q:J

    .line 68
    iput-boolean v2, p0, Laub;->r:Z

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Laub;->k:Landroid/content/Context;

    .line 85
    iget-object v0, p0, Laub;->k:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Laub;->l:Landroid/content/ContentResolver;

    .line 86
    iget-object v0, p0, Laub;->k:Landroid/content/Context;

    invoke-static {v0}, Latz;->a(Landroid/content/Context;)Latz;

    move-result-object v0

    iput-object v0, p0, Laub;->m:Latz;

    .line 89
    invoke-direct {p0}, Laub;->c()V

    .line 91
    invoke-static {p1}, Lazr;->a(Landroid/content/Context;)Lazr;

    move-result-object v0

    iput-object v0, p0, Laub;->j:Lazr;

    .line 107
    return-void
.end method

.method public static a(Landroid/content/Context;)Laub;
    .locals 2
    .parameter

    .prologue
    .line 73
    sget-object v0, Laub;->s:Laub;

    if-nez v0, :cond_1

    .line 74
    const-class v1, Laub;

    monitor-enter v1

    .line 75
    :try_start_0
    sget-object v0, Laub;->s:Laub;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Laub;

    invoke-direct {v0, p0}, Laub;-><init>(Landroid/content/Context;)V

    sput-object v0, Laub;->s:Laub;

    .line 78
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_1
    sget-object v0, Laub;->s:Laub;

    return-object v0

    .line 78
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(IJJ)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 171
    iget-object v2, p0, Laub;->l:Landroid/content/ContentResolver;

    const-string v3, "stay_on_while_plugged_in"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    .line 175
    :goto_0
    iget-object v3, p0, Laub;->j:Lazr;

    invoke-virtual {v3, p1, v2}, Lazr;->a(IZ)[J

    move-result-object v5

    .line 176
    aget-wide v3, v5, v1

    add-long/2addr v3, p2

    .line 177
    aget-wide v0, v5, v0

    add-long v5, p4, v0

    .line 178
    iget-object v0, p0, Laub;->j:Lazr;

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Lazr;->a(IZJJ)V

    .line 197
    return-void

    :cond_0
    move v2, v1

    .line 171
    goto :goto_0
.end method

.method private a(IZ)[J
    .locals 7
    .parameter
    .parameter

    .prologue
    const-wide/16 v5, 0x0

    const/4 v1, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 363
    new-array v0, v1, [J

    .line 364
    aput-wide v5, v0, v4

    .line 365
    aput-wide v5, v0, v3

    .line 367
    if-ne p1, v1, :cond_2

    .line 368
    if-eqz p2, :cond_1

    .line 369
    iget-wide v1, p0, Laub;->c:J

    aput-wide v1, v0, v4

    .line 370
    iget-wide v1, p0, Laub;->b:J

    aput-wide v1, v0, v3

    .line 385
    :cond_0
    :goto_0
    return-object v0

    .line 372
    :cond_1
    iget-wide v1, p0, Laub;->e:J

    aput-wide v1, v0, v4

    .line 373
    iget-wide v1, p0, Laub;->d:J

    aput-wide v1, v0, v3

    goto :goto_0

    .line 375
    :cond_2
    if-ne p1, v3, :cond_0

    .line 376
    if-eqz p2, :cond_3

    .line 377
    iget-wide v1, p0, Laub;->g:J

    aput-wide v1, v0, v4

    .line 378
    iget-wide v1, p0, Laub;->f:J

    aput-wide v1, v0, v3

    goto :goto_0

    .line 380
    :cond_3
    iget-wide v1, p0, Laub;->i:J

    aput-wide v1, v0, v4

    .line 381
    iget-wide v1, p0, Laub;->h:J

    aput-wide v1, v0, v3

    goto :goto_0
.end method

.method private c()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 275
    const-string v0, "ChargingTimeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reading values for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laub;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const/4 v0, 0x0

    .line 281
    :try_start_0
    iget-object v2, p0, Laub;->k:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "charging_profile.xml"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 282
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 283
    invoke-virtual {v3, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 288
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    .line 289
    sget-object v0, Laub;->a:Ljava/lang/String;

    invoke-interface {v2, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 291
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-nez v3, :cond_3

    .line 292
    :cond_0
    const-string v0, "default_device"

    invoke-interface {v2, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 293
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-nez v2, :cond_3

    .line 294
    :cond_1
    const-string v0, "ChargingTimeHelper"

    const-string v1, "Implement error! No default values found!"

    invoke-static {v0, v1}, Lazt;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :cond_2
    return-void

    .line 284
    :catch_0
    move-exception v2

    .line 285
    const-string v3, "ChargingTimeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to parse with exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lazt;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 302
    :cond_3
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 303
    const-string v2, "item"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 304
    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 305
    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 306
    const-string v3, "plug"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 307
    const-string v4, "screen"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 308
    const-string v5, "time"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 309
    const-string v6, "count"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    :try_start_1
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 315
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v8

    .line 324
    const-string v0, "ac"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 325
    const-string v0, "on"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 326
    iput-wide v6, p0, Laub;->f:J

    .line 327
    iput-wide v8, p0, Laub;->g:J

    .line 304
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 316
    :catch_1
    move-exception v3

    .line 317
    const-string v3, "ChargingTimeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to parse, rate: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", gap: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lazt;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 328
    :cond_4
    const-string v0, "off"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 329
    iput-wide v6, p0, Laub;->h:J

    .line 330
    iput-wide v8, p0, Laub;->i:J

    goto :goto_2

    .line 332
    :cond_5
    const-string v0, "ChargingTimeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown screen attribute value: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lazt;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 337
    :cond_6
    const-string v0, "usb"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 338
    const-string v0, "on"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 339
    iput-wide v6, p0, Laub;->b:J

    .line 340
    iput-wide v8, p0, Laub;->c:J

    goto :goto_2

    .line 341
    :cond_7
    const-string v0, "off"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 342
    iput-wide v6, p0, Laub;->d:J

    .line 343
    iput-wide v8, p0, Laub;->e:J

    goto :goto_2

    .line 345
    :cond_8
    const-string v0, "ChargingTimeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown screen attribute value: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lazt;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 351
    :cond_9
    const-string v0, "ChargingTimeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown plug attribute value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lazt;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 215
    iput v2, p0, Laub;->o:I

    .line 216
    const/4 v0, -0x1

    iput v0, p0, Laub;->p:I

    .line 217
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laub;->q:J

    .line 218
    iput-boolean v2, p0, Laub;->r:Z

    .line 219
    return-void
.end method

.method public a(IIIJZ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 111
    if-nez p1, :cond_0

    .line 164
    :goto_0
    return-void

    .line 133
    :cond_0
    iget v0, p0, Laub;->p:I

    if-eq v0, v6, :cond_3

    iget v0, p0, Laub;->p:I

    if-gt p2, v0, :cond_1

    iget v0, p0, Laub;->p:I

    if-ne p2, v0, :cond_3

    if-eqz p6, :cond_3

    .line 136
    :cond_1
    iget-boolean v0, p0, Laub;->r:Z

    if-eqz v0, :cond_2

    .line 137
    if-ge p2, p3, :cond_2

    .line 138
    iget v0, p0, Laub;->p:I

    sub-int v0, p2, v0

    int-to-long v2, v0

    iget-wide v0, p0, Laub;->q:J

    sub-long v4, p4, v0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Laub;->a(IJJ)V

    .line 142
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Laub;->r:Z

    .line 148
    :goto_1
    if-eqz p6, :cond_4

    .line 149
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laub;->q:J

    .line 150
    iput v7, p0, Laub;->o:I

    .line 151
    const/16 v0, 0x64

    iput v0, p0, Laub;->n:I

    .line 152
    iput v6, p0, Laub;->p:I

    .line 153
    iput-boolean v7, p0, Laub;->r:Z

    goto :goto_0

    .line 144
    :cond_3
    const-string v0, "ChargingTimeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skip updating, mPreLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Laub;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", curLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 157
    :cond_4
    iget v0, p0, Laub;->p:I

    sub-int v0, p2, v0

    if-lez v0, :cond_5

    .line 158
    iput-wide p4, p0, Laub;->q:J

    .line 160
    :cond_5
    iput p1, p0, Laub;->o:I

    .line 161
    iput p3, p0, Laub;->n:I

    .line 162
    iput p2, p0, Laub;->p:I

    goto :goto_0
.end method

.method public b()J
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const-wide/16 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 231
    iget-object v0, p0, Laub;->l:Landroid/content/ContentResolver;

    const-string v5, "stay_on_while_plugged_in"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 235
    :goto_0
    iget-object v5, p0, Laub;->j:Lazr;

    iget v6, p0, Laub;->o:I

    invoke-virtual {v5, v6, v0}, Lazr;->a(IZ)[J

    move-result-object v5

    .line 236
    iget v6, p0, Laub;->o:I

    invoke-direct {p0, v6, v0}, Laub;->a(IZ)[J

    move-result-object v0

    .line 238
    aget-wide v6, v5, v2

    aget-wide v8, v0, v2

    add-long/2addr v6, v8

    .line 239
    aget-wide v8, v5, v1

    aget-wide v0, v0, v1

    add-long/2addr v0, v8

    .line 241
    cmp-long v2, v6, v10

    if-lez v2, :cond_3

    .line 242
    long-to-double v0, v0

    long-to-double v5, v6

    div-double/2addr v0, v5

    .line 245
    :goto_1
    iget v2, p0, Laub;->n:I

    iget v5, p0, Laub;->p:I

    sub-int/2addr v2, v5

    int-to-double v5, v2

    mul-double/2addr v5, v0

    double-to-long v5, v5

    .line 246
    cmpl-double v2, v0, v3

    if-eqz v2, :cond_0

    cmp-long v2, v5, v10

    if-gez v2, :cond_2

    .line 247
    :cond_0
    const-string v2, "ChargingTimeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad state, mScale: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Laub;->n:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mLevel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Laub;->p:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", rate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", plug: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laub;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lazt;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-wide/16 v0, -0x1

    .line 270
    :goto_2
    return-wide v0

    :cond_1
    move v0, v2

    .line 231
    goto :goto_0

    :cond_2
    move-wide v0, v5

    goto :goto_2

    :cond_3
    move-wide v0, v3

    goto :goto_1
.end method
