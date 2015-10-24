.class public Liu;
.super Ljava/lang/Object;
.source "AppUpdateService.java"

# interfaces
.implements Liv;


# instance fields
.field final synthetic a:Lcom/dianxinos/appupdate/AppUpdateService;


# direct methods
.method public constructor <init>(Lcom/dianxinos/appupdate/AppUpdateService;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Liu;->a:Lcom/dianxinos/appupdate/AppUpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 81
    invoke-static {}, Lcom/dianxinos/appupdate/AppUpdateService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "AppUpdateService"

    const-string v1, "Auto checking update result: network error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;ILjava/util/Map;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-static {}, Lcom/dianxinos/appupdate/AppUpdateService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "AppUpdateService"

    const-string v1, "Auto checking update result: Update available"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    iget-object v0, p0, Liu;->a:Lcom/dianxinos/appupdate/AppUpdateService;

    invoke-virtual {v0}, Lcom/dianxinos/appupdate/AppUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lka;->a(Landroid/content/Context;)Lka;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lka;->a()Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-static {v1}, Lkj;->a(Landroid/net/ConnectivityManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lka;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    const-string v1, "AppUpdateService"

    const-string v2, "start silent download caused by new update when wifi connected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lka;->a(Ljv;ZI)V

    .line 98
    :cond_1
    if-nez p4, :cond_3

    iget-object v0, p0, Liu;->a:Lcom/dianxinos/appupdate/AppUpdateService;

    invoke-static {v0}, Lcom/dianxinos/appupdate/AppUpdateService;->a(Lcom/dianxinos/appupdate/AppUpdateService;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 124
    :cond_2
    :goto_0
    return-void

    .line 101
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v0, "com.dianxinos.appupdate.intent.NEW_UPDATE"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Liu;->a:Lcom/dianxinos/appupdate/AppUpdateService;

    invoke-virtual {v0}, Lcom/dianxinos/appupdate/AppUpdateService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v0, "new-vn"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v0, "new_vc"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    const-string v0, "update-dspt"

    invoke-virtual {v2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v0, "update-pri"

    invoke-virtual {v2, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    const-string v1, "update-file-size"

    const-string v0, "update-file-size"

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    if-eqz p5, :cond_5

    .line 112
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 113
    invoke-interface {p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 114
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 116
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 118
    :cond_4
    const-string v0, "update-extras"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 120
    :cond_5
    iget-object v0, p0, Liu;->a:Lcom/dianxinos/appupdate/AppUpdateService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Liu;->a:Lcom/dianxinos/appupdate/AppUpdateService;

    invoke-virtual {v3}, Lcom/dianxinos/appupdate/AppUpdateService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".permission.UPDATE"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/dianxinos/appupdate/AppUpdateService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 121
    invoke-static {}, Lcom/dianxinos/appupdate/AppUpdateService;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    const-string v0, "AppUpdateService"

    const-string v1, "Update available broadcast sent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 127
    invoke-static {}, Lcom/dianxinos/appupdate/AppUpdateService;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const-string v0, "AppUpdateService"

    const-string v1, "Auto check update result: no update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    return-void
.end method
