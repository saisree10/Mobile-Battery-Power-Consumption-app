.class Laey;
.super Landroid/os/Handler;
.source "SkinPurchaseHelper.java"


# instance fields
.field final synthetic a:Laex;


# direct methods
.method public constructor <init>(Laex;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Laey;->a:Laex;

    .line 23
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 24
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 31
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 49
    :goto_0
    return-void

    .line 33
    :pswitch_0
    iget-object v0, p0, Laey;->a:Laex;

    invoke-virtual {v0}, Laex;->a()V

    goto :goto_0

    .line 36
    :pswitch_1
    iget-object v0, p0, Laey;->a:Laex;

    invoke-virtual {v0}, Laex;->a()V

    goto :goto_0

    .line 39
    :pswitch_2
    iget-object v0, p0, Laey;->a:Laex;

    invoke-virtual {v0}, Laex;->a()V

    .line 40
    iget-object v0, p0, Laey;->a:Laex;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laex;->a(I)V

    goto :goto_0

    .line 43
    :pswitch_3
    iget-object v0, p0, Laey;->a:Laex;

    invoke-virtual {v0}, Laex;->a()V

    .line 44
    iget-object v0, p0, Laey;->a:Laex;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Laex;->a(I)V

    goto :goto_0

    .line 31
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
