.class public Llj;
.super Llb;
.source "Project.java"


# instance fields
.field public g:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Llb;-><init>(Lorg/json/JSONObject;)V

    .line 21
    const-string v0, "tabs"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iget-wide v1, p0, Llj;->a:J

    invoke-static {v0, v1, v2}, Llj;->a(Lorg/json/JSONArray;J)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Llj;->g:Ljava/util/List;

    .line 22
    return-void
.end method

.method private static a(Lorg/json/JSONArray;J)Ljava/util/List;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 25
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 34
    :cond_1
    return-object v0

    .line 28
    :cond_2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 31
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 32
    new-instance v4, Llk;

    invoke-direct {v4, v3, p1, p2}, Llk;-><init>(Lorg/json/JSONObject;J)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Llj;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Llj;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
