.class Layb;
.super Ljava/lang/Object;
.source "AppPowerUsageListAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Laya;


# direct methods
.method constructor <init>(Laya;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Layb;->a:Laya;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Latu;Latu;)I
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 69
    iget-wide v3, p1, Latu;->f:D

    iget-wide v5, p2, Latu;->f:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_4

    .line 70
    iget-object v3, p0, Layb;->a:Laya;

    invoke-static {v3}, Laya;->a(Laya;)Lath;

    move-result-object v3

    iget v4, p1, Latu;->a:I

    iget-object v5, p1, Latu;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lath;->a(ILjava/lang/String;)Lati;

    move-result-object v3

    .line 72
    iget-object v4, p0, Layb;->a:Laya;

    invoke-static {v4}, Laya;->a(Laya;)Lath;

    move-result-object v4

    iget v5, p2, Latu;->a:I

    iget-object v6, p2, Latu;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lath;->a(ILjava/lang/String;)Lati;

    move-result-object v4

    .line 74
    iget-object v3, v3, Lati;->b:Ljava/lang/String;

    iget-object v5, p0, Layb;->a:Laya;

    invoke-static {v5}, Laya;->b(Laya;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v3, v5}, Lazy;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    .line 75
    iget-object v4, v4, Lati;->b:Ljava/lang/String;

    iget-object v5, p0, Layb;->a:Laya;

    invoke-static {v5}, Laya;->b(Laya;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lazy;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v4

    .line 76
    if-nez v3, :cond_0

    if-eqz v4, :cond_1

    :cond_0
    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    .line 80
    :cond_1
    :goto_0
    return v0

    .line 76
    :cond_2
    if-eqz v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    .line 77
    :cond_4
    iget-wide v3, p1, Latu;->f:D

    iget-wide v5, p2, Latu;->f:D

    cmpg-double v0, v3, v5

    if-gez v0, :cond_5

    move v0, v1

    .line 78
    goto :goto_0

    :cond_5
    move v0, v2

    .line 80
    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 66
    check-cast p1, Latu;

    check-cast p2, Latu;

    invoke-virtual {p0, p1, p2}, Layb;->a(Latu;Latu;)I

    move-result v0

    return v0
.end method
