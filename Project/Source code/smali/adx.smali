.class public Ladx;
.super Landroid/os/AsyncTask;
.source "CropImageActivity.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;


# direct methods
.method private constructor <init>(Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Ladx;->a:Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;Ladt;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Ladx;-><init>(Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;)V

    return-void
.end method


# virtual methods
.method public varargs a([Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Ladx;->a:Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->a(Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter

    .prologue
    .line 61
    invoke-virtual {p0}, Ladx;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 64
    :cond_0
    if-nez p1, :cond_1

    .line 65
    iget-object v0, p0, Ladx;->a:Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a028f

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->a(I)V

    .line 66
    iget-object v0, p0, Ladx;->a:Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->finish()V

    goto :goto_0

    .line 71
    :cond_1
    iget-object v0, p0, Ladx;->a:Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->b(Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lady;

    invoke-direct {v1, p0, p1}, Lady;-><init>(Ladx;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    iget-object v0, p0, Ladx;->a:Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->b(Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 48
    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Ladx;->a([Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Ladx;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Ladx;->a:Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->a()V

    .line 52
    return-void
.end method
