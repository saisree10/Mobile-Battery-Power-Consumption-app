.class public Laaw;
.super Landroid/os/Handler;
.source "PowerMangerApplication.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/PowerMangerApplication;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/PowerMangerApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Laaw;->a:Lcom/dianxinos/powermanager/PowerMangerApplication;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 67
    iget v0, p1, Landroid/os/Message;->what:I

    .line 70
    packed-switch v0, :pswitch_data_0

    .line 84
    :goto_0
    return-void

    .line 72
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 73
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 74
    if-lez v0, :cond_0

    .line 75
    invoke-static {}, Lcom/dianxinos/powermanager/PowerMangerApplication;->b()Lcom/dianxinos/powermanager/PowerMangerApplication;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 77
    :cond_0
    invoke-static {}, Lcom/dianxinos/powermanager/PowerMangerApplication;->b()Lcom/dianxinos/powermanager/PowerMangerApplication;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
