.class public Lasj;
.super Ljava/lang/Object;
.source "SmartModeTimeSettings.java"

# interfaces
.implements Lamm;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Lasj;->a:Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 327
    iget-object v0, p0, Lasj;->a:Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;

    invoke-static {v0, p1}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->e(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;I)I

    .line 328
    iget-object v0, p0, Lasj;->a:Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;

    invoke-static {v0}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->d(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;)Lamp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lamp;->h(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {}, Lazf;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lasj;->a:Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->f(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;I)I

    .line 331
    iget-object v0, p0, Lasj;->a:Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;

    invoke-static {v0}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->g(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;)V

    .line 337
    :goto_0
    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Lasj;->a:Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;

    invoke-static {v0, p1}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->a(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;I)I

    .line 334
    iget-object v0, p0, Lasj;->a:Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;

    iget-object v1, p0, Lasj;->a:Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;

    invoke-static {v1}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->d(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;)Lamp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lamp;->h(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->b(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;I)I

    .line 335
    iget-object v0, p0, Lasj;->a:Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;

    invoke-static {v0}, Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;->e(Lcom/dianxinos/powermanager/smart/SmartModeTimeSettings;)Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setSummary(Ljava/lang/String;)V

    goto :goto_0
.end method
