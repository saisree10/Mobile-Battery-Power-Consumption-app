.class public Laei;
.super Laed;
.source "BillingService.java"


# instance fields
.field c:J

.field final synthetic d:Lcom/dianxinos/powermanager/billing/BillingService;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/billing/BillingService;)V
    .locals 1
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Laei;->d:Lcom/dianxinos/powermanager/billing/BillingService;

    .line 336
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Laed;-><init>(Lcom/dianxinos/powermanager/billing/BillingService;I)V

    .line 337
    return-void
.end method


# virtual methods
.method protected a(Lakt;)V
    .locals 1
    .parameter

    .prologue
    .line 362
    iget-object v0, p0, Laei;->d:Lcom/dianxinos/powermanager/billing/BillingService;

    invoke-static {v0, p0, p1}, Laeo;->a(Landroid/content/Context;Laei;Lakt;)V

    .line 363
    return-void
.end method

.method protected a(Landroid/os/RemoteException;)V
    .locals 2
    .parameter

    .prologue
    .line 356
    invoke-super {p0, p1}, Laed;->a(Landroid/os/RemoteException;)V

    .line 357
    iget-wide v0, p0, Laei;->c:J

    invoke-static {v0, v1}, Laeq;->a(J)V

    .line 358
    return-void
.end method

.method protected d()J
    .locals 4

    .prologue
    .line 341
    invoke-static {}, Laeq;->a()J

    move-result-wide v0

    iput-wide v0, p0, Laei;->c:J

    .line 343
    const-string v0, "RESTORE_TRANSACTIONS"

    invoke-virtual {p0, v0}, Laei;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 344
    const-string v1, "NONCE"

    iget-wide v2, p0, Laei;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 345
    invoke-static {}, Lcom/dianxinos/powermanager/billing/BillingService;->e()Lgo;

    move-result-object v1

    invoke-interface {v1, v0}, Lgo;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 346
    if-eqz v0, :cond_0

    .line 347
    const-string v1, "restoreTransactions"

    invoke-virtual {p0, v1, v0}, Laei;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 348
    const-string v1, "REQUEST_ID"

    sget-wide v2, Lakr;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 351
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method
