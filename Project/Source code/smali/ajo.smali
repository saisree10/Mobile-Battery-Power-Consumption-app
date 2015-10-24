.class public Lajo;
.super Lajk;
.source "RunAppOpt.java"


# instance fields
.field private a:Z

.field private p:Z

.field private q:Landroid/view/View;

.field private r:Lcom/dianxinos/powermanager/ui/RunAppBackView;

.field private s:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lajk;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;)V

    .line 29
    const/16 v0, 0x19

    iput v0, p0, Lajo;->j:I

    .line 30
    return-void
.end method

.method static synthetic a(Lajo;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lajo;->q:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lajo;)Lcom/dianxinos/powermanager/ui/RunAppBackView;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lajo;->r:Lcom/dianxinos/powermanager/ui/RunAppBackView;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 34
    iget-boolean v0, p0, Lajo;->a:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lajo;->n:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lajo;->p:Z

    if-eqz v0, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    iput-boolean v3, p0, Lajo;->p:Z

    .line 38
    iput v4, p0, Lajo;->k:I

    .line 39
    iget-object v0, p0, Lajo;->c:Landroid/content/Context;

    invoke-static {v0}, Laze;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lajo;->s:Ljava/util/ArrayList;

    .line 40
    iget-object v0, p0, Lajo;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 41
    if-lez v0, :cond_2

    iget-object v1, p0, Lajo;->c:Landroid/content/Context;

    invoke-static {v1}, Laaa;->a(Landroid/content/Context;)Laaa;

    move-result-object v1

    invoke-virtual {v1}, Laaa;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 42
    const/4 v1, 0x5

    iput v1, p0, Lajo;->l:I

    .line 43
    iget-object v1, p0, Lajo;->c:Landroid/content/Context;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0315

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lajo;->m:Ljava/lang/String;

    goto :goto_0

    .line 45
    :cond_2
    iput-boolean v4, p0, Lajo;->n:Z

    .line 46
    iput v3, p0, Lajo;->l:I

    .line 47
    iget-object v0, p0, Lajo;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0316

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lajo;->m:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Landroid/view/LayoutInflater;)V
    .locals 3
    .parameter

    .prologue
    .line 90
    invoke-super {p0, p1}, Lajk;->a(Landroid/view/LayoutInflater;)V

    .line 91
    iget-boolean v0, p0, Lajo;->n:Z

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lajo;->f:Landroid/view/View;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0700b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lajo;->q:Landroid/view/View;

    .line 93
    iget-object v0, p0, Lajo;->f:Landroid/view/View;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0700b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/RunAppBackView;

    iput-object v0, p0, Lajo;->r:Lcom/dianxinos/powermanager/ui/RunAppBackView;

    .line 94
    iget-object v0, p0, Lajo;->q:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lajo;->r:Lcom/dianxinos/powermanager/ui/RunAppBackView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/RunAppBackView;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lajo;->r:Lcom/dianxinos/powermanager/ui/RunAppBackView;

    iget-object v1, p0, Lajo;->s:Ljava/util/ArrayList;

    iget-object v2, p0, Lajo;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/dianxinos/powermanager/ui/RunAppBackView;->a(Ljava/util/ArrayList;Landroid/os/Handler;)V

    .line 98
    :cond_0
    return-void
.end method

.method public b()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 58
    iget-boolean v0, p0, Lajo;->n:Z

    if-nez v0, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Lajo;->r:Lcom/dianxinos/powermanager/ui/RunAppBackView;

    new-instance v1, Lajp;

    invoke-direct {v1, p0}, Lajp;-><init>(Lajo;)V

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/RunAppBackView;->a(Lawl;)V

    .line 69
    iget v0, p0, Lajo;->j:I

    iput v0, p0, Lajo;->k:I

    .line 70
    iput-boolean v5, p0, Lajo;->a:Z

    .line 71
    iget-boolean v0, p0, Lajo;->n:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lajo;->l:I

    if-eq v0, v5, :cond_0

    .line 73
    iget-object v0, p0, Lajo;->c:Landroid/content/Context;

    invoke-static {v0}, Laaa;->a(Landroid/content/Context;)Laaa;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-virtual {v0, v1, v5}, Laaa;->a(IZ)I

    .line 74
    iget-object v0, p0, Lajo;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 75
    if-lez v0, :cond_2

    .line 76
    iget-object v1, p0, Lajo;->c:Landroid/content/Context;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a033d

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lajo;->m:Ljava/lang/String;

    .line 80
    :goto_1
    iput v5, p0, Lajo;->l:I

    goto :goto_0

    .line 78
    :cond_2
    iget-object v0, p0, Lajo;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a033e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lajo;->m:Ljava/lang/String;

    goto :goto_1
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lajo;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0314

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lajo;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0344

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
