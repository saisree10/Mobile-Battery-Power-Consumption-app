.class public Lbel;
.super Ljava/lang/Object;
.source "XYSeriesRenderer.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Lbem;

.field private b:I

.field private c:[I


# direct methods
.method public constructor <init>(Lbem;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/16 v0, 0x7d

    const/16 v1, 0xc8

    invoke-static {v0, v2, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lbel;->b:I

    .line 63
    iput-object p1, p0, Lbel;->a:Lbem;

    .line 64
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lbel;->b:I

    return v0
.end method

.method public b()Lbem;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lbel;->a:Lbem;

    return-object v0
.end method

.method public c()[I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lbel;->c:[I

    return-object v0
.end method
