.class public Laef;
.super Laed;
.source "BillingService.java"


# instance fields
.field final c:[Ljava/lang/String;

.field final synthetic d:Lcom/dianxinos/powermanager/billing/BillingService;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/billing/BillingService;I[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 276
    iput-object p1, p0, Laef;->d:Lcom/dianxinos/powermanager/billing/BillingService;

    .line 277
    invoke-direct {p0, p1, p2}, Laed;-><init>(Lcom/dianxinos/powermanager/billing/BillingService;I)V

    .line 278
    iput-object p3, p0, Laef;->c:[Ljava/lang/String;

    .line 279
    return-void
.end method


# virtual methods
.method protected d()J
    .locals 4

    .prologue
    .line 283
    const-string v0, "CONFIRM_NOTIFICATIONS"

    invoke-virtual {p0, v0}, Laef;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 284
    const-string v1, "NOTIFY_IDS"

    iget-object v2, p0, Laef;->c:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 285
    invoke-static {}, Lcom/dianxinos/powermanager/billing/BillingService;->e()Lgo;

    move-result-object v1

    invoke-interface {v1, v0}, Lgo;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 286
    const-string v1, "confirmNotifications"

    invoke-virtual {p0, v1, v0}, Laef;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 287
    const-string v1, "REQUEST_ID"

    sget-wide v2, Lakr;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
