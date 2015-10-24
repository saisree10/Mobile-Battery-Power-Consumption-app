.class public abstract Laed;
.super Ljava/lang/Object;
.source "BillingService.java"


# instance fields
.field protected a:J

.field final synthetic b:Lcom/dianxinos/powermanager/billing/BillingService;

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/billing/BillingService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Laed;->b:Lcom/dianxinos/powermanager/billing/BillingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput p2, p0, Laed;->c:I

    .line 96
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Laed;->c:I

    return v0
.end method

.method protected a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .parameter

    .prologue
    .line 177
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 178
    const-string v1, "BILLING_REQUEST"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v1, "API_VERSION"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 180
    const-string v1, "PACKAGE_NAME"

    iget-object v2, p0, Laed;->b:Lcom/dianxinos/powermanager/billing/BillingService;

    invoke-virtual {v2}, Lcom/dianxinos/powermanager/billing/BillingService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-object v0
.end method

.method public a(Lakt;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    return-void
.end method

.method protected a(Landroid/os/RemoteException;)V
    .locals 2
    .parameter

    .prologue
    .line 156
    const-string v0, "BillingService"

    const-string v1, "remote billing service crashed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/dianxinos/powermanager/billing/BillingService;->a(Lgo;)Lgo;

    .line 158
    return-void
.end method

.method protected a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 185
    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lakt;->a(I)Lakt;

    .line 190
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 109
    invoke-virtual {p0}, Laed;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    :goto_0
    return v0

    .line 113
    :cond_0
    iget-object v1, p0, Laed;->b:Lcom/dianxinos/powermanager/billing/BillingService;

    invoke-static {v1}, Lcom/dianxinos/powermanager/billing/BillingService;->a(Lcom/dianxinos/powermanager/billing/BillingService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    invoke-static {}, Lcom/dianxinos/powermanager/billing/BillingService;->d()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 118
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 4

    .prologue
    .line 131
    invoke-static {}, Lcom/dianxinos/powermanager/billing/BillingService;->e()Lgo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 133
    :try_start_0
    invoke-virtual {p0}, Laed;->d()J

    move-result-wide v0

    iput-wide v0, p0, Laed;->a:J

    .line 137
    iget-wide v0, p0, Laed;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 138
    invoke-static {}, Lcom/dianxinos/powermanager/billing/BillingService;->f()Ljava/util/HashMap;

    move-result-object v0

    iget-wide v1, p0, Laed;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_0
    const/4 v0, 0x1

    .line 145
    :goto_0
    return v0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    invoke-virtual {p0, v0}, Laed;->a(Landroid/os/RemoteException;)V

    .line 145
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract d()J
.end method
