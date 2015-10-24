.class Lcom/facebook/widget/PickerFragment$LoadingStrategy$1;
.super Ljava/lang/Object;
.source "PickerFragment.java"

# interfaces
.implements Lag;


# instance fields
.field final synthetic this$1:Lcom/facebook/widget/PickerFragment$LoadingStrategy;


# direct methods
.method constructor <init>(Lcom/facebook/widget/PickerFragment$LoadingStrategy;)V
    .locals 0
    .parameter

    .prologue
    .line 834
    iput-object p1, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy$1;->this$1:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Lba;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 837
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy$1;->this$1:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    invoke-virtual {v0}, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->onCreateLoader()Lcom/facebook/widget/GraphObjectPagingLoader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Lba;Lcom/facebook/widget/SimpleGraphObjectCursor;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 843
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy$1;->this$1:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    iget-object v0, v0, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->loader:Lcom/facebook/widget/GraphObjectPagingLoader;

    if-eq p1, v0, :cond_0

    .line 844
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Received callback for unknown loader."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 846
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy$1;->this$1:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    check-cast p1, Lcom/facebook/widget/GraphObjectPagingLoader;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->onLoadFinished(Lcom/facebook/widget/GraphObjectPagingLoader;Lcom/facebook/widget/SimpleGraphObjectCursor;)V

    .line 847
    return-void
.end method

.method public bridge synthetic onLoadFinished(Lba;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 834
    check-cast p2, Lcom/facebook/widget/SimpleGraphObjectCursor;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/widget/PickerFragment$LoadingStrategy$1;->onLoadFinished(Lba;Lcom/facebook/widget/SimpleGraphObjectCursor;)V

    return-void
.end method

.method public onLoaderReset(Lba;)V
    .locals 2
    .parameter

    .prologue
    .line 851
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy$1;->this$1:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    iget-object v0, v0, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->loader:Lcom/facebook/widget/GraphObjectPagingLoader;

    if-eq p1, v0, :cond_0

    .line 852
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Received callback for unknown loader."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 854
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$LoadingStrategy$1;->this$1:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    check-cast p1, Lcom/facebook/widget/GraphObjectPagingLoader;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->onLoadReset(Lcom/facebook/widget/GraphObjectPagingLoader;)V

    .line 855
    return-void
.end method
