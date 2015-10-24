.class Lbm;
.super Lbr;
.source "ArrayMap.java"


# instance fields
.field final synthetic a:Lbl;


# direct methods
.method constructor <init>(Lbl;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lbm;->a:Lbl;

    invoke-direct {p0}, Lbr;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lbm;->a:Lbl;

    iget v0, v0, Lbl;->h:I

    return v0
.end method

.method protected a(Ljava/lang/Object;)I
    .locals 2
    .parameter

    .prologue
    .line 86
    if-nez p1, :cond_0

    iget-object v0, p0, Lbm;->a:Lbl;

    invoke-virtual {v0}, Lbl;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbm;->a:Lbl;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lbl;->a(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0
.end method

.method protected a(II)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lbm;->a:Lbl;

    iget-object v0, v0, Lbl;->g:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/2addr v1, p2

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lbm;->a:Lbl;

    invoke-virtual {v0, p1, p2}, Lbl;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected a(I)V
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lbm;->a:Lbl;

    invoke-virtual {v0, p1}, Lbl;->d(I)Ljava/lang/Object;

    .line 112
    return-void
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lbm;->a:Lbl;

    invoke-virtual {v0, p1, p2}, Lbl;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-void
.end method

.method protected b(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lbm;->a:Lbl;

    invoke-virtual {v0, p1}, Lbl;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected b()Ljava/util/Map;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lbm;->a:Lbl;

    return-object v0
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lbm;->a:Lbl;

    invoke-virtual {v0}, Lbl;->clear()V

    .line 117
    return-void
.end method
