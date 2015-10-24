.class Latc;
.super Latl;
.source "PowerStatsEntry.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Latl;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Latd;
    .locals 3
    .parameter

    .prologue
    .line 263
    iget-object v0, p0, Latc;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 264
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latd;

    .line 266
    iget v2, v0, Latd;->a:I

    if-ne v2, p1, :cond_0

    .line 273
    :goto_0
    return-object v0

    .line 271
    :cond_1
    new-instance v0, Latd;

    invoke-direct {v0, p1}, Latd;-><init>(I)V

    .line 272
    iget-object v1, p0, Latc;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Landroid/content/Context;ID)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 247
    const/4 v0, 0x0

    .line 248
    iget-object v1, p0, Latc;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    .line 249
    :goto_0
    if-ge v1, v2, :cond_0

    .line 250
    iget-object v0, p0, Latc;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latl;

    iget-wide v3, v0, Latl;->e:D

    cmpg-double v0, v3, p3

    if-gez v0, :cond_1

    .line 254
    :cond_0
    :goto_1
    iget-object v0, p0, Latc;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 255
    iget-object v0, p0, Latc;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 249
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 257
    :cond_2
    return-void
.end method
