.class public Lbco;
.super Ljava/lang/Object;
.source "TrustDefenderMobile.java"


# static fields
.field private static final C:Ljava/lang/String;

.field public static a:Ljava/lang/String;


# instance fields
.field A:Ljava/util/ArrayList;

.field B:Ljava/util/ArrayList;

.field private D:Landroid/content/Context;

.field private E:Ljava/lang/Thread;

.field private F:Lbci;

.field private G:Ljava/lang/String;

.field private H:Ljava/util/concurrent/locks/ReentrantLock;

.field private I:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile J:Z

.field private volatile K:Lbcq;

.field private volatile L:Z

.field private M:Lbch;

.field private N:Lbcn;

.field b:Ljava/lang/String;

.field c:I

.field d:Ljava/lang/String;

.field e:Ljava/net/Socket;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:I

.field j:I

.field k:I

.field l:I

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field q:Ljava/lang/String;

.field r:Ljava/lang/String;

.field s:I

.field t:Ljava/lang/String;

.field u:Ljava/lang/String;

.field v:Ljava/lang/String;

.field w:I

.field x:Ljava/lang/String;

.field y:Ljava/lang/String;

.field z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lbco;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbco;->C:Ljava/lang/String;

    .line 62
    const-string v0, "TrustDefender Mobile: 1.2.4-3"

    sput-object v0, Lbco;->a:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object v1, p0, Lbco;->b:Ljava/lang/String;

    .line 126
    const/16 v0, 0x2710

    iput v0, p0, Lbco;->c:I

    .line 127
    iput-object v1, p0, Lbco;->d:Ljava/lang/String;

    .line 128
    iput-object v1, p0, Lbco;->e:Ljava/net/Socket;

    .line 129
    iput-object v1, p0, Lbco;->f:Ljava/lang/String;

    .line 130
    iput-object v1, p0, Lbco;->g:Ljava/lang/String;

    .line 131
    iput-object v1, p0, Lbco;->h:Ljava/lang/String;

    .line 133
    iput v2, p0, Lbco;->i:I

    .line 134
    iput v2, p0, Lbco;->j:I

    .line 135
    iput v2, p0, Lbco;->k:I

    .line 136
    iput v2, p0, Lbco;->l:I

    .line 137
    iput-object v1, p0, Lbco;->m:Ljava/lang/String;

    .line 138
    iput-object v1, p0, Lbco;->n:Ljava/lang/String;

    .line 140
    iput-object v1, p0, Lbco;->o:Ljava/lang/String;

    .line 141
    const-string v0, "0"

    iput-object v0, p0, Lbco;->p:Ljava/lang/String;

    .line 142
    iput-object v1, p0, Lbco;->q:Ljava/lang/String;

    .line 143
    iput-object v1, p0, Lbco;->r:Ljava/lang/String;

    .line 145
    iput v2, p0, Lbco;->s:I

    .line 146
    iput-object v1, p0, Lbco;->t:Ljava/lang/String;

    .line 147
    iput-object v1, p0, Lbco;->u:Ljava/lang/String;

    .line 148
    iput-object v1, p0, Lbco;->v:Ljava/lang/String;

    .line 149
    iput v2, p0, Lbco;->w:I

    .line 150
    iput-object v1, p0, Lbco;->x:Ljava/lang/String;

    .line 151
    iput-object v1, p0, Lbco;->y:Ljava/lang/String;

    .line 152
    iput-boolean v2, p0, Lbco;->z:Z

    .line 154
    iput-object v1, p0, Lbco;->A:Ljava/util/ArrayList;

    .line 156
    iput-object v1, p0, Lbco;->D:Landroid/content/Context;

    .line 157
    iput-object v1, p0, Lbco;->E:Ljava/lang/Thread;

    .line 158
    iput-object v1, p0, Lbco;->F:Lbci;

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbco;->B:Ljava/util/ArrayList;

    .line 164
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    .line 165
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lbco;->I:Ljava/util/concurrent/locks/ReentrantLock;

    .line 170
    sget-object v0, Lbcq;->b:Lbcq;

    iput-object v0, p0, Lbco;->K:Lbcq;

    .line 176
    new-instance v0, Lbcn;

    invoke-direct {v0}, Lbcn;-><init>()V

    iput-object v0, p0, Lbco;->N:Lbcn;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/StringBuilder;)Lbcq;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 324
    new-instance v0, Lbcb;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lbcb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 329
    :try_start_0
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 330
    iget-object v1, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 333
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 334
    iget-object v1, p0, Lbco;->B:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    int-to-long v3, p4

    invoke-virtual {v2, v3, v4}, Ljava/lang/Thread;->join(J)V

    .line 337
    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 340
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    const/4 v1, 0x0

    .line 346
    :goto_0
    :try_start_2
    iget-object v2, p0, Lbco;->B:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 347
    iget-object v1, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 373
    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 375
    sget-object v0, Lbco;->C:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fetched "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    sget-object v0, Lbcq;->b:Lbcq;

    .line 386
    :goto_1
    return-object v0

    .line 346
    :catchall_0
    move-exception v1

    :try_start_3
    iget-object v3, p0, Lbco;->B:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 347
    iget-object v2, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 371
    :catch_0
    move-exception v0

    .line 352
    sget-object v1, Lbco;->C:Ljava/lang/String;

    .line 353
    throw v0

    .line 358
    :catch_1
    move-exception v1

    iget-boolean v1, p0, Lbco;->L:Z

    if-eqz v1, :cond_0

    .line 361
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 365
    :cond_0
    sget-object v1, Lbco;->C:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to fetch W: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lbcb;->g:Lbcq;

    invoke-virtual {v2}, Lbcq;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    iget-object v1, v0, Lbcb;->g:Lbcq;

    sget-object v2, Lbcq;->b:Lbcq;

    if-eq v1, v2, :cond_1

    .line 368
    iget-object v0, v0, Lbcb;->g:Lbcq;

    goto :goto_1

    .line 370
    :cond_1
    sget-object v0, Lbcq;->c:Lbcq;

    goto :goto_1

    .line 380
    :cond_2
    sget-object v1, Lbco;->C:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to fetch w: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lbcb;->g:Lbcq;

    invoke-virtual {v3}, Lbcq;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v1, v0, Lbcb;->g:Lbcq;

    sget-object v2, Lbcq;->b:Lbcq;

    if-eq v1, v2, :cond_3

    .line 383
    iget-object v0, v0, Lbcb;->g:Lbcq;

    goto :goto_1

    .line 386
    :cond_3
    sget-object v0, Lbcq;->c:Lbcq;

    goto :goto_1

    :cond_4
    move-object v1, v2

    goto/16 :goto_0
.end method

