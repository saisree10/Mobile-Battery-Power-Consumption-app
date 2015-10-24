.class public Laye;
.super Ljava/lang/Object;
.source "AppsPowerUsageHistory.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Laye;->a:Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Latl;Latl;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 209
    iget-wide v0, p2, Latl;->f:D

    iget-wide v2, p1, Latl;->f:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p2, Latl;->f:D

    iget-wide v2, p1, Latl;->f:D

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
    .line 205
    check-cast p1, Latl;

    check-cast p2, Latl;

    invoke-virtual {p0, p1, p2}, Laye;->a(Latl;Latl;)I

    move-result v0

    return v0
.end method
