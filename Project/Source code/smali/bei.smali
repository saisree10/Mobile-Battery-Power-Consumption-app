.class public Lbei;
.super Lbef;
.source "XYMultipleSeriesRenderer.java"


# instance fields
.field private A:Landroid/graphics/Paint$Align;

.field private B:[Landroid/graphics/Paint$Align;

.field private C:F

.field private D:F

.field private E:F

.field private F:[Landroid/graphics/Paint$Align;

.field private G:I

.field private H:[I

.field private I:Z

.field private J:Ljava/text/NumberFormat;

.field private K:F

.field private L:D

.field private M:D

.field private a:Ljava/lang/String;

.field private b:[Ljava/lang/String;

.field private c:F

.field private d:[D

.field private e:[D

.field private f:[D

.field private g:[D

.field private h:I

.field private i:I

.field private j:Lbej;

.field private k:Ljava/util/Map;

.field private l:Ljava/util/Map;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:D

.field private r:I

.field private s:[D

.field private t:[D

.field private u:F

.field private v:F

.field private w:Ljava/util/Map;

.field private x:F

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbei;-><init>(I)V

    .line 138
    return-void
.end method

.method public constructor <init>(I)V
    .locals 7
    .parameter

    .prologue
    const v6, -0x333334

    const/4 v5, 0x0

    const/16 v1, 0xc8

    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    .line 140
    invoke-direct {p0}, Lbef;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lbei;->a:Ljava/lang/String;

    .line 37
    const/high16 v0, 0x4140

    iput v0, p0, Lbei;->c:F

    .line 47
    const/4 v0, 0x5

    iput v0, p0, Lbei;->h:I

    .line 49
    const/4 v0, 0x5

    iput v0, p0, Lbei;->i:I

    .line 51
    sget-object v0, Lbej;->a:Lbej;

    iput-object v0, p0, Lbei;->j:Lbej;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbei;->k:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lbei;->l:Ljava/util/Map;

    .line 57
    iput-boolean v2, p0, Lbei;->m:Z

    .line 59
    iput-boolean v2, p0, Lbei;->n:Z

    .line 61
    iput-boolean v2, p0, Lbei;->o:Z

    .line 63
    iput-boolean v2, p0, Lbei;->p:Z

    .line 65
    iput-wide v3, p0, Lbei;->q:D

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lbei;->r:I

    .line 77
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lbei;->w:Ljava/util/Map;

    .line 79
    const/high16 v0, 0x4040

    iput v0, p0, Lbei;->x:F

    .line 81
    const/16 v0, 0x4b

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lbei;->y:I

    .line 85
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iput-object v0, p0, Lbei;->A:Landroid/graphics/Paint$Align;

    .line 89
    iput v5, p0, Lbei;->C:F

    .line 91
    iput v5, p0, Lbei;->D:F

    .line 93
    const/high16 v0, 0x4000

    iput v0, p0, Lbei;->E:F

    .line 97
    iput v6, p0, Lbei;->G:I

    .line 99
    new-array v0, v2, [I

    const/4 v1, 0x0

    aput v6, v0, v1

    iput-object v0, p0, Lbei;->H:[I

    .line 104
    iput-boolean v2, p0, Lbei;->I:Z

    .line 108
    const/high16 v0, -0x4080

    iput v0, p0, Lbei;->K:F

    .line 110
    iput-wide v3, p0, Lbei;->L:D

    .line 112
    iput-wide v3, p0, Lbei;->M:D

    .line 141
    iput p1, p0, Lbei;->z:I

    .line 142
    invoke-virtual {p0, p1}, Lbei;->d(I)V

    .line 143
    return-void
.end method


# virtual methods
.method public B()Z
    .locals 1

    .prologue
    .line 770
    invoke-virtual {p0}, Lbei;->Q()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lbei;->R()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public H()Lbej;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lbei;->j:Lbej;

    return-object v0
.end method

.method public I()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lbei;->a:Ljava/lang/String;

    return-object v0
.end method

.method public J()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbei;->f(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public K()F
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lbei;->c:F

    return v0
.end method

.method public L()I
    .locals 1

    .prologue
    .line 511
    iget v0, p0, Lbei;->h:I

    return v0
.end method

.method public declared-synchronized M()[Ljava/lang/Double;
    .locals 2

    .prologue
    .line 569
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbei;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Double;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized N()V
    .locals 1

    .prologue
    .line 585
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbei;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    monitor-exit p0

    return-void

    .line 585
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public O()V
    .locals 1

    .prologue
    .line 690
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbei;->q(I)V

    .line 691
    return-void
.end method

.method public P()I
    .locals 1

    .prologue
    .line 708
    iget v0, p0, Lbei;->i:I

    return v0
.end method

.method public Q()Z
    .locals 1

    .prologue
    .line 779
    iget-boolean v0, p0, Lbei;->m:Z

    return v0
.end method

.method public R()Z
    .locals 1

    .prologue
    .line 788
    iget-boolean v0, p0, Lbei;->n:Z

    return v0
.end method

.method public S()Z
    .locals 1

    .prologue
    .line 826
    iget-boolean v0, p0, Lbei;->o:Z

    return v0
.end method

.method public T()Z
    .locals 1

    .prologue
    .line 835
    iget-boolean v0, p0, Lbei;->p:Z

    return v0
.end method

.method public U()I
    .locals 1

    .prologue
    .line 885
    iget v0, p0, Lbei;->r:I

    return v0
.end method

.method public V()I
    .locals 1

    .prologue
    .line 903
    iget v0, p0, Lbei;->y:I

    return v0
.end method

.method public W()[D
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Lbei;->s:[D

    return-object v0
.end method

.method public X()[D
    .locals 1

    .prologue
    .line 941
    iget-object v0, p0, Lbei;->t:[D

    return-object v0
.end method

.method public Y()F
    .locals 1

    .prologue
    .line 961
    iget v0, p0, Lbei;->u:F

    return v0
.end method

.method public Z()F
    .locals 1

    .prologue
    .line 979
    iget v0, p0, Lbei;->v:F

    return v0
.end method

.method public declared-synchronized a(Ljava/lang/Double;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 560
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbei;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/Double;I)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 664
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbei;->l:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(D)V
    .locals 1
    .parameter

    .prologue
    .line 334
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lbei;->c(DI)V

    .line 335
    return-void
.end method

.method public a(DI)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 390
    invoke-virtual {p0, p3}, Lbei;->h(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    iget-object v0, p0, Lbei;->w:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    .line 393
    :cond_0
    iget-object v0, p0, Lbei;->d:[D

    aput-wide p1, v0, p3

    .line 394
    return-void
.end method

.method public declared-synchronized a(DLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 541
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbei;->k:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    monitor-exit p0

    return-void

    .line 541
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(DLjava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 633
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbei;->l:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    monitor-exit p0

    return-void

    .line 633
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1115
    iget-object v0, p0, Lbei;->H:[I

    aput p2, v0, p1

    .line 1116
    return-void
.end method

.method public a(Landroid/graphics/Paint$Align;)V
    .locals 1
    .parameter

    .prologue
    .line 1147
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lbei;->a(Landroid/graphics/Paint$Align;I)V

    .line 1148
    return-void
.end method

.method public a(Landroid/graphics/Paint$Align;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1164
    iget-object v0, p0, Lbei;->B:[Landroid/graphics/Paint$Align;

    aput-object p1, v0, p2

    .line 1165
    return-void
.end method

.method public a(ZZ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 798
    iput-boolean p1, p0, Lbei;->m:Z

    .line 799
    iput-boolean p2, p0, Lbei;->n:Z

    .line 800
    return-void
.end method

.method public a([D)V
    .locals 0
    .parameter

    .prologue
    .line 932
    iput-object p1, p0, Lbei;->s:[D

    .line 933
    return-void
.end method

.method public a([DI)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1021
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    invoke-virtual {p0, v0, v1, p2}, Lbei;->a(DI)V

    .line 1022
    const/4 v0, 0x1

    aget-wide v0, p1, v0

    invoke-virtual {p0, v0, v1, p2}, Lbei;->b(DI)V

    .line 1023
    const/4 v0, 0x2

    aget-wide v0, p1, v0

    invoke-virtual {p0, v0, v1, p2}, Lbei;->c(DI)V

    .line 1024
    const/4 v0, 0x3

    aget-wide v0, p1, v0

    invoke-virtual {p0, v0, v1, p2}, Lbei;->d(DI)V

    .line 1025
    return-void
.end method

.method public aa()F
    .locals 1

    .prologue
    .line 997
    iget v0, p0, Lbei;->x:F

    return v0
.end method

.method public ab()Z
    .locals 1

    .prologue
    .line 1028
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbei;->t(I)Z

    move-result v0

    return v0
.end method

.method public ac()I
    .locals 1

    .prologue
    .line 1087
    iget v0, p0, Lbei;->G:I

    return v0
.end method

.method public ad()Landroid/graphics/Paint$Align;
    .locals 1

    .prologue
    .line 1124
    iget-object v0, p0, Lbei;->A:Landroid/graphics/Paint$Align;

    return-object v0
.end method

.method public ae()F
    .locals 1

    .prologue
    .line 1173
    iget v0, p0, Lbei;->C:F

    return v0
.end method

.method public af()F
    .locals 1

    .prologue
    .line 1191
    iget v0, p0, Lbei;->D:F

    return v0
.end method

.method public ag()F
    .locals 1

    .prologue
    .line 1209
    iget v0, p0, Lbei;->E:F

    return v0
.end method

.method public ah()Ljava/text/NumberFormat;
    .locals 1

    .prologue
    .line 1227
    iget-object v0, p0, Lbei;->J:Ljava/text/NumberFormat;

    return-object v0
.end method

.method public ai()D
    .locals 2

    .prologue
    .line 1247
    iget-wide v0, p0, Lbei;->L:D

    return-wide v0
.end method

.method public aj()D
    .locals 2

    .prologue
    .line 1272
    iget-wide v0, p0, Lbei;->M:D

    return-wide v0
.end method

.method public ak()I
    .locals 1

    .prologue
    .line 1290
    iget v0, p0, Lbei;->z:I

    return v0
.end method

.method public b(D)V
    .locals 1
    .parameter

    .prologue
    .line 361
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lbei;->d(DI)V

    .line 362
    return-void
.end method

.method public b(DI)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 423
    invoke-virtual {p0, p3}, Lbei;->j(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    iget-object v0, p0, Lbei;->w:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    const/4 v1, 0x1

    aput-wide p1, v0, v1

    .line 426
    :cond_0
    iget-object v0, p0, Lbei;->e:[D

    aput-wide p1, v0, p3

    .line 427
    return-void
.end method

.method public b(DLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 613
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lbei;->a(DLjava/lang/String;I)V

    .line 614
    return-void
.end method

.method public b(ZZ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 845
    iput-boolean p1, p0, Lbei;->o:Z

    .line 846
    iput-boolean p2, p0, Lbei;->p:Z

    .line 847
    return-void
.end method

.method public c(DI)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 456
    invoke-virtual {p0, p3}, Lbei;->l(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    iget-object v0, p0, Lbei;->w:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    const/4 v1, 0x2

    aput-wide p1, v0, v1

    .line 459
    :cond_0
    iget-object v0, p0, Lbei;->f:[D

    aput-wide p1, v0, p3

    .line 460
    return-void
.end method

.method public c(F)V
    .locals 0
    .parameter

    .prologue
    .line 1006
    iput p1, p0, Lbei;->x:F

    .line 1007
    return-void
.end method

.method public d(DI)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 489
    invoke-virtual {p0, p3}, Lbei;->n(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    iget-object v0, p0, Lbei;->w:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    const/4 v1, 0x3

    aput-wide p1, v0, v1

    .line 492
    :cond_0
    iget-object v0, p0, Lbei;->g:[D

    aput-wide p1, v0, p3

    .line 493
    return-void
.end method

.method public d(F)V
    .locals 0
    .parameter

    .prologue
    .line 1200
    iput p1, p0, Lbei;->E:F

    .line 1201
    return-void
.end method

.method public d(I)V
    .locals 3
    .parameter

    .prologue
    .line 146
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lbei;->b:[Ljava/lang/String;

    .line 147
    new-array v0, p1, [Landroid/graphics/Paint$Align;

    iput-object v0, p0, Lbei;->B:[Landroid/graphics/Paint$Align;

    .line 148
    new-array v0, p1, [Landroid/graphics/Paint$Align;

    iput-object v0, p0, Lbei;->F:[Landroid/graphics/Paint$Align;

    .line 149
    new-array v0, p1, [I

    iput-object v0, p0, Lbei;->H:[I

    .line 150
    new-array v0, p1, [D

    iput-object v0, p0, Lbei;->d:[D

    .line 151
    new-array v0, p1, [D

    iput-object v0, p0, Lbei;->e:[D

    .line 152
    new-array v0, p1, [D

    iput-object v0, p0, Lbei;->f:[D

    .line 153
    new-array v0, p1, [D

    iput-object v0, p0, Lbei;->g:[D

    .line 154
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 155
    iget-object v1, p0, Lbei;->H:[I

    const v2, -0x333334

    aput v2, v1, v0

    .line 156
    invoke-virtual {p0, v0}, Lbei;->e(I)V

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 5
    .parameter

    .prologue
    const-wide v3, 0x7fefffffffffffffL

    const-wide v1, -0x10000000000001L

    .line 161
    iget-object v0, p0, Lbei;->d:[D

    aput-wide v3, v0, p1

    .line 162
    iget-object v0, p0, Lbei;->e:[D

    aput-wide v1, v0, p1

    .line 163
    iget-object v0, p0, Lbei;->f:[D

    aput-wide v3, v0, p1

    .line 164
    iget-object v0, p0, Lbei;->g:[D

    aput-wide v1, v0, p1

    .line 165
    const/4 v0, 0x4

    new-array v0, v0, [D

    const/4 v1, 0x0

    iget-object v2, p0, Lbei;->d:[D

    aget-wide v2, v2, p1

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lbei;->e:[D

    aget-wide v2, v2, p1

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lbei;->f:[D

    aget-wide v2, v2, p1

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lbei;->g:[D

    aget-wide v2, v2, p1

    aput-wide v2, v0, v1

    .line 166
    iget-object v1, p0, Lbei;->w:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lbei;->b:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, p1

    .line 168
    iget-object v0, p0, Lbei;->l:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Lbei;->B:[Landroid/graphics/Paint$Align;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    aput-object v1, v0, p1

    .line 170
    iget-object v0, p0, Lbei;->F:[Landroid/graphics/Paint$Align;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    aput-object v1, v0, p1

    .line 171
    return-void
.end method

.method public f(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 225
    iget-object v0, p0, Lbei;->b:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public g(I)D
    .locals 2
    .parameter

    .prologue
    .line 380
    iget-object v0, p0, Lbei;->d:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public h(I)Z
    .locals 4
    .parameter

    .prologue
    .line 403
    iget-object v0, p0, Lbei;->d:[D

    aget-wide v0, v0, p1

    const-wide v2, 0x7fefffffffffffffL

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i(I)D
    .locals 2
    .parameter

    .prologue
    .line 413
    iget-object v0, p0, Lbei;->e:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public j(I)Z
    .locals 4
    .parameter

    .prologue
    .line 436
    iget-object v0, p0, Lbei;->e:[D

    aget-wide v0, v0, p1

    const-wide v2, -0x10000000000001L

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k(I)D
    .locals 2
    .parameter

    .prologue
    .line 446
    iget-object v0, p0, Lbei;->f:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public l(I)Z
    .locals 4
    .parameter

    .prologue
    .line 469
    iget-object v0, p0, Lbei;->f:[D

    aget-wide v0, v0, p1

    const-wide v2, 0x7fefffffffffffffL

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m(I)D
    .locals 2
    .parameter

    .prologue
    .line 479
    iget-object v0, p0, Lbei;->g:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public n(I)Z
    .locals 4
    .parameter

    .prologue
    .line 502
    iget-object v0, p0, Lbei;->g:[D

    aget-wide v0, v0, p1

    const-wide v2, -0x10000000000001L

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o(I)V
    .locals 0
    .parameter

    .prologue
    .line 520
    iput p1, p0, Lbei;->h:I

    .line 521
    return-void
.end method

.method public declared-synchronized p(I)[Ljava/lang/Double;
    .locals 2
    .parameter

    .prologue
    .line 683
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbei;->l:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Double;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized q(I)V
    .locals 2
    .parameter

    .prologue
    .line 699
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbei;->l:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 700
    monitor-exit p0

    return-void

    .line 699
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public r(I)V
    .locals 0
    .parameter

    .prologue
    .line 717
    iput p1, p0, Lbei;->i:I

    .line 718
    return-void
.end method

.method public s(I)V
    .locals 0
    .parameter

    .prologue
    .line 894
    iput p1, p0, Lbei;->r:I

    .line 895
    return-void
.end method

.method public t(I)Z
    .locals 2
    .parameter

    .prologue
    .line 1038
    iget-object v0, p0, Lbei;->w:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public u(I)[D
    .locals 2
    .parameter

    .prologue
    .line 1057
    iget-object v0, p0, Lbei;->w:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public v(I)I
    .locals 1
    .parameter

    .prologue
    .line 1096
    iget-object v0, p0, Lbei;->H:[I

    aget v0, v0, p1

    return v0
.end method

.method public w(I)V
    .locals 0
    .parameter

    .prologue
    .line 1105
    iput p1, p0, Lbei;->G:I

    .line 1106
    return-void
.end method

.method public x(I)Landroid/graphics/Paint$Align;
    .locals 1
    .parameter

    .prologue
    .line 1143
    iget-object v0, p0, Lbei;->B:[Landroid/graphics/Paint$Align;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public x()Z
    .locals 1

    .prologue
    .line 817
    invoke-virtual {p0}, Lbei;->S()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lbei;->T()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public y(I)Landroid/graphics/Paint$Align;
    .locals 1
    .parameter

    .prologue
    .line 1151
    iget-object v0, p0, Lbei;->F:[Landroid/graphics/Paint$Align;

    aget-object v0, v0, p1

    return-object v0
.end method