.method private a(ILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v7, 0xff

    .line 673
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 674
    const-string v0, "w="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    iget-object v0, p0, Lbco;->d:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_0

    .line 679
    const-string v0, "&c="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    iget v0, p0, Lbco;->i:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 681
    const-string v0, "&z="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    iget v0, p0, Lbco;->j:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 685
    :cond_0
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_1

    .line 687
    const-string v0, "&f="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    iget v0, p0, Lbco;->k:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 689
    const-string v0, "x"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    iget v0, p0, Lbco;->l:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 693
    :cond_1
    iget-object v0, p0, Lbco;->m:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbco;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 695
    const-string v0, ""

    .line 698
    :try_start_0
    iget-object v1, p0, Lbco;->m:Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 704
    :goto_0
    const-string v1, "&lh="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v7, :cond_2

    invoke-virtual {v0, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    :cond_3
    const-string v0, ""

    .line 712
    :try_start_1
    iget-object v1, p0, Lbco;->n:Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 719
    :goto_1
    const-string v1, "&dr="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v7, :cond_4

    invoke-virtual {v0, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_5

    iget-object v0, p0, Lbco;->p:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lbco;->p:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lbco;->q:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 724
    const-string v0, "&p="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    iget-object v0, p0, Lbco;->o:Ljava/lang/String;

    if-nez v0, :cond_9

    const-string v0, ""

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    const-string v0, "&pl="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    iget-object v0, p0, Lbco;->p:Ljava/lang/String;

    if-nez v0, :cond_a

    const-string v0, ""

    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    const-string v0, "&ph="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    iget-object v0, p0, Lbco;->q:Ljava/lang/String;

    if-nez v0, :cond_b

    const-string v0, ""

    :goto_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    :cond_5
    const-string v0, "&hh="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbco;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbco;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_6

    iget v0, p0, Lbco;->s:I

    if-lez v0, :cond_6

    .line 737
    const-string v0, "&mt="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    iget-object v0, p0, Lbco;->t:Ljava/lang/String;

    if-nez v0, :cond_c

    const-string v0, ""

    :goto_5
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    const-string v0, "&mn="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    iget v0, p0, Lbco;->s:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 744
    :cond_6
    const-string v0, "&mdf="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    iget-object v0, p0, Lbco;->u:Ljava/lang/String;

    if-nez v0, :cond_d

    const-string v0, ""

    :goto_6
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    const-string v0, "&mds="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    iget-object v0, p0, Lbco;->v:Ljava/lang/String;

    if-nez v0, :cond_e

    const-string v0, ""

    :goto_7
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    const-string v0, "&imei="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    iget-object v0, p0, Lbco;->G:Ljava/lang/String;

    if-nez v0, :cond_f

    const-string v0, ""

    :goto_8
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    iget-object v0, p0, Lbco;->N:Lbcn;

    invoke-virtual {v0}, Lbcn;->c()Landroid/location/Location;

    move-result-object v0

    .line 754
    if-eqz v0, :cond_7

    .line 756
    const-string v1, "&tdlat="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    const-string v1, "&tdlon="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    const-string v1, "&tdlacc="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    sget-object v1, Lbco;->C:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Got lat/long/acc = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 765
    :cond_7
    iget-object v0, p0, Lbco;->A:Ljava/util/ArrayList;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lbco;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_10

    .line 768
    iget-object v0, p0, Lbco;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 771
    const-string v3, "&aca"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 773
    const-string v1, "="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v7, :cond_8

    invoke-virtual {v0, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_8
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    const/4 v0, 0x5

    if-ge v3, v0, :cond_10

    move v1, v3

    .line 776
    goto :goto_9

    .line 702
    :catch_0
    move-exception v1

    sget-object v1, Lbco;->C:Ljava/lang/String;

    goto/16 :goto_0

    .line 716
    :catch_1
    move-exception v1

    sget-object v1, Lbco;->C:Ljava/lang/String;

    goto/16 :goto_1

    .line 725
    :cond_9
    iget-object v0, p0, Lbco;->o:Ljava/lang/String;

    goto/16 :goto_2

    .line 727
    :cond_a
    iget-object v0, p0, Lbco;->p:Ljava/lang/String;

    goto/16 :goto_3

    .line 729
    :cond_b
    iget-object v0, p0, Lbco;->q:Ljava/lang/String;

    invoke-static {v0}, Lbco;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 738
    :cond_c
    iget-object v0, p0, Lbco;->t:Ljava/lang/String;

    invoke-static {v0}, Lbco;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 745
    :cond_d
    iget-object v0, p0, Lbco;->u:Ljava/lang/String;

    goto/16 :goto_6

    .line 747
    :cond_e
    iget-object v0, p0, Lbco;->v:Ljava/lang/String;

    goto/16 :goto_7

    .line 751
    :cond_f
    iget-object v0, p0, Lbco;->G:Ljava/lang/String;

    goto/16 :goto_8

    .line 780
    :cond_10
    const-string v0, "&at=agent_mobile&av="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    :try_start_2
    sget-object v0, Lbco;->a:Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 790
    :goto_a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbco;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lbco;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 787
    :catch_2
    move-exception v0

    sget-object v0, Lbco;->C:Ljava/lang/String;

    goto :goto_a
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 289
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 290
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_0

    .line 319
    :goto_0
    return-object p0

    .line 297
    :cond_0
    const/4 v0, 0x1

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 299
    const-string v0, "\\"

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 301
    if-lez v0, :cond_1

    .line 303
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 309
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v1, v4

    .line 312
    const/16 v4, 0x8

    :try_start_0
    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 307
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 314
    :catch_0
    move-exception v0

    .line 316
    sget-object v4, Lbco;->C:Ljava/lang/String;

    const-string v5, "failed to convert"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 319
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter
    .parameter

    .prologue
    const/4 v13, 0x1

    const/4 v1, 0x0

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 394
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 395
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 396
    new-instance v7, Ljava/util/Formatter;

    invoke-direct {v7, v6}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 398
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 401
    const/16 v0, 0x10

    new-array v9, v0, [C

    fill-array-data v9, :array_0

    move v2, v1

    move v3, v1

    .line 404
    :goto_0
    if-ge v2, v5, :cond_1

    .line 406
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    and-int/lit8 v3, v3, 0xa

    xor-int/2addr v3, v10

    int-to-char v3, v3

    .line 407
    if-lt v0, v8, :cond_0

    move v0, v1

    .line 409
    :cond_0
    const-string v10, "%c"

    new-array v11, v13, [Ljava/lang/Object;

    shr-int/lit8 v12, v3, 0x4

    and-int/lit8 v12, v12, 0xf

    aget-char v12, v9, v12

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    aput-object v12, v11, v1

    invoke-virtual {v7, v10, v11}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 410
    const-string v10, "%c"

    new-array v11, v13, [Ljava/lang/Object;

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v9, v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v11, v1

    invoke-virtual {v7, v10, v11}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 404
    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_0

    .line 412
    :cond_1
    invoke-virtual {v7}, Ljava/util/Formatter;->close()V

    .line 413
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 401
    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 624
    const-string v2, "false"

    .line 625
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 627
    :goto_0
    if-eqz v0, :cond_3

    .line 630
    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "[abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXY -]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 631
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 633
    const-string v0, "true"

    .line 637
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "^"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 625
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 448
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 449
    const/4 v1, 0x0

    .line 451
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 455
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 457
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 460
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 461
    array-length v1, v3

    if-eqz v1, :cond_0

    .line 462
    const/4 v1, 0x0

    aget-object v1, v3, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 464
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    const-string v1, ""

    .line 468
    array-length v5, v3

    if-le v5, v6, :cond_1

    .line 469
    const/4 v1, 0x1

    aget-object v1, v3, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 471
    :cond_1
    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 473
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 480
    :catch_0
    move-exception v1

    :goto_1
    :try_start_2
    sget-object v1, Lbco;->C:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 484
    if-eqz v0, :cond_2

    .line 488
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 497
    :cond_2
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 484
    :cond_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 492
    :catch_1
    move-exception v0

    sget-object v0, Lbco;->C:Ljava/lang/String;

    goto :goto_2

    :catch_2
    move-exception v0

    sget-object v0, Lbco;->C:Ljava/lang/String;

    goto :goto_2

    .line 484
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_4

    .line 488
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 493
    :cond_4
    :goto_4
    throw v0

    .line 492
    :catch_3
    move-exception v1

    sget-object v1, Lbco;->C:Ljava/lang/String;

    goto :goto_4

    .line 484
    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_3

    .line 480
    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Lbch;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 851
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 898
    :cond_0
    :goto_0
    return-void

    .line 852
    :cond_1
    new-instance v3, Lbcg;

    iget v0, p0, Lbco;->w:I

    and-int/lit8 v0, v0, 0x26

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    invoke-direct {v3, p1, p2, v0}, Lbcg;-><init>(Landroid/content/Context;Lbch;Z)V

    .line 857
    invoke-virtual {v3}, Lbcg;->c()V

    .line 859
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 861
    iget v0, p0, Lbco;->w:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    :goto_2
    invoke-virtual {v3, v1, p1}, Lbcg;->a(ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbco;->r:Ljava/lang/String;

    .line 863
    sget-object v0, Lbco;->C:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "getBrowserInfo: "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lbco;->r:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, "null"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    iget v0, p0, Lbco;->w:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_2

    .line 867
    const-string v0, "(function () { var plugins_string=\'\', i=0; for (p=navigator.plugins[0]; i< navigator.plugins.length;p=navigator.plugins[i++]) {  plugins_string += p.name + \'<FIELD_SEP>\' + p.description + \'<FIELD_SEP>\' + p.filename + \'<FIELD_SEP>\' + p.length.toString() + \'<REC_SEP>\'; } return plugins_string;})();"

    invoke-virtual {v3, v0}, Lbcg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 870
    if-eqz v0, :cond_2

    .line 872
    invoke-direct {p0, v0}, Lbco;->c(Ljava/lang/String;)V

    .line 876
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lbco;->w:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 878
    const-string v0, "navigator.mimeTypes.length"

    invoke-virtual {v3, v0}, Lbcg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 880
    if-eqz v0, :cond_3

    .line 884
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lbco;->s:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    :cond_3
    :goto_4
    const-string v0, "(function () { var mime_string=\'\', i=0; for (var m=navigator.mimeTypes[0]; i< navigator.mimeTypes.length;m=navigator.mimeTypes[i++]) {  mime_string += m.type; } return mime_string;})();"

    .line 892
    invoke-virtual {v3, v0}, Lbcg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbco;->t:Ljava/lang/String;

    .line 894
    iget-object v0, p0, Lbco;->t:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 895
    sget-object v0, Lbco;->C:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lbco;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 852
    goto :goto_1

    :cond_5
    move v1, v2

    .line 861
    goto :goto_2

    .line 863
    :cond_6
    iget-object v0, p0, Lbco;->r:Ljava/lang/String;

    goto :goto_3

    .line 886
    :catch_0
    move-exception v0

    .line 888
    sget-object v1, Lbco;->C:Ljava/lang/String;

    const-string v2, "failed to convert"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method private a(Lbch;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 949
    .line 951
    iget v0, p0, Lbco;->w:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    iget-object v0, p1, Lbch;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 953
    iget-object v0, p1, Lbch;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 954
    const/4 v1, 0x1

    .line 956
    if-eqz v0, :cond_0

    .line 958
    invoke-direct {p0, v0}, Lbco;->c(Ljava/lang/String;)V

    .line 962
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lbco;->w:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    iget-object v0, p1, Lbch;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 964
    iget-object v0, p1, Lbch;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 965
    add-int/lit8 v1, v1, 0x1

    .line 967
    if-eqz v0, :cond_3

    .line 971
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lbco;->s:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 982
    :goto_1
    iget v0, p0, Lbco;->s:I

    if-lez v0, :cond_1

    iget-object v0, p1, Lbch;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 984
    iget-object v0, p1, Lbch;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lbco;->t:Ljava/lang/String;

    .line 985
    :cond_1
    sget-object v0, Lbco;->C:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got mime "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lbco;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbco;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    :cond_2
    return-void

    .line 973
    :catch_0
    move-exception v0

    .line 975
    sget-object v3, Lbco;->C:Ljava/lang/String;

    const-string v4, "failed to convert"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 976
    :cond_3
    iput v2, p0, Lbco;->s:I

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method static synthetic a(Lbco;Landroid/content/Context;Lbch;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lbco;->a(Landroid/content/Context;Lbch;)V

    return-void
.end method

.method static synthetic a(Lbco;)Z
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-boolean v0, p0, Lbco;->L:Z

    return v0
.end method

.method static synthetic b(Lbco;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lbco;->D:Landroid/content/Context;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 258
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    :cond_0
    const-string v0, ""

    .line 284
    :goto_0
    return-object v0

    .line 264
    :cond_1
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 266
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 268
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 270
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 271
    new-instance v3, Ljava/util/Formatter;

    invoke-direct {v3, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 272
    array-length v4, v1

    :goto_1
    if-ge v0, v4, :cond_2

    aget-byte v5, v1, v0

    .line 274
    const-string v6, "%02x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 276
    :cond_2
    invoke-virtual {v3}, Ljava/util/Formatter;->close()V

    .line 277
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 282
    :catch_0
    move-exception v0

    sget-object v0, Lbco;->C:Ljava/lang/String;

    .line 284
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic c(Lbco;)Lbch;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lbco;->M:Lbch;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 903
    const-string v0, "(<FIELD_SEP>|<REC_SEP>)"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbco;->q:Ljava/lang/String;

    .line 905
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 907
    const-string v0, "<REC_SEP>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_2

    aget-object v5, v3, v0

    .line 909
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 944
    :goto_1
    return-void

    .line 910
    :cond_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 912
    const-string v7, "<FIELD_SEP>"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 913
    array-length v7, v5

    const/4 v8, 0x4

    if-ne v7, v8, :cond_1

    .line 915
    const-string v7, "name"

    aget-object v8, v5, v1

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    const-string v7, "description"

    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    const-string v7, "filename"

    const/4 v8, 0x2

    aget-object v8, v5, v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    const-string v7, "length"

    const/4 v8, 0x3

    aget-object v5, v5, v8

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 907
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 924
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbco;->p:Ljava/lang/String;

    .line 926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 928
    const-string v1, "QuickTime Plug-in"

    const-string v3, "plugin_quicktime"

    invoke-static {v1, v3, v2}, Lbco;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    const-string v1, "Adobe Acrobat"

    const-string v3, "plugin_adobe_acrobat"

    invoke-static {v1, v3, v2}, Lbco;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    const-string v1, "Java"

    const-string v3, "plugin_java"

    invoke-static {v1, v3, v2}, Lbco;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 931
    const-string v1, "SVG Viewer"

    const-string v3, "plugin_svg_viewer"

    invoke-static {v1, v3, v2}, Lbco;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    const-string v1, "Flash"

    const-string v3, "plugin_flash"

    invoke-static {v1, v3, v2}, Lbco;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 933
    const-string v1, "Windows Media Player"

    const-string v3, "plugin_windows_media_player"

    invoke-static {v1, v3, v2}, Lbco;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    const-string v1, "Silverlight"

    const-string v3, "plugin_silverlight"

    invoke-static {v1, v3, v2}, Lbco;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    const-string v1, "Real Player"

    const-string v3, "plugin_realplayer"

    invoke-static {v1, v3, v2}, Lbco;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    const-string v1, "ShockWave Director"

    const-string v3, "plugin_shockwave"

    invoke-static {v1, v3, v2}, Lbco;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    const-string v1, "VLC"

    const-string v3, "plugin_vlc_player"

    invoke-static {v1, v3, v2}, Lbco;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    const-string v1, "DevalVR"

    const-string v3, "plugin_devalvr"

    invoke-static {v1, v3, v2}, Lbco;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 940
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbco;->o:Ljava/lang/String;

    .line 943
    sget-object v0, Lbco;->C:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lbco;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbco;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/16 v1, 0x20

    .line 1160
    .line 1161
    if-nez p0, :cond_1

    .line 1162
    const/4 p0, 0x0

    .line 1176
    :cond_0
    :goto_0
    return-object p0

    .line 1164
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 1167
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_2

    .line 1169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lbco;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x20

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object p0, v0

    .line 1176
    goto :goto_0

    .line 1174
    :cond_2
    invoke-static {p0}, Lbco;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lbco;->C:Ljava/lang/String;

    return-object v0
.end method

.method private static f()Ljava/util/List;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 426
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 427
    new-instance v1, Ljava/io/File;

    const-string v3, "/system/fonts/"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 429
    const-string v3, ".ttf"

    .line 430
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 431
    if-nez v4, :cond_1

    .line 443
    :cond_0
    return-object v0

    .line 433
    :cond_1
    array-length v5, v4

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v6, v4, v1

    .line 435
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 437
    invoke-virtual {v6, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 439
    invoke-virtual {v6, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static g()Lbdd;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 795
    new-instance v1, Lbdd;

    invoke-direct {v1}, Lbdd;-><init>()V

    .line 797
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 798
    new-instance v3, Ljava/util/Formatter;

    invoke-direct {v3, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 799
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 801
    invoke-static {}, Lbco;->f()Ljava/util/List;

    move-result-object v5

    .line 802
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 804
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 806
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 809
    :cond_0
    const-string v0, "%04d"

    new-array v7, v10, [Ljava/lang/Object;

    const/16 v8, 0x2710

    invoke-virtual {v4, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v9

    invoke-virtual {v3, v0, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 810
    const-string v0, "nu"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lbdd;->b(Ljava/lang/String;Ljava/lang/String;)Lbdd;

    .line 811
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 813
    const-string v0, "%d"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-virtual {v3, v0, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 814
    const-string v0, "ftsn"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lbdd;->b(Ljava/lang/String;Ljava/lang/String;)Lbdd;

    .line 815
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 817
    const-string v0, "v"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lbdd;->b(Ljava/lang/String;Ljava/lang/String;)Lbdd;

    .line 818
    const-string v0, "o"

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lbdd;->b(Ljava/lang/String;Ljava/lang/String;)Lbdd;

    .line 819
    const-string v0, "mf"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lbdd;->b(Ljava/lang/String;Ljava/lang/String;)Lbdd;

    .line 820
    const-string v0, "l"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lbdd;->b(Ljava/lang/String;Ljava/lang/String;)Lbdd;

    .line 821
    const-string v0, "fts"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbco;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lbdd;->b(Ljava/lang/String;Ljava/lang/String;)Lbdd;

    .line 823
    sget-object v0, Lbco;->C:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getFlashProperties: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lbdd;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    invoke-virtual {v3}, Ljava/util/Formatter;->close()V

    .line 825
    return-object v1
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lbcq;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1050
    :try_start_0
    iget-object v0, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1052
    sget-object v0, Lbco;->C:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "starting profile request using - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lbco;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with options "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1054
    iget-boolean v0, p0, Lbco;->J:Z

    if-eqz v0, :cond_0

    .line 1056
    sget-object v0, Lbcq;->a:Lbcq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1148
    iget-object v1, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 1059
    :cond_0
    and-int/lit8 v0, p5, 0x1

    if-nez v0, :cond_1

    .line 1061
    :try_start_1
    sget-object v0, Lbco;->C:Ljava/lang/String;

    const-string v1, "Synchronous is deprecated, please switch to ASYNC"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 1065
    sget-object v0, Lbco;->C:Ljava/lang/String;

    const-string v1, "Synchronous only works when called from the UI thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    sget-object v0, Lbcq;->f:Lbcq;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1148
    iget-object v1, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 1071
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lbco;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lbco;->g:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lbco;->h:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lbco;->i:I

    const/4 v0, 0x0

    iput v0, p0, Lbco;->j:I

    const/4 v0, 0x0

    iput v0, p0, Lbco;->k:I

    const/4 v0, 0x0

    iput v0, p0, Lbco;->l:I

    const/4 v0, 0x0

    iput-object v0, p0, Lbco;->q:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lbco;->p:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lbco;->q:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lbco;->r:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lbco;->s:I

    const/4 v0, 0x0

    iput-object v0, p0, Lbco;->t:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lbco;->u:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lbco;->v:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lbco;->d:Ljava/lang/String;

    iget-object v0, p0, Lbco;->N:Lbcn;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbco;->N:Lbcn;

    invoke-virtual {v0}, Lbcn;->b()V

    .line 1072
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbco;->L:Z

    .line 1073
    sget-object v0, Lbcq;->a:Lbcq;

    iput-object v0, p0, Lbco;->K:Lbcq;

    .line 1076
    iget-object v0, p0, Lbco;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1078
    sget-object v0, Lbco;->C:Ljava/lang/String;

    .line 1079
    invoke-virtual {p0}, Lbco;->d()V

    .line 1082
    :cond_3
    iget-object v0, p0, Lbco;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1084
    if-nez p3, :cond_4

    .line 1085
    const-string p3, "h.online-metrix.net"

    .line 1087
    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    .line 1089
    :cond_5
    sget-object v0, Lbco;->C:Ljava/lang/String;

    const-string v1, "Invalid org_id"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    sget-object v0, Lbcq;->i:Lbcq;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1148
    iget-object v1, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 1093
    :cond_6
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lbco;->J:Z

    .line 1095
    iget-boolean v0, p0, Lbco;->z:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lbco;->b:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 1097
    :cond_7
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbco;->b:Ljava/lang/String;

    .line 1099
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbco;->z:Z

    .line 1102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbco;->n:Ljava/lang/String;

    .line 1105
    if-eqz p4, :cond_a

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    .line 1107
    iput-object p4, p0, Lbco;->m:Ljava/lang/String;

    .line 1108
    iget-object v0, p0, Lbco;->n:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    .line 1111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mobile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbco;->m:Ljava/lang/String;

    .line 1121
    :cond_9
    :goto_1
    iput p5, p0, Lbco;->w:I

    .line 1122
    iput-object p2, p0, Lbco;->x:Ljava/lang/String;

    .line 1123
    iput-object p3, p0, Lbco;->y:Ljava/lang/String;

    .line 1124
    iput-object p1, p0, Lbco;->D:Landroid/content/Context;

    .line 1125
    iget v0, p0, Lbco;->w:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_c

    .line 1127
    invoke-virtual {p0}, Lbco;->c()V

    .line 1128
    iget-object v0, p0, Lbco;->K:Lbcq;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1148
    iget-object v1, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 1117
    :cond_a
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mobile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbco;->m:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 1141
    :catch_0
    move-exception v0

    :try_start_5
    iget-object v0, p0, Lbco;->E:Ljava/lang/Thread;

    if-eqz v0, :cond_b

    .line 1142
    iget-object v0, p0, Lbco;->E:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1143
    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbco;->J:Z

    .line 1144
    sget-object v0, Lbcq;->h:Lbcq;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1148
    iget-object v1, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 1132
    :cond_c
    :try_start_6
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbca;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lbca;-><init>(Lbco;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lbco;->E:Ljava/lang/Thread;

    .line 1134
    iget-object v0, p0, Lbco;->E:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1137
    sget-object v0, Lbcq;->b:Lbcq;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1148
    iget-object v1, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lbco;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 211
    mul-int/lit16 v0, p1, 0x3e8

    iput v0, p0, Lbco;->c:I

    .line 212
    return-void
.end method

.method public a(Lbci;)V
    .locals 2
    .parameter

    .prologue
    .line 243
    :try_start_0
    iget-object v0, p0, Lbco;->I:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 244
    iput-object p1, p0, Lbco;->F:Lbci;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    iget-object v0, p0, Lbco;->I:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lbco;->I:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 251
    :cond_0
    return-void

    .line 248
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lbco;->I:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    iget-object v1, p0, Lbco;->I:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1
    throw v0
.end method

.method final a(Lbcq;)V
    .locals 0
    .parameter

    .prologue
    .line 1730
    iput-object p1, p0, Lbco;->K:Lbcq;

    .line 1731
    return-void
.end method

.method public b()Lbcq;
    .locals 2

    .prologue
    .line 1154
    sget-object v0, Lbco;->C:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getStatus returns: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lbco;->K:Lbcq;

    invoke-virtual {v1}, Lbcq;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    iget-object v0, p0, Lbco;->K:Lbcq;

    return-object v0
.end method

.method public c()V
    .locals 13

    .prologue
    .line 1185
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1186
    iget-object v1, p0, Lbco;->y:Ljava/lang/String;

    iget-object v2, p0, Lbco;->x:Ljava/lang/String;

    iget-object v3, p0, Lbco;->b:Ljava/lang/String;

    iget v4, p0, Lbco;->c:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbco;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/StringBuilder;)Lbcq;

    move-result-object v0

    .line 1188
    sget-object v1, Lbcq;->b:Lbcq;

    if-ne v0, v1, :cond_4

    .line 1190
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbco;->d:Ljava/lang/String;

    .line 1200
    iget-boolean v0, p0, Lbco;->L:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_0
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1677
    :catch_0
    move-exception v0

    .line 1679
    :try_start_1
    sget-object v0, Lbco;->C:Ljava/lang/String;

    .line 1680
    sget-object v0, Lbcq;->f:Lbcq;

    iput-object v0, p0, Lbco;->K:Lbcq;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1684
    iget-boolean v0, p0, Lbco;->L:Z

    if-eqz v0, :cond_1

    .line 1686
    sget-object v0, Lbcq;->h:Lbcq;

    iput-object v0, p0, Lbco;->K:Lbcq;

    .line 1688
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1695
    :cond_1
    :try_start_2
    iget-object v0, p0, Lbco;->I:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1697
    iget-object v0, p0, Lbco;->F:Lbci;

    if-eqz v0, :cond_2

    .line 1699
    iget-object v0, p0, Lbco;->F:Lbci;

    invoke-interface {v0}, Lbci;->complete()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_c
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_4

    .line 1708
    :cond_2
    iget-object v0, p0, Lbco;->I:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1709
    iget-object v0, p0, Lbco;->I:Ljava/util/concurrent/locks/ReentrantLock;

    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1711
    :cond_3
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbco;->J:Z

    .line 1712
    return-void

    .line 1194
    :cond_4
    :try_start_3
    sget-object v1, Lbco;->C:Ljava/lang/String;

    .line 1196
    iput-object v0, p0, Lbco;->K:Lbcq;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1684
    iget-boolean v0, p0, Lbco;->L:Z

    if-eqz v0, :cond_5

    .line 1686
    sget-object v0, Lbcq;->h:Lbcq;

    iput-object v0, p0, Lbco;->K:Lbcq;

    .line 1688
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1695
    :cond_5
    :try_start_4
    iget-object v0, p0, Lbco;->I:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1697
    iget-object v0, p0, Lbco;->F:Lbci;

    if-eqz v0, :cond_6

    .line 1699
    iget-object v0, p0, Lbco;->F:Lbci;

    invoke-interface {v0}, Lbci;->complete()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_e
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_6

    .line 1708
    :cond_6
    iget-object v0, p0, Lbco;->I:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1709
    iget-object v0, p0, Lbco;->I:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 1202
    :cond_7
    const/4 v0, 0x0

    .line 1203
    :try_start_5
    sget-object v1, Lbco;->C:Ljava/lang/String;

    .line 1204
    iget-boolean v1, p0, Lbco;->L:Z

    if-nez v1, :cond_8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_8
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1684
    :catchall_0
    move-exception v0

    iget-boolean v1, p0, Lbco;->L:Z

    if-eqz v1, :cond_9

    .line 1686
    sget-object v1, Lbcq;->h:Lbcq;

    iput-object v1, p0, Lbco;->K:Lbcq;

    .line 1688
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1695
    :cond_9
    :try_start_6
    iget-object v1, p0, Lbco;->I:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1697
    iget-object v1, p0, Lbco;->F:Lbci;

    if-eqz v1, :cond_a

    .line 1699
    iget-object v1, p0, Lbco;->F:Lbci;

    invoke-interface {v1}, Lbci;->complete()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_b
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1708
    :cond_a
    iget-object v1, p0, Lbco;->I:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1709
    iget-object v1, p0, Lbco;->I:Ljava/util/concurrent/locks/ReentrantLock;

    :goto_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1711
    :cond_b
    const/4 v1, 0x0

    iput-boolean v1, p0, Lbco;->J:Z

    .line 1684
    throw v0

    .line 1206
    :cond_c
    :try_start_7
    iget v1, p0, Lbco;->w:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_d

    iget v1, p0, Lbco;->w:I

    and-int/lit8 v1, v1, 0x26

    if-nez v1, :cond_f

    .line 1209
    :cond_d
    iget-object v1, p0, Lbco;->D:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lbco;->a(Landroid/content/Context;Lbch;)V

    move-object v2, v0

    .line 1280
    :goto_3
    iget-boolean v0, p0, Lbco;->L:Z

    if-nez v0, :cond_e

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_e
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 1215
    :cond_f
    invoke-static {}, Lbcg;->b()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lbcg;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    move v2, v0

    .line 1222
    :goto_4
    const/4 v0, 0x1

    .line 1223
    if-eqz v2, :cond_62

    .line 1225
    iget v1, p0, Lbco;->w:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_11

    .line 1226
    const/4 v0, 0x2

    .line 1228
    :cond_11
    iget v1, p0, Lbco;->w:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_62

    .line 1229
    add-int/lit8 v0, v0, 0x2

    move v1, v0

    .line 1231
    :goto_5
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1232
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1234
    sget-object v4, Lbco;->C:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Firing off getBrowserInfo on UI thread using latch: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1237
    new-instance v4, Lbch;

    if-eqz v2, :cond_13

    move-object v1, v0

    :goto_6
    invoke-direct {v4, v1}, Lbch;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    iput-object v4, p0, Lbco;->M:Lbch;

    .line 1239
    new-instance v1, Lbcp;

    invoke-direct {v1, p0, p0, v0}, Lbcp;-><init>(Lbco;Lbco;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1264
    sget-object v1, Lbco;->C:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "waiting for getBrowserInfo to finished, latch: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1266
    if-eqz v2, :cond_15

    .line 1268
    const-wide/16 v1, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1270
    iget-object v1, p0, Lbco;->M:Lbch;

    invoke-direct {p0, v1}, Lbco;->a(Lbch;)V

    move-object v2, v0

    goto/16 :goto_3

    .line 1215
    :cond_12
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_4

    .line 1237
    :cond_13
    const/4 v1, 0x0

    goto :goto_6

    .line 1274
    :cond_14
    sget-object v1, Lbco;->C:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getBrowserInfo no response from UI thread before timeout with latch: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    move-object v2, v0

    goto/16 :goto_3

    .line 1283
    :cond_16
    sget-object v0, Lbco;->C:Ljava/lang/String;

    .line 1284
    iget v0, p0, Lbco;->w:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_17

    .line 1286
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    const v3, 0xea60

    div-int/2addr v1, v3

    iput v1, p0, Lbco;->i:I

    invoke-virtual {v0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v0

    const v1, 0xea60

    div-int/2addr v0, v1

    iput v0, p0, Lbco;->j:I

    sget-object v0, Lbco;->C:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getTimeZoneInfo: dstDiff="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lbco;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " gmfOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lbco;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1290
    :cond_17
    :goto_7
    iget-object v0, p0, Lbco;->D:Landroid/content/Context;

    const-string v1, "ThreatMetrixMobileSDK"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1293
    const-string v0, "ThreatMetrixMobileSDK"

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1294
    iget-boolean v3, p0, Lbco;->L:Z

    if-eqz v3, :cond_19

    .line 1296
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 1286
    :cond_18
    sget-object v0, Lbco;->C:Ljava/lang/String;

    const-string v1, "getTimeZoneInfo: FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1298
    :cond_19
    if-nez v0, :cond_1a

    .line 1300
    sget-object v0, Lbco;->C:Ljava/lang/String;

    .line 1301
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 1302
    new-instance v3, Ljava/math/BigInteger;

    const/16 v4, 0x40

    invoke-direct {v3, v4, v0}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const/16 v0, 0x10

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1304
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1305
    const-string v3, "ThreatMetrixMobileSDK"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1306
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1307
    iget-boolean v1, p0, Lbco;->L:Z

    if-eqz v1, :cond_1a

    .line 1308
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 1311
    :cond_1a
    iget-object v1, p0, Lbco;->D:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "android_id"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbco;->h:Ljava/lang/String;

    .line 1312
    iget-object v1, p0, Lbco;->h:Ljava/lang/String;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lbco;->h:Ljava/lang/String;

    const-string v3, "9774d56d682e549c"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    iget-object v1, p0, Lbco;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xf

    if-ge v1, v3, :cond_1e

    .line 1314
    :cond_1b
    sget-object v1, Lbco;->C:Ljava/lang/String;

    .line 1316
    const/4 v1, 0x0

    iput-object v1, p0, Lbco;->h:Ljava/lang/String;

    .line 1323
    :goto_8
    sget-object v1, Lbco;->C:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "using generated ID for HTML5Cookie:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1324
    iput-object v0, p0, Lbco;->g:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0

    .line 1329
    :try_start_8
    iget-object v0, p0, Lbco;->D:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbco;->G:Ljava/lang/String;

    .line 1330
    sget-object v0, Lbco;->C:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "using getDeviceId for imei: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lbco;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0

    .line 1337
    :goto_9
    :try_start_9
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    if-nez v0, :cond_1f

    const-string v0, ""

    .line 1342
    :goto_a
    iget-object v1, p0, Lbco;->G:Ljava/lang/String;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lbco;->G:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, p0, Lbco;->G:Ljava/lang/String;

    const-string v3, "000000000000000"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 1344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lbco;->G:Ljava/lang/String;

    .line 1356
    :goto_b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1358
    iget-object v1, p0, Lbco;->f:Ljava/lang/String;

    if-nez v1, :cond_1c

    .line 1361
    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_23

    .line 1363
    invoke-static {v0}, Lbco;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbco;->f:Ljava/lang/String;

    .line 1372
    :cond_1c
    :goto_c
    iget-boolean v0, p0, Lbco;->L:Z

    if-nez v0, :cond_1d

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_1d
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 1321
    :cond_1e
    sget-object v1, Lbco;->C:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "using ANDROID_ID for cookie:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lbco;->h:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 1334
    :catch_1
    move-exception v0

    sget-object v0, Lbco;->C:Ljava/lang/String;

    goto :goto_9

    .line 1337
    :cond_1f
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    goto :goto_a

    .line 1346
    :cond_20
    iget-object v1, p0, Lbco;->h:Ljava/lang/String;

    if-eqz v1, :cond_21

    .line 1348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lbco;->h:Ljava/lang/String;

    goto :goto_b

    .line 1356
    :cond_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lbco;->g:Ljava/lang/String;

    if-nez v0, :cond_22

    const-string v0, ""

    goto :goto_b

    :cond_22
    iget-object v0, p0, Lbco;->g:Ljava/lang/String;

    goto :goto_b

    .line 1367
    :cond_23
    sget-object v0, Lbco;->C:Ljava/lang/String;

    goto :goto_c

    .line 1374
    :cond_24
    iget-object v0, p0, Lbco;->f:Ljava/lang/String;

    invoke-static {v0}, Lbco;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbco;->f:Ljava/lang/String;

    .line 1375
    iget-boolean v0, p0, Lbco;->L:Z

    if-nez v0, :cond_25

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_25
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 1377
    :cond_26
    iget-object v0, p0, Lbco;->g:Ljava/lang/String;

    invoke-static {v0}, Lbco;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbco;->g:Ljava/lang/String;

    .line 1378
    iget-boolean v0, p0, Lbco;->L:Z

    if-nez v0, :cond_27

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_27
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 1380
    :cond_28
    iget-object v0, p0, Lbco;->h:Ljava/lang/String;

    invoke-static {v0}, Lbco;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbco;->h:Ljava/lang/String;

    .line 1381
    iget-boolean v0, p0, Lbco;->L:Z

    if-nez v0, :cond_29

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_29
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 1383
    :cond_2a
    iget v0, p0, Lbco;->w:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2b

    .line 1385
    iget-object v0, p0, Lbco;->D:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1386
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lbco;->k:I

    .line 1387
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lbco;->l:I

    .line 1390
    :cond_2b
    iget-boolean v0, p0, Lbco;->L:Z

    if-nez v0, :cond_2c

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_2d

    :cond_2c
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 1391
    :cond_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v3, Lbcl;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lbcl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lbcl;->a()J

    move-result-wide v4

    invoke-virtual {v3}, Lbcl;->b()J

    move-result-wide v6

    const/high16 v0, 0x3f80

    mul-long v8, v6, v4

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-eqz v3, :cond_2e

    long-to-float v0, v6

    long-to-float v3, v4

    mul-float/2addr v0, v3

    const/high16 v3, 0x4480

    div-float/2addr v0, v3

    const/high16 v3, 0x4480

    div-float/2addr v0, v3

    const/high16 v3, 0x4480

    div-float/2addr v0, v3

    :cond_2e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lbco;->C:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "getDeviceState: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lbco;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbco;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbco;->v:Ljava/lang/String;

    .line 1393
    iget-boolean v0, p0, Lbco;->L:Z

    if-nez v0, :cond_2f

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_30

    :cond_2f
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 1394
    :cond_30
    iget-object v3, p0, Lbco;->D:Landroid/content/Context;

    sget-object v0, Lbco;->C:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_32

    const-string v0, ""

    :goto_d
    iput-object v0, p0, Lbco;->u:Ljava/lang/String;

    .line 1396
    iget-boolean v0, p0, Lbco;->L:Z

    if-nez v0, :cond_31

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_34

    :cond_31
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 1394
    :cond_32
    const-string v0, "phone"

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v1, "Unknown"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_33

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    :cond_33
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v5, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    long-to-float v0, v0

    long-to-float v1, v5

    mul-float/2addr v0, v1

    const/high16 v1, 0x4480

    div-float/2addr v0, v1

    const/high16 v1, 0x4480

    div-float/2addr v0, v1

    const/high16 v1, 0x4480

    div-float/2addr v0, v1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "window"

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v0, Lbco;->C:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "Processor"

    aput-object v5, v1, v3

    const/4 v3, 0x1

    const-string v5, "BogoMips"

    aput-object v5, v1, v3

    const/4 v3, 0x2

    const-string v5, "Hardware"

    aput-object v5, v1, v3

    const/4 v3, 0x3

    const-string v5, "Serial"

    aput-object v5, v1, v3

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const-string v1, "/proc/cpuinfo"

    invoke-static {v1, v0}, Lbco;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lbco;->C:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getCPUInfo returned: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lbco;->C:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "MemTotal"

    aput-object v5, v1, v3

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const-string v1, "/proc/meminfo"

    invoke-static {v1, v0}, Lbco;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lbco;->C:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getMemInfo returned: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lbco;->C:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getDeviceFingerprint returned: hash("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbco;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 1398
    :cond_34
    iget v0, p0, Lbco;->w:I

    iget-object v1, p0, Lbco;->x:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lbco;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1400
    if-eqz v2, :cond_35

    .line 1403
    iget v0, p0, Lbco;->c:I

    int-to-long v0, v0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 1405
    sget-object v0, Lbco;->C:Ljava/lang/String;

    const-string v1, "no response from UI thread before timeout, will not use browser info"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    :cond_35
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "lq="

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lbco;->r:Ljava/lang/String;

    if-nez v0, :cond_3d

    const-string v0, ""

    :goto_e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbco;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lbco;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1411
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1413
    iget-object v0, p0, Lbco;->r:Ljava/lang/String;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lbco;->r:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_36

    .line 1415
    sget-object v0, Lbco;->C:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting User-Agent to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lbco;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1416
    const-string v0, "User-Agent"

    iget-object v1, p0, Lbco;->r:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1419
    :cond_36
    iget-object v0, p0, Lbco;->h:Ljava/lang/String;

    if-nez v0, :cond_3e

    .line 1421
    const-string v0, "Cookie"

    const-string v1, "thx_guid="

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1427
    :goto_f
    const-string v0, "Referer"

    iget-object v1, p0, Lbco;->n:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1431
    iget v0, p0, Lbco;->w:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_48

    .line 1433
    new-instance v0, Lbdd;

    invoke-direct {v0}, Lbdd;-><init>()V

    const-string v1, "org_id"

    iget-object v2, p0, Lbco;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lbdd;->b(Ljava/lang/String;Ljava/lang/String;)Lbdd;

    move-result-object v0

    const-string v1, "session_id"

    iget-object v2, p0, Lbco;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lbdd;->b(Ljava/lang/String;Ljava/lang/String;)Lbdd;

    move-result-object v0

    const-string v1, "m"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lbdd;->b(Ljava/lang/String;Ljava/lang/String;)Lbdd;

    move-result-object v4

    .line 1434
    new-instance v0, Lbdd;

    invoke-direct {v0}, Lbdd;-><init>()V

    const-string v1, "org_id"

    iget-object v2, p0, Lbco;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lbdd;->b(Ljava/lang/String;Ljava/lang/String;)Lbdd;

    move-result-object v0

    const-string v1, "session_id"

    iget-object v2, p0, Lbco;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lbdd;->b(Ljava/lang/String;Ljava/lang/String;)Lbdd;

    move-result-object v0

    const-string v1, "m"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lbdd;->b(Ljava/lang/String;Ljava/lang/String;)Lbdd;

    move-result-object v10

    .line 1436
    iget v0, p0, Lbco;->w:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_37

    .line 1438
    const-string v0, "h"

    const-string v1, "0"

    invoke-virtual {v4, v0, v1}, Lbdd;->b(Ljava/lang/String;Ljava/lang/String;)Lbdd;

    .line 1439
    const-string v0, "h"

    const-string v1, "0"

    invoke-virtual {v10, v0, v1}, Lbdd;->b(Ljava/lang/String;Ljava/lang/String;)Lbdd;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0

    .line 1445
    :cond_37
    :try_start_a
    iget-object v0, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1446
    iget-object v11, p0, Lbco;->B:Ljava/util/ArrayList;

    new-instance v12, Ljava/lang/Thread;

    new-instance v0, Lbce;

    const-string v1, "https"

    iget-object v2, p0, Lbco;->y:Ljava/lang/String;

    const-string v3, "/fp/clear.png"

    iget v5, p0, Lbco;->c:I

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lbce;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbdd;ILjava/util/Map;Lbco;)V

    invoke-direct {v12, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1447
    iget-object v11, p0, Lbco;->B:Ljava/util/ArrayList;

    new-instance v12, Ljava/lang/Thread;

    new-instance v0, Lbce;

    const-string v1, "https"

    iget-object v2, p0, Lbco;->y:Ljava/lang/String;

    const-string v3, "/fp/clear.png"

    iget v5, p0, Lbco;->c:I

    move-object v4, v10

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lbce;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbdd;ILjava/util/Map;Lbco;)V

    invoke-direct {v12, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1451
    :try_start_b
    iget-object v0, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1452
    iget-object v0, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1458
    :cond_38
    new-instance v4, Lbdd;

    invoke-direct {v4}, Lbdd;-><init>()V

    .line 1459
    const-string v0, "org_id"

    iget-object v1, p0, Lbco;->x:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lbdd;->b(Ljava/lang/String;Ljava/lang/String;)Lbdd;

    .line 1460
    const-string v0, "session_id"

    iget-object v1, p0, Lbco;->b:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lbdd;->b(Ljava/lang/String;Ljava/lang/String;)Lbdd;

    .line 1461
    const-string v0, "h"

    const-string v1, "1"

    invoke-virtual {v4, v0, v1}, Lbdd;->b(Ljava/lang/String;Ljava/lang/String;)Lbdd;

    .line 1462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    const-string v2, "%16s%32s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v7, p0, Lbco;->d:Ljava/lang/String;

    aput-object v7, v3, v5

    const/4 v5, 0x1

    iget-object v7, p0, Lbco;->g:Ljava/lang/String;

    aput-object v7, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {v1}, Ljava/util/Formatter;->close()V

    new-instance v1, Lbdd;

    invoke-direct {v1}, Lbdd;-><init>()V

    const-string v2, "la"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lbdd;->b(Ljava/lang/String;Ljava/lang/String;)Lbdd;

    move-result-object v0

    invoke-virtual {v4, v0}, Lbdd;->putAll(Ljava/util/Map;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_0

    .line 1465
    :try_start_c
    iget-object v0, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1466
    iget-object v10, p0, Lbco;->B:Ljava/util/ArrayList;

    new-instance v11, Ljava/lang/Thread;

    new-instance v0, Lbce;

    const-string v1, "https"

    iget-object v2, p0, Lbco;->y:Ljava/lang/String;

    const-string v3, "/fp/clear.png"

    iget v5, p0, Lbco;->c:I

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lbce;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbdd;ILjava/util/Map;Lbco;)V

    invoke-direct {v11, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1470
    :try_start_d
    iget-object v0, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1471
    iget-object v0, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1478
    :cond_39
    new-instance v4, Lbdd;

    invoke-direct {v4}, Lbdd;-><init>()V

    .line 1479
    const-string v0, "org_id"

    iget-object v1, p0, Lbco;->x:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lbdd;->b(Ljava/lang/String;Ljava/lang/String;)Lbdd;

    .line 1480
    const-string v0, "session_id"

    iget-object v1, p0, Lbco;->b:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lbdd;->b(Ljava/lang/String;Ljava/lang/String;)Lbdd;

    .line 1481
    const-string v0, "ja"

    invoke-virtual {v4, v0, v8}, Lbdd;->b(Ljava/lang/String;Ljava/lang/String;)Lbdd;

    .line 1482
    const-string v0, "jb"

    invoke-virtual {v4, v0, v9}, Lbdd;->b(Ljava/lang/String;Ljava/lang/String;)Lbdd;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_0

    .line 1485
    :try_start_e
    iget-object v0, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1486
    iget-object v8, p0, Lbco;->B:Ljava/util/ArrayList;

    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lbce;

    const-string v1, "https"

    iget-object v2, p0, Lbco;->y:Ljava/lang/String;

    const-string v3, "/fp/clear.png"

    iget v5, p0, Lbco;->c:I

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lbce;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbdd;ILjava/util/Map;Lbco;)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 1490
    :try_start_f
    iget-object v0, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1491
    iget-object v0, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1497
    :cond_3a
    iget-object v0, p0, Lbco;->f:Ljava/lang/String;

    if-eqz v0, :cond_3b

    .line 1499
    new-instance v4, Lbdd;

    invoke-direct {v4}, Lbdd;-><init>()V

    .line 1500
    const-string v0, "org_id"

    iget-object v1, p0, Lbco;->x:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lbdd;->b(Ljava/lang/String;Ljava/lang/String;)Lbdd;

    .line 1501
    const-string v0, "session_id"

    iget-object v1, p0, Lbco;->b:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lbdd;->b(Ljava/lang/String;Ljava/lang/String;)Lbdd;

    .line 1502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lbdd;

    invoke-direct {v1}, Lbdd;-><init>()V

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    new-instance v3, Ljava/util/Formatter;

    invoke-direct {v3, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    const-string v5, "%04d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0x2710

    invoke-virtual {v2, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v8

    invoke-virtual {v3, v5, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const-string v2, "nu"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lbdd;->b(Ljava/lang/String;Ljava/lang/String;)Lbdd;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v2, "%16s%32s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lbco;->d:Ljava/lang/String;

    aput-object v8, v5, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lbco;->f:Ljava/lang/String;

    aput-object v8, v5, v7

    invoke-virtual {v3, v2, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const-string v2, "fc"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lbdd;->b(Ljava/lang/String;Ljava/lang/String;)Lbdd;

    invoke-virtual {v3}, Ljava/util/Formatter;->close()V

    invoke-virtual {v4, v1}, Lbdd;->putAll(Ljava/util/Map;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_0

    .line 1505
    :try_start_10
    iget-object v0, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1506
    iget-object v8, p0, Lbco;->B:Ljava/util/ArrayList;

    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lbce;

    const-string v1, "https"

    iget-object v2, p0, Lbco;->y:Ljava/lang/String;

    const-string v3, "/fp/clear.png"

    iget v5, p0, Lbco;->c:I

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lbce;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbdd;ILjava/util/Map;Lbco;)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 1510
    :try_start_11
    iget-object v0, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1511
    iget-object v0, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1518
    :cond_3b
    iget-boolean v0, p0, Lbco;->L:Z

    if-nez v0, :cond_3c

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_43

    :cond_3c
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 1409
    :cond_3d
    iget-object v0, p0, Lbco;->r:Ljava/lang/String;

    goto/16 :goto_e

    .line 1425
    :cond_3e
    const-string v0, "Cookie"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "thx_guid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lbco;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    .line 1451
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1452
    iget-object v1, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1451
    :cond_3f
    throw v0

    .line 1470
    :catchall_2
    move-exception v0

    iget-object v1, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 1471
    iget-object v1, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1470
    :cond_40
    throw v0

    .line 1490
    :catchall_3
    move-exception v0

    iget-object v1, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1491
    iget-object v1, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1490
    :cond_41
    throw v0

    .line 1510
    :catchall_4
    move-exception v0

    iget-object v1, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 1511
    iget-object v1, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1510
    :cond_42
    throw v0

    .line 1520
    :cond_43
    new-instance v4, Lbdd;

    invoke-direct {v4}, Lbdd;-><init>()V

    .line 1521
    const-string v0, "org_id"

    iget-object v1, p0, Lbco;->x:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lbdd;->b(Ljava/lang/String;Ljava/lang/String;)Lbdd;

    .line 1522
    const-string v0, "session_id"

    iget-object v1, p0, Lbco;->b:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lbdd;->b(Ljava/lang/String;Ljava/lang/String;)Lbdd;

    .line 1523
    invoke-static {}, Lbco;->g()Lbdd;

    move-result-object v0

    invoke-virtual {v4, v0}, Lbdd;->putAll(Ljava/util/Map;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_0

    .line 1526
    :try_start_12
    iget-object v0, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1527
    iget-object v8, p0, Lbco;->B:Ljava/util/ArrayList;

    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lbce;

    const-string v1, "https"

    iget-object v2, p0, Lbco;->y:Ljava/lang/String;

    const-string v3, "/fp/clear.png"

    iget v5, p0, Lbco;->c:I

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lbce;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbdd;ILjava/util/Map;Lbco;)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 1531
    :try_start_13
    iget-object v0, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1532
    iget-object v0, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1595
    :cond_44
    :goto_10
    iget v0, p0, Lbco;->w:I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_13} :catch_0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_45

    .line 1599
    :try_start_14
    iget-object v0, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1600
    iget-object v7, p0, Lbco;->B:Ljava/util/ArrayList;

    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lbcj;

    iget-object v1, p0, Lbco;->y:Ljava/lang/String;

    iget-object v2, p0, Lbco;->x:Ljava/lang/String;

    iget-object v3, p0, Lbco;->b:Ljava/lang/String;

    iget-object v4, p0, Lbco;->d:Ljava/lang/String;

    iget v5, p0, Lbco;->c:I

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lbcj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILbco;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 1604
    :try_start_15
    iget-object v0, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1605
    iget-object v0, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_15} :catch_0

    .line 1613
    :cond_45
    :try_start_16
    iget-object v0, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1614
    iget-object v0, p0, Lbco;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 1616
    iget-boolean v2, p0, Lbco;->L:Z

    if-nez v2, :cond_53

    .line 1617
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    goto :goto_11

    .line 1624
    :catchall_5
    move-exception v0

    :try_start_17
    iget-object v1, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 1625
    iget-object v1, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1624
    :cond_46
    throw v0

    .line 1531
    :catchall_6
    move-exception v0

    iget-object v1, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 1532
    iget-object v1, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1531
    :cond_47
    throw v0

    .line 1535
    :cond_48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1539
    invoke-static {}, Lbco;->g()Lbdd;

    move-result-object v0

    .line 1540
    invoke-virtual {v0}, Lbdd;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1541
    const/4 v0, 0x1

    move v1, v0

    .line 1542
    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1544
    iget-boolean v0, p0, Lbco;->L:Z

    if-nez v0, :cond_49

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_4a

    :cond_49
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 1545
    :cond_4a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1547
    if-nez v1, :cond_4b

    .line 1549
    const-string v1, "&"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1551
    :cond_4b
    const/4 v2, 0x0

    .line 1552
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    .line 1553
    goto :goto_12

    .line 1555
    :cond_4c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1557
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1559
    iget-object v1, p0, Lbco;->g:Ljava/lang/String;

    if-eqz v1, :cond_4d

    .line 1561
    const-string v1, "&ls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1562
    iget-object v1, p0, Lbco;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1564
    :cond_4d
    iget-object v1, p0, Lbco;->f:Ljava/lang/String;

    if-eqz v1, :cond_4e

    .line 1566
    const-string v1, "&fg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1567
    iget-object v1, p0, Lbco;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1570
    :cond_4e
    iget-boolean v1, p0, Lbco;->L:Z

    if-nez v1, :cond_4f

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_50

    :cond_4f
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 1573
    :cond_50
    new-instance v4, Lbdd;

    invoke-direct {v4}, Lbdd;-><init>()V

    .line 1574
    const-string v1, "org_id"

    iget-object v2, p0, Lbco;->x:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Lbdd;->b(Ljava/lang/String;Ljava/lang/String;)Lbdd;

    .line 1575
    const-string v1, "session_id"

    iget-object v2, p0, Lbco;->b:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Lbdd;->b(Ljava/lang/String;Ljava/lang/String;)Lbdd;

    .line 1576
    const-string v1, "ja"

    invoke-virtual {v4, v1, v8}, Lbdd;->b(Ljava/lang/String;Ljava/lang/String;)Lbdd;

    .line 1577
    const-string v1, "jb"

    invoke-virtual {v4, v1, v9}, Lbdd;->b(Ljava/lang/String;Ljava/lang/String;)Lbdd;

    .line 1578
    const-string v1, "jc"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lbco;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lbco;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lbdd;->b(Ljava/lang/String;Ljava/lang/String;)Lbdd;

    .line 1579
    const-string v0, "h"

    const-string v1, "1"

    invoke-virtual {v4, v0, v1}, Lbdd;->b(Ljava/lang/String;Ljava/lang/String;)Lbdd;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_17} :catch_0

    .line 1583
    :try_start_18
    iget-object v0, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1585
    iget-object v8, p0, Lbco;->B:Ljava/util/ArrayList;

    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lbce;

    const-string v1, "https"

    iget-object v2, p0, Lbco;->y:Ljava/lang/String;

    const-string v3, "/fp/clear.png"

    iget v5, p0, Lbco;->c:I

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lbce;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lbdd;ILjava/util/Map;Lbco;)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    .line 1589
    :try_start_19
    iget-object v0, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1590
    iget-object v0, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_10

    .line 1589
    :catchall_7
    move-exception v0

    iget-object v1, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 1590
    iget-object v1, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1589
    :cond_51
    throw v0

    .line 1604
    :catchall_8
    move-exception v0

    iget-object v1, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 1605
    iget-object v1, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1604
    :cond_52
    throw v0

    .line 1624
    :cond_53
    iget-object v0, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1625
    iget-object v0, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_19} :catch_0

    .line 1630
    :cond_54
    :try_start_1a
    iget-object v0, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1631
    iget-object v0, p0, Lbco;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 1633
    iget-boolean v2, p0, Lbco;->L:Z

    if-nez v2, :cond_56

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    move-result v2

    if-nez v2, :cond_56

    .line 1634
    :try_start_1b
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1b} :catch_2

    goto :goto_13

    .line 1644
    :catch_2
    move-exception v0

    :try_start_1c
    iget-object v0, p0, Lbco;->K:Lbcq;

    sget-object v1, Lbcq;->a:Lbcq;

    if-ne v0, v1, :cond_55

    .line 1645
    sget-object v0, Lbcq;->c:Lbcq;

    iput-object v0, p0, Lbco;->K:Lbcq;

    .line 1648
    :cond_55
    invoke-virtual {p0}, Lbco;->d()V

    .line 1649
    sget-object v0, Lbco;->C:Ljava/lang/String;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    .line 1656
    :cond_56
    :try_start_1d
    iget-object v0, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 1657
    iget-object v0, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1662
    :cond_57
    iget-object v0, p0, Lbco;->K:Lbcq;

    sget-object v1, Lbcq;->a:Lbcq;

    if-ne v0, v1, :cond_58

    .line 1663
    sget-object v0, Lbcq;->b:Lbcq;

    iput-object v0, p0, Lbco;->K:Lbcq;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_1d} :catch_0

    .line 1667
    :cond_58
    :try_start_1e
    iget-object v0, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1668
    iget-object v0, p0, Lbco;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_a

    .line 1672
    :try_start_1f
    iget-object v0, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1673
    iget-object v0, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1675
    :cond_59
    sget-object v0, Lbco;->C:Ljava/lang/String;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_1f} :catch_0

    .line 1684
    iget-boolean v0, p0, Lbco;->L:Z

    if-eqz v0, :cond_5a

    .line 1686
    sget-object v0, Lbcq;->h:Lbcq;

    iput-object v0, p0, Lbco;->K:Lbcq;

    .line 1688
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1695
    :cond_5a
    :try_start_20
    iget-object v0, p0, Lbco;->I:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1697
    iget-object v0, p0, Lbco;->F:Lbci;

    if-eqz v0, :cond_5b

    .line 1699
    iget-object v0, p0, Lbco;->F:Lbci;

    invoke-interface {v0}, Lbci;->complete()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_d
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_20} :catch_5

    .line 1708
    :cond_5b
    iget-object v0, p0, Lbco;->I:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1709
    iget-object v0, p0, Lbco;->I:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_1

    .line 1656
    :catchall_9
    move-exception v0

    :try_start_21
    iget-object v1, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 1657
    iget-object v1, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1656
    :cond_5c
    throw v0

    .line 1672
    :catchall_a
    move-exception v0

    iget-object v1, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 1673
    iget-object v1, p0, Lbco;->H:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1672
    :cond_5d
    throw v0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_21} :catch_0

    .line 1702
    :catch_3
    move-exception v1

    .line 1704
    :try_start_22
    sget-object v2, Lbco;->C:Ljava/lang/String;

    const-string v3, "profilNotify callback interrupted"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_b

    .line 1708
    iget-object v1, p0, Lbco;->I:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1709
    iget-object v1, p0, Lbco;->I:Ljava/util/concurrent/locks/ReentrantLock;

    goto/16 :goto_2

    .line 1708
    :catchall_b
    move-exception v0

    iget-object v1, p0, Lbco;->I:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 1709
    iget-object v1, p0, Lbco;->I:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1708
    :cond_5e
    throw v0

    .line 1702
    :catch_4
    move-exception v0

    .line 1704
    :try_start_23
    sget-object v1, Lbco;->C:Ljava/lang/String;

    const-string v2, "profilNotify callback interrupted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_c

    .line 1708
    iget-object v0, p0, Lbco;->I:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1709
    iget-object v0, p0, Lbco;->I:Ljava/util/concurrent/locks/ReentrantLock;

    goto/16 :goto_0

    .line 1708
    :catchall_c
    move-exception v0

    iget-object v1, p0, Lbco;->I:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 1709
    iget-object v1, p0, Lbco;->I:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1708
    :cond_5f
    throw v0

    .line 1702
    :catch_5
    move-exception v0

    .line 1704
    :try_start_24
    sget-object v1, Lbco;->C:Ljava/lang/String;

    const-string v2, "profilNotify callback interrupted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_d

    .line 1708
    iget-object v0, p0, Lbco;->I:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1709
    iget-object v0, p0, Lbco;->I:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_1

    .line 1708
    :catchall_d
    move-exception v0

    iget-object v1, p0, Lbco;->I:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 1709
    iget-object v1, p0, Lbco;->I:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1708
    :cond_60
    throw v0

    .line 1702
    :catch_6
    move-exception v0

    .line 1704
    :try_start_25
    sget-object v1, Lbco;->C:Ljava/lang/String;

    const-string v2, "profilNotify callback interrupted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_e

    .line 1708
    iget-object v0, p0, Lbco;->I:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1709
    iget-object v0, p0, Lbco;->I:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_1

    .line 1708
    :catchall_e
    move-exception v0

    iget-object v1, p0, Lbco;->I:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 1709
    iget-object v1, p0, Lbco;->I:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1708
    :cond_61
    throw v0

    :cond_62
    move v1, v0

    goto/16 :goto_5
.end method

.method final d()V
    .locals 5

    .prologue
    .line 1717
    sget-object v0, Lbco;->C:Ljava/lang/String;

    .line 1718
    monitor-enter p0

    .line 1720
    :try_start_0
    iget-object v0, p0, Lbco;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 1722
    sget-object v2, Lbco;->C:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sending interrupt to TID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1723
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1725
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
