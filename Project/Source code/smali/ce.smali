.class Lce;
.super Ljava/lang/Object;
.source "AccessibilityDelegateCompat.java"

# interfaces
.implements Lcl;


# instance fields
.field final synthetic a:Lbz;

.field final synthetic b:Lcd;


# direct methods
.method constructor <init>(Lcd;Lbz;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lce;->b:Lcd;

    iput-object p2, p0, Lce;->a:Lbz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lce;->a:Lbz;

    invoke-virtual {v0, p1, p2}, Lbz;->a(Landroid/view/View;I)V

    .line 251
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 233
    iget-object v0, p0, Lce;->a:Lbz;

    new-instance v1, Ler;

    invoke-direct {v1, p2}, Ler;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Lbz;->a(Landroid/view/View;Ler;)V

    .line 235
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 223
    iget-object v0, p0, Lce;->a:Lbz;

    invoke-virtual {v0, p1, p2}, Lbz;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Lce;->a:Lbz;

    invoke-virtual {v0, p1, p2, p3}, Lbz;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 228
    iget-object v0, p0, Lce;->a:Lbz;

    invoke-virtual {v0, p1, p2}, Lbz;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 229
    return-void
.end method

.method public c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 239
    iget-object v0, p0, Lce;->a:Lbz;

    invoke-virtual {v0, p1, p2}, Lbz;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 240
    return-void
.end method

.method public d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 255
    iget-object v0, p0, Lce;->a:Lbz;

    invoke-virtual {v0, p1, p2}, Lbz;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 256
    return-void
.end method
