.class public Lajx;
.super Lakc;
.source "DownloadFileService.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/download/DownloadFileService;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/download/DownloadFileService;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lajx;->a:Lcom/dianxinos/powermanager/download/DownloadFileService;

    invoke-direct {p0}, Lakc;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lajx;->a:Lcom/dianxinos/powermanager/download/DownloadFileService;

    invoke-virtual {v0, p1}, Lcom/dianxinos/powermanager/download/DownloadFileService;->a(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;JJLajy;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lajx;->a:Lcom/dianxinos/powermanager/download/DownloadFileService;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/dianxinos/powermanager/download/DownloadFileService;->a(Ljava/lang/String;Ljava/lang/String;JJLajy;)V

    .line 75
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lajx;->a:Lcom/dianxinos/powermanager/download/DownloadFileService;

    invoke-virtual {v0, p1}, Lcom/dianxinos/powermanager/download/DownloadFileService;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
