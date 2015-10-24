.class public Laxz;
.super Landroid/os/AsyncTask;
.source "AppPowerUsageKitKatActivity.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Laxz;->a:Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Laxz;->a:Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;

    iget-object v1, p0, Laxz;->a:Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->b(Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;)Landroid/app/ActivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->a(Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;Ljava/util/List;)Ljava/util/List;

    .line 38
    iget-object v0, p0, Laxz;->a:Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->d(Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;)Layg;

    move-result-object v0

    iget-object v1, p0, Laxz;->a:Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->c(Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Layg;->a(Ljava/util/List;)V

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Laxz;->a([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Laxz;->a:Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->a(Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 45
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 31
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 32
    iget-object v0, p0, Laxz;->a:Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;->a(Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 33
    return-void
.end method
