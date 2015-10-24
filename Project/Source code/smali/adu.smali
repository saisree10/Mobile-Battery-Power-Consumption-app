.class public Ladu;
.super Ljava/lang/Object;
.source "CropImageActivity.java"

# interfaces
.implements Lads;


# instance fields
.field final synthetic a:Ladp;

.field final synthetic b:Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;Ladp;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Ladu;->b:Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;

    iput-object p2, p0, Ladu;->a:Ladp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZI)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 259
    if-eqz p1, :cond_0

    .line 260
    iget-object v0, p0, Ladu;->a:Ladp;

    const-string v1, "ct_"

    invoke-virtual {v0, v1}, Ladp;->a(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Ladu;->a:Ladp;

    invoke-virtual {v0, p2}, Ladp;->a(I)V

    .line 262
    iget-object v0, p0, Ladu;->b:Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->b(Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 266
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Ladu;->b:Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->b(Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
