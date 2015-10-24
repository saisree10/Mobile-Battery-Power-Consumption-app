.class final Lir;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lir;->a:Landroid/view/View;

    iput-object p2, p0, Lir;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .prologue
    const/16 v2, 0x1c7

    .line 124
    .line 125
    iget-object v0, p0, Lir;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 126
    iget-object v1, p0, Lir;->b:Landroid/content/Context;

    invoke-static {v1, v2}, Liq;->a(Landroid/content/Context;I)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Lir;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lir;->b:Landroid/content/Context;

    invoke-static {v1, v2}, Liq;->a(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 132
    iget-object v1, p0, Lir;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
