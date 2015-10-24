.class Laol;
.super Ljava/lang/Object;
.source "SkinTabMgr.java"

# interfaces
.implements Lkz;


# instance fields
.field final synthetic a:Laoj;

.field private b:Laon;

.field private final c:J

.field private final d:J

.field private final e:J


# direct methods
.method private constructor <init>(Laoj;JJJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Laol;->a:Laoj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-wide p2, p0, Laol;->c:J

    .line 213
    iput-wide p4, p0, Laol;->d:J

    .line 214
    iput-wide p6, p0, Laol;->e:J

    .line 215
    return-void
.end method

.method synthetic constructor <init>(Laoj;JJJLaok;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 205
    invoke-direct/range {p0 .. p7}, Laol;-><init>(Laoj;JJJ)V

    return-void
.end method

.method static synthetic a(Laol;Laon;)Laon;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Laol;->b:Laon;

    return-object p1
.end method


# virtual methods
.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 205
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Laol;->a(ILjava/util/List;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 225
    const-string v0, "MaterialCallback onFail"

    invoke-static {v0}, Laoj;->b(Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public a(ILjava/util/List;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 240
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 242
    const/4 v0, 0x0

    .line 243
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llb;

    .line 244
    add-int/lit8 v1, v1, 0x1

    .line 245
    const/16 v4, 0x14

    if-le v1, v4, :cond_1

    .line 246
    const-string v0, "ignore other item cause the group is large than 20"

    invoke-static {v0}, Laoj;->b(Ljava/lang/String;)V

    .line 264
    :cond_0
    iget-object v0, p0, Laol;->b:Laon;

    iput-object v2, v0, Laon;->a:Ljava/util/ArrayList;

    .line 265
    iget-object v0, p0, Laol;->a:Laoj;

    invoke-static {v0}, Laoj;->a(Laoj;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    iget-wide v2, p0, Laol;->e:J

    long-to-int v2, v2

    const/4 v3, -0x1

    iget-object v4, p0, Laol;->b:Laon;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 267
    const-string v0, "MaterialCallback onSuccess"

    invoke-static {v0}, Laoj;->b(Ljava/lang/String;)V

    .line 268
    return-void

    .line 255
    :cond_1
    :try_start_0
    iget-object v4, v0, Llb;->f:Lorg/json/JSONObject;

    const-string v5, "pid"

    iget-wide v6, p0, Laol;->c:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 256
    iget-object v4, v0, Llb;->f:Lorg/json/JSONObject;

    const-string v5, "tid"

    iget-wide v6, p0, Laol;->d:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 257
    iget-object v4, v0, Llb;->f:Lorg/json/JSONObject;

    const-string v5, "gid"

    iget-wide v6, p0, Laol;->e:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 258
    new-instance v4, Laev;

    iget-object v0, v0, Llb;->f:Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Laev;-><init>(Lorg/json/JSONObject;)V

    .line 259
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 205
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Laol;->a(Ljava/lang/Exception;Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/lang/Exception;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 219
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 220
    const-string v0, "MaterialCallback onException"

    invoke-static {v0}, Laoj;->b(Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public a(Ljava/util/concurrent/Future;)V
    .locals 1
    .parameter

    .prologue
    .line 235
    const-string v0, "MaterialCallback onSubmit"

    invoke-static {v0}, Laoj;->b(Ljava/lang/String;)V

    .line 236
    return-void
.end method
