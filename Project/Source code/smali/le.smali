.class public Lle;
.super Llb;
.source "Ad.java"


# instance fields
.field public g:I

.field public h:Ljava/lang/String;

.field public i:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Llb;-><init>(Lorg/json/JSONObject;)V

    .line 34
    const-string v0, "adType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lle;->g:I

    .line 35
    const-string v0, "content"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lle;->h:Ljava/lang/String;

    .line 36
    const-string v0, "images"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lle;->b(Lorg/json/JSONArray;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lle;->i:Ljava/util/Map;

    .line 37
    return-void
.end method
