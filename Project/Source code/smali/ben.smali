.class public abstract Lben;
.super Ljava/lang/Object;
.source "AbstractTool.java"


# instance fields
.field protected a:Lbdr;

.field protected b:Lbei;


# direct methods
.method public constructor <init>(Lbdr;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lben;->a:Lbdr;

    .line 38
    instance-of v0, p1, Lbdz;

    if-eqz v0, :cond_0

    .line 39
    check-cast p1, Lbdz;

    invoke-virtual {p1}, Lbdz;->c()Lbei;

    move-result-object v0

    iput-object v0, p0, Lben;->b:Lbei;

    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(DDI)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lben;->b:Lbei;

    invoke-virtual {v0, p1, p2, p5}, Lbei;->a(DI)V

    .line 96
    iget-object v0, p0, Lben;->b:Lbei;

    invoke-virtual {v0, p3, p4, p5}, Lbei;->b(DI)V

    .line 97
    return-void
.end method

.method public a([DI)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 64
    iget-object v0, p0, Lben;->a:Lbdr;

    instance-of v0, v0, Lbdz;

    if-eqz v0, :cond_3

    .line 65
    iget-object v0, p0, Lben;->a:Lbdr;

    check-cast v0, Lbdz;

    invoke-virtual {v0, p2}, Lbdz;->b(I)[D

    move-result-object v0

    .line 66
    if-eqz v0, :cond_3

    .line 67
    iget-object v1, p0, Lben;->b:Lbei;

    invoke-virtual {v1, p2}, Lbei;->h(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    aget-wide v1, v0, v3

    aput-wide v1, p1, v3

    .line 69
    iget-object v1, p0, Lben;->b:Lbei;

    aget-wide v2, p1, v3

    invoke-virtual {v1, v2, v3, p2}, Lbei;->a(DI)V

    .line 71
    :cond_0
    iget-object v1, p0, Lben;->b:Lbei;

    invoke-virtual {v1, p2}, Lbei;->j(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 72
    aget-wide v1, v0, v4

    aput-wide v1, p1, v4

    .line 73
    iget-object v1, p0, Lben;->b:Lbei;

    aget-wide v2, p1, v4

    invoke-virtual {v1, v2, v3, p2}, Lbei;->b(DI)V

    .line 75
    :cond_1
    iget-object v1, p0, Lben;->b:Lbei;

    invoke-virtual {v1, p2}, Lbei;->l(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 76
    aget-wide v1, v0, v5

    aput-wide v1, p1, v5

    .line 77
    iget-object v1, p0, Lben;->b:Lbei;

    aget-wide v2, p1, v5

    invoke-virtual {v1, v2, v3, p2}, Lbei;->c(DI)V

    .line 79
    :cond_2
    iget-object v1, p0, Lben;->b:Lbei;

    invoke-virtual {v1, p2}, Lbei;->n(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 80
    aget-wide v0, v0, v6

    aput-wide v0, p1, v6

    .line 81
    iget-object v0, p0, Lben;->b:Lbei;

    aget-wide v1, p1, v6

    invoke-virtual {v0, v1, v2, p2}, Lbei;->d(DI)V

    .line 85
    :cond_3
    return-void
.end method

.method public a(I)[D
    .locals 10
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lben;->b:Lbei;

    invoke-virtual {v0, p1}, Lbei;->g(I)D

    move-result-wide v0

    .line 51
    iget-object v2, p0, Lben;->b:Lbei;

    invoke-virtual {v2, p1}, Lbei;->i(I)D

    move-result-wide v2

    .line 52
    iget-object v4, p0, Lben;->b:Lbei;

    invoke-virtual {v4, p1}, Lbei;->k(I)D

    move-result-wide v4

    .line 53
    iget-object v6, p0, Lben;->b:Lbei;

    invoke-virtual {v6, p1}, Lbei;->m(I)D

    move-result-wide v6

    .line 54
    const/4 v8, 0x4

    new-array v8, v8, [D

    const/4 v9, 0x0

    aput-wide v0, v8, v9

    const/4 v0, 0x1

    aput-wide v2, v8, v0

    const/4 v0, 0x2

    aput-wide v4, v8, v0

    const/4 v0, 0x3

    aput-wide v6, v8, v0

    return-object v8
.end method

.method protected b(DDI)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lben;->b:Lbei;

    invoke-virtual {v0, p1, p2, p5}, Lbei;->c(DI)V

    .line 108
    iget-object v0, p0, Lben;->b:Lbei;

    invoke-virtual {v0, p3, p4, p5}, Lbei;->d(DI)V

    .line 109
    return-void
.end method
