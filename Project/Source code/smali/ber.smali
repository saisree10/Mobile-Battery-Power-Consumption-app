.class public Lber;
.super Lben;
.source "Zoom.java"


# instance fields
.field private c:Z

.field private d:F

.field private e:Ljava/util/List;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Lbdr;ZF)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1}, Lben;-><init>(Lbdr;)V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lber;->e:Ljava/util/List;

    .line 37
    iput-boolean v1, p0, Lber;->f:Z

    .line 39
    iput-boolean v1, p0, Lber;->g:Z

    .line 57
    iput-boolean p2, p0, Lber;->c:Z

    .line 58
    invoke-virtual {p0, p3}, Lber;->a(F)V

    .line 59
    return-void
.end method

.method private declared-synchronized a(Lbes;)V
    .locals 2
    .parameter

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lber;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbet;

    .line 163
    invoke-interface {v0, p1}, Lbet;->a(Lbes;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 165
    :cond_0
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lber;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbet;

    .line 172
    invoke-interface {v0}, Lbet;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 174
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public a(F)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput p1, p0, Lber;->d:F

    .line 68
    return-void
.end method

.method public b(I)V
    .locals 24
    .parameter

    .prologue
    .line 74
    move-object/from16 v0, p0

    iget-object v2, v0, Lber;->a:Lbdr;

    instance-of v2, v2, Lbdz;

    if-eqz v2, :cond_12

    .line 75
    move-object/from16 v0, p0

    iget-object v2, v0, Lber;->b:Lbei;

    invoke-virtual {v2}, Lbei;->ak()I

    move-result v12

    .line 76
    const/4 v7, 0x0

    :goto_0
    if-ge v7, v12, :cond_13

    .line 77
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lber;->a(I)[D

    move-result-object v2

    .line 78
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lber;->a([DI)V

    .line 79
    move-object/from16 v0, p0

    iget-object v3, v0, Lber;->b:Lbei;

    invoke-virtual {v3}, Lbei;->X()[D

    move-result-object v13

    .line 81
    const/4 v3, 0x0

    aget-wide v3, v2, v3

    const/4 v5, 0x1

    aget-wide v5, v2, v5

    add-double/2addr v3, v5

    const-wide/high16 v5, 0x4000

    div-double v14, v3, v5

    .line 82
    const/4 v3, 0x2

    aget-wide v3, v2, v3

    const/4 v5, 0x3

    aget-wide v5, v2, v5

    add-double/2addr v3, v5

    const-wide/high16 v5, 0x4000

    div-double v16, v3, v5

    .line 83
    const/4 v3, 0x1

    aget-wide v3, v2, v3

    const/4 v5, 0x0

    aget-wide v5, v2, v5

    sub-double/2addr v3, v5

    .line 84
    const/4 v5, 0x3

    aget-wide v5, v2, v5

    const/4 v8, 0x2

    aget-wide v8, v2, v8

    sub-double/2addr v5, v8

    .line 85
    const-wide/high16 v8, 0x4000

    div-double v8, v3, v8

    sub-double v8, v14, v8

    .line 86
    const-wide/high16 v10, 0x4000

    div-double v10, v3, v10

    add-double/2addr v10, v14

    .line 87
    const-wide/high16 v18, 0x4000

    div-double v18, v5, v18

    sub-double v18, v16, v18

    .line 88
    const-wide/high16 v20, 0x4000

    div-double v20, v5, v20

    add-double v20, v20, v16

    .line 91
    if-nez v7, :cond_2

    .line 92
    if-eqz v13, :cond_9

    const/4 v2, 0x0

    aget-wide v22, v13, v2

    cmpg-double v2, v8, v22

    if-lez v2, :cond_0

    const/4 v2, 0x1

    aget-wide v8, v13, v2

    cmpl-double v2, v10, v8

    if-ltz v2, :cond_9

    :cond_0
    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lber;->f:Z

    .line 93
    if-eqz v13, :cond_a

    const/4 v2, 0x2

    aget-wide v8, v13, v2

    cmpg-double v2, v18, v8

    if-lez v2, :cond_1

    const/4 v2, 0x3

    aget-wide v8, v13, v2

    cmpl-double v2, v20, v8

    if-ltz v2, :cond_a

    :cond_1
    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lber;->g:Z

    .line 96
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lber;->c:Z

    if-eqz v2, :cond_d

    .line 97
    move-object/from16 v0, p0

    iget-object v2, v0, Lber;->b:Lbei;

    invoke-virtual {v2}, Lbei;->S()Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, 0x1

    move/from16 v0, p1

    if-eq v0, v2, :cond_3

    if-nez p1, :cond_17

    .line 98
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lber;->f:Z

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lber;->d:F

    const/high16 v8, 0x3f80

    cmpg-float v2, v2, v8

    if-gez v2, :cond_b

    move-wide v2, v3

    .line 105
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lber;->b:Lbei;

    invoke-virtual {v4}, Lbei;->T()Z

    move-result v4

    if-eqz v4, :cond_16

    const/4 v4, 0x2

    move/from16 v0, p1

    if-eq v0, v4, :cond_4

    if-nez p1, :cond_16

    .line 106
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lber;->g:Z

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget v4, v0, Lber;->d:F

    const/high16 v8, 0x3f80

    cmpg-float v4, v4, v8

    if-gez v4, :cond_c

    move-wide v8, v5

    move-wide v10, v2

    .line 124
    :goto_4
    if-eqz v13, :cond_11

    .line 125
    move-object/from16 v0, p0

    iget-object v2, v0, Lber;->b:Lbei;

    invoke-virtual {v2}, Lbei;->ai()D

    move-result-wide v2

    const/4 v4, 0x1

    aget-wide v4, v13, v4

    const/4 v6, 0x0

    aget-wide v18, v13, v6

    sub-double v4, v4, v18

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 126
    move-object/from16 v0, p0

    iget-object v2, v0, Lber;->b:Lbei;

    invoke-virtual {v2}, Lbei;->aj()D

    move-result-wide v2

    const/4 v6, 0x3

    aget-wide v18, v13, v6

    const/4 v6, 0x2

    aget-wide v20, v13, v6

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 131
    :goto_5
    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    .line 132
    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 134
    move-object/from16 v0, p0

    iget-object v2, v0, Lber;->b:Lbei;

    invoke-virtual {v2}, Lbei;->S()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    move/from16 v0, p1

    if-eq v0, v2, :cond_5

    if-nez p1, :cond_6

    .line 135
    :cond_5
    const-wide/high16 v2, 0x4000

    div-double v2, v5, v2

    sub-double v3, v14, v2

    .line 136
    const-wide/high16 v10, 0x4000

    div-double/2addr v5, v10

    add-double/2addr v5, v14

    move-object/from16 v2, p0

    .line 137
    invoke-virtual/range {v2 .. v7}, Lber;->a(DDI)V

    .line 139
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lber;->b:Lbei;

    invoke-virtual {v2}, Lbei;->T()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x2

    move/from16 v0, p1

    if-eq v0, v2, :cond_7

    if-nez p1, :cond_8

    .line 140
    :cond_7
    const-wide/high16 v2, 0x4000

    div-double v2, v8, v2

    sub-double v3, v16, v2

    .line 141
    const-wide/high16 v5, 0x4000

    div-double v5, v8, v5

    add-double v5, v5, v16

    move-object/from16 v2, p0

    .line 142
    invoke-virtual/range {v2 .. v7}, Lber;->b(DDI)V

    .line 76
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 92
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 93
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 101
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lber;->d:F

    float-to-double v8, v2

    div-double v2, v3, v8

    goto/16 :goto_3

    .line 108
    :cond_c
    move-object/from16 v0, p0

    iget v4, v0, Lber;->d:F

    float-to-double v8, v4

    div-double v4, v5, v8

    move-wide v8, v4

    move-wide v10, v2

    goto/16 :goto_4

    .line 112
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lber;->b:Lbei;

    invoke-virtual {v2}, Lbei;->S()Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lber;->f:Z

    if-nez v2, :cond_f

    const/4 v2, 0x1

    move/from16 v0, p1

    if-eq v0, v2, :cond_e

    if-nez p1, :cond_f

    .line 114
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lber;->d:F

    float-to-double v8, v2

    mul-double/2addr v3, v8

    .line 117
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lber;->b:Lbei;

    invoke-virtual {v2}, Lbei;->T()Z

    move-result v2

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lber;->g:Z

    if-nez v2, :cond_15

    const/4 v2, 0x2

    move/from16 v0, p1

    if-eq v0, v2, :cond_10

    if-nez p1, :cond_15

    .line 119
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lber;->d:F

    float-to-double v8, v2

    mul-double/2addr v5, v8

    move-wide v8, v5

    move-wide v10, v3

    goto/16 :goto_4

    .line 128
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lber;->b:Lbei;

    invoke-virtual {v2}, Lbei;->ai()D

    move-result-wide v4

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lber;->b:Lbei;

    invoke-virtual {v2}, Lbei;->aj()D

    move-result-wide v2

    goto/16 :goto_5

    .line 146
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lber;->a:Lbdr;

    check-cast v2, Lbdw;

    invoke-virtual {v2}, Lbdw;->a()Lbef;

    move-result-object v2

    .line 147
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lber;->c:Z

    if-eqz v3, :cond_14

    .line 148
    invoke-virtual {v2}, Lbef;->v()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lber;->d:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lbef;->b(F)V

    .line 153
    :cond_13
    :goto_6
    new-instance v2, Lbes;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lber;->c:Z

    move-object/from16 v0, p0

    iget v4, v0, Lber;->d:F

    invoke-direct {v2, v3, v4}, Lbes;-><init>(ZF)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lber;->a(Lbes;)V

    .line 154
    return-void

    .line 150
    :cond_14
    invoke-virtual {v2}, Lbef;->v()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lber;->d:F

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lbef;->b(F)V

    goto :goto_6

    :cond_15
    move-wide v8, v5

    move-wide v10, v3

    goto/16 :goto_4

    :cond_16
    move-wide v8, v5

    move-wide v10, v2

    goto/16 :goto_4

    :cond_17
    move-wide v2, v3

    goto/16 :goto_3
.end method
