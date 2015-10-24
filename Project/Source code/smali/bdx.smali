.class public Lbdx;
.super Lbdz;
.source "ScatterChart.java"


# instance fields
.field private a:F


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lbdz;-><init>()V

    .line 41
    const/high16 v0, 0x4040

    iput v0, p0, Lbdx;->a:F

    .line 44
    return-void
.end method

.method public constructor <init>(Lbec;Lbei;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lbdz;-><init>(Lbec;Lbei;)V

    .line 41
    const/high16 v0, 0x4040

    iput v0, p0, Lbdx;->a:F

    .line 54
    invoke-virtual {p2}, Lbei;->aa()F

    move-result v0

    iput v0, p0, Lbdx;->a:F

    .line 55
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 198
    iget v0, p0, Lbdx;->a:F

    sub-float v1, p3, v0

    iget v0, p0, Lbdx;->a:F

    sub-float v2, p4, v0

    iget v0, p0, Lbdx;->a:F

    add-float v3, p3, v0

    iget v0, p0, Lbdx;->a:F

    add-float v4, p4, v0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 199
    iget v0, p0, Lbdx;->a:F

    add-float v1, p3, v0

    iget v0, p0, Lbdx;->a:F

    sub-float v2, p4, v0

    iget v0, p0, Lbdx;->a:F

    sub-float v3, p3, v0

    iget v0, p0, Lbdx;->a:F

    add-float v4, p4, v0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 200
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Paint;[FFF)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 224
    const/4 v0, 0x0

    aput p4, p3, v0

    .line 225
    iget v0, p0, Lbdx;->a:F

    sub-float v0, p5, v0

    iget v1, p0, Lbdx;->a:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    aput v0, p3, v3

    .line 226
    const/4 v0, 0x2

    iget v1, p0, Lbdx;->a:F

    sub-float v1, p4, v1

    aput v1, p3, v0

    .line 227
    iget v0, p0, Lbdx;->a:F

    add-float/2addr v0, p5

    aput v0, p3, v4

    .line 228
    const/4 v0, 0x4

    iget v1, p0, Lbdx;->a:F

    add-float/2addr v1, p4

    aput v1, p3, v0

    .line 229
    const/4 v0, 0x5

    aget v1, p3, v4

    aput v1, p3, v0

    .line 230
    invoke-virtual {p0, p1, p3, p2, v3}, Lbdx;->a(Landroid/graphics/Canvas;[FLandroid/graphics/Paint;Z)V

    .line 231
    return-void
.end method

.method private b(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 211
    iget v0, p0, Lbdx;->a:F

    invoke-virtual {p1, p3, p4, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 212
    return-void
.end method

.method private b(Landroid/graphics/Canvas;Landroid/graphics/Paint;[FFF)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 255
    const/4 v0, 0x0

    aput p4, p3, v0

    .line 256
    iget v0, p0, Lbdx;->a:F

    sub-float v0, p5, v0

    aput v0, p3, v2

    .line 257
    const/4 v0, 0x2

    iget v1, p0, Lbdx;->a:F

    sub-float v1, p4, v1

    aput v1, p3, v0

    .line 258
    const/4 v0, 0x3

    aput p5, p3, v0

    .line 259
    const/4 v0, 0x4

    aput p4, p3, v0

    .line 260
    const/4 v0, 0x5

    iget v1, p0, Lbdx;->a:F

    add-float/2addr v1, p5

    aput v1, p3, v0

    .line 261
    const/4 v0, 0x6

    iget v1, p0, Lbdx;->a:F

    add-float/2addr v1, p4

    aput v1, p3, v0

    .line 262
    const/4 v0, 0x7

    aput p5, p3, v0

    .line 263
    invoke-virtual {p0, p1, p3, p2, v2}, Lbdx;->a(Landroid/graphics/Canvas;[FLandroid/graphics/Paint;Z)V

    .line 264
    return-void
.end method

.method private c(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 242
    iget v0, p0, Lbdx;->a:F

    sub-float v1, p3, v0

    iget v0, p0, Lbdx;->a:F

    sub-float v2, p4, v0

    iget v0, p0, Lbdx;->a:F

    add-float v3, p3, v0

    iget v0, p0, Lbdx;->a:F

    add-float v4, p4, v0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 243
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1
    .parameter

    .prologue
    .line 147
    const/16 v0, 0xa

    return v0
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lbeh;FII)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    check-cast p4, Lbek;

    .line 79
    invoke-virtual {p4}, Lbek;->a()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v7

    .line 81
    invoke-virtual {p4}, Lbek;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 87
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v8

    .line 88
    sget-object v0, Lbdy;->a:[I

    invoke-virtual {p4}, Lbek;->n()Lbdv;

    move-result-object v1

    invoke-virtual {v1}, Lbdv;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 123
    :cond_0
    invoke-virtual {p2, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 124
    return-void

    .line 84
    :cond_1
    invoke-virtual {p4}, Lbek;->o()F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 85
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    .line 90
    :pswitch_0
    invoke-virtual {p4}, Lbek;->o()F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 91
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v8, :cond_0

    .line 92
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-int/lit8 v0, v1, 0x1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, p1, p2, v2, v0}, Lbdx;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    .line 91
    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_1

    .line 96
    :pswitch_1
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, v8, :cond_0

    .line 97
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-int/lit8 v0, v1, 0x1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, p1, p2, v2, v0}, Lbdx;->b(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    .line 96
    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_2

    .line 101
    :pswitch_2
    const/4 v0, 0x6

    new-array v3, v0, [F

    .line 102
    const/4 v0, 0x0

    move v6, v0

    :goto_3
    if-ge v6, v8, :cond_0

    .line 103
    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-int/lit8 v0, v6, 0x1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lbdx;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;[FFF)V

    .line 102
    add-int/lit8 v0, v6, 0x2

    move v6, v0

    goto :goto_3

    .line 107
    :pswitch_3
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    if-ge v1, v8, :cond_0

    .line 108
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-int/lit8 v0, v1, 0x1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, p1, p2, v2, v0}, Lbdx;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    .line 107
    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_4

    .line 112
    :pswitch_4
    const/16 v0, 0x8

    new-array v3, v0, [F

    .line 113
    const/4 v0, 0x0

    move v6, v0

    :goto_5
    if-ge v6, v8, :cond_0

    .line 114
    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-int/lit8 v0, v6, 0x1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lbdx;->b(Landroid/graphics/Canvas;Landroid/graphics/Paint;[FFF)V

    .line 113
    add-int/lit8 v0, v6, 0x2

    move v6, v0

    goto :goto_5

    .line 118
    :pswitch_5
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, v8, :cond_0

    .line 119
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-int/lit8 v0, v1, 0x1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v2, v0, p2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 118
    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_6

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public a(Landroid/graphics/Canvas;Lbeh;FFILandroid/graphics/Paint;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x4120

    .line 162
    move-object v0, p2

    check-cast v0, Lbek;

    invoke-virtual {v0}, Lbek;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 167
    :goto_0
    sget-object v0, Lbdy;->a:[I

    check-cast p2, Lbek;

    invoke-virtual {p2}, Lbek;->n()Lbdv;

    move-result-object v1

    invoke-virtual {v1}, Lbdv;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 187
    :goto_1
    return-void

    .line 165
    :cond_0
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    .line 169
    :pswitch_0
    add-float v0, p3, v2

    invoke-direct {p0, p1, p6, v0, p4}, Lbdx;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_1

    .line 172
    :pswitch_1
    add-float v0, p3, v2

    invoke-direct {p0, p1, p6, v0, p4}, Lbdx;->b(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_1

    .line 175
    :pswitch_2
    const/4 v0, 0x6

    new-array v3, v0, [F

    add-float v4, p3, v2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p6

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lbdx;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;[FFF)V

    goto :goto_1

    .line 178
    :pswitch_3
    add-float v0, p3, v2

    invoke-direct {p0, p1, p6, v0, p4}, Lbdx;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_1

    .line 181
    :pswitch_4
    const/16 v0, 0x8

    new-array v3, v0, [F

    add-float v4, p3, v2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p6

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lbdx;->b(Landroid/graphics/Canvas;Landroid/graphics/Paint;[FFF)V

    goto :goto_1

    .line 184
    :pswitch_5
    add-float v0, p3, v2

    invoke-virtual {p1, v0, p4, p6}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected a(Ljava/util/List;Ljava/util/List;FII)[Lbds;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    .line 130
    div-int/lit8 v0, v7, 0x2

    new-array v8, v0, [Lbds;

    .line 131
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_0

    .line 132
    iget-object v0, p0, Lbdx;->c:Lbei;

    invoke-virtual {v0}, Lbei;->D()I

    move-result v3

    .line 133
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

    .line 131
    add-int/lit8 v0, v6, 0x2

    move v6, v0

    goto :goto_0

    .line 137
    :cond_0
    return-object v8
.end method
