.class public Lsv;
.super Ljava/lang/Object;
.source "Constant.java"


# direct methods
.method public static a(I)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 19
    if-eqz p0, :cond_0

    if-eq v0, p0, :cond_0

    const/4 v1, 0x3

    if-ne v1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
