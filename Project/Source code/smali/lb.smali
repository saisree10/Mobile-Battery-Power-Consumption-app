.class public abstract Llb;
.super Ljava/lang/Object;
.source "AbstractModel.java"


# instance fields
.field public a:J

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p1, p0, Llb;->f:Lorg/json/JSONObject;

    .line 187
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Llb;->a:J

    .line 188
    const-string v0, "title"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llb;->c:Ljava/lang/String;

    .line 189
    const-string v0, "description"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llb;->d:Ljava/lang/String;

    .line 190
    const-string v0, "ext"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llb;->e:Ljava/lang/String;

    .line 191
    const-string v0, "type"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Llb;->b:I

    .line 192
    return-void
.end method

.method public static a(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .parameter

    .prologue
    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 147
    if-eqz p0, :cond_0

    .line 148
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 149
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    .line 154
    :cond_0
    return-object v1

    .line 150
    :cond_1
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 151
    invoke-static {v3}, Llb;->a(Lorg/json/JSONObject;)Llb;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONArray;JJ)Ljava/util/List;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 118
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 119
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-lt v6, v8, :cond_0

    .line 122
    return-object v7

    .line 120
    :cond_0
    new-instance v0, Llh;

    invoke-virtual {p0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Llh;-><init>(Lorg/json/JSONObject;JJ)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;)Llb;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 126
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 127
    const/4 v0, 0x0

    .line 140
    :goto_0
    return-object v0

    .line 129
    :cond_0
    const-string v0, "type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 130
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 131
    new-instance v0, Lle;

    invoke-direct {v0, p0}, Lle;-><init>(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 132
    :cond_1
    if-ne v0, v2, :cond_2

    .line 133
    new-instance v0, Llf;

    invoke-direct {v0, p0}, Llf;-><init>(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 134
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 135
    new-instance v0, Lll;

    invoke-direct {v0, p0}, Lll;-><init>(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 136
    :cond_3
    const/16 v1, 0x9

    if-ne v0, v1, :cond_4

    .line 137
    new-instance v0, Llc;

    invoke-direct {v0, p0}, Llc;-><init>(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 140
    :cond_4
    new-instance v0, Lld;

    invoke-direct {v0, p0}, Lld;-><init>(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public static b(Lorg/json/JSONArray;)Ljava/util/Map;
    .locals 6
    .parameter

    .prologue
    .line 159
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 160
    :cond_0
    const/4 v0, 0x0

    .line 174
    :goto_0
    return-object v0

    .line 162
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 163
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 164
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-lt v2, v3, :cond_2

    move-object v0, v1

    .line 174
    goto :goto_0

    .line 165
    :cond_2
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 166
    new-instance v4, Llg;

    invoke-direct {v4, v0}, Llg;-><init>(Lorg/json/JSONObject;)V

    .line 167
    iget v0, v4, Llg;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 168
    if-nez v0, :cond_3

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    iget v5, v4, Llg;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_3
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method
