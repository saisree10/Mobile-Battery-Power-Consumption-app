.class public Lxl;
.super Ljava/lang/Object;
.source "AverageIntStat.java"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p0, p1}, Lxl;->a(I)V

    .line 11
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lxl;->a:I

    .line 15
    iput p2, p0, Lxl;->b:I

    .line 16
    iput p3, p0, Lxl;->c:I

    .line 17
    iput p4, p0, Lxl;->d:I

    .line 18
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 28
    iput p1, p0, Lxl;->a:I

    .line 29
    iput p1, p0, Lxl;->b:I

    .line 30
    iput p1, p0, Lxl;->c:I

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lxl;->d:I

    .line 32
    return-void
.end method

.method public a(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 35
    iget v0, p0, Lxl;->a:I

    if-eq v0, p2, :cond_0

    iget v0, p0, Lxl;->a:I

    if-le v0, p1, :cond_1

    .line 36
    :cond_0
    iput p1, p0, Lxl;->a:I

    .line 38
    :cond_1
    iget v0, p0, Lxl;->b:I

    if-eq v0, p2, :cond_2

    iget v0, p0, Lxl;->b:I

    if-ge v0, p1, :cond_3

    .line 39
    :cond_2
    iput p1, p0, Lxl;->b:I

    .line 41
    :cond_3
    iget v0, p0, Lxl;->c:I

    if-ne v0, p2, :cond_4

    .line 42
    iput p1, p0, Lxl;->c:I

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lxl;->d:I

    .line 50
    :goto_0
    return-void

    .line 46
    :cond_4
    iget v0, p0, Lxl;->c:I

    int-to-long v0, v0

    iget v2, p0, Lxl;->d:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 47
    iget v2, p0, Lxl;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lxl;->d:I

    .line 48
    iget v2, p0, Lxl;->d:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lxl;->c:I

    goto :goto_0
.end method

.method public a(Lxl;)V
    .locals 6
    .parameter

    .prologue
    .line 53
    iget v0, p0, Lxl;->d:I

    if-nez v0, :cond_1

    .line 54
    iget v0, p1, Lxl;->a:I

    iput v0, p0, Lxl;->a:I

    .line 55
    iget v0, p1, Lxl;->b:I

    iput v0, p0, Lxl;->b:I

    .line 56
    iget v0, p1, Lxl;->c:I

    iput v0, p0, Lxl;->c:I

    .line 57
    iget v0, p1, Lxl;->d:I

    iput v0, p0, Lxl;->d:I

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget v0, p1, Lxl;->d:I

    if-lez v0, :cond_0

    .line 59
    iget v0, p1, Lxl;->a:I

    iget v1, p0, Lxl;->a:I

    if-ge v0, v1, :cond_2

    .line 60
    iget v0, p1, Lxl;->a:I

    iput v0, p0, Lxl;->a:I

    .line 62
    :cond_2
    iget v0, p1, Lxl;->b:I

    iget v1, p0, Lxl;->b:I

    if-le v0, v1, :cond_3

    .line 63
    iget v0, p1, Lxl;->b:I

    iput v0, p0, Lxl;->b:I

    .line 65
    :cond_3
    iget v0, p0, Lxl;->c:I

    int-to-long v0, v0

    iget v2, p0, Lxl;->d:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p1, Lxl;->c:I

    int-to-long v2, v2

    iget v4, p1, Lxl;->d:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 67
    iget v2, p0, Lxl;->d:I

    iget v3, p1, Lxl;->d:I

    add-int/2addr v2, v3

    iput v2, p0, Lxl;->d:I

    .line 68
    iget v2, p0, Lxl;->d:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lxl;->c:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    const-string v1, "AverageIntStat["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, "low="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lxl;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, ", high="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lxl;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, ", average="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lxl;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lxl;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
