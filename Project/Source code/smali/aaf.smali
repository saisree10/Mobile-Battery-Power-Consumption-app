.class public Laaf;
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
    .line 584
    iput-object p1, p0, Laaf;->a:Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 588
    iget-object v0, p0, Laaf;->a:Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->e(Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;)V

    .line 589
    iget-object v0, p0, Laaf;->a:Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->finish()V

    .line 590
    return-void
.end method
