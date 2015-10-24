.class public Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ChargerRecordReceiver.java"


# instance fields
.field private a:Lafs;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordReceiver;->a:Lafs;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 22
    const-string v1, "com.dianxinos.powermanager.savenormalcharge"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-static {p1}, Lafs;->a(Landroid/content/Context;)Lafs;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordReceiver;->a:Lafs;

    .line 27
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordReceiver;->a:Lafs;

    invoke-virtual {v0}, Lafs;->b()Lafu;

    move-result-object v0

    .line 28
    iget v1, v0, Lafu;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lafu;->d:I

    .line 29
    iget-object v1, p0, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordReceiver;->a:Lafs;

    invoke-virtual {v1, v0}, Lafs;->b(Lafu;)V

    .line 31
    :cond_0
    return-void
.end method
