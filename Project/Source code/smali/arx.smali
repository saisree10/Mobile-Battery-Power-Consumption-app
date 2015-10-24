.class public Larx;
.super Ljava/lang/Object;
.source "SmartModeBatterySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Larx;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 229
    iget-object v0, p0, Larx;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-static {v0}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->f(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Larx;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-static {v0}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->f(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 232
    :cond_0
    return-void
.end method
