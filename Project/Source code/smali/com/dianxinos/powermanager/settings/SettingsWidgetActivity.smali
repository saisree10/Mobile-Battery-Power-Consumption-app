.class public Lcom/dianxinos/powermanager/settings/SettingsWidgetActivity;
.super Laao;
.source "SettingsWidgetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/view/LayoutInflater;

.field private e:Lcom/dianxinos/powermanager/settings/view/GpsSwitchView;

.field private f:Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Laao;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 65
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/settings/SettingsWidgetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 66
    const-string v1, "settingswidget"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    const-string v1, "settingswidget"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 68
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 70
    const-string v0, "widget14"

    const-string v1, "s"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    if-ne v0, v3, :cond_0

    .line 75
    const-string v0, "widget14"

    const-string v1, "m"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/SettingsWidgetActivity;->c:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_1

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/settings/SettingsWidgetActivity;->startActivity(Landroid/content/Intent;)V

    .line 101
    const-string v0, "widget14"

    const-string v1, "tool_enter"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 105
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/settings/SettingsWidgetActivity;->finish()V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/SettingsWidgetActivity;->a:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_2

    .line 107
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/settings/SettingsWidgetActivity;->finish()V

    goto :goto_0

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/SettingsWidgetActivity;->b:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/settings/SettingsWidgetActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 42
    invoke-super {p0, p1}, Laao;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/settings/SettingsWidgetActivity;->d:Landroid/view/LayoutInflater;

    .line 44
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/SettingsWidgetActivity;->d:Landroid/view/LayoutInflater;

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f030062

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 45
    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/settings/SettingsWidgetActivity;->setContentView(Landroid/view/View;)V

    .line 47
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701a9

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/settings/SettingsWidgetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dianxinos/powermanager/settings/SettingsWidgetActivity;->a:Landroid/widget/LinearLayout;

    .line 48
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/SettingsWidgetActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701b4

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/settings/SettingsWidgetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dianxinos/powermanager/settings/SettingsWidgetActivity;->b:Landroid/widget/LinearLayout;

    .line 50
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/SettingsWidgetActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701b3

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/settings/SettingsWidgetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dianxinos/powermanager/settings/SettingsWidgetActivity;->c:Landroid/widget/LinearLayout;

    .line 53
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/SettingsWidgetActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070173

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/settings/SettingsWidgetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/settings/view/GpsSwitchView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/settings/SettingsWidgetActivity;->e:Lcom/dianxinos/powermanager/settings/view/GpsSwitchView;

    .line 56
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070172

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/settings/SettingsWidgetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/settings/SettingsWidgetActivity;->f:Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;

    .line 58
    invoke-direct {p0}, Lcom/dianxinos/powermanager/settings/SettingsWidgetActivity;->a()V

    .line 59
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 84
    invoke-super {p0, p1}, Laao;->onWindowFocusChanged(Z)V

    .line 85
    if-eqz p1, :cond_0

    .line 86
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/PowerMgrService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/settings/SettingsWidgetActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 87
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/settings/SettingsWidgetService1x4;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/settings/SettingsWidgetActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 90
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/SettingsWidgetActivity;->e:Lcom/dianxinos/powermanager/settings/view/GpsSwitchView;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/settings/view/GpsSwitchView;->a()V

    .line 91
    iget-object v0, p0, Lcom/dianxinos/powermanager/settings/SettingsWidgetActivity;->f:Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/settings/view/MobileDataSwitchView;->a()V

    .line 93
    :cond_0
    return-void
.end method
