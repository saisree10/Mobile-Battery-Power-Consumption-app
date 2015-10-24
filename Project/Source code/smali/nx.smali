.class Lnx;
.super Lnv;
.source "CmsDataPuller.java"


# instance fields
.field final synthetic a:Lnt;

.field private b:Ljava/lang/String;

.field private c:Lod;


# direct methods
.method public constructor <init>(Lnt;Lod;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lnx;->a:Lnt;

    invoke-direct {p0}, Lnv;-><init>()V

    .line 133
    iput-object p2, p0, Lnx;->c:Lod;

    .line 134
    iget-object v0, p2, Lod;->a:Ljava/lang/String;

    iput-object v0, p0, Lnx;->b:Ljava/lang/String;

    .line 135
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lnx;->b:Ljava/lang/String;

    const-string v1, "[Project]"

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

    .line 169
    iget-object v0, p0, Lnx;->a:Lnt;

    iget-object v1, p0, Lnx;->c:Lod;

    const/16 v2, 0x194

    invoke-virtual {v0, v1, v2}, Lnt;->a(Lod;I)V

    .line 172
    iget-object v0, p0, Lnx;->a:Lnt;

    iget-object v0, v0, Lnt;->b:Landroid/content/Context;

    invoke-static {v0}, Lpi;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lnx;->a:Lnt;

    iget-object v0, v0, Lnt;->b:Landroid/content/Context;

    iget-object v1, p0, Lnx;->b:Ljava/lang/String;

    const-string v2, "404"

    invoke-static {v0, v1, v2}, Lob;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lnx;->a:Lnt;

    iget-object v0, v0, Lnt;->b:Landroid/content/Context;

    iget-object v1, p0, Lnx;->b:Ljava/lang/String;

    const-string v2, "nn"

    invoke-static {v0, v1, v2}, Lob;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic a(ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 128
    check-cast p2, Llj;

    invoke-virtual {p0, p1, p2}, Lnx;->a(ILlj;)V

    return-void
.end method

.method public a(ILlj;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x193

    .line 139
    invoke-virtual {p2}, Llj;->a()I

    move-result v0

    .line 140
    iget-object v1, p0, Lnx;->b:Ljava/lang/String;

    const-string v2, "[Project]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " pid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p2, Llj;->a:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lnt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lnx;->c:Lod;

    invoke-virtual {v1, p2}, Lod;->a(Llj;)V

    .line 142
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 144
    iget-object v0, p0, Lnx;->a:Lnt;

    iget-object v1, p0, Lnx;->c:Lod;

    invoke-virtual {v0, v1, v6}, Lnt;->a(Lod;I)V

    .line 163
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p2, Llj;->g:Ljava/util/List;

    .line 149
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llk;

    .line 150
    iget-object v2, p0, Lnx;->b:Ljava/lang/String;

    iget-object v3, v0, Llk;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    iget-object v1, p0, Lnx;->a:Lnt;

    iget-object v2, p0, Lnx;->c:Lod;

    invoke-static {v1, v2, v0}, Lnt;->a(Lnt;Lod;Llk;)V

    goto :goto_0

    .line 159
    :cond_2
    iget-object v0, p0, Lnx;->b:Ljava/lang/String;

    const-string v1, "[Project]"

    const-string v2, " Tag not found on server"

    invoke-static {v0, v1, v2}, Lnt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lnx;->a:Lnt;

    iget-object v1, p0, Lnx;->c:Lod;

    invoke-virtual {v0, v1, v6}, Lnt;->a(Lod;I)V

    goto :goto_0
.end method
