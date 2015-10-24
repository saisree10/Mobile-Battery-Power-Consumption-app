.class public Lcom/dianxinos/common/dxsplash/SplashDownloadFileService;
.super Landroid/app/Service;
.source "SplashDownloadFileService.java"


# instance fields
.field private a:Ljava/util/HashMap;

.field private b:Lmx;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/dianxinos/common/dxsplash/SplashDownloadFileService;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dianxinos/common/dxsplash/SplashDownloadFileService;->a:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/dianxinos/common/dxsplash/SplashDownloadFileService;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmw;

    .line 116
    if-eqz v0, :cond_0

    .line 117
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmw;->a(Z)V

    .line 118
    iget-object v0, p0, Lcom/dianxinos/common/dxsplash/SplashDownloadFileService;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;JJLmm;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/dianxinos/common/dxsplash/SplashDownloadFileService;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lmw;

    invoke-direct {v0, p0, p7}, Lmw;-><init>(Lcom/dianxinos/common/dxsplash/SplashDownloadFileService;Lmm;)V

    .line 105
    iget-object v1, p0, Lcom/dianxinos/common/dxsplash/SplashDownloadFileService;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lmw;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 108
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/dianxinos/common/dxsplash/SplashDownloadFileService;->b:Lmx;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/common/dxsplash/SplashDownloadFileService;->a:Ljava/util/HashMap;

    .line 78
    new-instance v0, Lmx;

    invoke-direct {v0, p0}, Lmx;-><init>(Lcom/dianxinos/common/dxsplash/SplashDownloadFileService;)V

    iput-object v0, p0, Lcom/dianxinos/common/dxsplash/SplashDownloadFileService;->b:Lmx;

    .line 79
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 84
    return-void
.end method
