.class public Lapu;
.super Landroid/os/Handler;
.source "OperationConfigActivity.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lapu;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 143
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 161
    :goto_0
    :pswitch_0
    return-void

    .line 145
    :pswitch_1
    iget-object v0, p0, Lapu;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    new-instance v1, Ladi;

    iget-object v2, p0, Lapu;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    iget-object v0, p0, Lapu;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->b(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v0, p0, Lapu;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->a(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;)Ladp;

    move-result-object v0

    invoke-virtual {v0}, Ladp;->k()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-direct {v1, v2, v3, v0}, Ladi;-><init>(Landroid/app/Activity;Landroid/graphics/Bitmap;Z)V

    invoke-virtual {v1}, Ladi;->show()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 151
    :cond_1
    iget-object v0, p0, Lapu;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 155
    :pswitch_2
    iget-object v0, p0, Lapu;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a02bd

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->a(I)V

    goto :goto_0

    .line 158
    :pswitch_3
    iget-object v0, p0, Lapu;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a028c

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->a(I)V

    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
