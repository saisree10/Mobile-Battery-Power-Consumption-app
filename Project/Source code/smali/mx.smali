.class public Lmx;
.super Lmq;
.source "SplashDownloadFileService.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/common/dxsplash/SplashDownloadFileService;


# direct methods
.method public constructor <init>(Lcom/dianxinos/common/dxsplash/SplashDownloadFileService;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lmx;->a:Lcom/dianxinos/common/dxsplash/SplashDownloadFileService;

    invoke-direct {p0}, Lmq;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lmx;->a:Lcom/dianxinos/common/dxsplash/SplashDownloadFileService;

    invoke-virtual {v0, p1}, Lcom/dianxinos/common/dxsplash/SplashDownloadFileService;->a(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;JJLmm;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lmx;->a:Lcom/dianxinos/common/dxsplash/SplashDownloadFileService;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/dianxinos/common/dxsplash/SplashDownloadFileService;->a(Ljava/lang/String;Ljava/lang/String;JJLmm;)V

    .line 66
    return-void
.end method
