.class Lo;
.super Landroid/os/Handler;
.source "FragmentActivity.java"


# instance fields
.field final synthetic a:Ln;


# direct methods
.method constructor <init>(Ln;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lo;->a:Ln;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 89
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 100
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 91
    :pswitch_0
    iget-object v0, p0, Lo;->a:Ln;

    iget-boolean v0, v0, Ln;->f:Z

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lo;->a:Ln;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ln;->a(Z)V

    goto :goto_0

    .line 96
    :pswitch_1
    iget-object v0, p0, Lo;->a:Ln;

    invoke-virtual {v0}, Ln;->a()V

    .line 97
    iget-object v0, p0, Lo;->a:Ln;

    iget-object v0, v0, Ln;->b:Lv;

    invoke-virtual {v0}, Lv;->e()Z

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
