.class public Lazv;
.super Ljava/lang/Object;
.source "MiscCompat.java"


# static fields
.field private static a:Ljava/lang/reflect/Method;

.field private static b:Ljava/lang/reflect/Method;

.field private static c:Ljava/lang/reflect/Field;

.field private static d:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 27
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    .line 28
    const-class v1, Landroid/view/View;

    const-string v2, "isRootNamespace"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lazv;->a:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    .line 35
    const-class v1, Landroid/net/ConnectivityManager;

    const-string v2, "setBackgroundDataSetting"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lazv;->b:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 41
    :goto_1
    :try_start_2
    const-class v0, Landroid/view/View;

    const-string v1, "mScrollX"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lazv;->c:Ljava/lang/reflect/Field;

    .line 42
    sget-object v0, Lazv;->c:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 43
    const-class v0, Landroid/view/View;

    const-string v1, "mScrollY"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lazv;->d:Ljava/lang/reflect/Field;

    .line 44
    sget-object v0, Lazv;->d:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 50
    :goto_2
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    sput-object v3, Lazv;->a:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 37
    :catch_1
    move-exception v0

    .line 38
    sput-object v3, Lazv;->b:Ljava/lang/reflect/Method;

    goto :goto_1

    .line 45
    :catch_2
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 47
    sput-object v3, Lazv;->c:Ljava/lang/reflect/Field;

    .line 48
    sput-object v3, Lazv;->d:Ljava/lang/reflect/Field;

    goto :goto_2
.end method

.method public static a(Landroid/net/ConnectivityManager;Z)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 71
    sget-object v2, Lazv;->b:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 73
    :try_start_0
    sget-object v2, Lazv;->b:Ljava/lang/reflect/Method;

    .line 74
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    .line 75
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return v0

    .line 79
    :catch_0
    move-exception v0

    :cond_0
    :goto_1
    move v0, v1

    .line 85
    goto :goto_0

    .line 77
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static a(Landroid/view/View;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 53
    sget-object v0, Lazv;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 55
    :try_start_0
    sget-object v0, Lazv;->a:Ljava/lang/reflect/Method;

    .line 56
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 57
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 66
    :goto_0
    return v0

    .line 60
    :catch_0
    move-exception v0

    :cond_0
    :goto_1
    move v0, v1

    .line 66
    goto :goto_0

    .line 58
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static a(Landroid/view/View;I)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 89
    sget-object v0, Lazv;->c:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 91
    :try_start_0
    sget-object v0, Lazv;->c:Ljava/lang/reflect/Field;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    const/4 v0, 0x1

    .line 96
    :goto_0
    return v0

    .line 93
    :catch_0
    move-exception v0

    .line 96
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/view/View;I)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 100
    sget-object v0, Lazv;->d:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 102
    :try_start_0
    sget-object v0, Lazv;->d:Ljava/lang/reflect/Field;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    const/4 v0, 0x1

    .line 107
    :goto_0
    return v0

    .line 104
    :catch_0
    move-exception v0

    .line 107
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
