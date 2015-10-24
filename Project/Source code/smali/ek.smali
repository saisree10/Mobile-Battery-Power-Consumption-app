.class public Lek;
.super Lbz;
.source "ViewPager.java"


# instance fields
.field final synthetic b:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .locals 0
    .parameter

    .prologue
    .line 2760
    iput-object p1, p0, Lek;->b:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Lbz;-><init>()V

    return-void
.end method

.method private b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2812
    iget-object v1, p0, Lek;->b:Landroid/support/v4/view/ViewPager;

    invoke-static {v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ViewPager;)Ldd;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lek;->b:Landroid/support/v4/view/ViewPager;

    invoke-static {v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ViewPager;)Ldd;

    move-result-object v1

    invoke-virtual {v1}, Ldd;->b()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/View;Ler;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2778
    invoke-super {p0, p1, p2}, Lbz;->a(Landroid/view/View;Ler;)V

    .line 2779
    const-class v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ler;->a(Ljava/lang/CharSequence;)V

    .line 2780
    invoke-direct {p0}, Lek;->b()Z

    move-result v0

    invoke-virtual {p2, v0}, Ler;->a(Z)V

    .line 2781
    iget-object v0, p0, Lek;->b:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2782
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Ler;->a(I)V

    .line 2784
    :cond_0
    iget-object v0, p0, Lek;->b:Landroid/support/v4/view/ViewPager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2785
    const/16 v0, 0x2000

    invoke-virtual {p2, v0}, Ler;->a(I)V

    .line 2787
    :cond_1
    return-void
.end method

.method public d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2764
    invoke-super {p0, p1, p2}, Lbz;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2765
    const-class v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2766
    invoke-static {}, Lfa;->a()Lfa;

    move-result-object v0

    .line 2767
    invoke-direct {p0}, Lek;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lfa;->a(Z)V

    .line 2768
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lek;->b:Landroid/support/v4/view/ViewPager;

    invoke-static {v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ViewPager;)Ldd;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2770
    iget-object v1, p0, Lek;->b:Landroid/support/v4/view/ViewPager;

    invoke-static {v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ViewPager;)Ldd;

    move-result-object v1

    invoke-virtual {v1}, Ldd;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lfa;->a(I)V

    .line 2771
    iget-object v1, p0, Lek;->b:Landroid/support/v4/view/ViewPager;

    invoke-static {v1}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/ViewPager;)I

    move-result v1

    invoke-virtual {v0, v1}, Lfa;->b(I)V

    .line 2772
    iget-object v1, p0, Lek;->b:Landroid/support/v4/view/ViewPager;

    invoke-static {v1}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/ViewPager;)I

    move-result v1

    invoke-virtual {v0, v1}, Lfa;->c(I)V

    .line 2774
    :cond_0
    return-void
.end method
