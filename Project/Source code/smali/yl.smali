.class Lyl;
.super Lbat;
.source "ImageDownloader.java"


# instance fields
.field final synthetic a:Lyi;

.field private e:Ljava/lang/String;

.field private final f:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lyi;Landroid/widget/ImageView;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lyl;->a:Lyi;

    invoke-direct {p0}, Lbat;-><init>()V

    .line 349
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lyl;->f:Ljava/lang/ref/WeakReference;

    .line 350
    return-void
.end method

.method static synthetic a(Lyl;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 344
    iget-object v0, p0, Lyl;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter

    .prologue
    .line 357
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lyl;->e:Ljava/lang/String;

    .line 358
    iget-object v0, p0, Lyl;->a:Lyi;

    iget-object v1, p0, Lyl;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lyi;->a(Lyi;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 344
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lyl;->a([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter

    .prologue
    .line 366
    invoke-virtual {p0}, Lyl;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    const/4 p1, 0x0

    .line 370
    :cond_0
    iget-object v0, p0, Lyl;->a:Lyi;

    iget-object v1, p0, Lyl;->e:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lyi;->a(Lyi;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 372
    iget-object v0, p0, Lyl;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lyl;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 374
    if-eqz v0, :cond_1

    .line 375
    invoke-static {v0}, Lyi;->a(Landroid/widget/ImageView;)Lyl;

    move-result-object v1

    .line 380
    if-eqz v1, :cond_1

    if-ne p0, v1, :cond_1

    iget-object v1, p0, Lyl;->a:Lyi;

    invoke-static {v1}, Lyi;->a(Lyi;)Ljava/lang/Thread;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 384
    iget-object v1, p0, Lyl;->a:Lyi;

    invoke-static {v1}, Lyi;->a(Lyi;)Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 386
    if-eqz p1, :cond_1

    .line 387
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 388
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 394
    :cond_1
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 344
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lyl;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
