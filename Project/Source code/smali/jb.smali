.class public Ljb;
.super Landroid/os/Binder;
.source "DownloadService.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/appupdate/DownloadService;


# direct methods
.method public constructor <init>(Lcom/dianxinos/appupdate/DownloadService;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Ljb;->a:Lcom/dianxinos/appupdate/DownloadService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcom/dianxinos/appupdate/DownloadService;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Ljb;->a:Lcom/dianxinos/appupdate/DownloadService;

    return-object v0
.end method
