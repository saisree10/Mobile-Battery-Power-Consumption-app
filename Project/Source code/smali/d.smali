.class public abstract Ld;
.super Landroid/os/Binder;
.source "DXServiceManagerNative.java"

# interfaces
.implements Lf;


# direct methods
.method public static a()Lf;
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x6

    invoke-static {v0}, Ld;->a(I)Lf;

    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 17
    const-string v0, "bp"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 18
    invoke-static {v0}, Ld;->a(Landroid/os/IBinder;)Lf;

    move-result-object v0

    .line 20
    :cond_0
    return-object v0
.end method

.method public static a(I)Lf;
    .locals 2
    .parameter

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 26
    invoke-static {v0}, Ld;->a(Landroid/os/IBinder;)Lf;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/os/IBinder;)Lf;
    .locals 1
    .parameter

    .prologue
    .line 33
    if-nez p0, :cond_1

    .line 34
    const/4 v0, 0x0

    .line 40
    :cond_0
    :goto_0
    return-object v0

    .line 36
    :cond_1
    const-string v0, "android.os.bp"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lf;

    .line 37
    if-nez v0, :cond_0

    .line 40
    new-instance v0, Le;

    invoke-direct {v0, p0}, Le;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method
