.class public Lafx;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/chargingrecord/CalendarView;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/chargingrecord/CalendarView;)V
    .locals 0
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lafx;->a:Lcom/dianxinos/powermanager/chargingrecord/CalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 350
    iget-object v0, p0, Lafx;->a:Lcom/dianxinos/powermanager/chargingrecord/CalendarView;

    invoke-static {v0}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->a(Lcom/dianxinos/powermanager/chargingrecord/CalendarView;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lafx;->a:Lcom/dianxinos/powermanager/chargingrecord/CalendarView;

    invoke-static {v0}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->a(Lcom/dianxinos/powermanager/chargingrecord/CalendarView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 355
    iget-object v0, p0, Lafx;->a:Lcom/dianxinos/powermanager/chargingrecord/CalendarView;

    invoke-static {v0}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->b(Lcom/dianxinos/powermanager/chargingrecord/CalendarView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 356
    iget-object v0, p0, Lafx;->a:Lcom/dianxinos/powermanager/chargingrecord/CalendarView;

    invoke-static {v0, v2}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->a(Lcom/dianxinos/powermanager/chargingrecord/CalendarView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 357
    iget-object v0, p0, Lafx;->a:Lcom/dianxinos/powermanager/chargingrecord/CalendarView;

    invoke-static {v0}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->c(Lcom/dianxinos/powermanager/chargingrecord/CalendarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setDrawingCacheEnabled(Z)V

    .line 358
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 347
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 344
    return-void
.end method
