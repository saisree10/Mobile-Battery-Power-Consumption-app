.class Lavp;
.super Landroid/os/Handler;
.source "WheelScroller.java"


# instance fields
.field final synthetic a:Lavo;


# direct methods
.method constructor <init>(Lavo;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lavp;->a:Lavo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 68
    iget-object v0, p0, Lavp;->a:Lavo;

    invoke-static {v0}, Lavo;->a(Lavo;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 69
    iget-object v0, p0, Lavp;->a:Lavo;

    invoke-static {v0}, Lavo;->a(Lavo;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 70
    iget-object v1, p0, Lavp;->a:Lavo;

    invoke-static {v1}, Lavo;->b(Lavo;)I

    move-result v1

    sub-int/2addr v1, v0

    .line 71
    iget-object v2, p0, Lavp;->a:Lavo;

    invoke-static {v2, v0}, Lavo;->a(Lavo;I)I

    .line 72
    if-eqz v1, :cond_0

    .line 73
    iget-object v2, p0, Lavp;->a:Lavo;

    invoke-static {v2}, Lavo;->c(Lavo;)Lavq;

    move-result-object v2

    invoke-interface {v2, v1}, Lavq;->a(I)V

    .line 76
    :cond_0
    iget-object v1, p0, Lavp;->a:Lavo;

    invoke-static {v1}, Lavo;->a(Lavo;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v3, :cond_1

    .line 77
    iget-object v0, p0, Lavp;->a:Lavo;

    invoke-static {v0}, Lavo;->a(Lavo;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    .line 78
    iget-object v0, p0, Lavp;->a:Lavo;

    invoke-static {v0}, Lavo;->a(Lavo;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 80
    :cond_1
    iget-object v0, p0, Lavp;->a:Lavo;

    invoke-static {v0}, Lavo;->a(Lavo;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 81
    iget-object v0, p0, Lavp;->a:Lavo;

    invoke-static {v0}, Lavo;->d(Lavo;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 87
    :goto_0
    return-void

    .line 82
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_3

    .line 83
    iget-object v0, p0, Lavp;->a:Lavo;

    invoke-static {v0}, Lavo;->e(Lavo;)V

    goto :goto_0

    .line 85
    :cond_3
    iget-object v0, p0, Lavp;->a:Lavo;

    invoke-virtual {v0}, Lavo;->b()V

    goto :goto_0
.end method
