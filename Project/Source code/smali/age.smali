.class final Lage;
.super Ljava/lang/Object;
.source "Rotate3DAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lafv;

.field final synthetic c:Z

.field final synthetic d:I


# direct methods
.method constructor <init>(ZLafv;ZI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    iput-boolean p1, p0, Lage;->a:Z

    iput-object p2, p0, Lage;->b:Lafv;

    iput-boolean p3, p0, Lage;->c:Z

    iput p4, p0, Lage;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, -0x4080

    .line 142
    iget-boolean v0, p0, Lage;->a:Z

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lage;->b:Lafv;

    invoke-virtual {v0, v4}, Lafv;->setNormalTransForm(Z)V

    .line 144
    iget-object v0, p0, Lage;->b:Lafv;

    invoke-virtual {v0, v1}, Lafv;->setHealthTransForm(Z)V

    .line 149
    :goto_0
    iget-object v0, p0, Lage;->b:Lafv;

    invoke-virtual {v0}, Lafv;->invalidate()V

    .line 155
    new-instance v0, Lagd;

    iget-boolean v1, p0, Lage;->c:Z

    if-eqz v1, :cond_1

    const/high16 v1, -0x3d4c

    :goto_1
    iget-boolean v6, p0, Lage;->c:Z

    move v4, v3

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lagd;-><init>(FFFFFZ)V

    .line 157
    iget v1, p0, Lage;->d:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lagd;->setDuration(J)V

    .line 158
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lagd;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 159
    new-instance v1, Lagf;

    invoke-direct {v1, p0}, Lagf;-><init>(Lage;)V

    invoke-virtual {v0, v1}, Lagd;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 228
    iget-object v1, p0, Lage;->b:Lafv;

    invoke-virtual {v1, v0}, Lafv;->startAnimation(Landroid/view/animation/Animation;)V

    .line 229
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lage;->b:Lafv;

    invoke-virtual {v0, v1}, Lafv;->setNormalTransForm(Z)V

    .line 147
    iget-object v0, p0, Lage;->b:Lafv;

    invoke-virtual {v0, v4}, Lafv;->setHealthTransForm(Z)V

    goto :goto_0

    .line 155
    :cond_1
    const/high16 v1, 0x42b4

    goto :goto_1
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    return-void
.end method
