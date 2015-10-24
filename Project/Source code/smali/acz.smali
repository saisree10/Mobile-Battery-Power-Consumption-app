.class public Lacz;
.super Ljava/lang/Object;
.source "BatteryInfoHelper.java"


# static fields
.field public static final a:[I

.field public static b:J

.field public static c:J

.field private static final e:Ljava/lang/String;

.field private static q:Lacx;

.field private static s:Lacz;


# instance fields
.field private final d:I

.field private f:Z

.field private g:Ljava/util/Timer;

.field private h:Landroid/content/Context;

.field private i:Ladd;

.field private j:Laff;

.field private k:Laud;

.field private l:I

.field private m:J

.field private n:I

.field private o:Ladg;

.field private p:Lazm;

.field private r:Landroid/content/BroadcastReceiver;

.field private t:Ljava/util/List;

.field private u:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget-object v2, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v2, 0x7f090053

    aput v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v2, 0x7f090054

    aput v2, v0, v1

    sput-object v0, Lacz;->a:[I

    .line 52
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, Lacz;->e:Ljava/lang/String;

    .line 103
    const-wide/16 v0, -0x1

    sput-wide v0, Lacz;->b:J

    .line 107
    const-wide/16 v0, -0x2

    sput-wide v0, Lacz;->c:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const v0, 0x2bf20

    iput v0, p0, Lacz;->d:I

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lacz;->f:Z

    .line 92
    const/16 v0, 0x64

    iput v0, p0, Lacz;->l:I

    .line 93
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lacz;->m:J

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lacz;->p:Lazm;

    .line 114
    new-instance v0, Lada;

    invoke-direct {v0, p0}, Lada;-><init>(Lacz;)V

    iput-object v0, p0, Lacz;->r:Landroid/content/BroadcastReceiver;

    .line 244
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lacz;->t:Ljava/util/List;

    .line 247
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lacz;->u:Ljava/util/List;

    .line 217
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lacz;->h:Landroid/content/Context;

    .line 219
    iget-object v0, p0, Lacz;->h:Landroid/content/Context;

    invoke-static {v0}, Lazr;->a(Landroid/content/Context;)Lazr;

    move-result-object v0

    invoke-virtual {v0}, Lazr;->f()I

    move-result v0

    iput v0, p0, Lacz;->l:I

    .line 220
    new-instance v0, Laud;

    iget-object v1, p0, Lacz;->h:Landroid/content/Context;

    invoke-direct {v0, v1}, Laud;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lacz;->k:Laud;

    .line 221
    iget-object v0, p0, Lacz;->k:Laud;

    invoke-virtual {v0}, Laud;->a()V

    .line 222
    new-instance v0, Ladg;

    iget-object v1, p0, Lacz;->h:Landroid/content/Context;

    new-instance v2, Lc;

    invoke-direct {v2}, Lc;-><init>()V

    invoke-direct {v0, v1, v2}, Ladg;-><init>(Landroid/content/Context;Lb;)V

    iput-object v0, p0, Lacz;->o:Ladg;

    .line 223
    iget-object v0, p0, Lacz;->h:Landroid/content/Context;

    invoke-static {v0}, Laff;->a(Landroid/content/Context;)Laff;

    move-result-object v0

    iput-object v0, p0, Lacz;->j:Laff;

    .line 224
    invoke-static {}, Lazm;->a()Lazm;

    move-result-object v0

    iput-object v0, p0, Lacz;->p:Lazm;

    .line 225
    iget-object v0, p0, Lacz;->h:Landroid/content/Context;

    invoke-static {v0}, Lacx;->a(Landroid/content/Context;)Lacx;

    move-result-object v0

    sput-object v0, Lacz;->q:Lacx;

    .line 226
    invoke-direct {p0}, Lacz;->g()V

    .line 227
    return-void
.end method

.method public static a(I)I
    .locals 1
    .parameter

    .prologue
    .line 523
    const/16 v0, 0x14

    if-gt p0, v0, :cond_0

    .line 524
    const/4 v0, 0x0

    .line 533
    :goto_0
    return v0

    .line 526
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 537
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 538
    sget-object v1, Lacz;->a:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;)Lacz;
    .locals 2
    .parameter

    .prologue
    .line 206
    sget-object v0, Lacz;->s:Lacz;

    if-nez v0, :cond_1

    .line 207
    const-class v1, Lacz;

    monitor-enter v1

    .line 208
    :try_start_0
    sget-object v0, Lacz;->s:Lacz;

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Lacz;

    invoke-direct {v0, p0}, Lacz;-><init>(Landroid/content/Context;)V

    sput-object v0, Lacz;->s:Lacz;

    .line 211
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :cond_1
    sget-object v0, Lacz;->s:Lacz;

    return-object v0

    .line 211
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lacz;)Lazm;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lacz;->p:Lazm;

    return-object v0
