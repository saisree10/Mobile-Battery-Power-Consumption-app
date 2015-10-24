.class Lagh;
.super Ljava/lang/Object;
.source "Rotate3DAnimation.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lagg;


# direct methods
.method constructor <init>(Lagg;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lagh;->a:Lagg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 218
    iget-object v0, p0, Lagh;->a:Lagg;

    iget-object v0, v0, Lagg;->a:Lagf;

    iget-object v0, v0, Lagf;->a:Lage;

    iget-object v0, v0, Lage;->b:Lafv;

    invoke-virtual {v0, v1}, Lafv;->setNormalAnimShowing(Z)V

    .line 219
    iget-object v0, p0, Lagh;->a:Lagg;

    iget-object v0, v0, Lagg;->a:Lagf;

    iget-object v0, v0, Lagf;->a:Lage;

    iget-object v0, v0, Lage;->b:Lafv;

    invoke-virtual {v0, v1}, Lafv;->setHealthAnimShowing(Z)V

    .line 220
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    return-void
.end method
