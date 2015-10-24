.class public Lalw;
.super Ljava/lang/Object;
.source "MoreSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lalw;->a:Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lalw;->a:Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lalw;->a:Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;

    const-class v3, Lcom/dianxinos/powermanager/PowerMgrInfoAcitvity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/menu/MoreSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 108
    return-void
.end method
