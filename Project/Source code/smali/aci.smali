.class public Laci;
.super Ljava/lang/Object;
.source "WidgetUpdataService1x4.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/WidgetUpdataService1x4;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/WidgetUpdataService1x4;)V
    .locals 0
    .parameter

    .prologue
    .line 442
    iput-object p1, p0, Laci;->a:Lcom/dianxinos/powermanager/WidgetUpdataService1x4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 445
    new-instance v0, Landroid/content/Intent;

    const-string v1, "broadcast_actiono_refresh_go_widget"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 447
    const-string v1, "Percent"

    iget-object v2, p0, Laci;->a:Lcom/dianxinos/powermanager/WidgetUpdataService1x4;

    invoke-static {v2}, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->a(Lcom/dianxinos/powermanager/WidgetUpdataService1x4;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 448
    const-string v1, "IsCharging"

    iget-object v2, p0, Laci;->a:Lcom/dianxinos/powermanager/WidgetUpdataService1x4;

    invoke-static {v2}, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->b(Lcom/dianxinos/powermanager/WidgetUpdataService1x4;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 449
    const-string v1, "ChargingTime"

    iget-object v2, p0, Laci;->a:Lcom/dianxinos/powermanager/WidgetUpdataService1x4;

    invoke-static {v2}, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->c(Lcom/dianxinos/powermanager/WidgetUpdataService1x4;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 450
    const-string v1, "RemainingBatteryTime"

    iget-object v2, p0, Laci;->a:Lcom/dianxinos/powermanager/WidgetUpdataService1x4;

    invoke-static {v2}, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->d(Lcom/dianxinos/powermanager/WidgetUpdataService1x4;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 451
    const-string v1, "BatteryStatus"

    iget-object v2, p0, Laci;->a:Lcom/dianxinos/powermanager/WidgetUpdataService1x4;

    invoke-static {v2}, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->e(Lcom/dianxinos/powermanager/WidgetUpdataService1x4;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 452
    iget-object v1, p0, Laci;->a:Lcom/dianxinos/powermanager/WidgetUpdataService1x4;

    invoke-virtual {v1, v0}, Lcom/dianxinos/powermanager/WidgetUpdataService1x4;->sendBroadcast(Landroid/content/Intent;)V

    .line 453
    return-void
.end method
