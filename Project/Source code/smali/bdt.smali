.class public Lbdt;
.super Lbdz;
.source "LineChart.java"


# instance fields
.field private a:Lbdx;


# direct methods
.method public constructor <init>(Lbec;Lbei;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lbdz;-><init>(Lbec;Lbei;)V

    .line 55
    new-instance v0, Lbdx;

    invoke-direct {v0, p1, p2}, Lbdx;-><init>(Lbec;Lbei;)V

    iput-object v0, p0, Lbdt;->a:Lbdx;

    .line 56
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1
    .parameter

    .prologue
    .line 211
    const/16 v0, 0x1e

    return v0
.end method

.method public a()Lbdx;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lbdt;->a:Lbdx;

    return-object v0
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lbeh;FII)V
    .locals 20
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    move-object/from16 v4, p4

    check-cast v4, Lbek;

    .line 85
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v9

    .line 86
    invoke-virtual {v4}, Lbek;->p()F

    move-result v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 87
    invoke-virtual {v4}, Lbek;->l()[Lbel;

    move-result-object v10

    .line 89
    array-length v11, v10

    const/4 v4, 0x0

    move v8, v4

    :goto_0
    if-ge v8, v11, :cond_12

    aget-object v12, v10, v8

    .line 90
    invoke-virtual {v12}, Lbel;->b()Lbem;

    move-result-object v4

    sget-object v5, Lbem;->a:Lbem;

    if-eq v4, v5, :cond_11

    .line 91
    invoke-virtual {v12}, Lbel;->a()I

    move-result v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 94
    invoke-virtual {v12}, Lbel;->c()[I

    move-result-object v4

    .line 95
    if-nez v4, :cond_0

    .line 96
    move-object/from16 v0, p3

    invoke-interface {v13, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 102
    :goto_1
    sget-object v4, Lbdu;->a:[I

    invoke-virtual {v12}, Lbel;->b()Lbem;

    move-result-object v5

    invoke-virtual {v5}, Lbem;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 119
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "You have added a new type of filling but have not implemented."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 98
    :cond_0
    const/4 v5, 0x0

    aget v5, v4, v5

    mul-int/lit8 v5, v5, 0x2

    const/4 v6, 0x1

    aget v4, v4, v6

    mul-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v5, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :pswitch_0
    move/from16 v5, p5

    .line 122
    :goto_2
    invoke-virtual {v12}, Lbel;->b()Lbem;

    move-result-object v4

    sget-object v6, Lbem;->d:Lbem;

    if-eq v4, v6, :cond_1

    invoke-virtual {v12}, Lbel;->b()Lbem;

    move-result-object v4

    sget-object v6, Lbem;->c:Lbem;

    if-ne v4, v6, :cond_e

    .line 124
    :cond_1
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 125
    const/4 v6, 0x0

    .line 126
    invoke-virtual {v12}, Lbel;->b()Lbem;

    move-result-object v4

    sget-object v7, Lbem;->d:Lbem;

    if-ne v4, v7, :cond_2

    const/4 v4, 0x1

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_3

    :cond_2
    invoke-virtual {v12}, Lbel;->b()Lbem;

    move-result-object v4

    sget-object v7, Lbem;->c:Lbem;

    if-ne v4, v7, :cond_13

    const/4 v4, 0x1

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v4, v4, v5

    if-lez v4, :cond_13

    .line 130
    :cond_3
    const/4 v4, 0x0

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    const/4 v4, 0x1

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    const/4 v4, 0x1

    .line 135
    :goto_3
    const/4 v6, 0x3

    move v7, v4

    :goto_4
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    if-ge v6, v4, :cond_d

    .line 136
    add-int/lit8 v4, v6, -0x2

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v15

    .line 137
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v16

    .line 139
    cmpg-float v4, v15, v5

    if-gez v4, :cond_4

    cmpl-float v4, v16, v5

    if-gtz v4, :cond_5

    :cond_4
    cmpl-float v4, v15, v5

    if-lez v4, :cond_9

    cmpg-float v4, v16, v5

    if-gez v4, :cond_9

    .line 141
    :cond_5
    add-int/lit8 v4, v6, -0x3

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 142
    add-int/lit8 v4, v6, -0x1

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 143
    sub-float v17, v4, v7

    sub-float v18, v5, v15

    mul-float v17, v17, v18

    sub-float v15, v16, v15

    div-float v15, v17, v15

    add-float/2addr v7, v15

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-virtual {v12}, Lbel;->b()Lbem;

    move-result-object v7

    sget-object v15, Lbem;->d:Lbem;

    if-ne v7, v15, :cond_6

    cmpl-float v7, v16, v5

    if-gtz v7, :cond_7

    :cond_6
    invoke-virtual {v12}, Lbel;->b()Lbem;

    move-result-object v7

    sget-object v15, Lbem;->c:Lbem;

    if-ne v7, v15, :cond_8

    cmpg-float v7, v16, v5

    if-gez v7, :cond_8

    .line 148
    :cond_7
    add-int/lit8 v6, v6, 0x2

    .line 149
    const/4 v4, 0x0

    :goto_5
    move/from16 v19, v6

    move v6, v4

    move/from16 v4, v19

    .line 135
    :goto_6
    add-int/lit8 v4, v4, 0x2

    move v7, v6

    move v6, v4

    goto/16 :goto_4

    :pswitch_1
    move/from16 v5, p5

    .line 108
    goto/16 :goto_2

    :pswitch_2
    move/from16 v5, p5

    .line 111
    goto/16 :goto_2

    .line 113
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    move v5, v4

    .line 114
    goto/16 :goto_2

    .line 116
    :pswitch_4
    const/4 v4, 0x0

    move v5, v4

    .line 117
    goto/16 :goto_2

    .line 151
    :cond_8
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    const/4 v4, 0x1

    goto :goto_5

    .line 156
    :cond_9
    if-nez v7, :cond_b

    invoke-virtual {v12}, Lbel;->b()Lbem;

    move-result-object v4

    sget-object v15, Lbem;->d:Lbem;

    if-ne v4, v15, :cond_a

    cmpg-float v4, v16, v5

    if-ltz v4, :cond_b

    :cond_a
    invoke-virtual {v12}, Lbel;->b()Lbem;

    move-result-object v4

    sget-object v15, Lbem;->c:Lbem;

    if-ne v4, v15, :cond_c

    cmpl-float v4, v16, v5

    if-lez v4, :cond_c

    .line 159
    :cond_b
    add-int/lit8 v4, v6, -0x1

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    move v4, v6

    move v6, v7

    goto :goto_6

    .line 165
    :cond_d
    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 166
    invoke-interface {v13, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 168
    :cond_e
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v6

    .line 169
    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/high16 v12, 0x3f80

    add-float/2addr v4, v12

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v13, v7, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 170
    add-int/lit8 v4, v6, -0x2

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    const/4 v4, 0x0

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    add-int/lit8 v4, v6, 0x1

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    const/4 v4, 0x0

    move v5, v4

    :goto_7
    add-int/lit8 v4, v6, 0x4

    if-ge v5, v4, :cond_10

    .line 175
    add-int/lit8 v4, v5, 0x1

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v7, 0x0

    cmpg-float v4, v4, v7

    if-gez v4, :cond_f

    .line 176
    add-int/lit8 v4, v5, 0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v13, v4, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_f
    add-int/lit8 v4, v5, 0x2

    move v5, v4

    goto :goto_7

    .line 180
    :cond_10
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 181
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v13, v2, v4}, Lbdt;->a(Landroid/graphics/Canvas;Ljava/util/List;Landroid/graphics/Paint;Z)V

    .line 89
    :cond_11
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    goto/16 :goto_0

    .line 184
    :cond_12
    invoke-virtual/range {p4 .. p4}, Lbeh;->a()I

    move-result v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 185
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 186
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lbdt;->a(Landroid/graphics/Canvas;Ljava/util/List;Landroid/graphics/Paint;Z)V

    .line 187
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 188
    return-void

    :cond_13
    move v4, v6

    goto/16 :goto_3

    .line 102
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public a(Landroid/graphics/Canvas;Lbeh;FFILandroid/graphics/Paint;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 226
    const/high16 v0, 0x41f0

    add-float v3, p3, v0

    move-object v0, p1

    move v1, p3

    move v2, p4

    move v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 227
    invoke-virtual {p0, p2}, Lbdt;->a(Lbeh;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lbdt;->a:Lbdx;

    const/high16 v1, 0x40a0

    add-float v3, p3, v1

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lbdx;->a(Landroid/graphics/Canvas;Lbeh;FFILandroid/graphics/Paint;)V

    .line 230
    :cond_0
    return-void
.end method

.method public a(Lbeh;)Z
    .locals 2
    .parameter

    .prologue
    .line 238
    check-cast p1, Lbek;

    invoke-virtual {p1}, Lbek;->n()Lbdv;

    move-result-object v0

    sget-object v1, Lbdv;->f:Lbdv;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/util/List;Ljava/util/List;FII)[Lbds;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 193
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    .line 194
    div-int/lit8 v0, v7, 0x2

    new-array v8, v0, [Lbds;

    .line 195
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_0

    .line 196
    iget-object v0, p0, Lbdt;->c:Lbei;

    invoke-virtual {v0}, Lbei;->D()I

    move-result v3

    .line 197
    div-int/lit8 v9, v6, 0x2

    new-instance v0, Lbds;

    new-instance v1, Landroid/graphics/RectF;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    int-to-float v4, v3

    sub-float v4, v2, v4

    add-int/lit8 v2, v6, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    int-to-float v5, v3

    sub-float v5, v2, v5

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    int-to-float v10, v3

    add-float/2addr v10, v2

    add-int/lit8 v2, v6, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-direct {v1, v4, v5, v10, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    add-int/lit8 v4, v6, 0x1

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lbds;-><init>(Landroid/graphics/RectF;DD)V

    aput-object v0, v8, v9

    .line 195
    add-int/lit8 v0, v6, 0x2

    move v6, v0

    goto :goto_0

    .line 201
    :cond_0
    return-object v8
.end method
