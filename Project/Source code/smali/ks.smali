.class public Lks;
.super Ljava/lang/Object;
.source "VERSION_CmsFrontLib.java"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 14
    const-string v0, "VERSION-CmsFrontLib-1.1.2"

    const-string v1, "VERSION-CmsFrontLib-"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
