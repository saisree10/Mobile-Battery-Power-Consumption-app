.class public Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;
.super Laao;
.source "ChargingReminderActivity.java"

# interfaces
.implements Lavh;


# instance fields
.field private a:Lcom/dianxinos/powermanager/ui/MainTitle;

.field private b:Lamb;

.field private c:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

.field private d:Z

.field private e:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

.field private f:Z

.field private g:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Laao;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 34
    invoke-static {p0}, Lamb;->a(Landroid/content/Context;)Lamb;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->b:Lamb;

    .line 35
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070007

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/MainTitle;

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->a:Lcom/dianxinos/powermanager/ui/MainTitle;

    .line 36
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->a:Lcom/dianxinos/powermanager/ui/MainTitle;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/ui/MainTitle;->a()V

    .line 37
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->a:Lcom/dianxinos/powermanager/ui/MainTitle;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020450

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setLeftButtonIcon(I)V

    .line 38
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->a:Lcom/dianxinos/powermanager/ui/MainTitle;

    new-instance v1, Lalq;

    invoke-direct {v1, p0}, Lalq;-><init>(Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;)V

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setLeftButtonOnclickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070070

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->c:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    .line 46
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->c:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->setOnPreferenceChangeListener(Lavh;)V

    .line 47
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->b:Lamb;

    invoke-virtual {v0}, Lamb;->k()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->d:Z

    .line 48
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->c:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    iget-boolean v1, p0, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->d:Z

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->setEnabled(Z)V

    .line 49
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->c:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0203de

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->setBgRID(I)V

    .line 51
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070071

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->e:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    .line 52
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->e:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->setOnPreferenceChangeListener(Lavh;)V

    .line 53
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->b:Lamb;

    invoke-virtual {v0}, Lamb;->l()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->f:Z

    .line 54
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->e:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    iget-boolean v1, p0, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->f:Z

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->setEnabled(Z)V

    .line 55
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->e:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0203db

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->setBgRID(I)V

    .line 57
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070072

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->g:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    .line 58
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->g:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->setOnPreferenceChangeListener(Lavh;)V

    .line 59
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->b:Lamb;

    invoke-virtual {v0}, Lamb;->q()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->h:Z

    .line 60
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->g:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    iget-boolean v1, p0, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->h:Z

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->setEnabled(Z)V

    .line 61
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->g:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0203d7

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->setBgRID(I)V

    .line 62
    return-void
.end method


# virtual methods
.method public a(Lavg;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 66
    iget-object v2, p0, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->c:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    if-ne p1, v2, :cond_2

    .line 67
    iget-boolean v2, p0, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->d:Z

    if-nez v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->d:Z

    .line 68
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->c:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    iget-boolean v1, p0, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->d:Z

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->setEnabled(Z)V

    .line 69
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->b:Lamb;

    iget-boolean v1, p0, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->d:Z

    invoke-virtual {v0, v1}, Lamb;->i(Z)V

    .line 79
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 67
    goto :goto_0

    .line 70
    :cond_2
    iget-object v2, p0, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->e:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    if-ne p1, v2, :cond_4

    .line 71
    iget-boolean v2, p0, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->f:Z

    if-nez v2, :cond_3

    :goto_2
    iput-boolean v0, p0, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->f:Z

    .line 72
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->e:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    iget-boolean v1, p0, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->f:Z

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->setEnabled(Z)V

    .line 73
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->b:Lamb;

    iget-boolean v1, p0, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->f:Z

    invoke-virtual {v0, v1}, Lamb;->j(Z)V

    goto :goto_1

    :cond_3
    move v0, v1

    .line 71
    goto :goto_2

    .line 74
    :cond_4
    iget-object v2, p0, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->g:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    if-ne p1, v2, :cond_0

    .line 75
    iget-boolean v2, p0, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->h:Z

    if-nez v2, :cond_5

    :goto_3
    iput-boolean v0, p0, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->h:Z

    .line 76
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->g:Lcom/dianxinos/powermanager/ui/DxSwitchPreference;

    iget-boolean v1, p0, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->h:Z

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DxSwitchPreference;->setEnabled(Z)V

    .line 77
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->b:Lamb;

    iget-boolean v1, p0, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->h:Z

    invoke-virtual {v0, v1}, Lamb;->m(Z)V

    goto :goto_1

    :cond_5
    move v0, v1

    .line 75
    goto :goto_3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-super {p0, p1}, Laao;->onCreate(Landroid/os/Bundle;)V

    .line 29
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->setContentView(I)V

    .line 30
    invoke-direct {p0}, Lcom/dianxinos/powermanager/menu/ChargingReminderActivity;->a()V

    .line 31
    return-void
.end method
