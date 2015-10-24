.class Lbaz;
.super Landroid/os/Handler;
.source "AsyncTask.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 662
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbau;)V
    .locals 0
    .parameter

    .prologue
    .line 662
    invoke-direct {p0}, Lbaz;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 666
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lbay;

    .line 667
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 676
    :goto_0
    return-void

    .line 670
    :pswitch_0
    iget-object v1, v0, Lbay;->a:Lbat;

    iget-object v0, v0, Lbay;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v1, v0}, Lbat;->c(Lbat;Ljava/lang/Object;)V

    goto :goto_0

    .line 673
    :pswitch_1
    iget-object v1, v0, Lbay;->a:Lbat;

    iget-object v0, v0, Lbay;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lbat;->b([Ljava/lang/Object;)V

    goto :goto_0

    .line 667
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
