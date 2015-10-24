.class public Larz;
.super Landroid/os/Handler;
.source "SmartModeBatterySettings.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Larz;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 286
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_0

    .line 287
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Larz;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    const-class v2, Lcom/dianxinos/powermanager/mode/NewModeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 288
    const-string v1, "index"

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 289
    const-string v1, "counts"

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    iget-object v1, p0, Larz;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-virtual {v1, v0, v3}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 292
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 293
    return-void
.end method
