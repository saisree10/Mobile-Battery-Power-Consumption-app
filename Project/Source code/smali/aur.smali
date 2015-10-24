.class Laur;
.super Landroid/os/Handler;
.source "ChargingFlowView.java"


# instance fields
.field final synthetic a:Lauq;


# direct methods
.method constructor <init>(Lauq;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Laur;->a:Lauq;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 38
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 40
    :pswitch_0
    iget-object v0, p0, Laur;->a:Lauq;

    invoke-static {v0}, Lauq;->a(Lauq;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Laur;->a:Lauq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lauq;->a(Lauq;Z)Z

    .line 42
    iget-object v0, p0, Laur;->a:Lauq;

    invoke-static {v0}, Lauq;->b(Lauq;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Laur;->a:Lauq;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x111
        :pswitch_0
    .end packed-switch
.end method
