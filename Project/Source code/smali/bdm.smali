.class public Lbdm;
.super Landroid/view/View;
.source "GraphicalView.java"


# static fields
.field private static final j:I


# instance fields
.field private a:Lbdr;

.field private b:Lbef;

.field private c:Landroid/graphics/Rect;

.field private d:Landroid/os/Handler;

.field private e:Landroid/graphics/RectF;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Bitmap;

.field private h:Landroid/graphics/Bitmap;

.field private i:I

.field private k:Lber;

.field private l:Lber;

.field private m:Lbeo;

.field private n:Landroid/graphics/Paint;

.field private o:Lbdo;

.field private p:F

.field private q:F

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x96

    .line 66
    const/16 v0, 0xaf

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lbdm;->j:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lbdr;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x7

    .line 91
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lbdm;->c:Landroid/graphics/Rect;

    .line 56
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lbdm;->e:Landroid/graphics/RectF;

    .line 64
    const/16 v0, 0x32

    iput v0, p0, Lbdm;->i:I

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lbdm;->n:Landroid/graphics/Paint;

    .line 92
    iput-object p2, p0, Lbdm;->a:Lbdr;

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lbdm;->d:Landroid/os/Handler;

    .line 94
    iget-object v0, p0, Lbdm;->a:Lbdr;

    instance-of v0, v0, Lbdz;

    if-eqz v0, :cond_5

    .line 95
    iget-object v0, p0, Lbdm;->a:Lbdr;

    check-cast v0, Lbdz;

    invoke-virtual {v0}, Lbdz;->c()Lbei;

    move-result-object v0

    iput-object v0, p0, Lbdm;->b:Lbef;

    .line 99
    :goto_0
    iget-object v0, p0, Lbdm;->b:Lbef;

    invoke-virtual {v0}, Lbef;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const-class v0, Lbdm;

    const-string v2, "image/zoom_in.png"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lbdm;->f:Landroid/graphics/Bitmap;

    .line 102
    const-class v0, Lbdm;

    const-string v2, "image/zoom_out.png"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lbdm;->g:Landroid/graphics/Bitmap;

    .line 104
    const-class v0, Lbdm;

    const-string v2, "image/zoom-1.png"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lbdm;->h:Landroid/graphics/Bitmap;

    .line 108
    :cond_0
    iget-object v0, p0, Lbdm;->b:Lbef;

    instance-of v0, v0, Lbei;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbdm;->b:Lbef;

    check-cast v0, Lbei;

    invoke-virtual {v0}, Lbei;->U()I

    move-result v0

    if-nez v0, :cond_1

    .line 110
    iget-object v0, p0, Lbdm;->b:Lbef;

    check-cast v0, Lbei;

    iget-object v2, p0, Lbdm;->n:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {v0, v2}, Lbei;->s(I)V

    .line 112
    :cond_1
    iget-object v0, p0, Lbdm;->b:Lbef;

    invoke-virtual {v0}, Lbef;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbdm;->b:Lbef;

    invoke-virtual {v0}, Lbef;->y()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lbdm;->b:Lbef;

    invoke-virtual {v0}, Lbef;->z()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 114
    :cond_3
    new-instance v0, Lber;

    iget-object v2, p0, Lbdm;->a:Lbdr;

    const/4 v3, 0x1

    iget-object v4, p0, Lbdm;->b:Lbef;

    invoke-virtual {v4}, Lbef;->A()F

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lber;-><init>(Lbdr;ZF)V

    iput-object v0, p0, Lbdm;->k:Lber;

    .line 115
    new-instance v0, Lber;

    iget-object v2, p0, Lbdm;->a:Lbdr;

    const/4 v3, 0x0

    iget-object v4, p0, Lbdm;->b:Lbef;

    invoke-virtual {v4}, Lbef;->A()F

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lber;-><init>(Lbdr;ZF)V

    iput-object v0, p0, Lbdm;->l:Lber;

    .line 116
    new-instance v0, Lbeo;

    iget-object v2, p0, Lbdm;->a:Lbdr;

    invoke-direct {v0, v2}, Lbeo;-><init>(Lbdr;)V

    iput-object v0, p0, Lbdm;->m:Lbeo;

    .line 120
    :cond_4
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 124
    :goto_1
    if-ge v0, v1, :cond_6

    .line 125
    new-instance v0, Lbdq;

    iget-object v1, p0, Lbdm;->a:Lbdr;

    invoke-direct {v0, p0, v1}, Lbdq;-><init>(Lbdm;Lbdr;)V

    iput-object v0, p0, Lbdm;->o:Lbdo;

    .line 129
    :goto_2
    return-void

    .line 97
    :cond_5
    iget-object v0, p0, Lbdm;->a:Lbdr;

    check-cast v0, Lbdw;

    invoke-virtual {v0}, Lbdw;->a()Lbef;

    move-result-object v0

    iput-object v0, p0, Lbdm;->b:Lbef;

    goto/16 :goto_0

    .line 121
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    .line 127
    :cond_6
    new-instance v0, Lbdp;

    iget-object v1, p0, Lbdm;->a:Lbdr;

    invoke-direct {v0, p0, v1}, Lbdp;-><init>(Lbdm;Lbdr;)V

    iput-object v0, p0, Lbdm;->o:Lbdo;

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lbdm;->k:Lber;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lbdm;->k:Lber;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lber;->b(I)V

    .line 201
    invoke-virtual {p0}, Lbdm;->d()V

    .line 203
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lbdm;->l:Lber;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lbdm;->l:Lber;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lber;->b(I)V

    .line 211
    invoke-virtual {p0}, Lbdm;->d()V

    .line 213
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lbdm;->m:Lbeo;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lbdm;->m:Lbeo;

    invoke-virtual {v0}, Lbeo;->a()V

    .line 223
    iget-object v0, p0, Lbdm;->k:Lber;

    invoke-virtual {v0}, Lber;->a()V

    .line 224
    invoke-virtual {p0}, Lbdm;->d()V

    .line 226
    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lbdm;->d:Landroid/os/Handler;

    new-instance v1, Lbdn;

    invoke-direct {v1, p0}, Lbdn;-><init>(Lbdm;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 305
    return-void
.end method

.method public getCurrentSeriesAndPoint()Lbeb;
    .locals 4

    .prologue
    .line 137
    iget-object v0, p0, Lbdm;->a:Lbdr;

    new-instance v1, Lbea;

    iget v2, p0, Lbdm;->p:F

    iget v3, p0, Lbdm;->q:F

    invoke-direct {v1, v2, v3}, Lbea;-><init>(FF)V

    invoke-virtual {v0, v1}, Lbdr;->a(Lbea;)Lbeb;

    move-result-object v0

    return-object v0
.end method

.method protected getZoomRectangle()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lbdm;->e:Landroid/graphics/RectF;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 156
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 160
    invoke-virtual {p0}, Lbdm;->getWidth()I

    move-result v4

    .line 161
    invoke-virtual {p0}, Lbdm;->getHeight()I

    move-result v5

    .line 162
    iget-object v0, p0, Lbdm;->b:Lbef;

    invoke-virtual {v0}, Lbef;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lbdm;->getMeasuredWidth()I

    move-result v4

    .line 166
    invoke-virtual {p0}, Lbdm;->getMeasuredHeight()I

    move-result v5

    .line 168
    :cond_0
    iget-object v0, p0, Lbdm;->a:Lbdr;

    iget-object v6, p0, Lbdm;->n:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Lbdr;->a(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V

    .line 169
    iget-object v0, p0, Lbdm;->b:Lbef;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbdm;->b:Lbef;

    invoke-virtual {v0}, Lbef;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbdm;->b:Lbef;

    invoke-virtual {v0}, Lbef;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lbdm;->n:Landroid/graphics/Paint;

    sget v1, Lbdm;->j:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    iget v0, p0, Lbdm;->i:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    div-int/lit8 v1, v1, 0x7

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lbdm;->i:I

    .line 172
    iget-object v0, p0, Lbdm;->e:Landroid/graphics/RectF;

    add-int/lit8 v1, v4, 0x0

    iget v2, p0, Lbdm;->i:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-int/lit8 v2, v5, 0x0

    int-to-float v2, v2

    iget v3, p0, Lbdm;->i:I

    int-to-float v3, v3

    const v6, 0x3f466666

    mul-float/2addr v3, v6

    sub-float/2addr v2, v3

    add-int/lit8 v3, v4, 0x0

    int-to-float v3, v3

    add-int/lit8 v6, v5, 0x0

    int-to-float v6, v6

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 174
    iget-object v0, p0, Lbdm;->e:Landroid/graphics/RectF;

    iget v1, p0, Lbdm;->i:I

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    iget v2, p0, Lbdm;->i:I

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    iget-object v3, p0, Lbdm;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 175
    add-int/lit8 v0, v5, 0x0

    int-to-float v0, v0

    iget v1, p0, Lbdm;->i:I

    int-to-float v1, v1

    const/high16 v2, 0x3f20

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 176
    iget-object v1, p0, Lbdm;->f:Landroid/graphics/Bitmap;

    add-int/lit8 v2, v4, 0x0

    int-to-float v2, v2

    iget v3, p0, Lbdm;->i:I

    int-to-float v3, v3

    const/high16 v5, 0x4030

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    invoke-virtual {p1, v1, v2, v0, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 177
    iget-object v1, p0, Lbdm;->g:Landroid/graphics/Bitmap;

    add-int/lit8 v2, v4, 0x0

    int-to-float v2, v2

    iget v3, p0, Lbdm;->i:I

    int-to-float v3, v3

    const/high16 v5, 0x3fe0

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    invoke-virtual {p1, v1, v2, v0, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 178
    iget-object v1, p0, Lbdm;->h:Landroid/graphics/Bitmap;

    add-int/lit8 v2, v4, 0x0

    int-to-float v2, v2

    iget v3, p0, Lbdm;->i:I

    int-to-float v3, v3

    const/high16 v4, 0x3f40

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {p1, v1, v2, v0, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 180
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbdm;->r:Z

    .line 181
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 282
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 285
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lbdm;->p:F

    .line 286
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lbdm;->q:F

    .line 288
    :cond_0
    iget-object v0, p0, Lbdm;->b:Lbef;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lbdm;->r:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbdm;->b:Lbef;

    invoke-virtual {v0}, Lbef;->B()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbdm;->b:Lbef;

    invoke-virtual {v0}, Lbef;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 289
    :cond_1
    iget-object v0, p0, Lbdm;->o:Lbdo;

    invoke-interface {v0, p1}, Lbdo;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 290
    const/4 v0, 0x1

    .line 293
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setZoomRate(F)V
    .locals 1
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lbdm;->k:Lber;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbdm;->l:Lber;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lbdm;->k:Lber;

    invoke-virtual {v0, p1}, Lber;->a(F)V

    .line 191
    iget-object v0, p0, Lbdm;->l:Lber;

    invoke-virtual {v0, p1}, Lber;->a(F)V

    .line 193
    :cond_0
    return-void
.end method
