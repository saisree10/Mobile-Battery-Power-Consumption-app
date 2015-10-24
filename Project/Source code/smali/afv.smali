.class public Lafv;
.super Landroid/view/View;
.source "CalendarDayView.java"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private volatile d:Z

.field private volatile e:Z

.field private volatile f:Z

.field private volatile g:Z

.field private h:I

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:I

.field private m:I

.field private n:Landroid/graphics/Paint;

.field private o:Landroid/graphics/RectF;

.field private p:F

.field private q:Landroid/content/Context;

.field private r:Landroid/content/res/Resources;

.field private s:Lafu;

.field private t:I

.field private u:I

.field private v:Landroid/graphics/Bitmap;

.field private w:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 75
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 32
    iput-boolean v3, p0, Lafv;->a:Z

    .line 33
    iput-boolean v3, p0, Lafv;->b:Z

    .line 34
    iput-boolean v3, p0, Lafv;->c:Z

    .line 39
    iput-boolean v3, p0, Lafv;->d:Z

    .line 40
    iput-boolean v3, p0, Lafv;->e:Z

    .line 45
    iput-boolean v3, p0, Lafv;->f:Z

    .line 46
    iput-boolean v3, p0, Lafv;->g:Z

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lafv;->k:Ljava/lang/String;

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lafv;->n:Landroid/graphics/Paint;

    .line 57
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lafv;->o:Landroid/graphics/RectF;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lafv;->p:F

    .line 64
    iput-object v1, p0, Lafv;->s:Lafu;

    .line 65
    iput v3, p0, Lafv;->t:I

    .line 66
    iput v3, p0, Lafv;->u:I

    .line 71
    iput-object v1, p0, Lafv;->v:Landroid/graphics/Bitmap;

    .line 72
    iput-object v1, p0, Lafv;->w:Landroid/graphics/Bitmap;

    .line 76
    iput-object p1, p0, Lafv;->q:Landroid/content/Context;

    .line 77
    iget-object v0, p0, Lafv;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lafv;->r:Landroid/content/res/Resources;

    .line 78
    iput p2, p0, Lafv;->l:I

    .line 79
    iput p3, p0, Lafv;->m:I

    .line 80
    iget-object v0, p0, Lafv;->r:Landroid/content/res/Resources;

    sget-object v1, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v1, 0x7f0800a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lafv;->p:F

    .line 81
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lafv;->l:I

    iget v2, p0, Lafv;->m:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lafv;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    invoke-virtual {p0, v3}, Lafv;->a(Z)V

    .line 84
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter

    .prologue
    .line 170
    iget-object v0, p0, Lafv;->n:Landroid/graphics/Paint;

    iget-object v1, p0, Lafv;->r:Landroid/content/res/Resources;

    sget-object v2, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v2, 0x7f090076

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    iget-object v0, p0, Lafv;->n:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 172
    iget-object v0, p0, Lafv;->n:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 174
    iget-object v0, p0, Lafv;->o:Landroid/graphics/RectF;

    iget-object v1, p0, Lafv;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 175
    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 183
    iget-boolean v0, p0, Lafv;->d:Z

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lafv;->r:Landroid/content/res/Resources;

    sget-object v1, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v1, 0x7f090077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 185
    iget-object v0, p0, Lafv;->r:Landroid/content/res/Resources;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020207

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lafv;->v:Landroid/graphics/Bitmap;

    .line 186
    iget-object v0, p0, Lafv;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 187
    iget-object v1, p0, Lafv;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 188
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 189
    iget v3, p0, Lafv;->l:I

    int-to-float v3, v3

    div-float v0, v3, v0

    .line 190
    iget v3, p0, Lafv;->m:I

    int-to-float v3, v3

    div-float v1, v3, v1

    .line 191
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 192
    iget-object v0, p0, Lafv;->v:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lafv;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 251
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-boolean v0, p0, Lafv;->e:Z

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lafv;->r:Landroid/content/res/Resources;

    sget-object v1, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v1, 0x7f090078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 202
    iget-object v0, p0, Lafv;->r:Landroid/content/res/Resources;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0201d0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lafv;->w:Landroid/graphics/Bitmap;

    .line 203
    iget-object v0, p0, Lafv;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 204
    iget-object v1, p0, Lafv;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 205
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 206
    iget v3, p0, Lafv;->l:I

    int-to-float v3, v3

    div-float v0, v3, v0

    .line 207
    iget v3, p0, Lafv;->m:I

    int-to-float v3, v3

    div-float v1, v3, v1

    .line 208
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 209
    iget-object v0, p0, Lafv;->w:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lafv;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 213
    :cond_1
    iget-object v0, p0, Lafv;->v:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 214
    iget-object v0, p0, Lafv;->v:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 215
    iput-object v2, p0, Lafv;->v:Landroid/graphics/Bitmap;

    .line 217
    :cond_2
    iget-object v0, p0, Lafv;->w:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 218
    iget-object v0, p0, Lafv;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 219
    iput-object v2, p0, Lafv;->w:Landroid/graphics/Bitmap;

    .line 224
    :cond_3
    iget-object v0, p0, Lafv;->n:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 225
    iget-object v0, p0, Lafv;->n:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 226
    iget-object v0, p0, Lafv;->n:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 227
    iget-object v0, p0, Lafv;->n:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 228
    iget-object v0, p0, Lafv;->n:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 229
    iget-object v0, p0, Lafv;->n:Landroid/graphics/Paint;

    iget v1, p0, Lafv;->p:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 230
    iget-object v0, p0, Lafv;->n:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 232
    iget-object v0, p0, Lafv;->o:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    iget-object v1, p0, Lafv;->n:Landroid/graphics/Paint;

    iget-object v2, p0, Lafv;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    .line 233
    iget-object v1, p0, Lafv;->o:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    iget-object v2, p0, Lafv;->n:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    neg-float v2, v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-direct {p0}, Lafv;->getTextHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 236
    iget-object v2, p0, Lafv;->o:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    shr-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lafv;->n:Landroid/graphics/Paint;

    iget-object v4, p0, Lafv;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    shr-int/lit8 v3, v3, 0x1

    sub-int/2addr v2, v3

    sub-int/2addr v0, v2

    .line 238
    iget-object v2, p0, Lafv;->o:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    shr-int/lit8 v2, v2, 0x1

    invoke-direct {p0}, Lafv;->getTextHeight()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 240
    iget-boolean v2, p0, Lafv;->b:Z

    if-eqz v2, :cond_4

    .line 241
    iget-object v2, p0, Lafv;->n:Landroid/graphics/Paint;

    iget-object v3, p0, Lafv;->r:Landroid/content/res/Resources;

    sget-object v4, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v4, 0x7f090075

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 250
    :goto_1
    iget-object v2, p0, Lafv;->k:Ljava/lang/String;

    int-to-float v0, v0

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    iget-object v3, p0, Lafv;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 243
    :cond_4
    iget-boolean v2, p0, Lafv;->c:Z

    if-eqz v2, :cond_5

    .line 244
    iget-object v2, p0, Lafv;->n:Landroid/graphics/Paint;

    iget-object v3, p0, Lafv;->r:Landroid/content/res/Resources;

    sget-object v4, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v4, 0x7f090074

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 246
    :cond_5
    iget-object v2, p0, Lafv;->n:Landroid/graphics/Paint;

    iget-object v3, p0, Lafv;->r:Landroid/content/res/Resources;

    sget-object v4, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v4, 0x7f090073

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1
.end method

