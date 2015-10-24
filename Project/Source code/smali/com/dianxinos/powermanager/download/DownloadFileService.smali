.class public Lcom/dianxinos/powermanager/download/DownloadFileService;
.super Landroid/app/Service;
.source "DownloadFileService.java"


# instance fields
.field private a:Ljava/util/HashMap;

.field private b:Lajx;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/download/DownloadFileService;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dianxinos/powermanager/download/DownloadFileService;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method public static synthetic c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-static {p0}, Lcom/dianxinos/powermanager/download/DownloadFileService;->d(Ljava/lang/String;)V

    return-void
.end method

.method private static d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 438
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/dianxinos/powermanager/download/DownloadFileService;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajw;

    .line 130
    if-eqz v0, :cond_0

    .line 131
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lajw;->a(Z)V

    .line 132
    iget-object v0, p0, Lcom/dianxinos/powermanager/download/DownloadFileService;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;JJLajy;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/dianxinos/powermanager/download/DownloadFileService;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lajw;

    invoke-direct {v0, p0, p7}, Lajw;-><init>(Lcom/dianxinos/powermanager/download/DownloadFileService;Lajy;)V

    .line 119
    iget-object v1, p0, Lcom/dianxinos/powermanager/download/DownloadFileService;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
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

    invoke-virtual {v0, v1}, Lajw;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 122
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/dianxinos/powermanager/download/DownloadFileService;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/dianxinos/powermanager/download/DownloadFileService;->b:Lajx;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/download/DownloadFileService;->a:Ljava/util/HashMap;

    .line 92
    new-instance v0, Lajx;

    invoke-direct {v0, p0}, Lajx;-><init>(Lcom/dianxinos/powermanager/download/DownloadFileService;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/download/DownloadFileService;->b:Lajx;

    .line 93
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 98
    return-void
.end method
