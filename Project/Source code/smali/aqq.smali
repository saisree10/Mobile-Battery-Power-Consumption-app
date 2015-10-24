.class public final Laqq;
.super Ljava/lang/Object;
.source "SkinShopViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Laqw;Laqw;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 109
    iget v0, p1, Laqw;->b:I

    iget v1, p2, Laqw;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 106
    check-cast p1, Laqw;

    check-cast p2, Laqw;

    invoke-virtual {p0, p1, p2}, Laqq;->a(Laqw;Laqw;)I

    move-result v0

    return v0
.end method