.method private getTextHeight()I
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lafv;->n:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    neg-float v0, v0

    iget-object v1, p0, Lafv;->n:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 312
    iget-boolean v0, p0, Lafv;->f:Z

    if-eqz v0, :cond_0

    .line 317
    :goto_0
    return-void

    .line 314
    :cond_0
    const/16 v0, 0xfa

    invoke-static {p0, v0, v1}, Lagd;->a(Lafv;IZ)Lagd;

    move-result-object v0

    .line 315
    invoke-virtual {p0, v0}, Lafv;->startAnimation(Landroid/view/animation/Animation;)V

    .line 316
    iput-boolean v1, p0, Lafv;->f:Z

    goto :goto_0
.end method

.method public a(IIIIZZ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 98
    iput p1, p0, Lafv;->h:I

    .line 99
    iput p2, p0, Lafv;->i:I

    .line 100
    iput p3, p0, Lafv;->j:I

    .line 101
    iget v0, p0, Lafv;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lafv;->k:Ljava/lang/String;

    .line 103
    iput-boolean p6, p0, Lafv;->a:Z

    .line 104
    iput-boolean p5, p0, Lafv;->b:Z

    .line 105
    iget v0, p0, Lafv;->i:I

    if-ne v0, p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lafv;->c:Z

    .line 106
    invoke-virtual {p0, v1}, Lafv;->a(Z)V

    .line 107
    invoke-virtual {p0}, Lafv;->invalidate()V

    .line 108
    return-void

    :cond_0
    move v0, v1

    .line 105
    goto :goto_0
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 114
    if-eqz p1, :cond_0

    .line 115
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020149

    invoke-virtual {p0, v0}, Lafv;->setBackgroundResource(I)V

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lafv;->r:Landroid/content/res/Resources;

    sget-object v1, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v1, 0x7f090083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lafv;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 320
    iget-boolean v0, p0, Lafv;->g:Z

    if-eqz v0, :cond_0

    .line 325
    :goto_0
    return-void

    .line 322
    :cond_0
    const/16 v0, 0xfa

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lagd;->a(Lafv;IZ)Lagd;

    move-result-object v0

    .line 323
    invoke-virtual {p0, v0}, Lafv;->startAnimation(Landroid/view/animation/Animation;)V

    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lafv;->g:Z

    goto :goto_0
.end method

.method public getCharging()Lafu;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lafv;->s:Lafu;

    return-object v0
.end method

.method public getCurrentMonth()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lafv;->c:Z

    return v0
.end method

.method public getDate()Ljava/util/Calendar;
    .locals 3

    .prologue
    .line 257
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 259
    const/4 v1, 0x1

    iget v2, p0, Lafv;->h:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 260
    const/4 v1, 0x2

    iget v2, p0, Lafv;->i:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 261
    const/4 v1, 0x5

    iget v2, p0, Lafv;->j:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 262
    return-object v0
.end method

.method public getDay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lafv;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getHealthCharging()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lafv;->u:I

    return v0
.end method

.method public getNormalCharging()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lafv;->t:I

    return v0
.end method

.method public getWeekend()Z
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, Lafv;->a:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 159
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 161
    iget-object v0, p0, Lafv;->o:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lafv;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lafv;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 162
    iget-object v0, p0, Lafv;->o:Landroid/graphics/RectF;

    invoke-virtual {v0, v4, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 164
    invoke-direct {p0, p1}, Lafv;->a(Landroid/graphics/Canvas;)V

    .line 165
    invoke-direct {p0, p1}, Lafv;->b(Landroid/graphics/Canvas;)V

    .line 166
    return-void
.end method

.method public setChargingData(Lafu;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 128
    if-nez p1, :cond_0

    .line 129
    iput v0, p0, Lafv;->t:I

    .line 130
    iput v0, p0, Lafv;->u:I

    .line 136
    :goto_0
    return-void

    .line 132
    :cond_0
    iput-object p1, p0, Lafv;->s:Lafu;

    .line 133
    iget v0, p1, Lafu;->d:I

    iput v0, p0, Lafv;->t:I

    .line 134
    iget v0, p1, Lafu;->e:I

    iput v0, p0, Lafv;->u:I

    goto :goto_0
.end method

.method protected setHealthAnimShowing(Z)V
    .locals 0
    .parameter

    .prologue
    .line 305
    iput-boolean p1, p0, Lafv;->g:Z

    .line 306
    return-void
.end method

.method protected setHealthTransForm(Z)V
    .locals 0
    .parameter

    .prologue
    .line 294
    iput-boolean p1, p0, Lafv;->e:Z

    .line 295
    return-void
.end method

.method protected setNormalAnimShowing(Z)V
    .locals 0
    .parameter

    .prologue
    .line 301
    iput-boolean p1, p0, Lafv;->f:Z

    .line 302
    return-void
.end method

.method protected setNormalTransForm(Z)V
    .locals 0
    .parameter

    .prologue
    .line 286
    iput-boolean p1, p0, Lafv;->d:Z

    .line 287
    return-void
.end method
