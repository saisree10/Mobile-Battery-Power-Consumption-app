.class public Ladt;
.super Landroid/os/Handler;
.source "CropImageActivity.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Ladt;->a:Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 137
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 158
    :goto_0
    return-void

    .line 139
    :pswitch_0
    iget-object v0, p0, Ladt;->a:Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;

    iget-object v1, p0, Ladt;->a:Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->a(Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->a(Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;I)I

    .line 140
    iget-object v0, p0, Ladt;->a:Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;

    iget-object v1, p0, Ladt;->a:Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->a(Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->b(Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;I)I

    .line 141
    iget-object v0, p0, Ladt;->a:Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->c(Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;)V

    goto :goto_0

    .line 144
    :pswitch_1
    iget-object v0, p0, Ladt;->a:Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->a(Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;Z)V

    goto :goto_0

    .line 147
    :pswitch_2
    iget-object v0, p0, Ladt;->a:Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->a(Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;Z)V

    goto :goto_0

    .line 150
    :pswitch_3
    iget-object v0, p0, Ladt;->a:Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->setResult(I)V

    .line 151
    iget-object v0, p0, Ladt;->a:Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->finish()V

    goto :goto_0

    .line 154
    :pswitch_4
    iget-object v0, p0, Ladt;->a:Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->setResult(I)V

    .line 155
    iget-object v0, p0, Ladt;->a:Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->finish()V

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
