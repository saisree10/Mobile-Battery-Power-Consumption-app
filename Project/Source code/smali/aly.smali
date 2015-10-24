.class public Laly;
.super Landroid/content/BroadcastReceiver;
.source "MoreSettingsActivity.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Laly;->a:Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Laly;->a:Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->finish()V

    .line 142
    return-void
.end method
