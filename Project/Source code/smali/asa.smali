.class public Lasa;
.super Ljava/lang/Object;
.source "SmartModeBatterySettings.java"

# interfaces
.implements Lamm;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lasa;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 315
    iget-object v0, p0, Lasa;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-static {v0, p1}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->f(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;I)I

    .line 316
    iget-object v0, p0, Lasa;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-static {v0}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->i(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)Lamp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lamp;->h(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {}, Lazf;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    iget-object v0, p0, Lasa;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->g(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;I)I

    .line 319
    iget-object v0, p0, Lasa;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-static {v0}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->j(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)V

    .line 327
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lasa;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    iget-object v1, p0, Lasa;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-static {v1}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->h(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->b(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;I)I

    .line 323
    iget-object v0, p0, Lasa;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    iget-object v1, p0, Lasa;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-static {v1}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->i(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)Lamp;

    move-result-object v1

    iget-object v2, p0, Lasa;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-static {v2}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->h(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)I

    move-result v2

    invoke-virtual {v1, v2}, Lamp;->h(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->c(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;I)I

    .line 324
    iget-object v0, p0, Lasa;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-static {v0}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->c(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)Lcom/dianxinos/powermanager/ui/DxGotoPreference;

    move-result-object v0

    iget-object v1, p0, Lasa;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-static {v1}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->i(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)Lamp;

    move-result-object v1

    iget-object v2, p0, Lasa;->a:Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-static {v2}, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;->h(Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;)I

    move-result v2

    invoke-virtual {v1, v2}, Lamp;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DxGotoPreference;->setSummary(Ljava/lang/String;)V

    goto :goto_0
.end method
