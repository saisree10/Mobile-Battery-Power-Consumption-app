.class Lady;
.super Ljava/lang/Object;
.source "CropImageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Ladx;


# direct methods
.method constructor <init>(Ladx;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lady;->b:Ladx;

    iput-object p2, p0, Lady;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lady;->b:Ladx;

    iget-object v0, v0, Ladx;->a:Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->a(Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lady;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 75
    iget-object v0, p0, Lady;->b:Ladx;

    iget-object v0, v0, Ladx;->a:Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;

    iget-object v1, p0, Lady;->a:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->a(Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 76
    iget-object v0, p0, Lady;->b:Ladx;

    iget-object v0, v0, Ladx;->a:Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;

    iget-object v1, p0, Lady;->b:Ladx;

    iget-object v1, v1, Ladx;->a:Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->a(Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->a(Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 77
    iget-object v0, p0, Lady;->b:Ladx;

    iget-object v0, v0, Ladx;->a:Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->b()V

    .line 78
    return-void
.end method
