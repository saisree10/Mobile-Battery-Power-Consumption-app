.class Lyh;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "HorizontalSlideItem.java"


# instance fields
.field a:Lyf;

.field final synthetic b:Lya;


# direct methods
.method public constructor <init>(Lya;Lyf;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lyh;->b:Lya;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 40
    iput-object p2, p0, Lyh;->a:Lyf;

    .line 41
    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lyh;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    .line 61
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lyh;->b:Lya;

    invoke-static {v1}, Lya;->a(Lya;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 47
    iget-object v0, p0, Lyh;->a:Lyf;

    invoke-interface {v0}, Lyf;->b()V

    .line 48
    iget-object v0, p0, Lyh;->b:Lya;

    invoke-static {v0}, Lya;->b(Lya;)Lcom/dianxinos/optimizer/module/messagebox/DisableScrollListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dianxinos/optimizer/module/messagebox/DisableScrollListView;->setListScrool(Z)V

    .line 55
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 49
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 50
    iget-object v0, p0, Lyh;->a:Lyf;

    invoke-interface {v0}, Lyf;->a()V

    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Lyh;->a:Lyf;

    invoke-interface {v0}, Lyf;->a()V

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lyh;->b:Lya;

    invoke-static {v0}, Lya;->c(Lya;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lyh;->b:Lya;

    invoke-virtual {v0}, Lya;->a()V

    .line 70
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 68
    :cond_0
    iget-object v0, p0, Lyh;->b:Lya;

    invoke-static {v0}, Lya;->d(Lya;)Lyg;

    move-result-object v0

    invoke-interface {v0}, Lyg;->a()V

    goto :goto_0
.end method
