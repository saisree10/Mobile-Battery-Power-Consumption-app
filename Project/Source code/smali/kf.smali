.class Lkf;
.super Ljava/lang/Object;
.source "UpdateManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lka;


# direct methods
.method constructor <init>(Lka;)V
    .locals 0
    .parameter

    .prologue
    .line 1376
    iput-object p1, p0, Lkf;->a:Lka;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1379
    invoke-static {}, Lka;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1380
    const-string v0, "UpdateManager"

    const-string v1, "Service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    :cond_0
    check-cast p2, Ljb;

    .line 1384
    iget-object v0, p0, Lkf;->a:Lka;

    invoke-static {v0}, Lka;->f(Lka;)Landroid/content/ServiceConnection;

    move-result-object v1

    monitor-enter v1

    .line 1385
    :try_start_0
    iget-object v0, p0, Lkf;->a:Lka;

    invoke-virtual {p2}, Ljb;->a()Lcom/dianxinos/appupdate/DownloadService;

    move-result-object v2

    invoke-static {v0, v2}, Lka;->a(Lka;Lcom/dianxinos/appupdate/DownloadService;)Lcom/dianxinos/appupdate/DownloadService;

    .line 1386
    iget-object v0, p0, Lkf;->a:Lka;

    invoke-static {v0}, Lka;->g(Lka;)Liz;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1387
    iget-object v0, p0, Lkf;->a:Lka;

    invoke-static {v0}, Lka;->h(Lka;)Lcom/dianxinos/appupdate/DownloadService;

    move-result-object v0

    iget-object v2, p0, Lkf;->a:Lka;

    invoke-static {v2}, Lka;->g(Lka;)Liz;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/dianxinos/appupdate/DownloadService;->a(Liz;)V

    .line 1389
    :cond_1
    monitor-exit v1

    .line 1390
    return-void

    .line 1389
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter

    .prologue
    .line 1393
    invoke-static {}, Lka;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1394
    const-string v0, "UpdateManager"

    const-string v1, "Service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    :cond_0
    iget-object v0, p0, Lkf;->a:Lka;

    invoke-static {v0}, Lka;->f(Lka;)Landroid/content/ServiceConnection;

    move-result-object v1

    monitor-enter v1

    .line 1397
    :try_start_0
    iget-object v0, p0, Lkf;->a:Lka;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lka;->a(Lka;Lcom/dianxinos/appupdate/DownloadService;)Lcom/dianxinos/appupdate/DownloadService;

    .line 1398
    monitor-exit v1

    .line 1399
    return-void

    .line 1398
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
