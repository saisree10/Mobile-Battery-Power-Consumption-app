.class public Lbex;
.super Lbey;
.source "Base64.java"


# static fields
.field static final a:[B

.field private static final i:[B

.field private static final j:[B

.field private static final k:[B


# instance fields
.field private final l:[B

.field private final m:[B

.field private final n:[B

.field private final o:I

.field private final p:I

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x40

    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lbex;->a:[B

    .line 80
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lbex;->i:[B

    .line 93
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lbex;->j:[B

    .line 112
    const/16 v0, 0x7b

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lbex;->k:[B

    return-void

    .line 71
    :array_0
    .array-data 0x1
        0xdt
        0xat
    .end array-data

    .line 80
    nop

    :array_1
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 93
    :array_2
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    .line 112
    :array_3
    .array-data 0x1
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0x3et
        0xfft
        0x3et
        0xfft
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0xfft
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0xfft
        0xfft
        0xfft
        0xfft
        0x3ft
        0xfft
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbex;-><init>(I)V

    .line 177
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 217
    sget-object v0, Lbex;->a:[B

    invoke-direct {p0, p1, v0}, Lbex;-><init>(I[B)V

    .line 218
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lbex;-><init>(I[BZ)V

    .line 244
    return-void
.end method

.method public constructor <init>(I[BZ)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 272
    const/4 v2, 0x3

    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v2, v3, p1, v0}, Lbey;-><init>(IIII)V

    .line 140
    sget-object v0, Lbex;->k:[B

    iput-object v0, p0, Lbex;->m:[B

    .line 277
    if-eqz p2, :cond_3

    .line 278
    invoke-virtual {p0, p2}, Lbex;->e([B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    invoke-static {p2}, Lbfa;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 280
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "lineSeparator must not contain base64 characters: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 272
    :cond_0
    array-length v0, p2

    goto :goto_0

    .line 282
    :cond_1
    if-lez p1, :cond_2

    .line 283
    array-length v0, p2

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lbex;->p:I

    .line 284
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lbex;->n:[B

    .line 285
    iget-object v0, p0, Lbex;->n:[B

    array-length v2, p2

    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    :goto_1
    iget v0, p0, Lbex;->p:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbex;->o:I

    .line 295
    if-eqz p3, :cond_4

    sget-object v0, Lbex;->j:[B

    :goto_2
    iput-object v0, p0, Lbex;->l:[B

    .line 296
    return-void

    .line 287
    :cond_2
    iput v3, p0, Lbex;->p:I

    .line 288
    iput-object v4, p0, Lbex;->n:[B

    goto :goto_1

    .line 291
    :cond_3
    iput v3, p0, Lbex;->p:I

    .line 292
    iput-object v4, p0, Lbex;->n:[B

    goto :goto_1

    .line 295
    :cond_4
    sget-object v0, Lbex;->i:[B

    goto :goto_2
.end method

.method public constructor <init>(Z)V
    .locals 2
    .parameter

    .prologue
    .line 195
    const/16 v0, 0x4c

    sget-object v1, Lbex;->a:[B

    invoke-direct {p0, v0, v1, p1}, Lbex;-><init>(I[BZ)V

    .line 196
    return-void
.end method

.method public static a([B)[B
    .locals 1
    .parameter

    .prologue
    .line 535
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lbex;->a([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static a([BZ)[B
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 602
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lbex;->a([BZZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static a([BZZ)[B
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 620
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lbex;->a([BZZI)[B

    move-result-object v0

    return-object v0
.end method

.method public static a([BZZI)[B
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 640
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 655
    :cond_0
    :goto_0
    return-object p0

    .line 646
    :cond_1
    if-eqz p1, :cond_2

    new-instance v0, Lbex;

    invoke-direct {v0, p2}, Lbex;-><init>(Z)V

    .line 647
    :goto_1
    invoke-virtual {v0, p0}, Lbex;->f([B)J

    move-result-wide v1

    .line 648
    int-to-long v3, p3

    cmp-long v3, v1, v3

    if-lez v3, :cond_3

    .line 649
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Input array too big, the output array would be bigger ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ") than the specified maximum size of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 646
    :cond_2
    new-instance v0, Lbex;

    const/4 v1, 0x0

    sget-object v2, Lbex;->a:[B

    invoke-direct {v0, v1, v2, p2}, Lbex;-><init>(I[BZ)V

    goto :goto_1

    .line 655
    :cond_3
    invoke-virtual {v0, p0}, Lbex;->d([B)[B

    move-result-object p0

    goto :goto_0
.end method

.method public static b([B)[B
    .locals 1
    .parameter

    .prologue
    .line 678
    new-instance v0, Lbex;

    invoke-direct {v0}, Lbex;-><init>()V

    invoke-virtual {v0, p0}, Lbex;->c([B)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a([BII)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x3d

    const/4 v2, 0x0

    .line 327
    iget-boolean v0, p0, Lbex;->f:Z

    if-eqz v0, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    if-gez p3, :cond_4

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbex;->f:Z

    .line 334
    iget v0, p0, Lbex;->h:I

    if-nez v0, :cond_2

    iget v0, p0, Lbex;->c:I

    if-eqz v0, :cond_0

    .line 337
    :cond_2
    iget v0, p0, Lbex;->p:I

    invoke-virtual {p0, v0}, Lbex;->a(I)V

    .line 338
    iget v0, p0, Lbex;->e:I

    .line 339
    iget v1, p0, Lbex;->h:I

    packed-switch v1, :pswitch_data_0

    .line 360
    :cond_3
    :goto_1
    iget v1, p0, Lbex;->g:I

    iget v3, p0, Lbex;->e:I

    sub-int v0, v3, v0

    add-int/2addr v0, v1

    iput v0, p0, Lbex;->g:I

    .line 362
    iget v0, p0, Lbex;->c:I

    if-lez v0, :cond_0

    iget v0, p0, Lbex;->g:I

    if-lez v0, :cond_0

    .line 363
    iget-object v0, p0, Lbex;->n:[B

    iget-object v1, p0, Lbex;->d:[B

    iget v3, p0, Lbex;->e:I

    iget-object v4, p0, Lbex;->n:[B

    array-length v4, v4

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 364
    iget v0, p0, Lbex;->e:I

    iget-object v1, p0, Lbex;->n:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lbex;->e:I

    goto :goto_0

    .line 341
    :pswitch_0
    iget-object v1, p0, Lbex;->d:[B

    iget v3, p0, Lbex;->e:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lbex;->e:I

    iget-object v4, p0, Lbex;->l:[B

    iget v5, p0, Lbex;->q:I

    shr-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 342
    iget-object v1, p0, Lbex;->d:[B

    iget v3, p0, Lbex;->e:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lbex;->e:I

    iget-object v4, p0, Lbex;->l:[B

    iget v5, p0, Lbex;->q:I

    shl-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 344
    iget-object v1, p0, Lbex;->l:[B

    sget-object v3, Lbex;->i:[B

    if-ne v1, v3, :cond_3

    .line 345
    iget-object v1, p0, Lbex;->d:[B

    iget v3, p0, Lbex;->e:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lbex;->e:I

    aput-byte v6, v1, v3

    .line 346
    iget-object v1, p0, Lbex;->d:[B

    iget v3, p0, Lbex;->e:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lbex;->e:I

    aput-byte v6, v1, v3

    goto :goto_1

    .line 351
    :pswitch_1
    iget-object v1, p0, Lbex;->d:[B

    iget v3, p0, Lbex;->e:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lbex;->e:I

    iget-object v4, p0, Lbex;->l:[B

    iget v5, p0, Lbex;->q:I

    shr-int/lit8 v5, v5, 0xa

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 352
    iget-object v1, p0, Lbex;->d:[B

    iget v3, p0, Lbex;->e:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lbex;->e:I

    iget-object v4, p0, Lbex;->l:[B

    iget v5, p0, Lbex;->q:I

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 353
    iget-object v1, p0, Lbex;->d:[B

    iget v3, p0, Lbex;->e:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lbex;->e:I

    iget-object v4, p0, Lbex;->l:[B

    iget v5, p0, Lbex;->q:I

    shl-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 355
    iget-object v1, p0, Lbex;->l:[B

    sget-object v3, Lbex;->i:[B

    if-ne v1, v3, :cond_3

    .line 356
    iget-object v1, p0, Lbex;->d:[B

    iget v3, p0, Lbex;->e:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lbex;->e:I

    aput-byte v6, v1, v3

    goto/16 :goto_1

    :cond_4
    move v1, v2

    .line 367
    :goto_2
    if-ge v1, p3, :cond_0

    .line 368
    iget v0, p0, Lbex;->p:I

    invoke-virtual {p0, v0}, Lbex;->a(I)V

    .line 369
    iget v0, p0, Lbex;->h:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x3

    iput v0, p0, Lbex;->h:I

    .line 370
    add-int/lit8 v3, p2, 0x1

    aget-byte v0, p1, p2

    .line 371
    if-gez v0, :cond_5

    .line 372
    add-int/lit16 v0, v0, 0x100

    .line 374
    :cond_5
    iget v4, p0, Lbex;->q:I

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v0, v4

    iput v0, p0, Lbex;->q:I

    .line 375
    iget v0, p0, Lbex;->h:I

    if-nez v0, :cond_6

    .line 376
    iget-object v0, p0, Lbex;->d:[B

    iget v4, p0, Lbex;->e:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lbex;->e:I

    iget-object v5, p0, Lbex;->l:[B

    iget v6, p0, Lbex;->q:I

    shr-int/lit8 v6, v6, 0x12

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    .line 377
    iget-object v0, p0, Lbex;->d:[B

    iget v4, p0, Lbex;->e:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lbex;->e:I

    iget-object v5, p0, Lbex;->l:[B

    iget v6, p0, Lbex;->q:I

    shr-int/lit8 v6, v6, 0xc

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    .line 378
    iget-object v0, p0, Lbex;->d:[B

    iget v4, p0, Lbex;->e:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lbex;->e:I

    iget-object v5, p0, Lbex;->l:[B

    iget v6, p0, Lbex;->q:I

    shr-int/lit8 v6, v6, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    .line 379
    iget-object v0, p0, Lbex;->d:[B

    iget v4, p0, Lbex;->e:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lbex;->e:I

    iget-object v5, p0, Lbex;->l:[B

    iget v6, p0, Lbex;->q:I

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    .line 380
    iget v0, p0, Lbex;->g:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lbex;->g:I

    .line 381
    iget v0, p0, Lbex;->c:I

    if-lez v0, :cond_6

    iget v0, p0, Lbex;->c:I

    iget v4, p0, Lbex;->g:I

    if-gt v0, v4, :cond_6

    .line 382
    iget-object v0, p0, Lbex;->n:[B

    iget-object v4, p0, Lbex;->d:[B

    iget v5, p0, Lbex;->e:I

    iget-object v6, p0, Lbex;->n:[B

    array-length v6, v6

    invoke-static {v0, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 383
    iget v0, p0, Lbex;->e:I

    iget-object v4, p0, Lbex;->n:[B

    array-length v4, v4

    add-int/2addr v0, v4

    iput v0, p0, Lbex;->e:I

    .line 384
    iput v2, p0, Lbex;->g:I

    .line 367
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move p2, v3

    goto/16 :goto_2

    .line 339
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected a(B)Z
    .locals 2
    .parameter

    .prologue
    .line 752
    if-ltz p1, :cond_0

    iget-object v0, p0, Lbex;->m:[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lbex;->m:[B

    aget-byte v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b([BII)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 415
    iget-boolean v0, p0, Lbex;->f:Z

    if-eqz v0, :cond_1

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    if-gez p3, :cond_2

    .line 419
    iput-boolean v5, p0, Lbex;->f:Z

    .line 421
    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_3

    .line 422
    iget v1, p0, Lbex;->o:I

    invoke-virtual {p0, v1}, Lbex;->a(I)V

    .line 423
    add-int/lit8 v1, p2, 0x1

    aget-byte v2, p1, p2

    .line 424
    const/16 v3, 0x3d

    if-ne v2, v3, :cond_4

    .line 426
    iput-boolean v5, p0, Lbex;->f:Z

    .line 447
    :cond_3
    iget-boolean v0, p0, Lbex;->f:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lbex;->h:I

    if-eqz v0, :cond_0

    .line 448
    iget v0, p0, Lbex;->o:I

    invoke-virtual {p0, v0}, Lbex;->a(I)V

    .line 452
    iget v0, p0, Lbex;->h:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 456
    :pswitch_0
    iget v0, p0, Lbex;->q:I

    shr-int/lit8 v0, v0, 0x4

    iput v0, p0, Lbex;->q:I

    .line 457
    iget-object v0, p0, Lbex;->d:[B

    iget v1, p0, Lbex;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbex;->e:I

    iget v2, p0, Lbex;->q:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0

    .line 429
    :cond_4
    if-ltz v2, :cond_5

    sget-object v3, Lbex;->k:[B

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 430
    sget-object v3, Lbex;->k:[B

    aget-byte v2, v3, v2

    .line 431
    if-ltz v2, :cond_5

    .line 432
    iget v3, p0, Lbex;->h:I

    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v3, v3, 0x4

    iput v3, p0, Lbex;->h:I

    .line 433
    iget v3, p0, Lbex;->q:I

    shl-int/lit8 v3, v3, 0x6

    add-int/2addr v2, v3

    iput v2, p0, Lbex;->q:I

    .line 434
    iget v2, p0, Lbex;->h:I

    if-nez v2, :cond_5

    .line 435
    iget-object v2, p0, Lbex;->d:[B

    iget v3, p0, Lbex;->e:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lbex;->e:I

    iget v4, p0, Lbex;->q:I

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 436
    iget-object v2, p0, Lbex;->d:[B

    iget v3, p0, Lbex;->e:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lbex;->e:I

    iget v4, p0, Lbex;->q:I

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 437
    iget-object v2, p0, Lbex;->d:[B

    iget v3, p0, Lbex;->e:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lbex;->e:I

    iget v4, p0, Lbex;->q:I

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 421
    :cond_5
    add-int/lit8 v0, v0, 0x1

    move p2, v1

    goto/16 :goto_1

    .line 460
    :pswitch_1
    iget v0, p0, Lbex;->q:I

    shr-int/lit8 v0, v0, 0x2

    iput v0, p0, Lbex;->q:I

    .line 461
    iget-object v0, p0, Lbex;->d:[B

    iget v1, p0, Lbex;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbex;->e:I

    iget v2, p0, Lbex;->q:I

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 462
    iget-object v0, p0, Lbex;->d:[B

    iget v1, p0, Lbex;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbex;->e:I

    iget v2, p0, Lbex;->q:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_0

    .line 452
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
