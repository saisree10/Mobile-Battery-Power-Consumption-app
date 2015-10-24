.class public Llh;
.super Llb;
.source "MaterialGroup.java"


# instance fields
.field public g:J

.field public h:J

.field public i:I

.field public j:I

.field public k:Ljava/util/Map;

.field public l:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;JJ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Llb;-><init>(Lorg/json/JSONObject;)V

    .line 25
    iput-object p1, p0, Llh;->f:Lorg/json/JSONObject;

    .line 26
    iput-wide p2, p0, Llh;->g:J

    .line 27
    iput-wide p4, p0, Llh;->h:J

    .line 28
    const-string v0, "contentType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Llh;->i:I

    .line 29
    const-string v0, "total"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Llh;->j:I

    .line 30
    const-string v0, "images"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Llh;->b(Lorg/json/JSONArray;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Llh;->k:Ljava/util/Map;

    .line 31
    const-string v0, "datas"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Llh;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Llh;->l:Ljava/util/List;

    .line 32
    return-void
.end method
