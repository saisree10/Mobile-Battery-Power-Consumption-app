.class public Lwk;
.super Ljava/lang/Object;
.source "SettingsMgr.java"


# direct methods
.method public static a(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 10
    invoke-static {p0}, Lagl;->a(Landroid/content/Context;)Lagl;

    move-result-object v0

    invoke-virtual {v0}, Lagl;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
