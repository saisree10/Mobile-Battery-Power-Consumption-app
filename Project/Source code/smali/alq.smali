.class public Lalq;
.super Ljava/lang/Object;
.source "ChargingReminderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lalq;->a:Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lalq;->a:Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->onBackPressed()V

    .line 42
    return-void
.end method
