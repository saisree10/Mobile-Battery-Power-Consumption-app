.class public Lasg;
.super Ljava/lang/Object;
.source "SmartModeTimeSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lasg;->a:Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lasg;->a:Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;

    invoke-static {v0}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->a(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lasg;->a:Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;

    invoke-static {v0}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->a(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 214
    :cond_0
    return-void
.end method
