.class public Laac;
.super Ljava/lang/Object;
.source "BatteryInfoDetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 461
    iput-object p1, p0, Laac;->a:Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 464
    iget-object v0, p0, Laac;->a:Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->d(Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;)Laah;

    move-result-object v0

    iget-object v1, p0, Laac;->a:Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->b(Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Laac;->a:Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;

    invoke-static {v2}, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->c(Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Laah;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 465
    iget-object v0, p0, Laac;->a:Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->d(Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;)Laah;

    move-result-object v0

    invoke-virtual {v0}, Laah;->notifyDataSetChanged()V

    .line 466
    iget-object v0, p0, Laac;->a:Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->e(Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;)V

    .line 467
    return-void
.end method
