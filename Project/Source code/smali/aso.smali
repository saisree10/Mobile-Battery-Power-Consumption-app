.class public Laso;
.super Ljava/lang/Object;
.source "SmartSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Laso;->a:Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 324
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Laso;->a:Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;

    invoke-virtual {v1}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->getActivity()Ln;

    move-result-object v1

    const-class v2, Lcom/dianxinos/powermanager/menu/RootHelperActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 325
    iget-object v1, p0, Laso;->a:Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;

    invoke-virtual {v1, v0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 326
    return-void
.end method
