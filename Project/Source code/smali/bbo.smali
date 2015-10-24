.class public Lbbo;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "RecycleBitmap.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 11
    iput v0, p0, Lbbo;->a:I

    .line 12
    iput v0, p0, Lbbo;->b:I

    .line 17
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 38
    iget v0, p0, Lbbo;->a:I

    if-gtz v0, :cond_0

    iget v0, p0, Lbbo;->b:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lbbo;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbbo;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    const-string v0, "RecycleBitmap"

    const-string v1, "recycle bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v0, p0, Lbbo;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 20
    if-eqz p1, :cond_0

    .line 21
    iget v0, p0, Lbbo;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbbo;->a:I

    .line 25
    :goto_0
    invoke-direct {p0}, Lbbo;->a()V

    .line 26
    return-void

    .line 23
    :cond_0
    iget v0, p0, Lbbo;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbbo;->a:I

    goto :goto_0
.end method
