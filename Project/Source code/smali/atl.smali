.class public Latl;
.super Ljava/lang/Object;
.source "PowerStatsEntry.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field protected c:I

.field public d:D

.field public e:D

.field public f:D

.field public g:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x2

    iput v0, p0, Latl;->c:I

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Latl;->g:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 70
    const/4 v0, 0x2

    iput v0, p0, Latl;->c:I

    .line 72
    iput-wide v1, p0, Latl;->d:D

    .line 73
    iput-wide v1, p0, Latl;->e:D

    .line 75
    iget-object v0, p0, Latl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latl;

    .line 76
    invoke-virtual {v0}, Latl;->a()V

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Latl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 79
    return-void
.end method

.method protected a(D)V
    .locals 8
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    .line 126
    iput-wide p1, p0, Latl;->e:D

    .line 128
    iget v0, p0, Latl;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 140
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Latl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v5

    .line 133
    :goto_1
    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latl;

    .line 135
    iget-wide v1, p0, Latl;->d:D

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    iget-wide v1, v0, Latl;->d:D

    iget-wide v6, p0, Latl;->d:D

    div-double/2addr v1, v6

    iget-wide v6, p0, Latl;->e:D

    mul-double/2addr v1, v6

    :goto_2
    invoke-virtual {v0, v1, v2}, Latl;->a(D)V

    goto :goto_1

    :cond_1
    move-wide v1, v3

    goto :goto_2

    .line 139
    :cond_2
    iget-object v0, p0, Latl;->g:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 85
    invoke-virtual {p0}, Latl;->d()V

    .line 86
    const-wide/high16 v0, 0x4059

    invoke-virtual {p0, v0, v1}, Latl;->a(D)V

    .line 87
    return-void
.end method

.method public a(Landroid/content/Context;ID)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    return-void
.end method

.method protected a(Latl;)V
    .locals 4
    .parameter

    .prologue
    .line 53
    iget v0, p1, Latl;->c:I

    iput v0, p0, Latl;->c:I

    .line 55
    iget-wide v0, p1, Latl;->d:D

    iput-wide v0, p0, Latl;->d:D

    .line 56
    iget-wide v0, p1, Latl;->e:D

    iput-wide v0, p0, Latl;->e:D

    .line 58
    iget-object v0, p0, Latl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 59
    iget-object v0, p1, Latl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 60
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 61
    iget-object v3, p0, Latl;->g:Ljava/util/ArrayList;

    iget-object v0, p1, Latl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latl;

    invoke-virtual {v0}, Latl;->b()Latl;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 63
    :cond_0
    return-void
.end method

.method public b()Latl;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Latl;->c()Latl;

    move-result-object v0

    .line 44
    invoke-virtual {v0, p0}, Latl;->a(Latl;)V

    .line 45
    return-object v0
.end method

.method public b(Latl;)V
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Latl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method

.method protected c()Latl;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Latl;

    invoke-direct {v0}, Latl;-><init>()V

    return-object v0
.end method

.method protected c(Latl;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Latl;->b()Latl;

    move-result-object v0

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 27
    check-cast p1, Latl;

    invoke-virtual {p0, p1}, Latl;->d(Latl;)I

    move-result v0

    return v0
.end method

.method public d(Latl;)I
    .locals 4
    .parameter

    .prologue
    .line 148
    iget-wide v0, p1, Latl;->e:D

    iget-wide v2, p0, Latl;->e:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p1, Latl;->e:D

    iget-wide v2, p0, Latl;->e:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d()V
    .locals 6

    .prologue
    .line 107
    iget v0, p0, Latl;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 118
    :cond_0
    return-void

    .line 111
    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Latl;->d:D

    .line 112
    iget-object v0, p0, Latl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 113
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latl;

    .line 115
    invoke-virtual {v0}, Latl;->d()V

    .line 116
    iget-wide v2, p0, Latl;->d:D

    iget-wide v4, v0, Latl;->d:D

    add-double/2addr v2, v4

    iput-wide v2, p0, Latl;->d:D

    goto :goto_0
.end method
