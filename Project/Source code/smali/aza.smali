.class public Laza;
.super Ljava/lang/Object;
.source "BitmapScaler.java"


# instance fields
.field private a:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-direct {p0, p1, p2, p3}, Laza;->a(Landroid/content/res/Resources;II)Lazc;

    move-result-object v0

    .line 24
    invoke-direct {p0, p1, p2, v0}, Laza;->a(Landroid/content/res/Resources;ILazc;)V

    .line 25
    invoke-direct {p0, p3}, Laza;->a(I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;III)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Laza;->a(Landroid/content/res/Resources;III)Lazc;

    move-result-object v0

    .line 30
    invoke-direct {p0, p1, p2, v0}, Laza;->a(Landroid/content/res/Resources;ILazc;)V

    .line 31
    invoke-direct {p0, p3, p4}, Laza;->a(II)V

    .line 32
    return-void
.end method

.method private a(III)Lazc;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    new-instance v0, Lazc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lazc;-><init>(Lazb;)V

    .line 117
    div-int v1, p1, p3

    int-to-float v1, v1

    iput v1, v0, Lazc;->b:F

    .line 118
    const/4 v1, 0x1

    iput v1, v0, Lazc;->a:I

    .line 123
    int-to-float v1, p2

    iget v2, v0, Lazc;->b:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 126
    :goto_0
    div-int/lit8 v2, p1, 0x2

    if-lt v2, p3, :cond_0

    div-int/lit8 v2, p2, 0x2

    if-ge v2, v1, :cond_1

    .line 133
    :cond_0
    return-object v0

    .line 129
    :cond_1
    div-int/lit8 p1, p1, 0x2

    .line 130
    div-int/lit8 p2, p2, 0x2

    .line 131
    iget v2, v0, Lazc;->a:I

    mul-int/lit8 v2, v2, 0x2

    iput v2, v0, Lazc;->a:I

    goto :goto_0
.end method

.method private a(IIII)Lazc;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    new-instance v0, Lazc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lazc;-><init>(Lazb;)V

    .line 98
    div-int v1, p2, p4

    int-to-float v1, v1

    iput v1, v0, Lazc;->b:F

    .line 99
    const/4 v1, 0x1

    iput v1, v0, Lazc;->a:I

    .line 105
    :goto_0
    div-int/lit8 v1, p2, 0x2

    if-ge v1, p4, :cond_0

    .line 112
    return-object v0

    .line 108
    :cond_0
    div-int/lit8 p1, p1, 0x2

    .line 109
    div-int/lit8 p2, p2, 0x2

    .line 110
    iget v1, v0, Lazc;->a:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, v0, Lazc;->a:I

    goto :goto_0
.end method

.method private a(Landroid/content/res/Resources;II)Lazc;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 80
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 81
    invoke-static {p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 83
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {p0, v1, v0, p3}, Laza;->a(III)Lazc;

    move-result-object v0

    .line 84
    return-object v0
.end method

.method private a(Landroid/content/res/Resources;III)Lazc;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 89
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 90
    invoke-static {p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 92
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {p0, v1, v0, p3, p4}, Laza;->a(IIII)Lazc;

    move-result-object v0

    .line 93
    return-object v0
.end method

.method private a(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 39
    iget-object v0, p0, Laza;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 40
    iget-object v0, p0, Laza;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 41
    if-lez v3, :cond_0

    if-lez v4, :cond_0

    .line 42
    int-to-float v0, p1

    int-to-float v2, v3

    div-float/2addr v0, v2

    .line 43
    iget-object v2, p0, Laza;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    int-to-float v5, p1

    div-float/2addr v2, v5

    .line 44
    int-to-float v5, v4

    div-float v2, v5, v2

    float-to-int v2, v2

    .line 45
    int-to-float v2, v2

    int-to-float v5, v4

    div-float/2addr v2, v5

    .line 47
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 48
    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 50
    iget-object v0, p0, Laza;->a:Landroid/graphics/Bitmap;

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Laza;->a:Landroid/graphics/Bitmap;

    .line 52
    :cond_0
    return-void
.end method

.method private a(II)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 55
    iget-object v0, p0, Laza;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 56
    iget-object v0, p0, Laza;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 58
    if-lez v3, :cond_0

    if-lez v4, :cond_0

    .line 59
    int-to-float v0, p1

    int-to-float v2, v3

    div-float/2addr v0, v2

    .line 60
    int-to-float v2, p2

    int-to-float v5, v4

    div-float/2addr v2, v5

    .line 62
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 63
    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 65
    iget-object v0, p0, Laza;->a:Landroid/graphics/Bitmap;

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Laza;->a:Landroid/graphics/Bitmap;

    .line 67
    :cond_0
    return-void
.end method

.method private a(Landroid/content/res/Resources;ILazc;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 71
    iget v1, p3, Lazc;->b:F

    iget v2, p3, Lazc;->b:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 73
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 74
    iget v1, p3, Lazc;->a:I

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 75
    invoke-static {p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Laza;->a:Landroid/graphics/Bitmap;

    .line 76
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Laza;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method
