.class public Lary;
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
    .line 239
    iput-object p1, p0, Lary;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 242
    iget-object v0, p0, Lary;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-static {v0}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->f(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lary;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-static {v0}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->g(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 244
    iget-object v0, p0, Lary;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    iget-object v1, p0, Lary;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-static {v1}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->h(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->b(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;I)I

    .line 245
    iget-object v0, p0, Lary;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    iget-object v1, p0, Lary;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-static {v1}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->i(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)Lamp;

    move-result-object v1

    iget-object v2, p0, Lary;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-static {v2}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->h(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)I

    move-result v2

    invoke-virtual {v1, v2}, Lamp;->h(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->c(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;I)I

    .line 246
    iget-object v0, p0, Lary;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-static {v0}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->c(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    move-result-object v0

    iget-object v1, p0, Lary;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-static {v1}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->i(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)Lamp;

    move-result-object v1

    iget-object v2, p0, Lary;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-static {v2}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->h(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)I

    move-result v2

    invoke-virtual {v1, v2}, Lamp;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setSummary(Ljava/lang/String;)V

    .line 254
    :cond_0
    :goto_0
    iget-object v0, p0, Lary;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-static {v0}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->f(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 256
    :cond_1
    return-void

    .line 248
    :cond_2
    iget-object v0, p0, Lary;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-static {v0}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->g(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 249
    iget-object v0, p0, Lary;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    iget-object v1, p0, Lary;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-static {v1}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->h(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->d(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;I)I

    .line 250
    iget-object v0, p0, Lary;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    iget-object v1, p0, Lary;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-static {v1}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->i(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)Lamp;

    move-result-object v1

    iget-object v2, p0, Lary;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-static {v2}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->h(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)I

    move-result v2

    invoke-virtual {v1, v2}, Lamp;->h(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->e(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;I)I

    .line 251
    iget-object v0, p0, Lary;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-static {v0}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->d(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    move-result-object v0

    iget-object v1, p0, Lary;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-static {v1}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->i(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)Lamp;

    move-result-object v1

    iget-object v2, p0, Lary;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-static {v2}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->h(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)I

    move-result v2

    invoke-virtual {v1, v2}, Lamp;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setSummary(Ljava/lang/String;)V

    goto :goto_0
.end method
