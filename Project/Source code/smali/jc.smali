.class public Ljc;
.super Ljava/lang/Object;
.source "DownloadStatus.java"


# direct methods
.method public static a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 215
    const/16 v0, 0x190

    if-lt p0, v0, :cond_0

    const/16 v0, 0x258

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
