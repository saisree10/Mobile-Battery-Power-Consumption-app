.class public Lats;
.super Latl;
.source "UidPowerStats.java"


# static fields
.field public static final o:Landroid/os/Parcelable$Creator;


# instance fields
.field public a:Latu;

.field public b:Ljava/util/ArrayList;

.field public h:D

.field public i:D

.field public j:J

.field public k:J

.field public l:D

.field public m:J

.field public n:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 593
    new-instance v0, Latt;

    invoke-direct {v0}, Latt;-><init>()V

    sput-object v0, Lats;->o:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Latl;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lats;->b:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Ljava/util/ArrayList;)Landroid/util/SparseArray;
    .locals 4
    .parameter

    .prologue
    .line 433
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 434
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latl;

    .line 435
    check-cast v0, Latu;

    .line 436
    iget v3, v0, Latu;->a:I

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 438
    :cond_0
    return-object v1
.end method

.method private a(Landroid/util/SparseArray;)Ljava/util/ArrayList;
    .locals 4
    .parameter

    .prologue
    .line 442
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 443
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 444
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 445
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 447
    :cond_0
    return-object v1
.end method

.method private static a(Landroid/content/Context;IDLjava/util/ArrayList;D)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 240
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 241
    if-ge v1, p1, :cond_0

    move p1, v1

    .line 244
    :cond_0
    const-wide/16 v2, 0x0

    .line 245
    const/4 v4, 0x0

    .line 246
    :goto_0
    if-ge v4, p1, :cond_1

    .line 247
    invoke-virtual {p4, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latl;

    iget-wide v5, v0, Latl;->e:D

    .line 248
    const-wide v7, 0x3fb999999999999aL

    cmpg-double v0, v5, v7

    if-gez v0, :cond_4

    .line 254
    :cond_1
    sub-double v5, p5, v2

    .line 255
    const/4 v0, 0x0

    .line 256
    const-wide/16 v7, 0x0

    cmpl-double v2, v2, v7

    if-lez v2, :cond_3

    cmpl-double v2, v5, p2

    if-ltz v2, :cond_3

    .line 260
    new-instance v2, Latu;

    const/4 v0, -0x1

    invoke-direct {v2, v0}, Latu;-><init>(I)V

    move v3, v4

    .line 262
    :goto_1
    if-ge v3, v1, :cond_2

    .line 263
    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latl;

    .line 264
    iget-wide v7, v0, Latl;->e:D

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_5

    .line 271
    :cond_2
    iput-wide v5, v2, Latu;->e:D

    move-object v0, v2

    .line 275
    :cond_3
    :goto_2
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_6

    .line 276
    invoke-virtual {p4, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 250
    :cond_4
    add-double/2addr v2, v5

    .line 246
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 268
    :cond_5
    invoke-virtual {v2, v0}, Latu;->c(Latl;)V

    .line 262
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 279
    :cond_6
    if-eqz v0, :cond_7

    .line 280
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_7
    return-void
.end method

.method private a(Landroid/os/Parcel;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x5

    const/4 v0, 0x0

    .line 461
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 462
    const v2, -0x162c58a8

    if-eq v1, v2, :cond_0

    .line 463
    const-string v2, "UidPowerStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data corrupted with magic number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lazt;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    :goto_0
    return v0

    .line 467
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 468
    if-ge v1, v5, :cond_1

    .line 469
    const-string v2, "UidPowerStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "outdated data, version readed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", curVersion: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lazt;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 474
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lats;->j:J

    .line 475
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lats;->k:J

    .line 476
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lats;->l:D

    .line 477
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lats;->m:J

    .line 478
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lats;->n:D

    .line 480
    iget-object v1, p0, Lats;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 481
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move v1, v0

    .line 485
    :goto_1
    if-ge v1, v2, :cond_4

    .line 489
    new-instance v3, Latu;

    const/4 v4, -0x2

    invoke-direct {v3, v4}, Latu;-><init>(I)V

    .line 490
    invoke-virtual {v3, p1}, Latu;->b(Landroid/os/Parcel;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 491
    iget-object v4, p0, Lats;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    iget v4, v3, Latu;->a:I

    if-nez v4, :cond_2

    .line 493
    iput-object v3, p0, Lats;->a:Latu;

    .line 485
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 495
    :cond_3
    const-string v2, "UidPowerStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to read child #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lazt;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 501
    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method static synthetic a(Lats;Landroid/os/Parcel;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lats;->a(Landroid/os/Parcel;)Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/io/FileInputStream;)[B
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 549
    .line 550
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result v0

    .line 551
    new-array v0, v0, [B

    move v1, v2

    .line 554
    :cond_0
    :goto_0
    array-length v3, v0

    sub-int/2addr v3, v1

    invoke-virtual {p0, v0, v1, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    .line 555
    if-gtz v3, :cond_1

    .line 571
    return-object v0

    .line 558
    :cond_1
    add-int/2addr v1, v3

    .line 559
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result v3

    .line 560
    array-length v4, v0

    sub-int/2addr v4, v1

    if-le v3, v4, :cond_0

    .line 561
    add-int/2addr v3, v1

    new-array v3, v3, [B

    .line 562
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v3

    .line 563
    goto :goto_0
.end method

.method private static b(Landroid/content/Context;IDLjava/util/ArrayList;D)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 295
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 296
    if-ge v1, p1, :cond_0

    move p1, v1

    .line 298
    :cond_0
    const-wide/16 v2, 0x0

    .line 299
    const/4 v4, 0x0

    .line 300
    :goto_0
    if-ge v4, p1, :cond_1

    .line 301
    invoke-virtual {p4, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latu;

    iget-wide v5, v0, Latu;->w:D

    .line 302
    const-wide v7, 0x3fb999999999999aL

    cmpg-double v0, v5, v7

    if-gez v0, :cond_4

    .line 307
    :cond_1
    sub-double v5, p5, v2

    .line 308
    const/4 v0, 0x0

    .line 309
    const-wide/16 v7, 0x0

    cmpl-double v2, v2, v7

    if-lez v2, :cond_3

    cmpl-double v2, v5, p2

    if-ltz v2, :cond_3

    .line 311
    new-instance v2, Latu;

    const/4 v0, -0x1

    invoke-direct {v2, v0}, Latu;-><init>(I)V

    move v3, v4

    .line 313
    :goto_1
    if-ge v3, v1, :cond_2

    .line 314
    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latu;

    .line 315
    iget-wide v7, v0, Latu;->w:D

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_5

    .line 322
    :cond_2
    iput-wide v5, v2, Latu;->w:D

    move-object v0, v2

    .line 326
    :cond_3
    :goto_2
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_6

    .line 327
    invoke-virtual {p4, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 304
    :cond_4
    add-double/2addr v2, v5

    .line 300
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 319
    :cond_5
    invoke-virtual {v2, v0}, Latu;->c(Latl;)V

    .line 313
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 330
    :cond_6
    if-eqz v0, :cond_7

    .line 331
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    :cond_7
    return-void
.end method

.method private b(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 505
    const v0, -0x162c58a8

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    iget-wide v0, p0, Lats;->j:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 509
    iget-wide v0, p0, Lats;->k:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 510
    iget-wide v0, p0, Lats;->l:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 511
    iget-wide v0, p0, Lats;->m:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 512
    iget-wide v0, p0, Lats;->n:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 514
    iget-object v0, p0, Lats;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 515
    iget-object v0, p0, Lats;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latl;

    .line 516
    check-cast v0, Latu;

    .line 517
    invoke-virtual {v0, p1}, Latu;->a(Landroid/os/Parcel;)V

    goto :goto_0

    .line 519
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0}, Latl;->a()V

    .line 49
    iget-object v0, p0, Lats;->a:Latu;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lats;->a:Latu;

    invoke-virtual {v0}, Latu;->a()V

    .line 52
    :cond_0
    iget-object v0, p0, Lats;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latu;

    .line 53
    invoke-virtual {v0}, Latu;->a()V

    goto :goto_0

    .line 55
    :cond_1
    iget-object v0, p0, Lats;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 56
    return-void
.end method

.method protected a(D)V
    .locals 6
    .parameter

    .prologue
    .line 130
    invoke-super {p0, p1, p2}, Latl;->a(D)V

    .line 132
    iget-wide v0, p0, Lats;->h:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 133
    iput-wide p1, p0, Lats;->i:D

    .line 134
    iget-object v0, p0, Lats;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latu;

    .line 135
    iget-wide v2, v0, Latu;->v:D

    iget-wide v4, p0, Lats;->h:D

    div-double/2addr v2, v4

    mul-double/2addr v2, p1

    iput-wide v2, v0, Latu;->w:D

    goto :goto_0

    .line 139
    :cond_0
    iget-object v0, p0, Lats;->b:Ljava/util/ArrayList;

    new-instance v1, Latw;

    invoke-direct {v1}, Latw;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 144
    :goto_1
    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Lats;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_1
.end method

.method public a(IDJ)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 188
    iget-object v0, p0, Lats;->a:Latu;

    if-nez v0, :cond_0

    .line 189
    const-string v0, "UidPowerStats"

    const-string v2, "no system entry yet."

    invoke-static {v0, v2}, Lazt;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    new-instance v0, Latu;

    invoke-direct {v0, v1}, Latu;-><init>(I)V

    iput-object v0, p0, Lats;->a:Latu;

    .line 192
    iget-object v0, p0, Lats;->a:Latu;

    const-string v2, "android.kernel"

    iput-object v2, v0, Latu;->b:Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lats;->g:Ljava/util/ArrayList;

    iget-object v2, p0, Lats;->a:Latu;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_0
    iget-object v0, p0, Lats;->a:Latu;

    iget-object v0, v0, Latu;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latl;

    .line 198
    check-cast v0, Latx;

    .line 200
    iget v3, v0, Latx;->a:I

    if-ne v3, p1, :cond_1

    .line 206
    iget-wide v1, v0, Latx;->d:D

    add-double/2addr v1, p2

    iput-wide v1, v0, Latx;->d:D

    .line 207
    iget-wide v1, v0, Latx;->b:J

    add-long/2addr v1, p4

    iput-wide v1, v0, Latx;->b:J

    .line 208
    const/4 v0, 0x1

    .line 213
    :goto_0
    if-nez v0, :cond_2

    .line 214
    iget-object v6, p0, Lats;->a:Latu;

    new-instance v0, Latx;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Latx;-><init>(IDJ)V

    invoke-virtual {v6, v0}, Latu;->b(Latl;)V

    .line 221
    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public a(IZ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 347
    if-eqz p2, :cond_2

    .line 348
    iget-object v0, p0, Lats;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latu;

    .line 349
    iget-object v2, p0, Lats;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 350
    iget v2, v0, Latu;->a:I

    .line 359
    if-eq v2, v3, :cond_0

    .line 360
    iget-object v0, p0, Lats;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 361
    :goto_0
    if-ge v1, v3, :cond_0

    .line 362
    iget-object v0, p0, Lats;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latu;

    .line 363
    iget v0, v0, Latu;->a:I

    if-ne v0, v2, :cond_1

    .line 364
    iget-object v0, p0, Lats;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 400
    :cond_0
    :goto_1
    return-void

    .line 361
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 374
    :cond_2
    iget-object v0, p0, Lats;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latu;

    .line 375
    iget-object v2, p0, Lats;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 376
    iget v2, v0, Latu;->a:I

    .line 385
    if-eq v2, v3, :cond_0

    .line 386
    iget-object v0, p0, Lats;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 387
    :goto_2
    if-ge v1, v3, :cond_0

    .line 388
    iget-object v0, p0, Lats;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latu;

    .line 389
    iget v0, v0, Latu;->a:I

    if-ne v0, v2, :cond_3

    .line 390
    iget-object v0, p0, Lats;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 387
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public a(Landroid/content/Context;ID)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 225
    iget-object v4, p0, Lats;->g:Ljava/util/ArrayList;

    iget-wide v5, p0, Lats;->e:D

    move-object v0, p1

    move v1, p2

    move-wide v2, p3

    invoke-static/range {v0 .. v6}, Lats;->a(Landroid/content/Context;IDLjava/util/ArrayList;D)V

    .line 226
    iget-object v4, p0, Lats;->b:Ljava/util/ArrayList;

    iget-wide v5, p0, Lats;->i:D

    move-object v0, p1

    move v1, p2

    move-wide v2, p3

    invoke-static/range {v0 .. v6}, Lats;->b(Landroid/content/Context;IDLjava/util/ArrayList;D)V

    .line 227
    return-void
.end method

.method public a(Latd;)V
    .locals 10
    .parameter

    .prologue
    .line 96
    iget-wide v0, p0, Lats;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 97
    iget-object v0, p0, Lats;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latl;

    move-object v6, v0

    .line 98
    check-cast v6, Latu;

    .line 99
    iget-wide v0, v6, Latu;->j:J

    long-to-double v0, v0

    iget-wide v2, p0, Lats;->j:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    .line 100
    iget-wide v2, p0, Lats;->k:J

    long-to-double v2, v2

    mul-double v8, v2, v0

    .line 101
    iget-wide v2, p0, Lats;->m:J

    long-to-double v2, v2

    mul-double/2addr v0, v2

    .line 102
    iget-wide v2, p0, Lats;->l:D

    mul-double/2addr v2, v8

    iget-wide v4, p0, Lats;->n:D

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L

    div-double v2, v0, v2

    .line 104
    new-instance v0, Latx;

    const/4 v1, 0x1

    double-to-long v4, v8

    invoke-direct/range {v0 .. v5}, Latx;-><init>(IDJ)V

    invoke-virtual {v6, v0}, Latu;->b(Latl;)V

    .line 106
    double-to-long v0, v8

    iput-wide v0, v6, Latu;->l:J

    .line 107
    if-eqz p1, :cond_0

    .line 108
    new-instance v0, Latf;

    iget v1, v6, Latu;->a:I

    iget-object v4, v6, Latu;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v4, v2, v3}, Latf;-><init>(ILjava/lang/String;D)V

    invoke-virtual {p1, v0}, Latd;->b(Latl;)V

    goto :goto_0

    .line 113
    :cond_1
    return-void
.end method

.method protected a(Latl;)V
    .locals 2
    .parameter

    .prologue
    .line 65
    invoke-super {p0, p1}, Latl;->a(Latl;)V

    .line 67
    check-cast p1, Lats;

    .line 68
    iget-wide v0, p1, Lats;->j:J

    iput-wide v0, p0, Lats;->j:J

    .line 69
    iget-wide v0, p1, Lats;->k:J

    iput-wide v0, p0, Lats;->k:J

    .line 70
    iget-wide v0, p1, Lats;->l:D

    iput-wide v0, p0, Lats;->l:D

    .line 71
    iget-wide v0, p1, Lats;->m:J

    iput-wide v0, p0, Lats;->m:J

    .line 72
    iget-wide v0, p1, Lats;->n:D

    iput-wide v0, p0, Lats;->n:D

    .line 87
    return-void
.end method

.method public a(Lats;)V
    .locals 6
    .parameter

    .prologue
    .line 407
    iget-object v0, p0, Lats;->g:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lats;->a(Ljava/util/ArrayList;)Landroid/util/SparseArray;

    move-result-object v3

    .line 408
    iget-object v0, p1, Lats;->g:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lats;->a(Ljava/util/ArrayList;)Landroid/util/SparseArray;

    move-result-object v4

    .line 415
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 416
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_1

    .line 417
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 418
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latu;

    .line 419
    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Latu;

    invoke-virtual {v0, v1}, Latu;->a(Latu;)V

    .line 416
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 424
    :cond_1
    iget-object v0, p0, Lats;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 425
    invoke-direct {p0, v3}, Lats;->a(Landroid/util/SparseArray;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lats;->g:Ljava/util/ArrayList;

    .line 427
    iget-wide v0, p0, Lats;->j:J

    iget-wide v2, p1, Lats;->j:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lats;->j:J

    .line 428
    iget-wide v0, p0, Lats;->k:J

    iget-wide v2, p1, Lats;->k:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lats;->k:J

    .line 429
    iget-wide v0, p0, Lats;->m:J

    iget-wide v2, p1, Lats;->m:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lats;->m:J

    .line 430
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 526
    .line 527
    const/4 v1, 0x0

    .line 531
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 532
    invoke-static {v1}, Lats;->a(Ljava/io/FileInputStream;)[B

    move-result-object v0

    .line 533
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 534
    const/4 v4, 0x0

    array-length v5, v0

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 535
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 536
    invoke-direct {p0, v3}, Lats;->a(Landroid/os/Parcel;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 541
    :goto_0
    if-eqz v1, :cond_0

    .line 542
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 545
    :cond_0
    :goto_1
    return v0

    .line 537
    :catch_0
    move-exception v0

    .line 538
    const-string v3, "UidPowerStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lazt;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    .line 542
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 575
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 576
    invoke-direct {p0, v0}, Lats;->b(Landroid/os/Parcel;)V

    .line 577
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    .line 578
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 580
    const/4 v1, 0x0

    .line 582
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 583
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    :goto_0
    if-eqz v1, :cond_0

    .line 589
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 591
    :cond_0
    :goto_1
    return-void

    .line 584
    :catch_0
    move-exception v0

    .line 585
    const-string v2, "UidPowerStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lazt;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 589
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public b(Latl;)V
    .locals 3
    .parameter

    .prologue
    .line 161
    move-object v0, p1

    check-cast v0, Latu;

    .line 162
    iget v1, v0, Latu;->a:I

    const/16 v2, 0x2710

    if-lt v1, v2, :cond_1

    iget v1, v0, Latu;->a:I

    const v2, 0x1869f

    if-gt v1, v2, :cond_1

    .line 165
    const-string v1, "com.dianxinos.dxbs"

    iget-object v0, v0, Latu;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lats;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 171
    :cond_1
    iget-object v1, p0, Lats;->a:Latu;

    if-nez v1, :cond_2

    .line 172
    iput-object v0, p0, Lats;->a:Latu;

    .line 173
    iget-object v0, p0, Lats;->a:Latu;

    const/4 v1, 0x0

    iput v1, v0, Latu;->a:I

    .line 174
    iget-object v0, p0, Lats;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lats;->a:Latu;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 176
    :cond_2
    iget-object v1, p0, Lats;->a:Latu;

    invoke-virtual {v1, v0}, Latu;->c(Latl;)V

    goto :goto_0
.end method

.method protected synthetic c()Latl;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lats;->e()Lats;

    move-result-object v0

    return-object v0
.end method

.method protected d()V
    .locals 6

    .prologue
    .line 117
    invoke-super {p0}, Latl;->d()V

    .line 119
    iget-object v0, p0, Lats;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 120
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lats;->h:D

    .line 121
    iget-object v0, p0, Lats;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latl;

    .line 122
    check-cast v0, Latu;

    .line 123
    iget-wide v2, p0, Lats;->h:D

    iget-wide v4, v0, Latu;->v:D

    add-double/2addr v2, v4

    iput-wide v2, p0, Lats;->h:D

    .line 124
    iget-object v2, p0, Lats;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 126
    :cond_0
    return-void
.end method

.method protected e()Lats;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lats;

    invoke-direct {v0}, Lats;-><init>()V

    return-object v0
.end method
