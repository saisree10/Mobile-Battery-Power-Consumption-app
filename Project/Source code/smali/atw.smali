.class public Latw;
.super Ljava/lang/Object;
.source "UidStatsEntry.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Latu;Latu;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 97
    iget-wide v0, p2, Latu;->w:D

    iget-wide v2, p1, Latu;->w:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p2, Latu;->w:D

    iget-wide v2, p1, Latu;->w:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 93
    check-cast p1, Latu;

    check-cast p2, Latu;

    invoke-virtual {p0, p1, p2}, Latw;->a(Latu;Latu;)I

    move-result v0

    return v0
.end method
