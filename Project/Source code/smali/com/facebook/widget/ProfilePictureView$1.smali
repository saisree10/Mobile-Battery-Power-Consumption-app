.class Lcom/facebook/widget/ProfilePictureView$1;
.super Ljava/lang/Object;
.source "ProfilePictureView.java"

# interfaces
.implements Lcom/facebook/internal/ImageRequest$Callback;


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/ProfilePictureView;


# direct methods
.method constructor <init>(Lcom/facebook/widget/ProfilePictureView;)V
    .locals 0
    .parameter

    .prologue
    .line 435
    iput-object p1, p0, Lcom/facebook/widget/ProfilePictureView$1;->this$0:Lcom/facebook/widget/ProfilePictureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/internal/ImageResponse;)V
    .locals 1
    .parameter

    .prologue
    .line 438
    iget-object v0, p0, Lcom/facebook/widget/ProfilePictureView$1;->this$0:Lcom/facebook/widget/ProfilePictureView;

    #calls: Lcom/facebook/widget/ProfilePictureView;->processResponse(Lcom/facebook/internal/ImageResponse;)V
    invoke-static {v0, p1}, Lcom/facebook/widget/ProfilePictureView;->access$000(Lcom/facebook/widget/ProfilePictureView;Lcom/facebook/internal/ImageResponse;)V

    .line 439
    return-void
.end method
