.class public Larh;
.super Ljava/lang/Object;
.source "WWFSkinHelper.java"


# direct methods
.method public static a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 8
    if-nez p0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0

    :cond_0
    const-string v0, "wwf_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
