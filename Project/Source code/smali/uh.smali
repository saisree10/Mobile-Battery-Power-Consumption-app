.class public final Luh;
.super Ljava/lang/Object;
.source "HwInfoManager.java"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/util/Map;
    .locals 15
    .parameter

    .prologue
    .line 54
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 56
    invoke-static {p0}, Lgy;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {p0}, Lgy;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-static {p0}, Lgy;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 59
    invoke-static {p0}, Lgy;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 60
    invoke-static {}, Lgy;->c()Ljava/lang/String;

    move-result-object v5

    .line 61
    invoke-static {p0}, Lgy;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 62
    invoke-static {p0}, Lgy;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 63
    invoke-static {p0}, Lgy;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 64
    invoke-static {p0}, Lgy;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 65
    invoke-static {p0}, Lgy;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 66
    invoke-static {p0}, Lgy;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 67
    invoke-static {p0}, Lgy;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 68
    invoke-static {}, Lgy;->a()Ljava/lang/String;

    move-result-object v13

    .line 70
    const-string v14, "a"

    invoke-static {v0, v1, v14}, Luh;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v1, "b"

    invoke-static {v0, v2, v1}, Luh;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v1, "c"

    invoke-static {v0, v3, v1}, Luh;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v1, "d"

    invoke-static {v0, v4, v1}, Luh;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v1, "e"

    invoke-static {v0, v5, v1}, Luh;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v1, "f"

    invoke-static {v0, v6, v1}, Luh;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v1, "k"

    invoke-static {v0, v7, v1}, Luh;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v1, "m"

    invoke-static {v0, v8, v1}, Luh;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v1, "g"

    invoke-static {v0, v9, v1}, Luh;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v1, "h"

    invoke-static {v0, v10, v1}, Luh;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v1, "i"

    invoke-static {v0, v11, v1}, Luh;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v1, "j"

    invoke-static {v0, v12, v1}, Luh;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v1, "mmcid"

    invoke-static {v0, v13, v1}, Luh;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {p0}, Lgx;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "etcunid"

    invoke-static {v0, v1, v2}, Luh;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v1, "NewToken"

    const-string v2, "etcunname"

    invoke-static {v0, v1, v2}, Luh;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {p0}, Lgx;->c(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dt"

    invoke-static {v0, v1, v2}, Luh;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-object v0
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_0
    return-void
.end method
