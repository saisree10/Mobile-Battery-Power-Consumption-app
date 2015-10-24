.class public Lcom/dianxinos/powermanager/ui/DXBatteryDetailSwitchPrefer;
.super Lcom/dianxinos/powermanager/ui/DxSwitchPreference;
.source "DXBatteryDetailSwitchPrefer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/DXBatteryDetailSwitchPrefer;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f030006

    invoke-static {v0, v1, p0}, Lcom/dianxinos/powermanager/ui/DXBatteryDetailSwitchPrefer;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 17
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->onFinishInflate()V

    .line 22
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/DXBatteryDetailSwitchPrefer;->setBackgroundResource(I)V

    .line 23
    return-void
.end method
