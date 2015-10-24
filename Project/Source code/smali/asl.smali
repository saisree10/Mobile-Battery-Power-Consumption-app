.class public Lasl;
.super Lmc;
.source "SmartSettingsActivity.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lasl;->a:Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;

    invoke-direct {p0}, Lmc;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/dianxinos/common/coins/CoinManager$RequestResult;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-virtual {p2}, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lasl;->a:Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->a(Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;)V

    .line 103
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/dianxinos/common/coins/CoinManager$RequestResult;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    const-string v0, "10"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "__TOTAL__"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    iget-object v0, p0, Lasl;->a:Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->a(Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;)V

    .line 125
    :cond_1
    return-void
.end method

.method public b(Landroid/content/Context;Lcom/dianxinos/common/coins/CoinManager$RequestResult;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 107
    const-string v0, "11"

    iget-object v1, p2, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lasl;->a:Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->b(Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;)V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-virtual {p2}, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lasl;->a:Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->b(Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;)V

    goto :goto_0
.end method
