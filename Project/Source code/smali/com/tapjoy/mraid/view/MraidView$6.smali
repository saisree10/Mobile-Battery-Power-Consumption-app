.class Lcom/tapjoy/mraid/view/MraidView$6;
.super Ljava/lang/Object;
.source "MraidView.java"

# interfaces
.implements Lcom/tapjoy/mraid/listener/Player;


# instance fields
.field final synthetic this$0:Lcom/tapjoy/mraid/view/MraidView;


# direct methods
.method constructor <init>(Lcom/tapjoy/mraid/view/MraidView;)V
    .locals 0
    .parameter

    .prologue
    .line 1765
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView$6;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .prologue
    .line 1778
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$6;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView;->getRootView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1780
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1781
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView$6;->this$0:Lcom/tapjoy/mraid/view/MraidView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapjoy/mraid/view/MraidView;->setVisibility(I)V

    .line 1782
    return-void
.end method

.method public onError()V
    .locals 0

    .prologue
    .line 1773
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView$6;->onComplete()V

    .line 1774
    return-void
.end method

.method public onPrepared()V
    .locals 0

    .prologue
    .line 1769
    return-void
.end method
