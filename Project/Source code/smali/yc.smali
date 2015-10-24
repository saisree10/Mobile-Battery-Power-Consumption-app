.class Lyc;
.super Ljava/lang/Object;
.source "HorizontalSlideItem.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lya;


# direct methods
.method constructor <init>(Lya;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lyc;->a:Lya;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 145
    iget-object v0, p0, Lyc;->a:Lya;

    invoke-static {v0}, Lya;->e(Lya;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 147
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 148
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 166
    :goto_0
    return v2

    .line 150
    :pswitch_0
    iget-object v0, p0, Lyc;->a:Lya;

    invoke-static {v0}, Lya;->d(Lya;)Lyg;

    move-result-object v0

    invoke-interface {v0}, Lyg;->b()V

    goto :goto_0

    .line 153
    :pswitch_1
    iget-object v0, p0, Lyc;->a:Lya;

    invoke-static {v0}, Lya;->b(Lya;)Lcom/dianxinos/optimizer/module/messagebox/DisableScrollListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dianxinos/optimizer/module/messagebox/DisableScrollListView;->setListScrool(Z)V

    .line 154
    iget-object v0, p0, Lyc;->a:Lya;

    invoke-static {v0}, Lya;->f(Lya;)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 162
    :goto_1
    iget-object v0, p0, Lyc;->a:Lya;

    invoke-static {v0, v2}, Lya;->a(Lya;I)I

    goto :goto_0

    .line 156
    :pswitch_2
    iget-object v0, p0, Lyc;->a:Lya;

    invoke-virtual {v0}, Lya;->a()V

    goto :goto_1

    .line 159
    :pswitch_3
    iget-object v0, p0, Lyc;->a:Lya;

    invoke-static {v0}, Lya;->g(Lya;)V

    goto :goto_1

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 154
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
