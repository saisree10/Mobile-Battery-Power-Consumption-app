.class public Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;
.super Laao;
.source "CropImageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Lcom/dianxinos/powermanager/batterytheme/CropMaskImage;

.field private e:Landroid/widget/Button;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Rect;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Landroid/graphics/Matrix;

.field private o:Landroid/graphics/Matrix;

.field private p:F

.field private q:F

.field private r:I

.field private s:Landroid/graphics/PointF;

.field private t:Landroid/graphics/PointF;

.field private u:F

.field private v:Lavc;

.field private w:Landroid/os/AsyncTask;

.field private x:Landroid/widget/Toast;

.field private y:Z

.field private z:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Laao;-><init>()V

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->g:Landroid/graphics/Rect;

    .line 112
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->n:Landroid/graphics/Matrix;

    .line 113
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->o:Landroid/graphics/Matrix;

    .line 115
    const/high16 v0, 0x40a0

    iput v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->p:F

    .line 116
    const v0, 0x3e4ccccd

    iput v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->q:F

    .line 118
    iput v1, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->r:I

    .line 120
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->s:Landroid/graphics/PointF;

    .line 121
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->t:Landroid/graphics/PointF;

    .line 122
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->u:F

    .line 132
    iput-boolean v1, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->y:Z

    .line 134
    new-instance v0, Ladt;

    invoke-direct {v0, p0}, Ladt;-><init>(Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->z:Landroid/os/Handler;

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)F
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 358
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 359
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    sub-float/2addr v1, v2

    .line 360
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput p1, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->h:I

    return p1
.end method

