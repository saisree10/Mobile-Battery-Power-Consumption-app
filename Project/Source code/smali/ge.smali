.class public Lge;
.super Lgc;
.source "SlidingPaneLayout.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1388
    invoke-direct {p0}, Lgc;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1391
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lfy;

    iget-object v0, v0, Lfy;->d:Landroid/graphics/Paint;

    invoke-static {p2, v0}, Ldj;->a(Landroid/view/View;Landroid/graphics/Paint;)V

    .line 1392
    return-void
.end method
