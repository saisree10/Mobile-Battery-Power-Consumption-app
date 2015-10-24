.class public Lbeh;
.super Ljava/lang/Object;
.source "SimpleSeriesRenderer.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:I

.field private b:Z

.field private c:I

.field private d:F

.field private e:Landroid/graphics/Paint$Align;

.field private f:F

.field private g:Lbee;

.field private h:Z

.field private i:Z

.field private j:Ljava/text/NumberFormat;

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const v0, -0xffff01

    iput v0, p0, Lbeh;->a:I

    .line 33
    const/16 v0, 0x64

    iput v0, p0, Lbeh;->c:I

    .line 35
    const/high16 v0, 0x4120

    iput v0, p0, Lbeh;->d:F

    .line 37
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iput-object v0, p0, Lbeh;->e:Landroid/graphics/Paint$Align;

    .line 39
    const/high16 v0, 0x40a0

    iput v0, p0, Lbeh;->f:F

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbeh;->h:Z

    .line 53
    iput-boolean v1, p0, Lbeh;->i:Z

    .line 59
    iput-boolean v1, p0, Lbeh;->k:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lbeh;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput p1, p0, Lbeh;->a:I

    .line 77
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-boolean p1, p0, Lbeh;->h:Z

    .line 204
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lbeh;->b:Z

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lbeh;->c:I

    return v0
.end method

.method public d()F
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lbeh;->d:F

    return v0
.end method

.method public e()Landroid/graphics/Paint$Align;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lbeh;->e:Landroid/graphics/Paint$Align;

    return-object v0
.end method

.method public f()F
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lbeh;->f:F

    return v0
.end method

.method public g()Lbee;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lbeh;->g:Lbee;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lbeh;->i:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 306
    iget-boolean v0, p0, Lbeh;->k:Z

    return v0
.end method

.method public j()Ljava/text/NumberFormat;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lbeh;->j:Ljava/text/NumberFormat;

    return-object v0
.end method
