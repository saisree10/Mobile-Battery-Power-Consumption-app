.class public Lgm;
.super Ljava/lang/Object;
.source "SharedPreferencesCompat.java"


# static fields
.field private static a:Ljava/lang/reflect/Method;

.field private static b:Ljava/lang/reflect/Method;

.field private static c:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 22
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    .line 23
    const-class v1, Landroid/content/SharedPreferences$Editor;

    const-string v2, "apply"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lgm;->a:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :goto_0
    const/4 v0, 0x2

    :try_start_1
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/util/Set;

    aput-object v2, v0, v1

    .line 29
    const-class v1, Landroid/content/SharedPreferences;

    const-string v2, "getStringSet"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lgm;->b:Ljava/lang/reflect/Method;

    .line 30
    const-class v1, Landroid/content/SharedPreferences$Editor;

    const-string v2, "putStringSet"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lgm;->c:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 35
    :goto_1
    return-void

    .line 24
    :catch_0
    move-exception v0

    .line 25
    sput-object v3, Lgm;->a:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 31
    :catch_1
    move-exception v0

    .line 32
    sput-object v3, Lgm;->b:Ljava/lang/reflect/Method;

    .line 33
    sput-object v3, Lgm;->c:Ljava/lang/reflect/Method;

    goto :goto_1
.end method

.method public static a(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .parameter

    .prologue
    .line 38
    sget-object v0, Lgm;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 40
    :try_start_0
    sget-object v0, Lgm;->a:Ljava/lang/reflect/Method;

    .line 41
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 42
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 51
    :cond_0
    :goto_1
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 44
    :catch_1
    move-exception v0

    goto :goto_1
.end method
