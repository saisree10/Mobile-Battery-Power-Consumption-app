.class public final Lgt;
.super Ljava/lang/Object;
.source "DXStatService.java"


# static fields
.field private static a:Ljava/util/Map;

.field private static b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "pkg"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ie"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "lc"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "model"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "tk"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "v"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "vn"

    aput-object v2, v0, v1

    sput-object v0, Lgt;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0}, Lgt;->b(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-static {p0, p1}, Lgt;->b(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .parameter

    .prologue
    .line 99
    sget-object v1, Lgt;->b:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 100
    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 101
    sget-boolean v4, Lgz;->d:Z

    if-eqz v4, :cond_0

    .line 102
    const-string v4, "base.DXStatService"

    const-string v5, "Your excepts is illeage because you want remove the neededParams of UrlSuffix!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    invoke-interface {p0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 99
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_2
    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_0
    return-object p2
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v0, p0, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_0
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 41
    const-class v2, Lgt;

    monitor-enter v2

    .line 42
    :try_start_0
    invoke-static {p1}, Lgt;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 43
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 45
    invoke-static {p0}, Lgt;->b(Landroid/content/Context;)V

    .line 46
    new-instance v4, Ljava/util/HashMap;

    sget-object v1, Lgt;->a:Ljava/util/Map;

    invoke-direct {v4, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 47
    const-string v1, "ntt"

    invoke-static {p0}, Lgy;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v4}, Lgt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 49
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 50
    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 52
    :cond_0
    :try_start_1
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 53
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lgt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 55
    :cond_1
    const-string v0, "UTF-8"

    invoke-static {v3, v0}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 65
    sget-object v0, Lgt;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lgt;->a:Ljava/util/Map;

    .line 67
    const-string v0, "pkg"

    invoke-static {p0}, Lgy;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lgt;->a:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lgt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 69
    const-string v0, "h"

    invoke-static {p0}, Lgy;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lgt;->a:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lgt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 70
    const-string v0, "w"

    invoke-static {p0}, Lgy;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lgt;->a:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lgt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 71
    const-string v0, "v"

    invoke-static {p0}, Lgy;->j(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lgt;->a:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lgt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 73
    const-string v0, "vn"

    invoke-static {p0}, Lgy;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lgt;->a:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lgt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 75
    const-string v0, "model"

    invoke-static {p0}, Lgy;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lgt;->a:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lgt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 76
    const-string v0, "vendor"

    invoke-static {p0}, Lgy;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lgt;->a:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lgt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 78
    const-string v0, "ie"

    invoke-static {p0}, Lgy;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lgt;->a:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lgt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 79
    const-string v0, "sdk"

    invoke-static {p0}, Lgy;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lgt;->a:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lgt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 80
    const-string v0, "dpi"

    invoke-static {p0}, Lgy;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lgt;->a:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lgt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 81
    const-string v0, "tk"

    invoke-static {p0}, Lgx;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lgt;->a:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lgt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 82
    const-string v0, "locale"

    invoke-static {p0}, Lgy;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lgt;->a:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lgt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 83
    const-string v0, "signmd5"

    invoke-static {p0}, Lgy;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lgt;->a:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lgt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 86
    :cond_0
    invoke-static {p0}, Lgy;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 87
    sget-object v1, Lgt;->a:Ljava/util/Map;

    const-string v2, "is"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 88
    const-string v1, "is"

    sget-object v2, Lgt;->a:Ljava/util/Map;

    invoke-static {v1, v0, v2}, Lgt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 90
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lgt;->a:Ljava/util/Map;

    const-string v1, "op"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 91
    const-string v0, "op"

    invoke-static {p0}, Lgy;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lgt;->a:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lgt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 93
    :cond_2
    sget-object v0, Lgt;->a:Ljava/util/Map;

    const-string v1, "lc"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 94
    const-string v0, "lc"

    invoke-static {p0}, Lgw;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lgt;->a:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lgt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 96
    :cond_3
    return-void
.end method
