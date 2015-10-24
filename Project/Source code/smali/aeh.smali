.class public Laeh;
.super Laed;
.source "BillingService.java"


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field final synthetic e:Lcom/dianxinos/powermanager/billing/BillingService;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/billing/BillingService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Laeh;->e:Lcom/dianxinos/powermanager/billing/BillingService;

    .line 236
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Laed;-><init>(Lcom/dianxinos/powermanager/billing/BillingService;I)V

    .line 237
    iput-object p2, p0, Laeh;->c:Ljava/lang/String;

    .line 238
    iput-object p3, p0, Laeh;->d:Ljava/lang/String;

    .line 239
    return-void
.end method


# virtual methods
.method protected a(Lakt;)V
    .locals 1
    .parameter

    .prologue
    .line 266
    iget-object v0, p0, Laeh;->e:Lcom/dianxinos/powermanager/billing/BillingService;

    invoke-static {v0, p0, p1}, Laeo;->a(Landroid/content/Context;Laeh;Lakt;)V

    .line 267
    return-void
.end method

.method protected d()J
    .locals 4

    .prologue
    .line 243
    const-string v0, "REQUEST_PURCHASE"

    invoke-virtual {p0, v0}, Laeh;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 244
    const-string v1, "ITEM_ID"

    iget-object v2, p0, Laeh;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Laeh;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 247
    const-string v1, "DEVELOPER_PAYLOAD"

    iget-object v2, p0, Laeh;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_0
    invoke-static {}, Lcom/dianxinos/powermanager/billing/BillingService;->e()Lgo;

    move-result-object v1

    invoke-interface {v1, v0}, Lgo;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 251
    const-string v0, "PURCHASE_INTENT"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 253
    if-nez v0, :cond_1

    .line 254
    const-string v0, "BillingService"

    const-string v1, "Error with requestPurchase"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    sget-wide v0, Lakr;->a:J

    .line 260
    :goto_0
    return-wide v0

    .line 258
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 259
    invoke-static {v0, v2}, Laeo;->a(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 260
    const-string v0, "REQUEST_ID"

    sget-wide v2, Lakr;->a:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method
