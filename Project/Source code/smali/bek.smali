.class public Lbek;
.super Lbeh;
.source "XYSeriesRenderer.java"


# instance fields
.field private a:Z

.field private b:Ljava/util/List;

.field private c:Lbdv;

.field private d:F

.field private e:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    .line 30
    invoke-direct {p0}, Lbeh;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbek;->a:Z

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbek;->b:Ljava/util/List;

    .line 36
    sget-object v0, Lbdv;->f:Lbdv;

    iput-object v0, p0, Lbek;->c:Lbdv;

    .line 38
    iput v1, p0, Lbek;->d:F

    .line 40
    iput v1, p0, Lbek;->e:F

    .line 45
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput p1, p0, Lbek;->d:F

    .line 230
    return-void
.end method

.method public a(Lbdv;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lbek;->c:Lbdv;

    .line 212
    return-void
.end method

.method public b(F)V
    .locals 0
    .parameter

    .prologue
    .line 247
    iput p1, p0, Lbek;->e:F

    .line 248
    return-void
.end method

.method public b(Z)V
    .locals 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lbek;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 137
    if-eqz p1, :cond_0

    .line 138
    iget-object v0, p0, Lbek;->b:Ljava/util/List;

    new-instance v1, Lbel;

    sget-object v2, Lbem;->b:Lbem;

    invoke-direct {v1, v2}, Lbel;-><init>(Lbem;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lbek;->b:Ljava/util/List;

    new-instance v1, Lbel;

    sget-object v2, Lbem;->a:Lbem;

    invoke-direct {v1, v2}, Lbel;-><init>(Lbem;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-boolean p1, p0, Lbek;->a:Z

    .line 180
    return-void
.end method

.method public k()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lbek;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()[Lbel;
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lbek;->b:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Lbel;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbel;

    return-object v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lbek;->a:Z

    return v0
.end method

.method public n()Lbdv;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lbek;->c:Lbdv;

    return-object v0
.end method

.method public o()F
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lbek;->d:F

    return v0
.end method

.method public p()F
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lbek;->e:F

    return v0
.end method
