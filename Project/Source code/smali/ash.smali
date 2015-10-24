.class public Lash;
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
    .line 221
    iput-object p1, p0, Lash;->a:Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 224
    iget-object v0, p0, Lash;->a:Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;

    invoke-static {v0}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->a(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lash;->a:Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;

    invoke-static {v0}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->b(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 226
    iget-object v0, p0, Lash;->a:Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;

    iget-object v1, p0, Lash;->a:Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;

    invoke-static {v1}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->c(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->a(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;I)I

    .line 227
    iget-object v0, p0, Lash;->a:Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;

    iget-object v1, p0, Lash;->a:Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;

    invoke-static {v1}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->d(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;)Lamp;

    move-result-object v1

    iget-object v2, p0, Lash;->a:Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;

    invoke-static {v2}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->c(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;)I

    move-result v2

    invoke-virtual {v1, v2}, Lamp;->h(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->b(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;I)I

    .line 228
    iget-object v0, p0, Lash;->a:Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;

    invoke-static {v0}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->e(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;)Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    move-result-object v0

    iget-object v1, p0, Lash;->a:Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;

    invoke-static {v1}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->d(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;)Lamp;

    move-result-object v1

    iget-object v2, p0, Lash;->a:Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;

    invoke-static {v2}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->c(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;)I

    move-result v2

    invoke-virtual {v1, v2}, Lamp;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setSummary(Ljava/lang/String;)V

    .line 234
    :cond_0
    :goto_0
    iget-object v0, p0, Lash;->a:Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;

    invoke-static {v0}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->a(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 236
    :cond_1
    return-void

    .line 229
    :cond_2
    iget-object v0, p0, Lash;->a:Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;

    invoke-static {v0}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->b(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 230
    iget-object v0, p0, Lash;->a:Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;

    iget-object v1, p0, Lash;->a:Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;

    invoke-static {v1}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->c(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->c(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;I)I

    .line 231
    iget-object v0, p0, Lash;->a:Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;

    iget-object v1, p0, Lash;->a:Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;

    invoke-static {v1}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->d(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;)Lamp;

    move-result-object v1

    iget-object v2, p0, Lash;->a:Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;

    invoke-static {v2}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->c(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;)I

    move-result v2

    invoke-virtual {v1, v2}, Lamp;->h(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->d(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;I)I

    .line 232
    iget-object v0, p0, Lash;->a:Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;

    invoke-static {v0}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->f(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;)Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    move-result-object v0

    iget-object v1, p0, Lash;->a:Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;

    invoke-static {v1}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->d(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;)Lamp;

    move-result-object v1

    iget-object v2, p0, Lash;->a:Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;

    invoke-static {v2}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->c(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;)I

    move-result v2

    invoke-virtual {v1, v2}, Lamp;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setSummary(Ljava/lang/String;)V

    goto :goto_0
.end method
