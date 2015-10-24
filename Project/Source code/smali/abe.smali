.class public Labe;
.super Ljava/lang/Object;
.source "PowerMgrReceiver.java"

# interfaces
.implements Lbai;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/PowerMgrReceiver;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/PowerMgrReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Labe;->a:Lcom/dianxinos/powermanager/PowerMgrReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 89
    packed-switch p1, :pswitch_data_0

    .line 103
    :goto_0
    return-void

    .line 91
    :pswitch_0
    iget-object v0, p0, Labe;->a:Lcom/dianxinos/powermanager/PowerMgrReceiver;

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMgrReceiver;->a(Lcom/dianxinos/powermanager/PowerMgrReceiver;)Labf;

    move-result-object v0

    invoke-static {}, Lcom/dianxinos/powermanager/PowerMgrReceiver;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Labf;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 95
    :pswitch_1
    iget-object v0, p0, Labe;->a:Lcom/dianxinos/powermanager/PowerMgrReceiver;

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMgrReceiver;->a(Lcom/dianxinos/powermanager/PowerMgrReceiver;)Labf;

    move-result-object v0

    invoke-static {}, Lcom/dianxinos/powermanager/PowerMgrReceiver;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Labf;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 98
    :pswitch_2
    iget-object v0, p0, Labe;->a:Lcom/dianxinos/powermanager/PowerMgrReceiver;

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMgrReceiver;->a(Lcom/dianxinos/powermanager/PowerMgrReceiver;)Labf;

    move-result-object v0

    invoke-static {}, Lcom/dianxinos/powermanager/PowerMgrReceiver;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Labf;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
