.class public Laae;
.super Ljava/lang/Object;
.source "BatteryInfoDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 527
    iput-object p1, p0, Laae;->a:Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 531
    iget-object v0, p0, Laae;->a:Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->f(Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Laae;->a:Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->e(Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;)V

    .line 534
    :cond_0
    iget-object v1, p0, Laae;->a:Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;

    iget-object v0, p0, Laae;->a:Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->f(Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->a(Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;Z)Z

    .line 535
    iget-object v0, p0, Laae;->a:Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->d(Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;)Laah;

    move-result-object v0

    iget-object v1, p0, Laae;->a:Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->f(Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Laah;->a(Z)V

    .line 536
    return-void

    .line 534
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
