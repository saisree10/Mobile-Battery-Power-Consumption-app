.class public Lawd;
.super Ljava/lang/Object;
.source "PieChart.java"


# static fields
.field private static final b:[I

.field private static final c:I

.field private static final d:[I


# instance fields
.field private a:Landroid/content/Context;

.field private e:[Ljava/lang/String;

.field private f:[I

.field private g:[I

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 22
    const/16 v0, 0xa

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f020396

    aput v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f020397

    aput v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f020398

    aput v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f020399

    aput v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f02039a

    aput v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f02039b

    aput v2, v0, v1

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f02039c

    aput v1, v0, v3

    const/4 v1, 0x7

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f02039d

    aput v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f02039e

    aput v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f02039f

    aput v2, v0, v1

    sput-object v0, Lawd;->b:[I

    .line 34
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f0203a0

    sput v0, Lawd;->c:I

    .line 36
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lawd;->d:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x2ct 0x96t 0x20t 0xfft
        0xfft 0xeat 0x4t 0xfft
        0xf9t 0xb7t 0x64t 0xfft
        0x54t 0x98t 0xc9t 0xfft
        0xc8t 0x3et 0xa7t 0xfft
        0x3dt 0xd9t 0xect 0xfft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lawd;->a:Landroid/content/Context;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 58
    sget-object v1, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v1, 0x7f080065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lawd;->h:F

    .line 59
    sget-object v1, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v1, 0x7f080066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lawd;->i:F

    .line 60
    sget-object v1, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v1, 0x7f080067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lawd;->j:F

    .line 61
    sget-object v1, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v1, 0x7f080068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lawd;->k:F

    .line 62
    sget-object v1, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v1, 0x7f080069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lawd;->l:F

    .line 63
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)Landroid/graphics/Canvas;
    .locals 27
    .parameter
    .parameter

    .prologue
    .line 244
    const/4 v8, 0x1

    .line 249
    move-object/from16 v0, p0

    iget v0, v0, Lawd;->i:F

    move/from16 v18, v0

    .line 250
    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v6, v0, Lawd;->j:F

    add-float v16, v5, v6

    .line 251
    add-float v5, v16, v18

    move-object/from16 v0, p0

    iget v6, v0, Lawd;->k:F

    add-float v13, v5, v6

    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lawd;->k:F

    sub-float v10, v5, v6

    .line 254
    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lawd;->k:F

    add-float v17, v5, v6

    .line 255
    add-float v5, v17, v18

    move-object/from16 v0, p0

    iget v6, v0, Lawd;->k:F

    add-float v14, v5, v6

    .line 256
    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget v6, v0, Lawd;->j:F

    sub-float v11, v5, v6

    .line 258
    move-object/from16 v0, p0

    iget v5, v0, Lawd;->k:F

    add-float v6, v18, v5

    .line 259
    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/RectF;->top:F

    .line 260
    new-instance v19, Landroid/graphics/RectF;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/RectF;-><init>()V

    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lawd;->e:[Ljava/lang/String;

    array-length v9, v9

    int-to-float v9, v9

    mul-float/2addr v9, v6

    sub-float/2addr v7, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lawd;->e:[Ljava/lang/String;

    array-length v9, v9

    add-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    div-float/2addr v7, v9

    .line 263
    const/4 v9, 0x0

    cmpl-float v9, v7, v9

    if-lez v9, :cond_0

    .line 264
    add-float/2addr v6, v7

    .line 265
    add-float/2addr v5, v7

    .line 268
    :cond_0
    new-instance v20, Landroid/graphics/Paint;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Paint;-><init>()V

    .line 269
    const/4 v7, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 270
    move-object/from16 v0, p0

    iget v7, v0, Lawd;->i:F

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 272
    new-instance v21, Landroid/graphics/Rect;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    .line 273
    new-instance v22, Landroid/graphics/RectF;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/RectF;-><init>()V

    .line 274
    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 276
    const/4 v7, 0x0

    move/from16 v26, v7

    move v7, v5

    move/from16 v5, v26

    :goto_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lawd;->e:[Ljava/lang/String;

    array-length v9, v9

    if-ge v5, v9, :cond_3

    .line 277
    if-eqz v8, :cond_1

    move v9, v10

    move v12, v13

    move/from16 v15, v16

    .line 287
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lawd;->g:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    rem-int v23, v5, v23

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lawd;->g:[I

    move-object/from16 v24, v0

    aget v23, v24, v23

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 289
    add-float v23, v15, v18

    add-float v24, v7, v18

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v15, v7, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 290
    move-object/from16 v0, p0

    iget v0, v0, Lawd;->l:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lawd;->l:F

    move/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v23

    move/from16 v3, v24

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 292
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lawd;->e:[Ljava/lang/String;

    move-object/from16 v23, v0

    aget-object v23, v23, v5

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lawd;->e:[Ljava/lang/String;

    move-object/from16 v25, v0

    aget-object v25, v25, v5

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 294
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v23, v18, v23

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    add-float v23, v23, v7

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v23, v23, v24

    .line 295
    add-float v24, v7, v18

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v15, v7, v9, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 296
    sget-object v9, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v9}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 297
    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 298
    const/4 v9, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 299
    move-object/from16 v0, p0

    iget-object v9, v0, Lawd;->e:[Ljava/lang/String;

    aget-object v9, v9, v5

    move-object/from16 v0, p1

    move/from16 v1, v23

    move-object/from16 v2, v20

    invoke-virtual {v0, v9, v12, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 300
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 302
    if-eqz v8, :cond_2

    .line 303
    const/4 v8, 0x0

    .line 276
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_1
    move v9, v11

    move v12, v14

    move/from16 v15, v17

    .line 284
    goto/16 :goto_1

    .line 305
    :cond_2
    const/4 v8, 0x1

    .line 306
    add-float/2addr v7, v6

    goto :goto_2

    .line 311
    :cond_3
    return-object p1
.end method

.method private a(Landroid/graphics/RectF;FFI)Landroid/graphics/PointF;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x4316

    const v0, 0x3f4ccccd

    const/high16 v5, 0x4000

    .line 146
    div-float v1, p3, v5

    add-float v2, p2, v1

    .line 147
    const v1, 0x3f333333

    .line 148
    iget-object v3, p0, Lawd;->e:[Ljava/lang/String;

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 149
    const/4 v0, 0x0

    .line 165
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v5

    mul-float/2addr v0, v1

    .line 166
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    .line 167
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    .line 169
    const/high16 v4, 0x43b4

    div-float/2addr v2, v4

    mul-float/2addr v2, v5

    float-to-double v4, v2

    const-wide v6, 0x400921fb54442d18L

    mul-double/2addr v4, v6

    .line 170
    float-to-double v1, v1

    float-to-double v6, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v1, v6

    double-to-float v1, v1

    .line 171
    float-to-double v2, v3

    float-to-double v6, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v0, v2

    .line 173
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2

    .line 150
    :cond_1
    const/high16 v3, 0x4334

    cmpl-float v3, p3, v3

    if-lez v3, :cond_2

    .line 151
    const v0, 0x3ecccccd

    goto :goto_0

    .line 152
    :cond_2
    cmpl-float v3, p3, v6

    if-lez v3, :cond_3

    .line 153
    const/high16 v0, 0x3f00

    goto :goto_0

    .line 154
    :cond_3
    const/high16 v3, 0x4270

    cmpl-float v3, p3, v3

    if-lez v3, :cond_4

    .line 155
    const v0, 0x3f19999a

    goto :goto_0

    .line 156
    :cond_4
    const/high16 v3, 0x4170

    cmpg-float v3, p3, v3

    if-gez v3, :cond_5

    .line 157
    const v0, 0x3f666666

    goto :goto_0

    .line 158
    :cond_5
    const/high16 v3, 0x41a0

    cmpg-float v3, p3, v3

    if-ltz v3, :cond_0

    .line 160
    const/high16 v3, 0x4220

    cmpg-float v3, p3, v3

    if-gez v3, :cond_7

    const/high16 v3, 0x41f0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_6

    cmpg-float v3, v2, v6

    if-ltz v3, :cond_0

    :cond_6
    const/high16 v3, 0x4352

    cmpl-float v3, v2, v3

    if-lez v3, :cond_7

    const/high16 v3, 0x43a5

    cmpg-float v3, v2, v3

    if-ltz v3, :cond_0

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/RectF;IFF)V
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 178
    const/16 v4, 0x64

    move/from16 v0, p3

    if-ge v0, v4, :cond_3

    const/4 v4, 0x0

    .line 179
    :goto_0
    div-int/lit8 v5, p3, 0xa

    rem-int/lit8 v10, v5, 0xa

    .line 180
    rem-int/lit8 v11, p3, 0xa

    .line 183
    const/4 v8, 0x0

    .line 184
    const/4 v7, 0x0

    .line 185
    const/4 v6, 0x0

    .line 186
    const/4 v5, 0x0

    .line 192
    if-lez v4, :cond_6

    .line 193
    move-object/from16 v0, p0

    iget-object v7, v0, Lawd;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget-object v8, Lawd;->b:[I

    aget v8, v8, v4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 194
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    move-object v9, v8

    .line 197
    :goto_1
    if-gtz v4, :cond_0

    if-lez v10, :cond_1

    .line 198
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lawd;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-object v6, Lawd;->b:[I

    aget v6, v6, v10

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 199
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 202
    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lawd;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget-object v12, Lawd;->b:[I

    aget v11, v12, v11

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 203
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    .line 205
    move-object/from16 v0, p0

    iget-object v8, v0, Lawd;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v13, Lawd;->c:I

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 206
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 208
    add-int v8, v7, v5

    add-int/2addr v8, v12

    add-int/2addr v8, v14

    .line 211
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3, v8}, Lawd;->a(Landroid/graphics/RectF;FFI)Landroid/graphics/PointF;

    move-result-object v15

    .line 214
    iget v0, v15, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    div-int/lit8 v8, v8, 0x2

    sub-int v8, v16, v8

    .line 215
    iget v15, v15, Landroid/graphics/PointF;->y:F

    float-to-int v15, v15

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    sub-int v15, v15, v16

    .line 218
    if-lez v4, :cond_5

    .line 219
    add-int/2addr v7, v8

    .line 220
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v16

    add-int v16, v16, v15

    move/from16 v0, v16

    invoke-virtual {v9, v8, v15, v7, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 221
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 225
    :goto_2
    if-gtz v4, :cond_2

    if-lez v10, :cond_4

    .line 226
    :cond_2
    add-int v4, v7, v5

    .line 227
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v5, v15

    invoke-virtual {v6, v7, v15, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 228
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 232
    :goto_3
    add-int v5, v4, v12

    .line 233
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v6, v15

    invoke-virtual {v11, v4, v15, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 234
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 237
    add-int v4, v5, v14

    .line 238
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v6, v15

    invoke-virtual {v13, v5, v15, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 239
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 241
    return-void

    .line 178
    :cond_3
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_4
    move v4, v7

    goto :goto_3

    :cond_5
    move v7, v8

    goto :goto_2

    :cond_6
    move-object v9, v8

    goto/16 :goto_1
.end method

.method private a(Landroid/graphics/RectF;Landroid/graphics/RectF;IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 126
    invoke-virtual {v0, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 127
    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 128
    invoke-virtual {p2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 130
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v0, v1

    .line 131
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 132
    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->right:F

    .line 133
    iget v1, p2, Landroid/graphics/RectF;->right:F

    sub-float v0, v1, v0

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 140
    :goto_0
    iget v0, p0, Lawd;->h:F

    iget v1, p0, Lawd;->h:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 141
    iget v0, p0, Lawd;->h:F

    iget v1, p0, Lawd;->h:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 142
    return-void

    .line 135
    :cond_0
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 136
    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->top:F

    goto :goto_0
.end method

.method private a([Ljava/lang/String;[I[I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 73
    iput-object p1, p0, Lawd;->e:[Ljava/lang/String;

    .line 74
    array-length v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lawd;->f:[I

    .line 75
    iget-object v0, p0, Lawd;->f:[I

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    array-length v0, p3

    new-array v0, v0, [I

    iput-object v0, p0, Lawd;->g:[I

    .line 77
    iget-object v0, p0, Lawd;->g:[I

    array-length v1, p3

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;IIII)Landroid/graphics/Canvas;
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    move-object/from16 v0, p0

    iget-object v2, v0, Lawd;->f:[I

    if-nez v2, :cond_0

    .line 86
    const/4 v2, 0x0

    .line 120
    :goto_0
    return-object v2

    .line 89
    :cond_0
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 90
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v2, p0

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    .line 91
    invoke-direct/range {v2 .. v8}, Lawd;->a(Landroid/graphics/RectF;Landroid/graphics/RectF;IIII)V

    .line 93
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 98
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 99
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 100
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 102
    const/high16 v2, 0x41f0

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 103
    sget-object v2, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 106
    const/4 v7, 0x0

    const/high16 v8, 0x43b4

    const/4 v9, 0x1

    move-object/from16 v5, p1

    move-object v6, v3

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 108
    const/4 v7, 0x0

    .line 109
    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lawd;->f:[I

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 110
    move-object/from16 v0, p0

    iget-object v5, v0, Lawd;->g:[I

    array-length v5, v5

    rem-int v5, v2, v5

    .line 111
    move-object/from16 v0, p0

    iget-object v6, v0, Lawd;->g:[I

    aget v5, v6, v5

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    move-object/from16 v0, p0

    iget-object v5, v0, Lawd;->f:[I

    aget v5, v5, v2

    mul-int/lit16 v5, v5, 0x168

    int-to-float v5, v5

    const/high16 v6, 0x42c8

    div-float v8, v5, v6

    .line 113
    const/4 v9, 0x1

    move-object/from16 v5, p1

    move-object v6, v3

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 114
    move-object/from16 v0, p0

    iget-object v5, v0, Lawd;->f:[I

    aget v14, v5, v2

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object v13, v3

    move v15, v7

    move/from16 v16, v8

    invoke-direct/range {v11 .. v16}, Lawd;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;IFF)V

    .line 115
    add-float/2addr v7, v8

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 119
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lawd;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)Landroid/graphics/Canvas;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public a([Ljava/lang/String;[I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 81
    sget-object v0, Lawd;->d:[I

    invoke-direct {p0, p1, p2, v0}, Lawd;->a([Ljava/lang/String;[I[I)V

    .line 82
    return-void
.end method
