.class Laop;
.super Ljava/lang/Object;
.source "SkinTabMgr.java"

# interfaces
.implements Lkz;


# instance fields
.field final synthetic a:Laoj;


# direct methods
.method private constructor <init>(Laoj;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Laop;->a:Laoj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Laoj;Laok;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 145
    invoke-direct {p0, p1}, Laop;-><init>(Laoj;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 145
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Laop;->a(ILjava/util/List;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 155
    const-string v0, "group onFail"

    invoke-static {v0}, Laoj;->b(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public a(ILjava/util/List;)V
    .locals 14
    .parameter
    .parameter

    .prologue
    .line 170
    const-string v0, "group onSuccess"

    invoke-static {v0}, Laoj;->b(Ljava/lang/String;)V

    .line 172
    if-eqz p2, :cond_1

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Laop;->a:Laoj;

    invoke-static {v0}, Laoj;->a(Laoj;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 175
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Llh;

    .line 176
    iget-object v0, p0, Laop;->a:Laoj;

    invoke-static {v0}, Laoj;->a(Laoj;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    iget-wide v2, v12, Llh;->a:J

    long-to-int v2, v2

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "group:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v12, Llh;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoj;->b(Ljava/lang/String;)V

    .line 179
    :try_start_0
    new-instance v9, Laon;

    invoke-direct {v9}, Laon;-><init>()V

    .line 180
    iget-object v0, v12, Llh;->d:Ljava/lang/String;

    iput-object v0, v9, Laon;->c:Ljava/lang/String;

    .line 181
    iget-object v0, v12, Llh;->c:Ljava/lang/String;

    iput-object v0, v9, Laon;->b:Ljava/lang/String;

    .line 182
    iget-object v0, v12, Llh;->k:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llg;

    iget-object v0, v0, Llg;->h:Ljava/lang/String;

    iput-object v0, v9, Laon;->d:Ljava/lang/String;

    .line 184
    new-instance v0, Laol;

    iget-object v1, p0, Laop;->a:Laoj;

    iget-wide v2, v12, Llh;->g:J

    iget-wide v4, v12, Llh;->h:J

    iget-wide v6, v12, Llh;->a:J

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Laol;-><init>(Laoj;JJJLaok;)V

    .line 185
    invoke-static {v0, v9}, Laol;->a(Laol;Laon;)Laon;

    .line 189
    invoke-static {}, Laoj;->h()Lkl;

    move-result-object v1

    iget-wide v2, v12, Llh;->g:J

    iget-wide v4, v12, Llh;->h:J

    iget-wide v6, v12, Llh;->a:J

    const/4 v8, 0x1

    const/16 v9, 0x14

    sget-object v10, Lkr;->a:Lkr;

    move-object v11, v0

    invoke-virtual/range {v1 .. v11}, Lkl;->a(JJJIILkr;Lkz;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    iget-object v0, v12, Llh;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llb;

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "material:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Llb;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoj;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 192
    :catch_0
    move-exception v0

    .line 193
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 194
    const-string v0, "invalid data!"

    invoke-static {v0}, Laoj;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_1
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 145
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Laop;->a(Ljava/lang/Exception;Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/lang/Exception;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 149
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 150
    const-string v0, "group onException"

    invoke-static {v0}, Laoj;->b(Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public a(Ljava/util/concurrent/Future;)V
    .locals 1
    .parameter

    .prologue
    .line 165
    const-string v0, "group onSubmit"

    invoke-static {v0}, Laoj;->b(Ljava/lang/String;)V

    .line 166
    return-void
.end method
