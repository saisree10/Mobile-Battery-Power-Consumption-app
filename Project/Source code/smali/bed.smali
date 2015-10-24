.class public Lbed;
.super Ljava/lang/Object;
.source "XYSeries.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Lbeu;

.field private c:D

.field private d:D

.field private e:D

.field private f:D

.field private final g:I

.field private h:Ljava/util/List;

.field private final i:Lbeu;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lbed;-><init>(Ljava/lang/String;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const-wide v3, 0x7fefffffffffffffL

    const-wide v1, -0x10000000000001L

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lbeu;

    invoke-direct {v0}, Lbeu;-><init>()V

    iput-object v0, p0, Lbed;->b:Lbeu;

    .line 38
    iput-wide v3, p0, Lbed;->c:D

    .line 40
    iput-wide v1, p0, Lbed;->d:D

    .line 42
    iput-wide v3, p0, Lbed;->e:D

    .line 44
    iput-wide v1, p0, Lbed;->f:D

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbed;->h:Ljava/util/List;

    .line 52
    new-instance v0, Lbeu;

    invoke-direct {v0}, Lbeu;-><init>()V

    iput-object v0, p0, Lbed;->i:Lbeu;

    .line 70
    iput-object p1, p0, Lbed;->a:Ljava/lang/String;

    .line 71
    iput p2, p0, Lbed;->g:I

    .line 72
    invoke-direct {p0}, Lbed;->j()V

    .line 73
    return-void
.end method

.method private b(DD)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 102
    iget-wide v0, p0, Lbed;->c:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lbed;->c:D

    .line 103
    iget-wide v0, p0, Lbed;->d:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lbed;->d:D

    .line 104
    iget-wide v0, p0, Lbed;->e:D

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lbed;->e:D

    .line 105
    iget-wide v0, p0, Lbed;->f:D

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lbed;->f:D

    .line 106
    return-void
.end method

.method private j()V
    .locals 6

    .prologue
    const-wide v2, 0x7fefffffffffffffL

    const-wide v0, -0x10000000000001L

    .line 83
    iput-wide v2, p0, Lbed;->c:D

    .line 84
    iput-wide v0, p0, Lbed;->d:D

    .line 85
    iput-wide v2, p0, Lbed;->e:D

    .line 86
    iput-wide v0, p0, Lbed;->f:D

    .line 87
    invoke-virtual {p0}, Lbed;->e()I

    move-result v1

    .line 88
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 89
    invoke-virtual {p0, v0}, Lbed;->a(I)D

    move-result-wide v2

    .line 90
    invoke-virtual {p0, v0}, Lbed;->b(I)D

    move-result-wide v4

    .line 91
    invoke-direct {p0, v2, v3, v4, v5}, Lbed;->b(DD)V

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(I)D
    .locals 2
    .parameter

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbed;->b:Lbeu;

    invoke-virtual {v0, p1}, Lbeu;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lbed;->g:I

    return v0
.end method

.method public a(D)I
    .locals 2
    .parameter

    .prologue
    .line 309
    iget-object v0, p0, Lbed;->b:Lbeu;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbeu;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized a(DDZ)Ljava/util/SortedMap;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 278
    monitor-enter p0

    if-eqz p5, :cond_1

    .line 286
    :try_start_0
    iget-object v0, p0, Lbed;->b:Lbeu;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbeu;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 287
    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 288
    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    .line 294
    :cond_0
    iget-object v0, p0, Lbed;->b:Lbeu;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbeu;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 295
    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 296
    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 297
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 298
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 299
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p3

    .line 305
    :cond_1
    :goto_0
    iget-object v0, p0, Lbed;->b:Lbeu;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbeu;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 301
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    add-double/2addr p3, v0

    goto :goto_0

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(DD)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 133
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lbed;->b:Lbeu;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbeu;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lbed;->c()D

    move-result-wide v0

    add-double/2addr p1, v0

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lbed;->b:Lbeu;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbeu;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-direct {p0, p1, p2, p3, p4}, Lbed;->b(DD)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(I)D
    .locals 2
    .parameter

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbed;->b:Lbeu;

    invoke-virtual {v0, p1}, Lbeu;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lbed;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected c()D
    .locals 2

    .prologue
    .line 160
    const-wide v0, 0x3d719799812dea11L

    return-wide v0
.end method

.method public c(I)D
    .locals 2
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Lbed;->i:Lbeu;

    invoke-virtual {v0, p1}, Lbeu;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public d(I)D
    .locals 2
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Lbed;->i:Lbeu;

    invoke-virtual {v0, p1}, Lbeu;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lbed;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized e()I
    .locals 1

    .prologue
    .line 318
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbed;->b:Lbeu;

    invoke-virtual {v0}, Lbeu;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 264
    iget-object v0, p0, Lbed;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public f()D
    .locals 2

    .prologue
    .line 327
    iget-wide v0, p0, Lbed;->c:D

    return-wide v0
.end method

.method public g()D
    .locals 2

    .prologue
    .line 336
    iget-wide v0, p0, Lbed;->e:D

    return-wide v0
.end method

.method public h()D
    .locals 2

    .prologue
    .line 345
    iget-wide v0, p0, Lbed;->d:D

    return-wide v0
.end method

.method public i()D
    .locals 2

    .prologue
    .line 354
    iget-wide v0, p0, Lbed;->f:D

    return-wide v0
.end method
