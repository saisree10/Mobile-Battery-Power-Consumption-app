.class public abstract Lbdr;
.super Ljava/lang/Object;
.source "AbstractChart.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(FFFFII)[F
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 228
    int-to-float v0, p4

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 230
    sub-float v0, p3, p1

    sub-float v1, p2, p0

    div-float v3, v0, v1

    .line 231
    int-to-float v0, p4

    sub-float/2addr v0, p1

    mul-float v1, v3, p0

    add-float/2addr v0, v1

    div-float v1, v0, v3

    .line 232
    int-to-float v0, p4

    .line 234
    cmpg-float v4, v1, v2

    if-gez v4, :cond_1

    .line 238
    mul-float v0, v3, p0

    sub-float v0, p1, v0

    move v1, v2

    :cond_0
    :goto_0
    move v3, v0

    move v4, v1

    .line 262
    :goto_1
    int-to-float v0, p4

    cmpl-float v0, p3, v0

    if-lez v0, :cond_6

    .line 263
    sub-float v0, p3, p1

    sub-float v1, p2, p0

    div-float v5, v0, v1

    .line 264
    int-to-float v0, p4

    sub-float/2addr v0, p1

    mul-float v1, v5, p0

    add-float/2addr v0, v1

    div-float v1, v0, v5

    .line 265
    int-to-float v0, p4

    .line 266
    cmpg-float v6, v1, v2

    if-gez v6, :cond_5

    .line 268
    mul-float v0, v5, p0

    sub-float v0, p1, v0

    .line 290
    :goto_2
    const/4 v1, 0x4

    new-array v1, v1, [F

    const/4 v5, 0x0

    aput v4, v1, v5

    const/4 v4, 0x1

    aput v3, v1, v4

    const/4 v3, 0x2

    aput v2, v1, v3

    const/4 v2, 0x3

    aput v0, v1, v2

    return-object v1

    .line 239
    :cond_1
    int-to-float v4, p5

    cmpl-float v4, v1, v4

    if-lez v4, :cond_0

    .line 242
    int-to-float v1, p5

    .line 243
    int-to-float v0, p5

    mul-float/2addr v0, v3

    add-float/2addr v0, p1

    mul-float/2addr v3, p0

    sub-float/2addr v0, v3

    goto :goto_0

    .line 245
    :cond_2
    cmpg-float v0, p1, v2

    if-gez v0, :cond_4

    .line 246
    sub-float v0, p3, p1

    sub-float v1, p2, p0

    div-float v3, v0, v1

    .line 247
    neg-float v0, p1

    mul-float v1, v3, p0

    add-float/2addr v0, v1

    div-float/2addr v0, v3

    .line 249
    cmpg-float v1, v0, v2

    if-gez v1, :cond_3

    .line 251
    mul-float v0, v3, p0

    sub-float v0, p1, v0

    move v1, v2

    :goto_3
    move v3, v0

    move v4, v1

    .line 256
    goto :goto_1

    .line 252
    :cond_3
    int-to-float v1, p5

    cmpl-float v1, v0, v1

    if-lez v1, :cond_b

    .line 253
    int-to-float v1, p5

    .line 254
    int-to-float v0, p5

    mul-float/2addr v0, v3

    add-float/2addr v0, p1

    mul-float/2addr v3, p0

    sub-float/2addr v0, v3

    goto :goto_3

    :cond_4
    move v3, p1

    move v4, p0

    .line 259
    goto :goto_1

    .line 269
    :cond_5
    int-to-float v2, p5

    cmpl-float v2, v1, v2

    if-lez v2, :cond_a

    .line 270
    int-to-float v2, p5

    .line 271
    int-to-float v0, p5

    mul-float/2addr v0, v5

    add-float/2addr v0, p1

    mul-float v1, v5, p0

    sub-float/2addr v0, v1

    goto :goto_2

    .line 273
    :cond_6
    cmpg-float v0, p3, v2

    if-gez v0, :cond_9

    .line 274
    sub-float v0, p3, p1

    sub-float v1, p2, p0

    div-float v1, v0, v1

    .line 275
    neg-float v0, p1

    mul-float v5, v1, p0

    add-float/2addr v0, v5

    div-float/2addr v0, v1

    .line 277
    cmpg-float v5, v0, v2

    if-gez v5, :cond_8

    .line 279
    mul-float v0, v1, p0

    sub-float v0, p1, v0

    move v7, v0

    move v0, v2

    move v2, v7

    :cond_7
    :goto_4
    move v7, v2

    move v2, v0

    move v0, v7

    .line 284
    goto :goto_2

    .line 280
    :cond_8
    int-to-float v5, p5

    cmpl-float v5, v0, v5

    if-lez v5, :cond_7

    .line 281
    int-to-float v0, p5

    .line 282
    int-to-float v2, p5

    mul-float/2addr v2, v1

    add-float/2addr v2, p1

    mul-float/2addr v1, p0

    sub-float/2addr v2, v1

    goto :goto_4

    :cond_9
    move v0, p3

    move v2, p2

    .line 287
    goto :goto_2

    :cond_a
    move v2, v1

    goto/16 :goto_2

    :cond_b
    move v1, v0

    move v0, v2

    goto :goto_3
.end method


# virtual methods
.method public abstract a(I)I
.end method

.method protected a(Landroid/graphics/Canvas;Lbef;[Ljava/lang/String;IIIIIILandroid/graphics/Paint;Z)I
    .locals 19
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    const/high16 v5, 0x4200

    .line 101
    invoke-virtual/range {p2 .. p2}, Lbef;->o()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 102
    move/from16 v0, p4

    int-to-float v7, v0

    .line 103
    add-int v4, p6, p8

    sub-int v4, v4, p9

    int-to-float v4, v4

    add-float v8, v4, v5

    .line 104
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 105
    invoke-virtual/range {p2 .. p2}, Lbef;->t()F

    move-result v4

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 106
    move-object/from16 v0, p3

    array-length v4, v0

    invoke-virtual/range {p2 .. p2}, Lbef;->d()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 107
    const/4 v9, 0x0

    :goto_0
    move/from16 v0, v17

    if-ge v9, v0, :cond_5

    .line 108
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lbef;->a(I)Lbeh;

    move-result-object v6

    .line 109
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lbdr;->a(I)I

    move-result v4

    int-to-float v11, v4

    .line 110
    invoke-virtual {v6}, Lbeh;->h()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 111
    aget-object v12, p3, v9

    .line 112
    move-object/from16 v0, p3

    array-length v4, v0

    invoke-virtual/range {p2 .. p2}, Lbef;->d()I

    move-result v10

    if-ne v4, v10, :cond_0

    .line 113
    invoke-virtual {v6}, Lbeh;->a()I

    move-result v4

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    :goto_1
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v4

    new-array v13, v4, [F

    .line 118
    move-object/from16 v0, p10

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 119
    const/4 v10, 0x0

    .line 120
    array-length v14, v13

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v14, :cond_1

    aget v15, v13, v4

    .line 121
    add-float/2addr v10, v15

    .line 120
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 115
    :cond_0
    const v4, -0x333334

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 123
    :cond_1
    const/high16 v4, 0x4120

    add-float/2addr v4, v11

    add-float v18, v4, v10

    .line 124
    add-float v4, v7, v18

    .line 126
    if-lez v9, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p5

    move/from16 v3, p7

    invoke-virtual {v0, v4, v1, v2, v3}, Lbdr;->a(FLbef;II)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 127
    move/from16 v0, p4

    int-to-float v7, v0

    .line 128
    invoke-virtual/range {p2 .. p2}, Lbef;->t()F

    move-result v4

    add-float/2addr v8, v4

    .line 129
    invoke-virtual/range {p2 .. p2}, Lbef;->t()F

    move-result v4

    add-float/2addr v5, v4

    .line 130
    add-float v4, v7, v18

    move/from16 v16, v5

    .line 132
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p5

    move/from16 v3, p7

    invoke-virtual {v0, v4, v1, v2, v3}, Lbdr;->a(FLbef;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 133
    move/from16 v0, p5

    int-to-float v4, v0

    sub-float/2addr v4, v7

    sub-float/2addr v4, v11

    const/high16 v5, 0x4120

    sub-float/2addr v4, v5

    .line 134
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lbdr;->a(Lbef;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 135
    move/from16 v0, p7

    int-to-float v4, v0

    sub-float/2addr v4, v7

    sub-float/2addr v4, v11

    const/high16 v5, 0x4120

    sub-float/2addr v4, v5

    .line 137
    :cond_2
    const/4 v5, 0x1

    move-object/from16 v0, p10

    invoke-virtual {v0, v12, v5, v4, v13}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v4

    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    invoke-virtual {v12, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 140
    :cond_3
    if-nez p11, :cond_4

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v10, p10

    .line 141
    invoke-virtual/range {v4 .. v10}, Lbdr;->a(Landroid/graphics/Canvas;Lbeh;FFILandroid/graphics/Paint;)V

    .line 142
    add-float v4, v7, v11

    const/high16 v5, 0x40a0

    add-float v13, v4, v5

    const/high16 v4, 0x40a0

    add-float v14, v8, v4

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v15, p10

    invoke-virtual/range {v10 .. v15}, Lbdr;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 144
    :cond_4
    add-float v7, v7, v18

    .line 107
    :goto_4
    add-int/lit8 v9, v9, 0x1

    move/from16 v5, v16

    goto/16 :goto_0

    .line 148
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lbef;->t()F

    move-result v4

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    return v4

    :cond_6
    move/from16 v16, v5

    goto :goto_3

    :cond_7
    move/from16 v16, v5

    goto :goto_4
.end method

.method protected a(Lbef;IF)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 426
    invoke-virtual {p1}, Lbef;->E()I

    move-result v0

    .line 427
    invoke-virtual {p1}, Lbef;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 430
    :goto_0
    invoke-virtual {p1}, Lbef;->o()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lbef;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {p1}, Lbef;->i()F

    move-result v0

    const/high16 v1, 0x4080

    mul-float/2addr v0, v1

    const/high16 v1, 0x4040

    div-float/2addr v0, v1

    add-float/2addr v0, p3

    float-to-int p2, v0

    .line 433
    :cond_0
    return p2

    :cond_1
    move p2, v0

    goto :goto_0
.end method

.method public a(Lbea;)Lbeb;
    .locals 1
    .parameter

    .prologue
    .line 526
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/text/NumberFormat;D)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 210
    const-string v0, ""

    .line 211
    if-eqz p1, :cond_0

    .line 212
    invoke-virtual {p1, p2, p3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 218
    :goto_0
    return-object v0

    .line 213
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    cmpl-double v0, p2, v0

    if-nez v0, :cond_1

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 216
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract a(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V
.end method

.method public abstract a(Landroid/graphics/Canvas;Lbeh;FFILandroid/graphics/Paint;)V
.end method

.method protected a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 161
    if-eqz p2, :cond_0

    .line 162
    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 163
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    move v0, v1

    move v2, v1

    .line 165
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 166
    aget-object v5, v3, v0

    int-to-float v6, v2

    add-float/2addr v6, p4

    invoke-virtual {p1, v5, p3, v6, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 167
    aget-object v5, v3, v0

    aget-object v6, v3, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p5, v5, v1, v6, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 168
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x5

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_0
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;Ljava/util/List;Landroid/graphics/Paint;Z)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 302
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 303
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    .line 304
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    .line 307
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 332
    :goto_0
    return-void

    .line 310
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x3

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static/range {v0 .. v5}, Lbdr;->a(FFFFII)[F

    move-result-object v0

    .line 312
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 313
    const/4 v1, 0x2

    aget v1, v0, v1

    const/4 v2, 0x3

    aget v0, v0, v2

    invoke-virtual {v7, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 315
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    .line 316
    const/4 v0, 0x4

    move v6, v0

    :goto_1
    if-ge v6, v8, :cond_5

    .line 317
    add-int/lit8 v0, v6, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    add-int/lit8 v0, v6, 0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_2

    :cond_1
    add-int/lit8 v0, v6, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    int-to-float v1, v4

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    add-int/lit8 v0, v6, 0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    int-to-float v1, v4

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 316
    :cond_2
    :goto_2
    add-int/lit8 v0, v6, 0x2

    move v6, v0

    goto :goto_1

    .line 321
    :cond_3
    add-int/lit8 v0, v6, -0x2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-int/lit8 v1, v6, -0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-int/lit8 v3, v6, 0x1

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static/range {v0 .. v5}, Lbdr;->a(FFFFII)[F

    move-result-object v0

    .line 323
    if-nez p4, :cond_4

    .line 324
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 326
    :cond_4
    const/4 v1, 0x2

    aget v1, v0, v1

    const/4 v2, 0x3

    aget v0, v0, v2

    invoke-virtual {v7, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    .line 328
    :cond_5
    if-eqz p4, :cond_6

    .line 329
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v7, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 331
    :cond_6
    invoke-virtual {p1, v7, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method protected a(Landroid/graphics/Canvas;[FLandroid/graphics/Paint;Z)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 343
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 344
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    .line 345
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    .line 348
    array-length v0, p2

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 372
    :goto_0
    return-void

    .line 351
    :cond_0
    const/4 v0, 0x0

    aget v0, p2, v0

    const/4 v1, 0x1

    aget v1, p2, v1

    const/4 v2, 0x2

    aget v2, p2, v2

    const/4 v3, 0x3

    aget v3, p2, v3

    invoke-static/range {v0 .. v5}, Lbdr;->a(FFFFII)[F

    move-result-object v0

    .line 352
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 353
    const/4 v1, 0x2

    aget v1, v0, v1

    const/4 v2, 0x3

    aget v0, v0, v2

    invoke-virtual {v7, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 355
    array-length v8, p2

    .line 356
    const/4 v0, 0x4

    move v6, v0

    :goto_1
    if-ge v6, v8, :cond_5

    .line 357
    add-int/lit8 v0, v6, -0x1

    aget v0, p2, v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    add-int/lit8 v0, v6, 0x1

    aget v0, p2, v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_2

    :cond_1
    add-int/lit8 v0, v6, -0x1

    aget v0, p2, v0

    int-to-float v1, v4

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    add-int/lit8 v0, v6, 0x1

    aget v0, p2, v0

    int-to-float v1, v4

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 356
    :cond_2
    :goto_2
    add-int/lit8 v0, v6, 0x2

    move v6, v0

    goto :goto_1

    .line 361
    :cond_3
    add-int/lit8 v0, v6, -0x2

    aget v0, p2, v0

    add-int/lit8 v1, v6, -0x1

    aget v1, p2, v1

    aget v2, p2, v6

    add-int/lit8 v3, v6, 0x1

    aget v3, p2, v3

    invoke-static/range {v0 .. v5}, Lbdr;->a(FFFFII)[F

    move-result-object v0

    .line 363
    if-nez p4, :cond_4

    .line 364
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 366
    :cond_4
    const/4 v1, 0x2

    aget v1, v0, v1

    const/4 v2, 0x3

    aget v0, v0, v2

    invoke-virtual {v7, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    .line 368
    :cond_5
    if-eqz p4, :cond_6

    .line 369
    const/4 v0, 0x0

    aget v0, p2, v0

    const/4 v1, 0x1

    aget v1, p2, v1

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 371
    :cond_6
    invoke-virtual {p1, v7, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method protected a(Lbef;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-virtual {p1}, Lbef;->f()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p8, :cond_1

    .line 71
    :cond_0
    if-eqz p8, :cond_2

    .line 72
    invoke-virtual {p7, p9}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    :goto_0
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p7, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    int-to-float v1, p3

    int-to-float v2, p4

    add-int v0, p3, p5

    int-to-float v3, v0

    add-int v0, p4, p6

    int-to-float v4, v0

    move-object v0, p2

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 79
    :cond_1
    return-void

    .line 74
    :cond_2
    invoke-virtual {p1}, Lbef;->e()I

    move-result v0

    invoke-virtual {p7, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method public a(D)Z
    .locals 2
    .parameter

    .prologue
    .line 514
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fefffffffffffffL

    cmpl-double v0, p1, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(FLbef;II)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 183
    int-to-float v0, p3

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    move v0, v1

    .line 184
    :goto_0
    invoke-virtual {p0, p2}, Lbdr;->a(Lbef;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 185
    int-to-float v0, p4

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 187
    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 183
    goto :goto_0

    :cond_1
    move v1, v2

    .line 185
    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method public a(Lbef;)Z
    .locals 2
    .parameter

    .prologue
    .line 197
    instance-of v0, p1, Lbei;

    if-eqz v0, :cond_0

    check-cast p1, Lbei;

    invoke-virtual {p1}, Lbei;->H()Lbej;

    move-result-object v0

    sget-object v1, Lbej;->b:Lbej;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