.method private a(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 207
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 208
    iput-boolean v2, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 209
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 213
    :try_start_0
    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 215
    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->h:I

    div-int/2addr v1, v3

    const/4 v3, 0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 216
    iget v3, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v6, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->i:I

    div-int/2addr v3, v6

    const/4 v6, 0x1

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 217
    if-gt v1, v2, :cond_0

    if-le v3, v2, :cond_2

    .line 218
    :cond_0
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v3, v1

    move v1, v2

    .line 220
    :goto_0
    div-int/lit8 v3, v3, 0x2

    if-lez v3, :cond_1

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    :cond_1
    shl-int v1, v2, v1

    iput v1, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 225
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 227
    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 236
    :goto_1
    return-object v0

    .line 228
    :catch_0
    move-exception v1

    .line 229
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_1

    .line 230
    :catch_1
    move-exception v1

    .line 231
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 232
    :catch_2
    move-exception v1

    .line 233
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private a(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter

    .prologue
    .line 468
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 470
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 471
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 472
    return-object v0
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->f:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->a(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->g:Landroid/graphics/Rect;

    return-object p1
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x4000

    .line 364
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v0, v1

    .line 365
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    add-float/2addr v1, v2

    .line 366
    div-float/2addr v0, v3

    div-float/2addr v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 367
    return-void
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->a(Z)V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 525
    return-void
.end method

.method private a(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 162
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->c(Z)V

    .line 163
    invoke-direct {p0}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->g()V

    .line 164
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->b(Z)V

    .line 165
    invoke-direct {p0, v0, v0}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->a(ZZ)V

    .line 166
    invoke-direct {p0}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->e()V

    .line 167
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->n:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 168
    return-void
.end method

.method private a(ZZ)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x4000

    const/4 v0, 0x0

    .line 415
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 416
    iget-object v2, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->n:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 417
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v0, v0, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 418
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 420
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v1

    .line 421
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 424
    if-eqz p2, :cond_5

    .line 425
    iget v4, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->i:I

    int-to-float v4, v4

    cmpg-float v4, v1, v4

    if-gez v4, :cond_1

    .line 426
    iget v4, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->i:I

    int-to-float v4, v4

    sub-float v1, v4, v1

    div-float/2addr v1, v5

    iget v4, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v4

    .line 434
    :goto_0
    if-eqz p1, :cond_0

    .line 435
    iget v4, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->h:I

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_3

    .line 436
    iget v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->h:I

    int-to-float v0, v0

    sub-float/2addr v0, v3

    div-float/2addr v0, v5

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    .line 443
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->n:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 444
    return-void

    .line 427
    :cond_1
    iget v1, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_2

    .line 428
    iget v1, v2, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    goto :goto_0

    .line 429
    :cond_2
    iget v1, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->i:I

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_5

    .line 430
    iget-object v1, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v4

    goto :goto_0

    .line 437
    :cond_3
    iget v3, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v0

    if-lez v3, :cond_4

    .line 438
    iget v0, v2, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    goto :goto_1

    .line 439
    :cond_4
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->h:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 440
    iget v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->h:I

    int-to-float v0, v0

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v2

    goto :goto_1

    :cond_5
    move v1, v0

    goto :goto_0
.end method

.method private a(FF)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 378
    invoke-direct {p0}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->f()Landroid/graphics/RectF;

    move-result-object v0

    .line 379
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    const/4 v0, 0x1

    .line 382
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic b(Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput p1, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->i:I

    return p1
.end method

.method public static synthetic b(Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->z:Landroid/os/Handler;

    return-object v0
.end method

.method private b(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 400
    if-nez p1, :cond_0

    iget v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->r:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 401
    :cond_0
    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 402
    iget-object v1, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->n:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 403
    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    aget v0, v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 404
    iget v1, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->q:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 405
    iget-object v1, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->n:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->q:F

    iget v3, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->q:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 406
    invoke-direct {p0, v4, v4}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->a(ZZ)V

    .line 408
    :cond_1
    iget v1, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->p:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 409
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->n:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->o:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 412
    :cond_2
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 192
    if-nez v0, :cond_0

    .line 193
    const-string v0, "GetImageByUri uri equals null"

    invoke-static {v0}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->a(Ljava/lang/String;)V

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-direct {p0}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->d()V

    .line 197
    new-instance v1, Ladx;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ladx;-><init>(Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;Ladt;)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Ladx;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->w:Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static synthetic c(Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->c()V

    return-void
.end method

.method private c(Z)V
    .locals 4
    .parameter

    .prologue
    .line 447
    if-eqz p1, :cond_0

    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020114

    .line 449
    :goto_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 450
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 451
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 453
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 454
    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 456
    iget v2, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->h:I

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->d:Lcom/dianxinos/powermanager/batterytheme/CropMaskImage;

    invoke-virtual {v3}, Lcom/dianxinos/powermanager/batterytheme/CropMaskImage;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->j:I

    .line 457
    iget v2, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->i:I

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->d:Lcom/dianxinos/powermanager/batterytheme/CropMaskImage;

    invoke-virtual {v3}, Lcom/dianxinos/powermanager/batterytheme/CropMaskImage;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->k:I

    .line 458
    iget-object v2, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->d:Lcom/dianxinos/powermanager/batterytheme/CropMaskImage;

    invoke-virtual {v2}, Lcom/dianxinos/powermanager/batterytheme/CropMaskImage;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->d:Lcom/dianxinos/powermanager/batterytheme/CropMaskImage;

    invoke-virtual {v2}, Lcom/dianxinos/powermanager/batterytheme/CropMaskImage;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->l:I

    .line 459
    iget-object v1, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->d:Lcom/dianxinos/powermanager/batterytheme/CropMaskImage;

    invoke-virtual {v1}, Lcom/dianxinos/powermanager/batterytheme/CropMaskImage;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->d:Lcom/dianxinos/powermanager/batterytheme/CropMaskImage;

    invoke-virtual {v1}, Lcom/dianxinos/powermanager/batterytheme/CropMaskImage;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->m:I

    .line 460
    return-void

    .line 447
    :cond_0
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020115

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->w:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->w:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 204
    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->d()V

    return-void
.end method

.method private e()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 336
    invoke-direct {p0}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->f()Landroid/graphics/RectF;

    move-result-object v3

    .line 341
    iget v2, v3, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->j:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    .line 343
    iget-object v2, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->n:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->j:I

    int-to-float v4, v4

    iget v5, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move v2, v0

    .line 345
    :goto_0
    if-nez v2, :cond_0

    iget v2, v3, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->j:I

    iget v5, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->l:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_0

    .line 346
    iget-object v2, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->n:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->j:I

    iget v5, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->l:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 348
    :cond_0
    iget v2, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->k:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    .line 350
    iget-object v1, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->n:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->k:I

    int-to-float v2, v2

    iget v4, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v4

    invoke-virtual {v1, v6, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 352
    :goto_1
    if-nez v0, :cond_1

    iget v0, v3, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->k:I

    iget v2, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->m:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->n:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->k:I

    iget v2, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->m:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 355
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_0
.end method

.method private f()Landroid/graphics/RectF;
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v5, 0x2

    .line 370
    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 371
    iget-object v1, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->n:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 372
    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 373
    new-instance v2, Landroid/graphics/RectF;

    aget v3, v0, v5

    aget v4, v0, v7

    aget v5, v0, v5

    iget-object v6, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->g:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    aget v0, v0, v7

    iget-object v6, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->g:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v1, v6

    add-float/2addr v0, v1

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v2
.end method

.method private g()V
    .locals 4

    .prologue
    .line 386
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 387
    iget-object v1, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 389
    iget v2, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->h:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    iget v3, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->i:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 391
    iget-object v3, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->n:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 393
    iget v3, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->p:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    .line 394
    iput v2, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->p:F

    .line 396
    :cond_0
    iget v2, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->l:I

    int-to-float v2, v2

    div-float v0, v2, v0

    iget v2, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->m:I

    int-to-float v2, v2

    div-float v1, v2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->q:F

    .line 397
    return-void
.end method

.method private h()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 463
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->b:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 464
    iget v1, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->j:I

    iget v2, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->k:I

    iget v3, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->l:I

    iget v4, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->m:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 476
    new-instance v0, Lauu;

    invoke-direct {v0, p0}, Lauu;-><init>(Landroid/content/Context;)V

    .line 477
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0285

    invoke-virtual {v0, v1}, Lauu;->setTitle(I)V

    .line 478
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0270

    invoke-virtual {v0, v1}, Lauu;->c(I)V

    .line 479
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0114

    new-instance v2, Ladv;

    invoke-direct {v2, p0}, Ladv;-><init>(Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;)V

    invoke-virtual {v0, v1, v2}, Lauu;->a(ILandroid/view/View$OnClickListener;)V

    .line 485
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0115

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lauu;->b(ILandroid/view/View$OnClickListener;)V

    .line 486
    invoke-virtual {v0}, Lauu;->show()V

    .line 487
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 490
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->v:Lavc;

    if-nez v0, :cond_0

    .line 491
    new-instance v0, Lavc;

    sget-object v1, Lly;->j:Lcom/dianxinos/dxbs/R$style;

    const v1, 0x7f0b001a

    invoke-direct {v0, p0, v1}, Lavc;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->v:Lavc;

    .line 492
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->v:Lavc;

    new-instance v1, Ladw;

    invoke-direct {v1, p0}, Ladw;-><init>(Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;)V

    invoke-virtual {v0, v1}, Lavc;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->v:Lavc;

    invoke-virtual {v0}, Lavc;->show()V

    .line 501
    return-void
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 514
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->x:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 515
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->x:Landroid/widget/Toast;

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->x:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 518
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->x:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 519
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->v:Lavc;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->v:Lavc;

    invoke-virtual {v0}, Lavc;->dismiss()V

    .line 507
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 241
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->e:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 242
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->y:Z

    if-nez v0, :cond_1

    .line 244
    invoke-direct {p0}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->a:Landroid/graphics/Bitmap;

    .line 245
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->d:Lcom/dianxinos/powermanager/batterytheme/CropMaskImage;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020115

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/batterytheme/CropMaskImage;->setBackgroundResource(I)V

    .line 246
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->d:Lcom/dianxinos/powermanager/batterytheme/CropMaskImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/batterytheme/CropMaskImage;->setMessage(Landroid/os/Message;)V

    .line 247
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->e:Landroid/widget/Button;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a028e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 248
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->z:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->y:Z

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    invoke-static {p0}, Ladp;->a(Landroid/content/Context;)Ladp;

    move-result-object v0

    .line 255
    iget-object v1, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->h()Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Ladu;

    invoke-direct {v3, p0, v0}, Ladu;-><init>(Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;Ladp;)V

    invoke-virtual {v0, v1, v2, v3}, Ladp;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lads;)V

    goto :goto_0

    .line 272
    :cond_2
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->c:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 273
    invoke-direct {p0}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->i()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 172
    invoke-super {p0, p1}, Laao;->onCreate(Landroid/os/Bundle;)V

    .line 173
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->setContentView(I)V

    .line 175
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700a1

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->b:Landroid/widget/ImageView;

    .line 176
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070026

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->c:Landroid/widget/ImageView;

    .line 177
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700a2

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/batterytheme/CropMaskImage;

    iput-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->d:Lcom/dianxinos/powermanager/batterytheme/CropMaskImage;

    .line 178
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->d:Lcom/dianxinos/powermanager/batterytheme/CropMaskImage;

    iget-object v1, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->z:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/batterytheme/CropMaskImage;->setMessage(Landroid/os/Message;)V

    .line 179
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700a4

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->e:Landroid/widget/Button;

    .line 181
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 187
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 279
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 280
    invoke-direct {p0}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->i()V

    .line 281
    const/4 v0, 0x1

    .line 284
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Laao;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 289
    instance-of v0, p1, Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 332
    :goto_0
    return v4

    .line 292
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 293
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 294
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    .line 330
    :cond_1
    :goto_1
    :pswitch_0
    check-cast p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->n:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 331
    invoke-direct {p0, v5}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->b(Z)V

    goto :goto_0

    .line 296
    :pswitch_1
    iget-object v2, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->o:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->n:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 297
    iget-object v2, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->s:Landroid/graphics/PointF;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 298
    invoke-direct {p0, v0, v1}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 299
    iput v4, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->r:I

    goto :goto_1

    .line 301
    :cond_2
    iput v5, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->r:I

    goto :goto_1

    .line 305
    :pswitch_2
    invoke-direct {p0, v0, v1}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->o:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->n:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 307
    invoke-direct {p0, p2}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->a(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->u:F

    .line 308
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->t:Landroid/graphics/PointF;

    invoke-direct {p0, v0, p2}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->a(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    .line 309
    iput v3, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->r:I

    goto :goto_1

    .line 314
    :pswitch_3
    iput v5, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->r:I

    .line 315
    invoke-direct {p0}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->e()V

    goto :goto_1

    .line 318
    :pswitch_4
    iget v2, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->r:I

    if-ne v2, v4, :cond_3

    .line 319
    iget-object v2, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->n:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->o:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 320
    iget-object v2, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->n:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->s:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->s:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v3

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 321
    :cond_3
    iget v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->r:I

    if-ne v0, v3, :cond_1

    .line 322
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->n:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->o:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 323
    invoke-direct {p0, p2}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->a(Landroid/view/MotionEvent;)F

    move-result v0

    .line 324
    iget v1, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->u:F

    div-float/2addr v0, v1

    .line 325
    iget-object v1, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->n:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->t:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->t:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_1

    .line 294
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
