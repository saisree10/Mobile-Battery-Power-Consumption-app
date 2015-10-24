.class public Lalf;
.super Landroid/os/Handler;
.source "AppWhiteListActivity.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lalf;->a:Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 53
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 61
    :goto_0
    return-void

    .line 55
    :pswitch_0
    iget-object v0, p0, Lalf;->a:Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->b()V

    goto :goto_0

    .line 58
    :pswitch_1
    iget-object v0, p0, Lalf;->a:Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/menu/AppWhiteListActivity;->a()V

    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
