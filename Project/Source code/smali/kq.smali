.class abstract Lkq;
.super Ljava/lang/Object;
.source "CMSFrontRestService.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# instance fields
.field public b:I

.field final synthetic c:Lkl;


# direct methods
.method public constructor <init>(Lkl;)V
    .locals 1
    .parameter

    .prologue
    .line 1255
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lkq;-><init>(Lkl;I)V

    .line 1256
    return-void
.end method

.method public constructor <init>(Lkl;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1258
    iput-object p1, p0, Lkq;->c:Lkl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1252
    const/4 v0, 0x1

    iput v0, p0, Lkq;->b:I

    .line 1259
    iput p2, p0, Lkq;->b:I

    .line 1260
    return-void
.end method


# virtual methods
.method public a(Lkq;)I
    .locals 2
    .parameter

    .prologue
    .line 1264
    iget v0, p0, Lkq;->b:I

    iget v1, p1, Lkq;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lkq;

    invoke-virtual {p0, p1}, Lkq;->a(Lkq;)I

    move-result v0

    return v0
.end method