.end method

.method static synthetic a(Lacz;Lazm;)Lazm;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lacz;->p:Lazm;

    return-object p1
.end method

.method static synthetic a(Lacz;Ladd;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lacz;->a(Ladd;)V

    return-void
.end method

.method static synthetic a(Lacz;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lacz;->a(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Ladd;)V
    .locals 6
    .parameter

    .prologue
    const v2, 0xd2f00

    const/16 v1, 0x64

    .line 337
    iget-boolean v0, p0, Lacz;->f:Z

    if-eqz v0, :cond_0

    iget v0, p1, Ladd;->j:I

    if-ne v0, v1, :cond_0

    .line 338
    const/4 v0, 0x5

    iput v0, p1, Ladd;->a:I

    .line 346
    :cond_0
    sget-boolean v0, Lazf;->n:Z

    if-eqz v0, :cond_1

    iget v0, p1, Ladd;->k:I

    if-le v0, v2, :cond_1

    .line 347
    iput v2, p1, Ladd;->k:I

    .line 351
    :cond_1
    iget-object v0, p0, Lacz;->j:Laff;

    invoke-virtual {v0, p1}, Laff;->a(Ladd;)V

    .line 352
    iget-object v0, p0, Lacz;->j:Laff;

    invoke-virtual {v0}, Laff;->g()Z

    move-result v0

    iput-boolean v0, p1, Ladd;->l:Z

    .line 353
    iget-boolean v0, p1, Ladd;->l:Z

    if-eqz v0, :cond_3

    .line 354
    iget v0, p1, Ladd;->j:I

    if-ne v0, v1, :cond_2

    .line 355
    invoke-direct {p0}, Lacz;->e()V

    .line 359
    :goto_0
    iget-object v0, p0, Lacz;->o:Ladg;

    iget v1, p1, Ladd;->j:I

    iget-object v2, p0, Lacz;->j:Laff;

    invoke-virtual {v2}, Laff;->f()Lafh;

    move-result-object v2

    invoke-virtual {v2}, Lafh;->c()I

    move-result v2

    iget-object v3, p0, Lacz;->j:Laff;

    invoke-virtual {v3}, Laff;->e()I

    move-result v3

    iget-boolean v4, p1, Ladd;->l:Z

    iget v5, p1, Ladd;->e:I

    invoke-virtual {p0, v5}, Lacz;->b(I)Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Ladg;->a(IIIZZ)V

    .line 366
    :goto_1
    iget-object v1, p0, Lacz;->u:Ljava/util/List;

    monitor-enter v1

    .line 367
    :try_start_0
    iget-object v0, p0, Lacz;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lade;

    .line 368
    invoke-interface {v0, p1}, Lade;->a(Ladd;)V

    goto :goto_2

    .line 370
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 357
    :cond_2
    invoke-direct {p0}, Lacz;->f()V

    goto :goto_0

    .line 362
    :cond_3
    invoke-direct {p0}, Lacz;->f()V

    .line 363
    iget-object v0, p0, Lacz;->o:Ladg;

    iget v1, p1, Ladd;->j:I

    iget v2, p1, Ladd;->k:I

    iget v3, p1, Ladd;->a:I

    iget-boolean v4, p1, Ladd;->l:Z

    iget v5, p1, Ladd;->e:I

    invoke-virtual {p0, v5}, Lacz;->b(I)Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Ladg;->a(IIIZZ)V

    goto :goto_1

    .line 370
    :cond_4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 373
    iget-object v1, p0, Lacz;->t:Ljava/util/List;

    monitor-enter v1

    .line 374
    :try_start_2
    new-instance v0, Ljava/util/LinkedList;

    iget-object v2, p0, Lacz;->t:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 375
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 376
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladc;

    .line 377
    invoke-interface {v0, p1}, Ladc;->a(Ladd;)V

    goto :goto_3

    .line 375
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 379
    :cond_5
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 8
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x5

    const/4 v2, 0x1

    const/16 v4, 0x64

    const/4 v3, 0x0

    .line 410
    new-instance v1, Ladd;

    invoke-direct {v1}, Ladd;-><init>()V

    .line 411
    const-string v0, "status"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Ladd;->a:I

    .line 413
    iget v0, v1, Ladd;->a:I

    iput v0, p0, Lacz;->n:I

    .line 414
    const-string v0, "health"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Ladd;->b:I

    .line 416
    const-string v0, "present"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v1, v0}, Ladd;->a(Ladd;Z)Z

    .line 418
    const-string v0, "level"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Ladd;->c:I

    .line 419
    const-string v0, "scale"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Ladd;->d:I

    .line 420
    const-string v0, "plugged"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Ladd;->e:I

    .line 421
    const-string v0, "voltage"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Ladd;->f:I

    .line 422
    const-string v0, "temperature"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Ladd;->g:I

    .line 423
    const-string v0, "technology"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ladd;->h:Ljava/lang/String;

    .line 425
    invoke-direct {p0, v1}, Lacz;->b(Ladd;)V

    .line 427
    iput-boolean v3, v1, Ladd;->i:Z

    .line 428
    iget v0, v1, Ladd;->d:I

    if-ge v0, v2, :cond_4

    iget v0, v1, Ladd;->c:I

    :goto_0
    invoke-static {v1, v0}, Ladd;->a(Ladd;I)I

    .line 429
    invoke-static {v1}, Ladd;->a(Ladd;)I

    move-result v0

    if-ltz v0, :cond_5

    invoke-static {v1}, Ladd;->a(Ladd;)I

    move-result v0

    if-gt v0, v4, :cond_5

    .line 430
    invoke-static {v1}, Ladd;->a(Ladd;)I

    move-result v0

    iput v0, v1, Ladd;->j:I

    .line 438
    :cond_0
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v0, v2, :cond_2

    sget-object v0, Lacz;->q:Lacx;

    invoke-virtual {v0}, Lacx;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 440
    iget v0, p0, Lacz;->n:I

    if-ne v0, v5, :cond_7

    iget-wide v2, p0, Lacz;->m:J

    cmp-long v0, v2, v6

    if-nez v0, :cond_1

    iget v0, v1, Ladd;->j:I

    if-ge v0, v4, :cond_7

    .line 442
    :cond_1
    iget-object v0, p0, Lacz;->h:Landroid/content/Context;

    iget v2, v1, Ladd;->j:I

    iget-wide v3, p0, Lacz;->m:J

    invoke-static {v0, v2, v3, v4}, Lbal;->a(Landroid/content/Context;IJ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 444
    sget-object v0, Lacz;->q:Lacx;

    invoke-virtual {v0}, Lacx;->c()V

    .line 452
    :cond_2
    :goto_2
    iget-object v0, p0, Lacz;->i:Ladd;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lacz;->i:Ladd;

    iget v0, v0, Ladd;->j:I

    iget v2, v1, Ladd;->j:I

    if-eq v0, v2, :cond_8

    .line 454
    :cond_3
    iget-object v0, p0, Lacz;->k:Laud;

    iget v2, v1, Ladd;->j:I

    int-to-double v2, v2

    invoke-virtual {v0, v2, v3, v5}, Laud;->a(DI)I

    move-result v0

    iput v0, v1, Ladd;->k:I

    .line 461
    :goto_3
    invoke-direct {p0, v1}, Lacz;->a(Ladd;)V

    .line 462
    iput-object v1, p0, Lacz;->i:Ladd;

    .line 463
    return-void

    .line 428
    :cond_4
    iget v0, v1, Ladd;->c:I

    mul-int/lit8 v0, v0, 0x64

    iget v2, v1, Ladd;->d:I

    div-int/2addr v0, v2

    goto :goto_0

    .line 431
    :cond_5
    invoke-static {v1}, Ladd;->a(Ladd;)I

    move-result v0

    if-gez v0, :cond_6

    .line 432
    iput v3, v1, Ladd;->j:I

    goto :goto_1

    .line 434
    :cond_6
    invoke-static {v1}, Ladd;->a(Ladd;)I

    move-result v0

    if-le v0, v4, :cond_0

    .line 435
    iput v4, v1, Ladd;->j:I

    goto :goto_1

    .line 446
    :cond_7
    iget-wide v2, p0, Lacz;->m:J

    cmp-long v0, v2, v6

    if-nez v0, :cond_2

    iget v0, v1, Ladd;->j:I

    if-ne v0, v4, :cond_2

    .line 447
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lacz;->m:J

    goto :goto_2

    .line 457
    :cond_8
    iget-object v0, p0, Lacz;->i:Ladd;

    iget v0, v0, Ladd;->k:I

    iput v0, v1, Ladd;->k:I

    goto :goto_3
.end method

.method static synthetic a(Lacz;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-boolean p1, p0, Lacz;->f:Z

    return p1
.end method

.method static synthetic b(Lacz;)Ladd;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lacz;->i:Ladd;

    return-object v0
.end method

.method private b(Ladd;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x3e8

    const/16 v0, 0x258

    .line 476
    sget-object v1, Lacz;->e:Ljava/lang/String;

    const-string v2, "SCH-i909"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-gt v1, v2, :cond_0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "2.2.2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 478
    iput v3, p1, Ladd;->d:I

    .line 479
    iput v3, p0, Lacz;->l:I

    .line 480
    iget-object v1, p0, Lacz;->h:Landroid/content/Context;

    invoke-static {v1}, Lazr;->a(Landroid/content/Context;)Lazr;

    move-result-object v1

    iget v2, p0, Lacz;->l:I

    invoke-virtual {v1, v2}, Lazr;->b(I)V

    .line 485
    :cond_0
    iget v1, p1, Ladd;->c:I

    iget v2, p1, Ladd;->d:I

    if-le v1, v2, :cond_1

    .line 486
    const-string v1, "BatteryInfoHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad phone!!! battery level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Ladd;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", battery scale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Ladd;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mBatteryScale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lacz;->l:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lazt;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget v1, p1, Ladd;->c:I

    rem-int/lit8 v1, v1, 0x64

    if-nez v1, :cond_1

    .line 490
    iget v1, p1, Ladd;->c:I

    iput v1, p0, Lacz;->l:I

    .line 491
    iget-object v1, p0, Lacz;->h:Landroid/content/Context;

    invoke-static {v1}, Lazr;->a(Landroid/content/Context;)Lazr;

    move-result-object v1

    iget v2, p0, Lacz;->l:I

    invoke-virtual {v1, v2}, Lazr;->b(I)V

    .line 496
    :cond_1
    iget v1, p1, Ladd;->d:I

    iget v2, p0, Lacz;->l:I

    if-ge v1, v2, :cond_2

    .line 497
    iget v1, p0, Lacz;->l:I

    iput v1, p1, Ladd;->d:I

    .line 500
    :cond_2
    iget v1, p1, Ladd;->g:I

    const/16 v2, 0x50

    if-ge v1, v2, :cond_3

    .line 502
    iget v1, p1, Ladd;->g:I

    mul-int/lit8 v1, v1, 0xa

    iput v1, p1, Ladd;->g:I

    .line 505
    :cond_3
    iget v1, p1, Ladd;->g:I

    .line 506
    if-le v1, v0, :cond_5

    :goto_0
    iput v0, p1, Ladd;->g:I

    .line 508
    iget v0, p1, Ladd;->f:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_4

    .line 510
    iget v0, p1, Ladd;->f:I

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p1, Ladd;->f:I

    .line 516
    :cond_4
    return-void

    .line 506
    :cond_5
    if-gez v1, :cond_6

    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lacz;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lacz;->h:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lacz;)Ladg;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lacz;->o:Ladg;

    return-object v0
.end method

.method public static d(I)Z
    .locals 1
    .parameter

    .prologue
    .line 584
    const/16 v0, 0x1388

    if-gt p0, v0, :cond_0

    const/16 v0, 0xaf0

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lacz;)Laff;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lacz;->j:Laff;

    return-object v0
.end method

.method private declared-synchronized e()V
    .locals 4

    .prologue
    .line 314
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lacz;->g:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 315
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lacz;->g:Ljava/util/Timer;

    .line 316
    iget-object v0, p0, Lacz;->g:Ljava/util/Timer;

    new-instance v1, Ladb;

    invoke-direct {v1, p0}, Ladb;-><init>(Lacz;)V

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    :cond_0
    monitor-exit p0

    return-void

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic f(Lacz;)Laud;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lacz;->k:Laud;

    return-object v0
.end method

.method private declared-synchronized f()V
    .locals 1

    .prologue
    .line 329
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lacz;->g:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 330
    const/4 v0, 0x0

    iput-boolean v0, p0, Lacz;->f:Z

    .line 331
    iget-object v0, p0, Lacz;->g:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 332
    const/4 v0, 0x0

    iput-object v0, p0, Lacz;->g:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    :cond_0
    monitor-exit p0

    return-void

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 384
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 385
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 386
    const-string v1, "com.dianxinos.dxbs.MODECHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 387
    const-string v1, "com.dianxinos.dxbs.MODEMODIFIED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 388
    const-string v1, "com.dianxinos.dxbs.action.RemainingTimeUpate"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 389
    const-string v1, "com.dianxinos.dxbs.BATTERY_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 390
    const-string v1, "com.dianxinos.dxbs.test.batterychanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 391
    iget-object v1, p0, Lacz;->h:Landroid/content/Context;

    iget-object v2, p0, Lacz;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 392
    if-eqz v0, :cond_0

    .line 394
    invoke-direct {p0, v0}, Lacz;->a(Landroid/content/Intent;)V

    .line 397
    :cond_0
    const-string v0, "BatteryInfoHelper"

    const-string v1, "BatteryInfoHelper, service started"

    invoke-static {v0, v1}, Lazt;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 402
    :try_start_0
    iget-object v0, p0, Lacz;->h:Landroid/content/Context;

    iget-object v1, p0, Lacz;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :goto_0
    const-string v0, "BatteryInfoHelper"

    const-string v1, "BatteryInfoHelper, service stopped"

    invoke-static {v0, v1}, Lazt;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    return-void

    .line 403
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 5

    .prologue
    .line 285
    const/4 v0, -0x1

    .line 287
    iget-object v1, p0, Lacz;->i:Ladd;

    if-eqz v1, :cond_1

    .line 288
    iget-object v0, p0, Lacz;->i:Ladd;

    iget v1, v0, Ladd;->k:I

    .line 289
    iget-object v0, p0, Lacz;->k:Laud;

    iget-object v2, p0, Lacz;->i:Ladd;

    iget v2, v2, Ladd;->j:I

    int-to-double v2, v2

    const/4 v4, 0x5

    invoke-virtual {v0, v2, v3, v4}, Laud;->a(DI)I

    move-result v0

    .line 291
    sub-int v2, v0, v1

    const/16 v3, 0x12c

    if-ge v2, v3, :cond_0

    .line 293
    add-int/lit16 v0, v1, 0x12c

    .line 295
    :cond_0
    iget-object v1, p0, Lacz;->i:Ladd;

    iput v0, v1, Ladd;->k:I

    .line 296
    iget-object v1, p0, Lacz;->i:Ladd;

    invoke-direct {p0, v1}, Lacz;->a(Ladd;)V

    .line 299
    :cond_1
    return v0
.end method

.method public a(Ladc;)V
    .locals 2
    .parameter

    .prologue
    .line 250
    iget-object v1, p0, Lacz;->t:Ljava/util/List;

    monitor-enter v1

    .line 251
    :try_start_0
    iget-object v0, p0, Lacz;->t:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lacz;->t:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    iget-object v0, p0, Lacz;->i:Ladd;

    invoke-interface {p1, v0}, Ladc;->a(Ladd;)V

    .line 260
    :goto_0
    return-void

    .line 254
    :cond_0
    :try_start_1
    monitor-exit v1

    goto :goto_0

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Lade;)V
    .locals 2
    .parameter

    .prologue
    .line 263
    iget-object v1, p0, Lacz;->u:Ljava/util/List;

    monitor-enter v1

    .line 264
    :try_start_0
    iget-object v0, p0, Lacz;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lacz;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    iget-object v0, p0, Lacz;->i:Ladd;

    invoke-interface {p1, v0}, Lade;->a(Ladd;)V

    .line 271
    return-void

    .line 267
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b()I
    .locals 2

    .prologue
    const v1, 0xd2f00

    .line 307
    sget-boolean v0, Lazf;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacz;->i:Ladd;

    iget v0, v0, Ladd;->k:I

    if-le v0, v1, :cond_0

    .line 308
    iget-object v0, p0, Lacz;->i:Ladd;

    iput v1, v0, Ladd;->k:I

    .line 310
    :cond_0
    iget-object v0, p0, Lacz;->i:Ladd;

    iget v0, v0, Ladd;->k:I

    return v0
.end method

.method public b(Ladc;)V
    .locals 2
    .parameter

    .prologue
    .line 274
    iget-object v1, p0, Lacz;->t:Ljava/util/List;

    monitor-enter v1

    .line 275
    :try_start_0
    iget-object v0, p0, Lacz;->t:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 276
    monitor-exit v1

    .line 277
    return-void

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(I)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 556
    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 560
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ladd;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lacz;->i:Ladd;

    return-object v0
.end method

.method public c(I)Z
    .locals 1
    .parameter

    .prologue
    .line 580
    const/4 v0, 0x1

    return v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lacz;->i:Ladd;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lacz;->i:Ladd;

    invoke-direct {p0, v0}, Lacz;->a(Ladd;)V

    .line 549
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 230
    invoke-direct {p0}, Lacz;->h()V

    .line 231
    return-void
.end method
