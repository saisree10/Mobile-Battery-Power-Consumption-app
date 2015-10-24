.class public Laau;
.super Landroid/os/Handler;
.source "PersonalCenterActivity.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/PersonalCenterActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/PersonalCenterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Laau;->a:Lcom/dianxinos/powermanager/PersonalCenterActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 148
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 153
    :goto_0
    return-void

    .line 150
    :pswitch_0
    iget-object v0, p0, Laau;->a:Lcom/dianxinos/powermanager/PersonalCenterActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->a(Lcom/dianxinos/powermanager/PersonalCenterActivity;)V

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0xfa
        :pswitch_0
    .end packed-switch
.end method
