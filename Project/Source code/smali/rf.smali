.class public Lrf;
.super Lz;
.source "DxFragmentActivity.java"


# instance fields
.field a:Ljava/util/ArrayList;

.field b:Landroid/content/Context;

.field final synthetic c:Lrd;


# direct methods
.method public constructor <init>(Lrd;Landroid/content/Context;Lt;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 50
    iput-object p1, p0, Lrf;->c:Lrd;

    .line 51
    invoke-direct {p0, p3}, Lz;-><init>(Lt;)V

    .line 47
    iput-object v0, p0, Lrf;->a:Ljava/util/ArrayList;

    .line 48
    iput-object v0, p0, Lrf;->b:Landroid/content/Context;

    .line 52
    iput-object p4, p0, Lrf;->a:Ljava/util/ArrayList;

    .line 53
    iput-object p2, p0, Lrf;->b:Landroid/content/Context;

    .line 54
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 70
    const/4 v0, -0x2

    return v0
.end method

.method public a(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 58
    .line 59
    iget-object v0, p0, Lrf;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lrf;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 60
    iget-object v0, p0, Lrf;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/common/ui/fragment/TabInfo;

    .line 61
    if-nez v0, :cond_0

    .line 65
    :goto_0
    return-object v1

    .line 63
    :cond_0
    invoke-virtual {v0}, Lcom/dianxinos/common/ui/fragment/TabInfo;->c()Lrc;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 65
    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lrf;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/common/ui/fragment/TabInfo;

    .line 83
    invoke-super {p0, p1, p2}, Lz;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrc;

    .line 84
    iput-object v1, v0, Lcom/dianxinos/common/ui/fragment/TabInfo;->b:Lrc;

    .line 85
    return-object v1
.end method

.method public b()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lrf;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrf;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 76
    iget-object v0, p0, Lrf;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 77
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
