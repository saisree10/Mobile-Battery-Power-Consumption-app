.class public Lxp;
.super Ljava/lang/Object;
.source "PowerStatsUtils.java"


# instance fields
.field public a:J

.field public b:J

.field public c:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lxq;
    .locals 3
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lxp;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxq;

    .line 18
    iget v2, v0, Lxq;->a:I

    if-ne v2, p1, :cond_0

    .line 22
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
