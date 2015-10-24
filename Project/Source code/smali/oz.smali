.class Loz;
.super Ljava/lang/Object;
.source "ToolboxImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Loy;


# direct methods
.method constructor <init>(Loy;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Loz;->b:Loy;

    iput-object p2, p0, Loz;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Loz;->b:Loy;

    iget-object v0, v0, Loy;->a:Lov;

    iget-object v1, p0, Loz;->b:Loy;

    invoke-static {v1}, Loy;->a(Loy;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lov;->a(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Loz;->b:Loy;

    invoke-static {v0}, Loy;->b(Loy;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, -0x5313502

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 144
    iget-object v1, p0, Loz;->b:Loy;

    invoke-static {v1}, Loy;->a(Loy;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Loz;->b:Loy;

    invoke-static {v0}, Loy;->b(Loy;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Loz;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 147
    :cond_0
    return-void
.end method
