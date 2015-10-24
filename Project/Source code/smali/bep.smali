.class public Lbep;
.super Lben;
.source "Pan.java"


# instance fields
.field private c:Ljava/util/List;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Lbdr;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1}, Lben;-><init>(Lbdr;)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbep;->c:Ljava/util/List;

    .line 32
    iput-boolean v1, p0, Lbep;->d:Z

    .line 34
    iput-boolean v1, p0, Lbep;->e:Z

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbep;->f:Z

    .line 45
    return-void
.end method

.method private a([D)D
    .locals 6
    .parameter

    .prologue
    .line 135
    const/4 v0, 0x1

    aget-wide v0, p1, v0

    const/4 v2, 0x0

    aget-wide v2, p1, v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const/4 v2, 0x3

    aget-wide v2, p1, v2

    const/4 v4, 0x2

    aget-wide v4, p1, v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private declared-synchronized b()V
    .locals 2

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbep;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbeq;

    .line 143
    invoke-interface {v0}, Lbeq;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 145
    :cond_0
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public a(FFFF)V
    .locals 21
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    const/4 v13, 0x1

    .line 57
    const/4 v12, 0x1

    .line 58
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lbep;->f:Z

    .line 59
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lbep;->g:Z

    .line 60
    move-object/from16 v0, p0

    iget-object v2, v0, Lbep;->a:Lbdr;

    instance-of v2, v2, Lbdz;

    if-eqz v2, :cond_12

    .line 61
    move-object/from16 v0, p0

    iget-object v2, v0, Lbep;->b:Lbei;

    invoke-virtual {v2}, Lbei;->ak()I

    move-result v14

    .line 62
    move-object/from16 v0, p0

    iget-object v2, v0, Lbep;->b:Lbei;

    invoke-virtual {v2}, Lbei;->W()[D

    move-result-object v15

    .line 63
    if-eqz v15, :cond_2

    array-length v2, v15

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    move v9, v2

    .line 64
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lbep;->a:Lbdr;

    move-object v8, v2

    check-cast v8, Lbdz;

    .line 65
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v14, :cond_13

    .line 66
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lbep;->a(I)[D

    move-result-object v16

    .line 67
    invoke-virtual {v8, v7}, Lbdz;->b(I)[D

    move-result-object v2

    .line 68
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lbep;->d:Z

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lbep;->e:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    aget-wide v3, v16, v3

    const/4 v5, 0x1

    aget-wide v5, v16, v5

    cmpl-double v3, v3, v5

    if-nez v3, :cond_0

    const/4 v3, 0x0

    aget-wide v3, v2, v3

    const/4 v5, 0x1

    aget-wide v5, v2, v5

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x2

    aget-wide v3, v16, v3

    const/4 v5, 0x3

    aget-wide v5, v16, v5

    cmpl-double v3, v3, v5

    if-nez v3, :cond_3

    const/4 v3, 0x2

    aget-wide v3, v2, v3

    const/4 v5, 0x3

    aget-wide v5, v2, v5

    cmpl-double v2, v3, v5

    if-nez v2, :cond_3

    .line 126
    :cond_1
    :goto_2
    return-void

    .line 63
    :cond_2
    const/4 v2, 0x0

    move v9, v2

    goto :goto_0

    .line 74
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v7}, Lbep;->a([DI)V

    .line 76
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v8, v0, v1, v7}, Lbdz;->a(FFI)[D

    move-result-object v2

    .line 77
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v8, v0, v1, v7}, Lbdz;->a(FFI)[D

    move-result-object v3

    .line 78
    const/4 v4, 0x0

    aget-wide v4, v2, v4

    const/4 v6, 0x0

    aget-wide v10, v3, v6

    sub-double v10, v4, v10

    .line 79
    const/4 v4, 0x1

    aget-wide v4, v2, v4

    const/4 v2, 0x1

    aget-wide v2, v3, v2

    sub-double v2, v4, v2

    .line 80
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lbep;->a([D)D

    move-result-wide v17

    .line 81
    move-object/from16 v0, p0

    iget-object v4, v0, Lbep;->b:Lbei;

    invoke-virtual {v8, v4}, Lbdz;->a(Lbef;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 82
    neg-double v2, v2

    mul-double v4, v2, v17

    .line 83
    div-double v2, v10, v17

    move-wide v10, v2

    move-wide/from16 v19, v4

    move-wide/from16 v5, v19

    .line 87
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lbep;->b:Lbei;

    invoke-virtual {v2}, Lbei;->Q()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 88
    if-eqz v15, :cond_5

    .line 89
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lbep;->f:Z

    if-eqz v2, :cond_4

    .line 90
    const/4 v2, 0x0

    aget-wide v2, v15, v2

    const/4 v4, 0x0

    aget-wide v17, v16, v4

    add-double v17, v17, v5

    cmpg-double v2, v2, v17

    if-gtz v2, :cond_b

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lbep;->f:Z

    .line 92
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lbep;->g:Z

    if-eqz v2, :cond_5

    .line 93
    const/4 v2, 0x1

    aget-wide v2, v15, v2

    const/4 v4, 0x1

    aget-wide v17, v16, v4

    add-double v17, v17, v5

    cmpl-double v2, v2, v17

    if-ltz v2, :cond_c

    const/4 v2, 0x1

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lbep;->g:Z

    .line 96
    :cond_5
    if-eqz v9, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lbep;->f:Z

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lbep;->g:Z

    if-eqz v2, :cond_d

    .line 97
    :cond_6
    const/4 v2, 0x0

    aget-wide v2, v16, v2

    add-double v3, v2, v5

    const/4 v2, 0x1

    aget-wide v17, v16, v2

    add-double v5, v5, v17

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lbep;->a(DDI)V

    .line 98
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lbep;->d:Z

    .line 103
    :cond_7
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lbep;->b:Lbei;

    invoke-virtual {v2}, Lbei;->R()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 104
    if-eqz v15, :cond_9

    .line 105
    if-eqz v12, :cond_8

    .line 106
    const/4 v2, 0x2

    aget-wide v2, v15, v2

    const/4 v4, 0x2

    aget-wide v4, v16, v4

    add-double/2addr v4, v10

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_e

    const/4 v2, 0x1

    :goto_7
    move v12, v2

    .line 108
    :cond_8
    if-eqz v13, :cond_9

    .line 109
    const/4 v2, 0x3

    aget-wide v2, v15, v2

    const/4 v4, 0x3

    aget-wide v4, v16, v4

    add-double/2addr v4, v10

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_f

    const/4 v2, 0x1

    :goto_8
    move v13, v2

    .line 112
    :cond_9
    if-eqz v9, :cond_a

    if-eqz v12, :cond_10

    if-eqz v13, :cond_10

    .line 113
    :cond_a
    const/4 v2, 0x2

    aget-wide v2, v16, v2

    add-double v3, v2, v10

    const/4 v2, 0x3

    aget-wide v5, v16, v2

    add-double/2addr v5, v10

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lbep;->b(DDI)V

    .line 114
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lbep;->e:Z

    move v2, v12

    move v3, v13

    .line 65
    :goto_9
    add-int/lit8 v7, v7, 0x1

    move v12, v2

    move v13, v3

    goto/16 :goto_1

    .line 90
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 93
    :cond_c
    const/4 v2, 0x0

    goto :goto_5

    .line 100
    :cond_d
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lbep;->d:Z

    goto :goto_6

    .line 106
    :cond_e
    const/4 v2, 0x0

    goto :goto_7

    .line 109
    :cond_f
    const/4 v2, 0x0

    goto :goto_8

    .line 116
    :cond_10
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lbep;->e:Z

    :cond_11
    move v2, v12

    move v3, v13

    goto :goto_9

    .line 121
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lbep;->a:Lbdr;

    check-cast v2, Lbdw;

    .line 122
    invoke-virtual {v2}, Lbdw;->b()I

    move-result v3

    sub-float v4, p3, p1

    float-to-int v4, v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lbdw;->b(I)V

    .line 123
    invoke-virtual {v2}, Lbdw;->c()I

    move-result v3

    sub-float v4, p4, p2

    float-to-int v4, v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lbdw;->c(I)V

    .line 125
    :cond_13
    invoke-direct/range {p0 .. p0}, Lbep;->b()V

    goto/16 :goto_2

    :cond_14
    move-wide v5, v10

    move-wide v10, v2

    goto/16 :goto_3
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lbep;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
