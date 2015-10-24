.class Lnw;
.super Lnv;
.source "CmsDataPuller.java"


# instance fields
.field final synthetic a:Lnt;

.field private final b:J

.field private final c:Llk;

.field private final d:Lod;


# direct methods
.method private constructor <init>(Lnt;Lod;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lnw;->a:Lnt;

    invoke-direct {p0}, Lnv;-><init>()V

    .line 222
    iput-object p2, p0, Lnw;->d:Lod;

    .line 223
    iget-object v0, p2, Lod;->g:Llk;

    iput-object v0, p0, Lnw;->c:Llk;

    .line 224
    iget-wide v0, p2, Lod;->e:J

    iput-wide v0, p0, Lnw;->b:J

    .line 225
    return-void
.end method

.method synthetic constructor <init>(Lnt;Lod;Lnu;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 216
    invoke-direct {p0, p1, p2}, Lnw;-><init>(Lnt;Lod;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4
    .parameter

    .prologue
    .line 257
    iget-object v0, p0, Lnw;->c:Llk;

    iget-object v0, v0, Llk;->h:Ljava/lang/String;

    .line 258
    const-string v1, "[Material]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Pull failed: status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lnw;->a:Lnt;

    iget-object v1, p0, Lnw;->d:Lod;

    const/16 v2, 0x193

    invoke-virtual {v0, v1, v2}, Lnt;->a(Lod;I)V

    .line 260
    return-void
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 216
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lnw;->a(ILjava/util/List;)V

    return-void
.end method

.method public a(ILjava/util/List;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 229
    iget-object v0, p0, Lnw;->c:Llk;

    iget-object v2, v0, Llk;->h:Ljava/lang/String;

    .line 230
    const-string v0, "[Material]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Pull success: size = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lnt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 232
    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 233
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llb;

    .line 235
    :try_start_0
    iget-object v5, p0, Lnw;->c:Llk;

    iget-wide v6, p0, Lnw;->b:J

    iget-object v8, v0, Llb;->f:Lorg/json/JSONObject;

    invoke-static {v5, v6, v7, v1, v8}, Lnt;->a(Llk;JILorg/json/JSONObject;)Lou;

    move-result-object v5

    .line 236
    invoke-virtual {v5}, Lou;->a()Z

    move-result v6

    if-nez v6, :cond_0

    .line 237
    const-string v6, "[Material]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Unsupported open type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v5, v5, Lou;->j:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v6, v5}, Lnt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 240
    :cond_0
    iget-object v6, p0, Lnw;->a:Lnt;

    invoke-virtual {v6, v5}, Lnt;->a(Lou;)V

    .line 241
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 242
    :catch_0
    move-exception v5

    .line 243
    const-string v5, "[Material]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Parse json failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, v0, Llb;->f:Lorg/json/JSONObject;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v5, v0}, Lnt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 247
    :cond_1
    const-string v0, "[Material]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Pull completed: size = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lnt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    new-instance v0, Loe;

    iget-object v1, p0, Lnw;->d:Lod;

    const/16 v2, 0x193

    invoke-direct {v0, v1, v2, v3}, Loe;-><init>(Lod;ILjava/util/List;)V

    .line 250
    iget-object v1, p0, Lnw;->a:Lnt;

    iget-object v1, v1, Lnt;->b:Landroid/content/Context;

    iget-object v2, p0, Lnw;->d:Lod;

    iget-object v2, v2, Lod;->a:Ljava/lang/String;

    const-string v3, "sc"

    invoke-static {v1, v2, v3}, Lob;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, Lnw;->a:Lnt;

    invoke-virtual {v1, v0}, Lnt;->a(Loe;)V

    .line 253
    return-void
.end method
