.class public Lamh;
.super Ljava/lang/Object;
.source "ModeCommand.java"

# interfaces
.implements Lahq;


# static fields
.field private static j:Lamh;


# instance fields
.field public a:Lahd;

.field private b:Ljava/util/ArrayList;

.field private c:Landroid/content/Context;

.field private d:I

.field private e:Ljava/util/ArrayList;

.field private f:Ljava/util/ArrayList;

.field private g:Ljava/util/ArrayList;

.field private h:Ljava/util/ArrayList;

.field private i:Lamk;

.field private k:Lamp;

.field private l:Z

.field private m:Ljava/util/Timer;

.field private n:Lacc;

.field private o:Ljava/util/Timer;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Larr;

.field private t:I

.field private u:Laif;

.field private v:Ljava/util/List;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lamp;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 613
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lamh;->v:Ljava/util/List;

    .line 86
    iput-object p1, p0, Lamh;->c:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lamh;->k:Lamp;

    .line 88
    iget-object v0, p0, Lamh;->c:Landroid/content/Context;

    invoke-static {v0}, Lacc;->a(Landroid/content/Context;)Lacc;

    move-result-object v0

    iput-object v0, p0, Lamh;->n:Lacc;

    .line 90
    invoke-direct {p0}, Lamh;->m()V

    .line 91
    new-instance v0, Lahd;

    iget-object v1, p0, Lamh;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lahd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lamh;->a:Lahd;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lamh;->e:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lamh;->f:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lamh;->g:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lamh;->h:Ljava/util/ArrayList;

    .line 97
    invoke-virtual {p0}, Lamh;->g()V

    .line 98
    invoke-virtual {p0}, Lamh;->j()V

    .line 100
    invoke-static {p1}, Larr;->a(Landroid/content/Context;)Larr;

    move-result-object v0

    iput-object v0, p0, Lamh;->s:Larr;

    .line 101
    return-void
.end method

.method public static a(Landroid/content/Context;Lamp;)Lamh;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 75
    sget-object v0, Lamh;->j:Lamh;

    if-nez v0, :cond_1

    .line 76
    const-class v1, Lamh;

    monitor-enter v1

    .line 77
    :try_start_0
    sget-object v0, Lamh;->j:Lamh;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lamh;

    invoke-direct {v0, p0, p1}, Lamh;-><init>(Landroid/content/Context;Lamp;)V

    sput-object v0, Lamh;->j:Lamh;

    .line 80
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_1
    sget-object v0, Lamh;->j:Lamh;

    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 0
    .parameter

    .prologue
    .line 637
    return-void
.end method

.method static synthetic a(Lamh;)Z
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-boolean v0, p0, Lamh;->p:Z

    return v0
.end method

