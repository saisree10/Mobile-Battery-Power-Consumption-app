.class public Lgj;
.super Ljava/lang/Object;
.source "ConnectivityManagerCompat.java"


# static fields
.field private static a:Ljava/lang/reflect/Method;

.field private static b:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 22
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    .line 23
    const-class v1, Landroid/net/ConnectivityManager;

    const-string v2, "getMobileDataEnabled"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lgj;->a:Ljava/lang/reflect/Method;

    .line 25
    const-class v1, Landroid/net/ConnectivityManager;

    const-string v2, "setMobileDataEnabled"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lgj;->b:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 29
    sput-object v4, Lgj;->a:Ljava/lang/reflect/Method;

    .line 30
    sput-object v4, Lgj;->b:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method public static a(Landroid/net/ConnectivityManager;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 43
    sget-object v0, Lgj;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 45
    :try_start_0
    sget-object v0, Lgj;->a:Ljava/lang/reflect/Method;

    .line 46
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 47
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 48
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 57
    :goto_0
    return v0

    .line 51
    :catch_0
    move-exception v0

    :cond_0
    :goto_1
    move v0, v1

    .line 57
    goto :goto_0

    .line 49
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static a(Landroid/net/ConnectivityManager;Z)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    sget-object v2, Lgj;->b:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 63
    :try_start_0
    sget-object v2, Lgj;->b:Ljava/lang/reflect/Method;

    .line 64
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    .line 65
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return v0

    .line 69
    :catch_0
    move-exception v0

    :cond_0
    :goto_1
    move v0, v1

    .line 75
    goto :goto_0

    .line 67
    :catch_1
    move-exception v0

    goto :goto_1
.end method
