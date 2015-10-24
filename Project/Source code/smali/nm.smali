.class public Lnm;
.super Ljava/lang/Object;
.source "AsyncTaskPatcher.java"


# direct methods
.method public static a()V
    .locals 2

    .prologue
    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 33
    :goto_0
    return-void

    .line 23
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 24
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "This method must be invoked on the UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_1
    new-instance v0, Lnn;

    invoke-direct {v0}, Lnn;-><init>()V

    goto :goto_0
.end method
