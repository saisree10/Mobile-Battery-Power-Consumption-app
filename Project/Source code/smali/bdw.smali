.class public abstract Lbdw;
.super Lbdr;
.source "RoundChart.java"


# instance fields
.field protected a:Lbef;

.field protected b:I

.field protected c:I


# virtual methods
.method public a(I)I
    .locals 1
    .parameter

    .prologue
    .line 80
    const/16 v0, 0xa

    return v0
.end method

.method public a()Lbef;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lbdw;->a:Lbef;

    return-object v0
.end method

.method public a(Landroid/graphics/Canvas;Lbeh;FFILandroid/graphics/Paint;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x40a0

    .line 95
    sub-float v2, p4, v1

    const/high16 v0, 0x4120

    add-float v3, p3, v0

    add-float v4, p4, v1

    move-object v0, p1

    move v1, p3

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 96
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lbdw;->b:I

    return v0
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput p1, p0, Lbdw;->b:I

    .line 132
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lbdw;->c:I

    return v0
.end method

.method public c(I)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput p1, p0, Lbdw;->c:I

    .line 141
    return-void
.end method
