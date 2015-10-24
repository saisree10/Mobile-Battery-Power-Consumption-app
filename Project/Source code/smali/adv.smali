.class public Ladv;
.super Ljava/lang/Object;
.source "CropImageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 479
    iput-object p1, p0, Ladv;->a:Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 482
    iget-object v0, p0, Ladv;->a:Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/batterytheme/CropImageActivity;->finish()V

    .line 483
    return-void
.end method
