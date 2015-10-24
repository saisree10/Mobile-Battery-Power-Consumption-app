.class public Lia;
.super Ljava/lang/Object;
.source "ADMainActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/acomponent/ui/ADMainActivity;

.field private b:F


# direct methods
.method public constructor <init>(Lcom/dianxinos/acomponent/ui/ADMainActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lia;->a:Lcom/dianxinos/acomponent/ui/ADMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    const/4 v0, 0x0

    iput v0, p0, Lia;->b:F

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x41f0

    const/high16 v3, 0x3f80

    const/4 v2, 0x1

    .line 365
    const/4 v0, 0x2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 366
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 367
    iget v1, p0, Lia;->b:F

    sub-float/2addr v1, v4

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 368
    iget-object v0, p0, Lia;->a:Lcom/dianxinos/acomponent/ui/ADMainActivity;

    invoke-static {v0, v2}, Lcom/dianxinos/acomponent/ui/ADMainActivity;->a(Lcom/dianxinos/acomponent/ui/ADMainActivity;I)V

    .line 382
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lia;->b:F

    .line 383
    return v2

    .line 369
    :cond_1
    iget v1, p0, Lia;->b:F

    add-float/2addr v1, v4

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 370
    iget-object v0, p0, Lia;->a:Lcom/dianxinos/acomponent/ui/ADMainActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/dianxinos/acomponent/ui/ADMainActivity;->a(Lcom/dianxinos/acomponent/ui/ADMainActivity;I)V

    goto :goto_0

    .line 372
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 374
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lia;->b:F

    goto :goto_0

    .line 375
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v2, v0, :cond_0

    .line 376
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 377
    iget v1, p0, Lia;->b:F

    add-float/2addr v1, v3

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    iget v1, p0, Lia;->b:F

    sub-float/2addr v1, v3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 379
    iget-object v0, p0, Lia;->a:Lcom/dianxinos/acomponent/ui/ADMainActivity;

    invoke-static {v0, v2}, Lcom/dianxinos/acomponent/ui/ADMainActivity;->a(Lcom/dianxinos/acomponent/ui/ADMainActivity;I)V

    goto :goto_0
.end method
