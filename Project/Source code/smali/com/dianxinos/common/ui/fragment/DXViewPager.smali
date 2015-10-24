.class public Lcom/dianxinos/common/ui/fragment/DXViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "DXViewPager.java"


# instance fields
.field private a:Z

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dianxinos/common/ui/fragment/DXViewPager;->a:Z

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/common/ui/fragment/DXViewPager;->b:Landroid/os/Handler;

    .line 19
    return-void
.end method


# virtual methods
.method public c(I)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 56
    iget-boolean v1, p0, Lcom/dianxinos/common/ui/fragment/DXViewPager;->a:Z

    if-eqz v1, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v0

    .line 58
    :cond_1
    const/16 v1, 0x11

    if-eq p1, v1, :cond_2

    const/16 v1, 0x42

    if-ne p1, v1, :cond_0

    .line 60
    :cond_2
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->c(I)Z

    move-result v0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/dianxinos/common/ui/fragment/DXViewPager;->a:Z

    if-eqz v0, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 42
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-super/range {p0 .. p5}, Landroid/support/v4/view/ViewPager;->onLayout(ZIIII)V

    .line 66
    iget-object v0, p0, Lcom/dianxinos/common/ui/fragment/DXViewPager;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/dianxinos/common/ui/fragment/DXViewPager;->b:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/common/ui/fragment/DXViewPager;->b:Landroid/os/Handler;

    .line 70
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 48
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 50
    :goto_0
    return v0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setInitMessage(Landroid/os/Handler;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/dianxinos/common/ui/fragment/DXViewPager;->b:Landroid/os/Handler;

    .line 23
    return-void
.end method

.method public setViewTouchMode(Z)V
    .locals 1
    .parameter

    .prologue
    .line 26
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/dianxinos/common/ui/fragment/DXViewPager;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 28
    invoke-virtual {p0}, Lcom/dianxinos/common/ui/fragment/DXViewPager;->d()Z

    .line 33
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/dianxinos/common/ui/fragment/DXViewPager;->a:Z

    .line 34
    return-void

    .line 29
    :cond_1
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/dianxinos/common/ui/fragment/DXViewPager;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/dianxinos/common/ui/fragment/DXViewPager;->e()V

    goto :goto_0
.end method
