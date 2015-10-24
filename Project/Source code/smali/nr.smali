.class Lnr;
.super Ljava/lang/Object;
.source "BaseDataPuller.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lnq;


# direct methods
.method constructor <init>(Lnq;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lnr;->c:Lnq;

    iput-object p2, p0, Lnr;->a:Ljava/lang/String;

    iput p3, p0, Lnr;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 200
    const-string v1, "BaseDataPuller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pull icon for missing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnr;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Lnr;->c:Lnq;

    invoke-static {v1}, Lnq;->a(Lnq;)Loq;

    move-result-object v1

    iget-object v2, p0, Lnr;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Loq;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 203
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v2, v0

    move v1, v0

    :goto_0
    if-ge v2, v4, :cond_0

    iget v0, p0, Lnr;->b:I

    if-ge v2, v0, :cond_0

    .line 204
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lou;

    .line 205
    iget-object v5, p0, Lnr;->c:Lnq;

    iget-object v0, v0, Lou;->l:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lnq;->c(Ljava/lang/String;)Z

    move-result v0

    .line 206
    if-eqz v0, :cond_2

    .line 207
    add-int/lit8 v0, v1, 0x1

    .line 203
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 211
    :cond_0
    if-lez v1, :cond_1

    .line 212
    iget-object v0, p0, Lnr;->c:Lnq;

    invoke-static {v0}, Lnq;->a(Lnq;)Loq;

    move-result-object v0

    invoke-virtual {v0}, Loq;->a()V

    .line 213
    iget-object v0, p0, Lnr;->c:Lnq;

    iget-object v2, p0, Lnr;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lnq;->a(Ljava/lang/String;I)V

    .line 215
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method
