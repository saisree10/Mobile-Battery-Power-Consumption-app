.class public Lasm;
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
    .line 170
    iput-object p1, p0, Lasm;->a:Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lasm;->a:Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->c(Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;)Lakx;

    move-result-object v0

    iget-object v1, p0, Lasm;->a:Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;

    invoke-virtual {v1}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->getActivity()Ln;

    move-result-object v1

    const-string v2, "dxpowermanagerpro"

    new-instance v3, Lako;

    iget-object v4, p0, Lasm;->a:Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;

    invoke-virtual {v4}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->getActivity()Ln;

    move-result-object v4

    invoke-direct {v3, v4}, Lako;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2, v3}, Lakx;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;)V

    .line 177
    iget-object v0, p0, Lasm;->a:Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->getActivity()Ln;

    move-result-object v0

    const-string v1, "iap"

    const-string v2, "upgrade"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 180
    invoke-static {}, Lazi;->a()Lazi;

    move-result-object v0

    new-instance v1, Lasn;

    invoke-direct {v1, p0}, Lasn;-><init>(Lasm;)V

    invoke-virtual {v0, v1}, Lazi;->a(Ljava/lang/Runnable;)V

    .line 194
    return-void
.end method
