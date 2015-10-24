.class Lwe;
.super Landroid/os/Handler;
.source "WidgetClientService.java"


# instance fields
.field final synthetic a:Lwd;


# direct methods
.method constructor <init>(Lwd;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lwe;->a:Lwd;

    .line 112
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 114
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 119
    :goto_0
    return-void

    .line 116
    :pswitch_0
    iget-object v0, p0, Lwe;->a:Lwd;

    invoke-static {v0}, Lwd;->a(Lwd;)V

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
