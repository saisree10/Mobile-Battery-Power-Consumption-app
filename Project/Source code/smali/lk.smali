.class public Llk;
.super Llb;
.source "Tab.java"


# instance fields
.field public g:J

.field public h:Ljava/lang/String;

.field public i:Ljava/util/HashMap;

.field public j:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Llb;-><init>(Lorg/json/JSONObject;)V

    .line 36
    iput-wide p2, p0, Llk;->g:J

    .line 37
    const-string v0, "type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llk;->h:Ljava/lang/String;

    .line 38
    const-string v0, "home"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Llk;->j:Z

    .line 39
    const-string v0, "datas"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Llk;->b(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Llk;->i:Ljava/util/HashMap;

    .line 40
    return-void
.end method

.method private static b(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 7
    .parameter

    .prologue
    .line 43
    if-nez p0, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 58
    :goto_0
    return-object v0

    .line 46
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 47
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 48
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    .line 58
    goto :goto_0

    .line 49
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 50
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 51
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 52
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    .line 55
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Llk;->c(Lorg/json/JSONObject;)Lli;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static c(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 5
    .parameter

    .prologue
    .line 69
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 70
    :cond_0
    const/4 v0, 0x0

    .line 77
    :cond_1
    return-object v0

    .line 72
    :cond_2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 75
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static c(Lorg/json/JSONObject;)Lli;
    .locals 6
    .parameter

    .prologue
    .line 62
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 63
    const-string v0, "sort"

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v0, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 64
    const-string v0, "ad"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Llk;->c(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v5

    .line 65
    new-instance v0, Lli;

    invoke-direct/range {v0 .. v5}, Lli;-><init>(JJLjava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public a(I)[J
    .locals 7
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Llk;->i:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 82
    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 94
    :goto_0
    return-object v0

    .line 86
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 87
    new-array v3, v1, [J

    .line 88
    const/4 v1, 0x0

    .line 90
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v3

    .line 94
    goto :goto_0

    .line 90
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lli;

    .line 91
    add-int/lit8 v2, v1, 0x1

    iget-wide v5, v0, Lli;->a:J

    aput-wide v5, v3, v1

    move v1, v2

    goto :goto_1
.end method
