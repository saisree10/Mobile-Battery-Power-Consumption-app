.class public Ladw;
.super Ljava/lang/Object;
.source "CropImageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 492
    iput-object p1, p0, Ladw;->a:Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 495
    iget-object v0, p0, Ladw;->a:Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->d(Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;)V

    .line 496
    iget-object v0, p0, Ladw;->a:Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->finish()V

    .line 497
    return-void
.end method
