.class public Lcom/dianxinos/powermanager/batterytheme/CropMaskImage;
.super Landroid/widget/ImageView;
.source "CropMaskImage.java"


# instance fields
.field private a:Landroid/os/Message;

.field private b:Landroid/os/Message;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dianxinos/powermanager/batterytheme/CropMaskImage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dianxinos/powermanager/batterytheme/CropMaskImage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropMaskImage;->a:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropMaskImage;->a:Landroid/os/Message;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropMaskImage;->b:Landroid/os/Message;

    .line 33
    iget-object v0, p0, Lcom/dianxinos/powermanager/batterytheme/CropMaskImage;->b:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 35
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 36
    return-void
.end method

.method public setMessage(Landroid/os/Message;)V
    .locals 0
    .parameter

    .prologue
    .line 14
    iput-object p1, p0, Lcom/dianxinos/powermanager/batterytheme/CropMaskImage;->a:Landroid/os/Message;

    .line 15
    return-void
.end method
