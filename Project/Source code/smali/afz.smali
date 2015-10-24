.class public Lafz;
.super Landroid/os/Handler;
.source "ChargerRecordActivity.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lafz;->a:Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 56
    :pswitch_0
    return-void

    .line 48
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
