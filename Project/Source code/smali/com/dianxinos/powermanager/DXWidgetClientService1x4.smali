.class public Lcom/dianxinos/powermanager/DXWidgetClientService1x4;
.super Lwd;
.source "DXWidgetClientService1x4.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lwd;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;Lwa;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    return-void
.end method

.method public b(Landroid/content/Intent;Lwa;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    return-void
.end method

.method public c(Landroid/content/Intent;Lwa;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    return-void
.end method

.method public d(Landroid/content/Intent;Lwa;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    return-void
.end method

.method public e(Landroid/content/Intent;Lwa;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 29
    const-string v1, "com.dianxinos.dxbs.action.DXHomeWidgetUpdate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    const-string v0, "remote_view"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    .line 31
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/dianxinos/powermanager/DXWidgetProvider1x4;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    if-eqz p2, :cond_0

    .line 34
    :try_start_0
    invoke-interface {p2, v1}, Lwa;->a(Landroid/content/ComponentName;)[I

    move-result-object v2

    .line 35
    if-eqz v2, :cond_1

    array-length v2, v2

    if-eqz v2, :cond_1

    .line 36
    invoke-static {p0}, Lbaj;->a(Landroid/content/Context;)Lbaj;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lbaj;->a(I)V

    .line 40
    :goto_0
    invoke-interface {p2, v1, v0}, Lwa;->a(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 48
    :cond_0
    :goto_1
    return-void

    .line 38
    :cond_1
    invoke-static {p0}, Lbaj;->a(Landroid/content/Context;)Lbaj;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lbaj;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    const-string v1, "DXWidgetClientService1x4"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to update DXHome widget 1x4: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lazt;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 44
    :catch_1
    move-exception v0

    .line 45
    const-string v1, "DXWidgetClientService1x4"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to update DXHome widget 1x4: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lazt;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
