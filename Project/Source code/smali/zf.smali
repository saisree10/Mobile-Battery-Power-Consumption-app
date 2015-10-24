.class public abstract Lzf;
.super Ljava/lang/Object;
.source "TapasMultiRecommendBase.java"


# static fields
.field protected static a:Ljava/lang/String;

.field protected static b:Landroid/content/Context;


# instance fields
.field protected c:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lzf;->b:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lzf;->c:Ljava/lang/String;

    .line 44
    return-void
.end method

.method protected static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    sget-object v1, Lzf;->b:Landroid/content/Context;

    invoke-static {v1}, Lgt;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, "&net="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    const-string v1, "&child="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, "&rv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "1.1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 31
    const-string v0, "prod"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const-string v0, "http://rc.dxsvr.com/multi_get"

    sput-object v0, Lzf;->a:Ljava/lang/String;

    .line 39
    :goto_0
    return-void

    .line 33
    :cond_0
    const-string v0, "test"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    const-string v0, "http://t1.tira.cn:8125/recommend/multi_get"

    sput-object v0, Lzf;->a:Ljava/lang/String;

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal env "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", only prod, test and dev is available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected abstract a(Lorg/json/JSONArray;)V
.end method

.method protected b()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 52
    sget-object v1, Lzf;->b:Landroid/content/Context;

    invoke-static {v1}, Lzv;->a(Landroid/content/Context;)I

    move-result v2

    .line 55
    const/4 v1, 0x0

    .line 57
    :try_start_0
    iget-object v3, p0, Lzf;->c:Ljava/lang/String;

    invoke-static {v3, v2}, Lzf;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 62
    sget-object v3, Lzf;->b:Landroid/content/Context;

    sget-object v4, Lzf;->a:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Lazs;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    new-instance v2, Lazk;

    invoke-direct {v2}, Lazk;-><init>()V

    .line 64
    invoke-virtual {v2, v1}, Lazk;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 65
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lazk;->b(Lorg/json/JSONObject;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v0

    .line 70
    :cond_1
    invoke-virtual {v2}, Lazk;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    const-string v2, "datas"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 77
    invoke-virtual {p0, v2}, Lzf;->a(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 88
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v1

    .line 79
    const-string v2, "TapasMultiRecommendBase"

    const-string v3, "Unexpected excetpion"

    invoke-static {v2, v3, v1}, Lzs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 81
    :catch_1
    move-exception v0

    .line 82
    const-string v2, "TapasMultiRecommendBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lzs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
