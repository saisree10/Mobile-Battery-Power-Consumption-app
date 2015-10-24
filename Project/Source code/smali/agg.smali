.class Lagg;
.super Ljava/lang/Object;
.source "Rotate3DAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lagf;


# direct methods
.method constructor <init>(Lagf;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lagg;->a:Lagf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, -0x4080

    .line 195
    iget-object v0, p0, Lagg;->a:Lagf;

    iget-object v0, v0, Lagf;->a:Lage;

    iget-object v0, v0, Lage;->b:Lafv;

    invoke-virtual {v0, v1}, Lafv;->setNormalTransForm(Z)V

    .line 196
    iget-object v0, p0, Lagg;->a:Lagf;

    iget-object v0, v0, Lagf;->a:Lage;

    iget-object v0, v0, Lage;->b:Lafv;

    invoke-virtual {v0, v1}, Lafv;->setHealthTransForm(Z)V

    .line 197
    iget-object v0, p0, Lagg;->a:Lagf;

    iget-object v0, v0, Lagf;->a:Lage;

    iget-object v0, v0, Lage;->b:Lafv;

    invoke-virtual {v0}, Lafv;->invalidate()V

    .line 203
    new-instance v0, Lagd;

    iget-object v1, p0, Lagg;->a:Lagf;

    iget-object v1, v1, Lagf;->a:Lage;

    iget-boolean v1, v1, Lage;->c:Z

    if-eqz v1, :cond_0

    const/high16 v1, -0x3d4c

    :goto_0
    iget-object v4, p0, Lagg;->a:Lagf;

    iget-object v4, v4, Lagf;->a:Lage;

    iget-boolean v6, v4, Lage;->c:Z

    move v4, v3

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lagd;-><init>(FFFFFZ)V

    .line 205
    iget-object v1, p0, Lagg;->a:Lagf;

    iget-object v1, v1, Lagf;->a:Lage;

    iget v1, v1, Lage;->d:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lagd;->setDuration(J)V

    .line 206
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lagd;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 207
    new-instance v1, Lagh;

    invoke-direct {v1, p0}, Lagh;-><init>(Lagg;)V

    invoke-virtual {v0, v1}, Lagd;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 222
    iget-object v1, p0, Lagg;->a:Lagf;

    iget-object v1, v1, Lagf;->a:Lage;

    iget-object v1, v1, Lage;->b:Lafv;

    invoke-virtual {v1, v0}, Lafv;->startAnimation(Landroid/view/animation/Animation;)V

    .line 223
    return-void

    .line 203
    :cond_0
    const/high16 v1, 0x42b4

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    return-void
.end method
