.class public Laee;
.super Laed;
.source "BillingService.java"


# instance fields
.field final synthetic c:Lcom/dianxinos/powermanager/billing/BillingService;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/billing/BillingService;)V
    .locals 1
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Laee;->c:Lcom/dianxinos/powermanager/billing/BillingService;

    .line 201
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Laed;-><init>(Lcom/dianxinos/powermanager/billing/BillingService;I)V

    .line 202
    return-void
.end method


# virtual methods
.method protected d()J
    .locals 2

    .prologue
    .line 206
    const-string v0, "CHECK_BILLING_SUPPORTED"

    invoke-virtual {p0, v0}, Laee;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 207
    invoke-static {}, Lcom/dianxinos/powermanager/billing/BillingService;->e()Lgo;

    move-result-object v1

    invoke-interface {v1, v0}, Lgo;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 208
    const-string v1, "RESPONSE_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 214
    sget-object v1, Lakt;->a:Lakt;

    invoke-virtual {v1}, Lakt;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 215
    :goto_0
    invoke-static {v0}, Laeo;->a(Z)V

    .line 216
    sget-wide v0, Lakr;->a:J

    return-wide v0

    .line 214
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
