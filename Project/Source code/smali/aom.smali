.class Laom;
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
    .line 101
    iput-object p1, p0, Laom;->a:Laoj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Laoj;Laok;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-direct {p0, p1}, Laom;-><init>(Laoj;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    check-cast p2, Llj;

    invoke-virtual {p0, p1, p2}, Laom;->a(ILlj;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 135
    const-string v0, "project onFail"

    invoke-static {v0}, Laoj;->b(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public a(ILlj;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 105
    .line 106
    const-string v0, "project onSuccess"

    invoke-static {v0}, Laoj;->b(Ljava/lang/String;)V

    .line 107
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Llj;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 111
    iget-object v0, p2, Llj;->g:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Llk;

    .line 112
    new-instance v6, Laop;

    iget-object v0, p0, Laom;->a:Laoj;

    const/4 v1, 0x0

    invoke-direct {v6, v0, v1}, Laop;-><init>(Laoj;Laok;)V

    .line 113
    const/16 v0, 0x64

    invoke-virtual {v3, v0}, Llk;->a(I)[J

    move-result-object v5

    .line 114
    if-eqz v5, :cond_0

    .line 115
    invoke-static {}, Laoj;->h()Lkl;

    move-result-object v0

    iget-wide v1, p2, Llj;->a:J

    iget-wide v3, v3, Llk;->a:J

    invoke-virtual/range {v0 .. v6}, Lkl;->a(JJ[JLkz;)V

    .line 120
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    check-cast p2, Llj;

    invoke-virtual {p0, p1, p2}, Laom;->a(Ljava/lang/Exception;Llj;)V

    return-void
.end method

.method public a(Ljava/lang/Exception;Llj;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 140
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    const-string v0, "project onException"

    invoke-static {v0}, Laoj;->b(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public a(Ljava/util/concurrent/Future;)V
    .locals 1
    .parameter

    .prologue
    .line 124
    const-string v0, "project onSubmit"

    invoke-static {v0}, Laoj;->b(Ljava/lang/String;)V

    .line 126
    return-void
.end method