.method static synthetic a(Lamh;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-boolean p1, p0, Lamh;->l:Z

    return p1
.end method

.method private b(Lahp;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    .line 532
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lamh;->d:I

    if-ge v0, v1, :cond_1

    .line 533
    iget-object v1, p0, Lamh;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_5

    .line 534
    iput v0, p0, Lamh;->t:I

    .line 535
    invoke-virtual {p1}, Lahp;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 536
    iget-object v1, p0, Lamh;->f:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 537
    :cond_0
    iget-object v1, p0, Lamh;->g:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 539
    iget-object v1, p0, Lamh;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 565
    :cond_1
    :goto_1
    return-void

    .line 543
    :cond_2
    iget-object v1, p0, Lamh;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 545
    invoke-direct {p0}, Lamh;->n()V

    .line 547
    iget-object v0, p0, Lamh;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 548
    iget-object v0, p0, Lamh;->n:Lacc;

    invoke-virtual {v0}, Lacc;->b()V

    goto :goto_1

    .line 552
    :cond_3
    iget-object v0, p0, Lamh;->k:Lamp;

    invoke-virtual {v0}, Lamp;->b()I

    move-result v0

    invoke-static {v3}, Lamq;->d(I)I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lamh;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 554
    iget-object v0, p0, Lamh;->n:Lacc;

    invoke-virtual {v0}, Lacc;->a()V

    .line 557
    :cond_4
    invoke-virtual {p0}, Lamh;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 558
    invoke-direct {p0}, Lamh;->o()V

    goto :goto_1

    .line 532
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lamh;)Z
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-boolean v0, p0, Lamh;->q:Z

    return v0
.end method

.method static synthetic c(Lamh;)Z
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-boolean v0, p0, Lamh;->r:Z

    return v0
.end method

.method private e(I)V
    .locals 2
    .parameter

    .prologue
    .line 510
    iget-object v0, p0, Lamh;->k:Lamp;

    invoke-virtual {v0}, Lamp;->b()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1}, Lamq;->d(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 511
    if-nez p1, :cond_0

    .line 512
    invoke-direct {p0}, Lamh;->n()V

    .line 513
    iget-object v0, p0, Lamh;->n:Lacc;

    invoke-virtual {v0}, Lacc;->b()V

    .line 528
    :goto_0
    return-void

    .line 516
    :cond_0
    invoke-direct {p0}, Lamh;->o()V

    .line 517
    iget-object v0, p0, Lamh;->n:Lacc;

    invoke-virtual {v0}, Lacc;->a()V

    goto :goto_0

    .line 521
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 522
    invoke-direct {p0}, Lamh;->n()V

    goto :goto_0

    .line 525
    :cond_2
    invoke-direct {p0}, Lamh;->o()V

    goto :goto_0
.end method

.method private m()V
    .locals 3

    .prologue
    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lamh;->b:Ljava/util/ArrayList;

    .line 114
    iget-object v0, p0, Lamh;->b:Ljava/util/ArrayList;

    new-instance v1, Lahl;

    iget-object v2, p0, Lamh;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lahl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v0, p0, Lamh;->b:Ljava/util/ArrayList;

    new-instance v1, Laid;

    iget-object v2, p0, Lamh;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Laid;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lamh;->b:Ljava/util/ArrayList;

    new-instance v1, Laih;

    iget-object v2, p0, Lamh;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Laih;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lamh;->b:Ljava/util/ArrayList;

    new-instance v1, Lahj;

    iget-object v2, p0, Lamh;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lahj;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, p0, Lamh;->b:Ljava/util/ArrayList;

    new-instance v1, Lahv;

    iget-object v2, p0, Lamh;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lahv;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v0, p0, Lamh;->b:Ljava/util/ArrayList;

    new-instance v1, Lahf;

    iget-object v2, p0, Lamh;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lahf;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v0, Laif;

    iget-object v1, p0, Lamh;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Laif;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lamh;->u:Laif;

    .line 123
    iget-object v0, p0, Lamh;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lamh;->u:Laif;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lamh;->b:Ljava/util/ArrayList;

    new-instance v1, Laht;

    iget-object v2, p0, Lamh;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Laht;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v0, p0, Lamh;->b:Ljava/util/ArrayList;

    new-instance v1, Lahn;

    iget-object v2, p0, Lamh;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lahn;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lamh;->b:Ljava/util/ArrayList;

    new-instance v1, Lahr;

    iget-object v2, p0, Lamh;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lahr;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v0, p0, Lamh;->b:Ljava/util/ArrayList;

    new-instance v1, Lahi;

    iget-object v2, p0, Lamh;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lahi;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p0, Lamh;->b:Ljava/util/ArrayList;

    new-instance v1, Lahz;

    iget-object v2, p0, Lamh;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lahz;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v0, p0, Lamh;->b:Ljava/util/ArrayList;

    new-instance v1, Laib;

    iget-object v2, p0, Lamh;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Laib;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, p0, Lamh;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lamh;->d:I

    .line 134
    return-void
.end method

.method private n()V
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lamh;->i:Lamk;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lamh;->i:Lamk;

    invoke-interface {v0}, Lamk;->b()V

    .line 570
    :cond_0
    return-void
.end method

.method private o()V
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lamh;->i:Lamk;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lamh;->i:Lamk;

    invoke-interface {v0}, Lamk;->c()V

    .line 575
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Lahp;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lamh;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahp;

    return-object v0
.end method

.method public a()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lamh;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Lahp;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 493
    iget-object v0, p0, Lamh;->a:Lahd;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 494
    invoke-direct {p0, p3}, Lamh;->e(I)V

    .line 495
    const/16 v0, 0xd

    iput v0, p0, Lamh;->t:I

    .line 502
    :goto_0
    iget-boolean v0, p0, Lamh;->l:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lamh;->p:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lamh;->q:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lamh;->r:Z

    if-eqz v0, :cond_1

    .line 503
    :cond_0
    iget-object v0, p0, Lamh;->k:Lamp;

    iget v1, p0, Lamh;->t:I

    invoke-virtual {v0, v1}, Lamp;->f(I)V

    .line 505
    :cond_1
    return-void

    .line 499
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lamh;->b(Lahp;II)V

    goto :goto_0
.end method

.method public a(Lamk;)V
    .locals 0
    .parameter

    .prologue
    .line 578
    iput-object p1, p0, Lamh;->i:Lamk;

    .line 579
    return-void
.end method

.method public a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 463
    iget-object v0, p0, Lamh;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 464
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lamh;->d:I

    if-ge v0, v1, :cond_1

    .line 466
    if-eqz p1, :cond_0

    .line 468
    iget-object v1, p0, Lamh;->h:Ljava/util/ArrayList;

    iget-object v2, p0, Lamh;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 471
    :cond_0
    iget-object v1, p0, Lamh;->h:Ljava/util/ArrayList;

    iget-object v2, p0, Lamh;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 474
    :cond_1
    return-void
.end method

.method public a(II)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 215
    iget-object v0, p0, Lamh;->m:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lamh;->m:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 218
    :cond_0
    iput-boolean v1, p0, Lamh;->l:Z

    .line 219
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lamh;->m:Ljava/util/Timer;

    .line 220
    iget-object v0, p0, Lamh;->m:Ljava/util/Timer;

    new-instance v3, Lami;

    invoke-direct {v3, p0}, Lami;-><init>(Lamh;)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 231
    iput-boolean v2, p0, Lamh;->p:Z

    .line 232
    iput-boolean v2, p0, Lamh;->q:Z

    .line 233
    iput-boolean v2, p0, Lamh;->r:Z

    .line 235
    iget-object v0, p0, Lamh;->a:Lahd;

    invoke-virtual {v0}, Lahd;->a()Z

    move-result v4

    .line 236
    invoke-static {v7}, Lamq;->d(I)I

    move-result v0

    if-eq p1, v0, :cond_b

    if-eqz v4, :cond_b

    .line 237
    iget-object v0, p0, Lamh;->a:Lahd;

    invoke-virtual {v0, v2}, Lahd;->a(Z)V

    move v0, v1

    .line 241
    :goto_0
    invoke-static {}, Lazf;->n()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 242
    invoke-virtual {p0, v8}, Lamh;->b(I)V

    :cond_1
    move v3, v2

    .line 244
    :goto_1
    iget v5, p0, Lamh;->d:I

    if-ge v2, v5, :cond_6

    .line 246
    invoke-virtual {p0}, Lamh;->i()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0}, Lamh;->e()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eq v5, v6, :cond_3

    .line 249
    invoke-virtual {p0, v2}, Lamh;->b(I)V

    .line 250
    if-nez v2, :cond_2

    move v3, v1

    .line 244
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 257
    :cond_3
    if-eqz v0, :cond_2

    .line 258
    if-ne v2, v7, :cond_4

    .line 259
    iput-boolean v1, p0, Lamh;->p:Z

    goto :goto_2

    .line 260
    :cond_4
    const/4 v5, 0x3

    if-ne v2, v5, :cond_5

    .line 261
    iput-boolean v1, p0, Lamh;->q:Z

    goto :goto_2

    .line 262
    :cond_5
    if-ne v2, v8, :cond_2

    .line 263
    iput-boolean v1, p0, Lamh;->r:Z

    goto :goto_2

    .line 269
    :cond_6
    if-eqz v0, :cond_7

    .line 270
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lamh;->o:Ljava/util/Timer;

    .line 271
    iget-object v0, p0, Lamh;->o:Ljava/util/Timer;

    new-instance v2, Lamj;

    invoke-direct {v2, p0}, Lamj;-><init>(Lamh;)V

    const-wide/16 v5, 0x7d0

    invoke-virtual {v0, v2, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 283
    :cond_7
    invoke-static {v7}, Lamq;->d(I)I

    move-result v0

    if-ne p1, v0, :cond_8

    if-nez v4, :cond_8

    .line 285
    iget-object v0, p0, Lamh;->a:Lahd;

    invoke-virtual {v0, v1}, Lahd;->a(Z)V

    .line 287
    :cond_8
    iget-object v0, p0, Lamh;->k:Lamp;

    invoke-virtual {v0, p1}, Lamp;->e(I)V

    .line 288
    iget-object v0, p0, Lamh;->k:Lamp;

    invoke-virtual {v0, p2}, Lamp;->i(I)V

    .line 290
    if-nez p2, :cond_9

    .line 291
    iget-object v0, p0, Lamh;->c:Landroid/content/Context;

    invoke-static {v0}, Lbap;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lamh;->c:Landroid/content/Context;

    invoke-static {v0}, Lamb;->a(Landroid/content/Context;)Lamb;

    move-result-object v0

    invoke-virtual {v0}, Lamb;->j()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 292
    iget-object v0, p0, Lamh;->c:Landroid/content/Context;

    invoke-static {v0}, Lbae;->a(Landroid/content/Context;)V

    .line 296
    :cond_9
    invoke-static {v7}, Lamq;->d(I)I

    move-result v0

    if-ne p1, v0, :cond_a

    .line 297
    iget-object v0, p0, Lamh;->n:Lacc;

    invoke-virtual {v0}, Lacc;->a()V

    .line 302
    :goto_3
    iget-object v0, p0, Lamh;->s:Larr;

    iget-boolean v1, p0, Lamh;->r:Z

    iget-boolean v2, p0, Lamh;->p:Z

    invoke-virtual {v0, v1, v2}, Larr;->a(ZZ)V

    .line 303
    return v3

    .line 300
    :cond_a
    iget-object v0, p0, Lamh;->n:Lacc;

    invoke-virtual {v0}, Lacc;->b()V

    goto :goto_3

    :cond_b
    move v0, v2

    goto/16 :goto_0
.end method

.method public b(II)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    const/4 v4, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 427
    .line 428
    invoke-virtual {p0}, Lamh;->g()V

    .line 429
    const/16 v0, 0xd

    if-ne p2, v0, :cond_3

    .line 430
    iget-object v0, p0, Lamh;->a:Lahd;

    invoke-virtual {v0}, Lahd;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 451
    :cond_0
    :goto_0
    return v3

    .line 433
    :cond_1
    invoke-static {v1}, Lamq;->d(I)I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lamh;->a:Lahd;

    invoke-virtual {v0}, Lahd;->a()Z

    move-result v0

    if-nez v0, :cond_2

    move v3, v4

    .line 435
    goto :goto_0

    .line 436
    :cond_2
    invoke-static {v1}, Lamq;->d(I)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lamh;->a:Lahd;

    invoke-virtual {v0}, Lahd;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    move v3, v2

    .line 438
    goto :goto_0

    .line 442
    :cond_3
    iget-object v0, p0, Lamh;->k:Lamp;

    invoke-virtual {v0}, Lamp;->f()Lanb;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lanb;->a(II)Ljava/lang/Integer;

    move-result-object v5

    .line 443
    iget-object v0, p0, Lamh;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 444
    invoke-virtual {v0, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 446
    :cond_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    .line 448
    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v3, v4

    .line 449
    goto :goto_0

    :cond_5
    move v3, v1

    goto :goto_0

    :cond_6
    move v1, v3

    goto :goto_1
.end method

.method public b()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lamh;->k:Lamp;

    invoke-virtual {v0}, Lamp;->f()Lanb;

    move-result-object v0

    iget-object v1, p0, Lamh;->k:Lamp;

    invoke-virtual {v1}, Lamp;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lanb;->a(I)Ljava/util/ArrayList;

    .line 143
    return-void
.end method

.method public b(I)V
    .locals 4
    .parameter

    .prologue
    .line 333
    iget-object v0, p0, Lamh;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahp;

    .line 334
    invoke-virtual {v0}, Lahp;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    iget-object v1, p0, Lamh;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 336
    invoke-virtual {v0, v1}, Lahp;->a(I)V

    .line 339
    iget-object v2, p0, Lamh;->f:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 340
    iget-object v2, p0, Lamh;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lahp;->e(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 342
    :cond_0
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lamh;->d:I

    return v0
.end method

.method public c(I)V
    .locals 4
    .parameter

    .prologue
    .line 345
    iget-object v0, p0, Lamh;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 346
    iget-object v0, p0, Lamh;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Lamh;->k:Lamp;

    invoke-virtual {v1}, Lamp;->f()Lanb;

    move-result-object v1

    invoke-virtual {v1, p1}, Lanb;->a(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 358
    :cond_0
    return-void

    .line 348
    :cond_1
    iget-object v0, p0, Lamh;->k:Lamp;

    invoke-virtual {v0}, Lamp;->f()Lanb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lanb;->a(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 349
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lamh;->d:I

    if-ge v0, v2, :cond_0

    .line 350
    iget-object v2, p0, Lamh;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public d()I
    .locals 3

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 151
    iget-object v1, p0, Lamh;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahp;

    .line 152
    invoke-virtual {v0}, Lahp;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    .line 155
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public d(I)Ljava/util/ArrayList;
    .locals 5
    .parameter

    .prologue
    .line 361
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 363
    iget-object v0, p0, Lamh;->k:Lamp;

    invoke-virtual {v0}, Lamp;->f()Lanb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lanb;->a(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 365
    invoke-virtual {p0}, Lamh;->g()V

    .line 366
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v0, p0, Lamh;->d:I

    if-ge v1, v0, :cond_2

    .line 367
    invoke-virtual {p0, v1}, Lamh;->a(I)Lahp;

    move-result-object v0

    invoke-virtual {v0}, Lahp;->h()Z

    move-result v0

    .line 368
    if-eqz v0, :cond_0

    iget-object v0, p0, Lamh;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    :cond_0
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 371
    :cond_1
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 373
    :cond_2
    return-object v2
.end method

.method public e()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lamh;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public f()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lamh;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method public g()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 377
    iget-object v1, p0, Lamh;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    :goto_0
    iget v1, p0, Lamh;->d:I

    if-ge v0, v1, :cond_1

    .line 380
    invoke-virtual {p0, v0}, Lamh;->a(I)Lahp;

    move-result-object v1

    invoke-virtual {v1}, Lahp;->f()I

    move-result v1

    .line 381
    iget-object v2, p0, Lamh;->f:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    invoke-virtual {p0, v0}, Lamh;->a(I)Lahp;

    move-result-object v1

    invoke-virtual {v1}, Lahp;->g()I

    move-result v1

    .line 383
    iget-object v2, p0, Lamh;->g:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 386
    :cond_0
    :goto_1
    iget v1, p0, Lamh;->d:I

    if-ge v0, v1, :cond_1

    .line 388
    iget-object v1, p0, Lamh;->f:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lamh;->a(I)Lahp;

    move-result-object v2

    invoke-virtual {v2}, Lahp;->f()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 389
    iget-object v1, p0, Lamh;->g:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lamh;->a(I)Lahp;

    move-result-object v2

    invoke-virtual {v2}, Lahp;->g()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 386
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 392
    :cond_1
    iget-object v0, p0, Lamh;->f:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lamh;->a(Ljava/util/ArrayList;)V

    .line 393
    return-void
.end method

.method public h()Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    .line 396
    iget-object v0, p0, Lamh;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v1, v2

    .line 398
    :goto_1
    iget v0, p0, Lamh;->d:I

    if-ge v1, v0, :cond_3

    .line 399
    invoke-virtual {p0, v1}, Lamh;->a(I)Lahp;

    move-result-object v0

    invoke-virtual {v0}, Lahp;->h()Z

    move-result v0

    .line 404
    if-eqz v0, :cond_2

    iget-object v0, p0, Lamh;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v3, p0, Lamh;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 408
    :cond_3
    iget-object v0, p0, Lamh;->k:Lamp;

    invoke-virtual {v0}, Lamp;->b()I

    move-result v0

    invoke-static {v4}, Lamq;->d(I)I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lamh;->a:Lahd;

    invoke-virtual {v0}, Lahd;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lamh;->a:Lahd;

    invoke-virtual {v0}, Lahd;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    :cond_4
    iget-object v0, p0, Lamh;->k:Lamp;

    invoke-virtual {v0}, Lamp;->b()I

    move-result v0

    invoke-static {v4}, Lamq;->d(I)I

    move-result v1

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lamh;->a:Lahd;

    invoke-virtual {v0}, Lahd;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lamh;->a:Lahd;

    invoke-virtual {v0}, Lahd;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    :cond_5
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public i()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lamh;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method public j()V
    .locals 2

    .prologue
    .line 587
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v0, p0, Lamh;->d:I

    if-ge v1, v0, :cond_0

    .line 588
    iget-object v0, p0, Lamh;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahp;

    invoke-virtual {v0, p0}, Lahp;->a(Lahq;)V

    .line 587
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 590
    :cond_0
    iget-object v0, p0, Lamh;->a:Lahd;

    invoke-virtual {v0, p0}, Lahd;->a(Lahq;)V

    .line 591
    return-void
.end method

.method public k()V
    .locals 2

    .prologue
    .line 602
    iget-object v0, p0, Lamh;->b:Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahp;

    invoke-virtual {v0, p0}, Lahp;->a(Lahq;)V

    .line 603
    return-void
.end method

.method public l()Lahd;
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lamh;->a:Lahd;

    return-object v0
.end method
