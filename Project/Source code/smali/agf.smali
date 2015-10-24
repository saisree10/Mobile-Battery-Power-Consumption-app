.class Lagf;
.super Ljava/lang/Object;
.source "Rotate3DAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lage;


# direct methods
.method constructor <init>(Lage;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lagf;->a:Lage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    const/high16 v3, -0x4080

    .line 173
    new-instance v0, Lagd;

    iget-object v2, p0, Lagf;->a:Lage;

    iget-boolean v2, v2, Lage;->c:Z

    if-eqz v2, :cond_0

    const/high16 v2, 0x42b4

    :goto_0
    iget-object v4, p0, Lagf;->a:Lage;

    iget-boolean v6, v4, Lage;->c:Z

    move v4, v3

    move v5, v1

    invoke-direct/range {v0 .. v6}, Lagd;-><init>(FFFFFZ)V

    .line 175
    iget-object v1, p0, Lagf;->a:Lage;

    iget v1, v1, Lage;->d:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lagd;->setDuration(J)V

    .line 179
    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Lagd;->setStartOffset(J)V

    .line 180
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lagd;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 181
    new-instance v1, Lagg;

    invoke-direct {v1, p0}, Lagg;-><init>(Lagf;)V

    invoke-virtual {v0, v1}, Lagd;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 225
    iget-object v1, p0, Lagf;->a:Lage;

    iget-object v1, v1, Lage;->b:Lafv;

    invoke-virtual {v1, v0}, Lafv;->startAnimation(Landroid/view/animation/Animation;)V

    .line 226
    return-void

    .line 173
    :cond_0
    const/high16 v2, -0x3d4c

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    return-void
.end method
