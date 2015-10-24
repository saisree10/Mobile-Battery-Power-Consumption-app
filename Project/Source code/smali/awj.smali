.class public Lawj;
.super Ljava/lang/Object;
.source "RunAppBackView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lawl;

.field final synthetic b:Lcom/dianxinos/powermanager/ui/RunAppBackView;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/ui/RunAppBackView;Lawl;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lawj;->b:Lcom/dianxinos/powermanager/ui/RunAppBackView;

    iput-object p2, p0, Lawj;->a:Lawl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lawj;->a:Lawl;

    invoke-interface {v0}, Lawl;->a()V

    .line 161
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    return-void
.end method
