.class public Laeg;
.super Laed;
.source "BillingService.java"


# instance fields
.field c:J

.field final d:[Ljava/lang/String;

.field final synthetic e:Lcom/dianxinos/powermanager/billing/BillingService;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/billing/BillingService;I[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Laeg;->e:Lcom/dianxinos/powermanager/billing/BillingService;

    .line 302
    invoke-direct {p0, p1, p2}, Laed;-><init>(Lcom/dianxinos/powermanager/billing/BillingService;I)V

    .line 303
    iput-object p3, p0, Laeg;->d:[Ljava/lang/String;

    .line 304
    return-void
.end method


# virtual methods
.method protected a(Landroid/os/RemoteException;)V
    .locals 2
    .parameter

    .prologue
    .line 321
    invoke-super {p0, p1}, Laed;->a(Landroid/os/RemoteException;)V

    .line 322
    iget-wide v0, p0, Laeg;->c:J

    invoke-static {v0, v1}, Laeq;->a(J)V

    .line 323
    return-void
.end method

.method protected d()J
    .locals 4

    .prologue
    .line 308
    invoke-static {}, Laeq;->a()J

    move-result-wide v0

    iput-wide v0, p0, Laeg;->c:J

    .line 310
    const-string v0, "GET_PURCHASE_INFORMATION"

    invoke-virtual {p0, v0}, Laeg;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 311
    const-string v1, "NONCE"

    iget-wide v2, p0, Laeg;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 312
    const-string v1, "NOTIFY_IDS"

    iget-object v2, p0, Laeg;->d:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 313
    invoke-static {}, Lcom/dianxinos/powermanager/billing/BillingService;->e()Lgo;

    move-result-object v1

    invoke-interface {v1, v0}, Lgo;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 314
    const-string v1, "getPurchaseInformation"

    invoke-virtual {p0, v1, v0}, Laeg;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 315
    const-string v1, "REQUEST_ID"

    sget-wide v2, Lakr;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
