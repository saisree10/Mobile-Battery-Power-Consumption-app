.class public Lus;
.super Ljava/lang/Object;
.source "VERSION_DXFB.java"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 8
    const-string v0, "VERSION-DXFB-1.2.2"

    const-string v1, "VERSION-DXFB-"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
