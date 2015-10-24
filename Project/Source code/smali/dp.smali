.class Ldp;
.super Ldo;
.source "ViewCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 454
    invoke-direct {p0}, Ldo;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 469
    invoke-static {p1, p2, p3, p4, p5}, Ldx;->a(Landroid/view/View;IIII)V

    .line 470
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 473
    invoke-static {p1, p2}, Ldx;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 474
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 465
    invoke-static {p1}, Ldx;->a(Landroid/view/View;)V

    .line 466
    return-void
.end method

.method public b(Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 485
    invoke-static {p1, p2}, Ldx;->a(Landroid/view/View;I)V

    .line 486
    return-void
.end method

.method public c(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 481
    invoke-static {p1}, Ldx;->b(Landroid/view/View;)I

    move-result v0

    return v0
.end method
