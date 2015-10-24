.class public Lafn;
.super Landroid/os/Handler;
.source "HealthChargingActivity.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/charging/HealthChargingActivity;


# direct methods
.method private constructor <init>(Lcom/dianxinos/powermanager/charging/HealthChargingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lafn;->a:Lcom/dianxinos/powermanager/charging/HealthChargingActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dianxinos/powermanager/charging/HealthChargingActivity;Lafm;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lafn;-><init>(Lcom/dianxinos/powermanager/charging/HealthChargingActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 207
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 208
    iget-object v0, p0, Lafn;->a:Lcom/dianxinos/powermanager/charging/HealthChargingActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->d(Lcom/dianxinos/powermanager/charging/HealthChargingActivity;)Lcom/dianxinos/powermanager/ui/DxBatteryGraph;

    move-result-object v0

    iget-object v1, p0, Lafn;->a:Lcom/dianxinos/powermanager/charging/HealthChargingActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->a(Lcom/dianxinos/powermanager/charging/HealthChargingActivity;)Ladd;

    move-result-object v1

    iget v1, v1, Ladd;->j:I

    iget-object v2, p0, Lafn;->a:Lcom/dianxinos/powermanager/charging/HealthChargingActivity;

    invoke-static {v2}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->b(Lcom/dianxinos/powermanager/charging/HealthChargingActivity;)Z

    move-result v2

    iget-object v3, p0, Lafn;->a:Lcom/dianxinos/powermanager/charging/HealthChargingActivity;

    invoke-static {v3}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->c(Lcom/dianxinos/powermanager/charging/HealthChargingActivity;)Lacz;

    iget-object v3, p0, Lafn;->a:Lcom/dianxinos/powermanager/charging/HealthChargingActivity;

    invoke-static {v3}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->a(Lcom/dianxinos/powermanager/charging/HealthChargingActivity;)Ladd;

    move-result-object v3

    iget v3, v3, Ladd;->j:I

    invoke-static {v3}, Lacz;->a(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/dianxinos/powermanager/ui/DxBatteryGraph;->a(IZI)V

    .line 210
    iget-object v0, p0, Lafn;->a:Lcom/dianxinos/powermanager/charging/HealthChargingActivity;

    iget-object v1, p0, Lafn;->a:Lcom/dianxinos/powermanager/charging/HealthChargingActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->a(Lcom/dianxinos/powermanager/charging/HealthChargingActivity;)Ladd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;->b(Ladd;)V

    .line 212
    :cond_0
    return-void
.end method
