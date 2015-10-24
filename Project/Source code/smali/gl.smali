.class public Lgl;
.super Ljava/lang/Object;
.source "ServiceManagerCompat.java"


# static fields
.field private static a:Ljava/lang/Class;

.field private static b:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 20
    :try_start_0
    const-string v0, "android.os.ServiceManager"

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lgl;->a:Ljava/lang/Class;

    .line 21
    sget-object v0, Lgl;->a:Ljava/lang/Class;

    const-string v1, "getService"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lgl;->b:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 27
    :goto_0
    return-void

    .line 22
    :catch_0
    move-exception v0

    .line 23
    const-string v1, "ServiceManagerCompat"

    const-string v2, "unexpected"

    invoke-static {v1, v2, v0}, Lxz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 24
    :catch_1
    move-exception v0

    .line 25
    const-string v1, "ServiceManagerCompat"

    const-string v2, "unexpected"

    invoke-static {v1, v2, v0}, Lxz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;)Landroid/os/IBinder;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 30
    sget-object v0, Lgl;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 32
    :try_start_0
    sget-object v0, Lgl;->b:Ljava/lang/reflect/Method;

    .line 33
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 34
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 35
    check-cast v0, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 44
    :goto_0
    return-object v0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    const-string v2, "ServiceManagerCompat"

    const-string v3, "unexpected"

    invoke-static {v2, v3, v0}, Lxz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    move-object v0, v1

    .line 44
    goto :goto_0

    .line 38
    :catch_1
    move-exception v0

    .line 39
    const-string v2, "ServiceManagerCompat"

    const-string v3, "unexpected"

    invoke-static {v2, v3, v0}, Lxz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 40
    :catch_2
    move-exception v0

    .line 41
    const-string v2, "ServiceManagerCompat"

    const-string v3, "unexpected"

    invoke-static {v2, v3, v0}, Lxz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
