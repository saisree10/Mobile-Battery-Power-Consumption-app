.class public Laiu;
.super Lajk;
.source "AppUsageOpt.java"


# instance fields
.field private a:Lats;

.field private p:Lath;

.field private q:Latm;

.field private r:D

.field private s:Z

.field private t:Z

.field private u:Landroid/content/pm/PackageManager;

.field private v:I

.field private w:Ljava/util/ArrayList;

.field private x:Ljava/util/ArrayList;

.field private y:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lajk;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;)V

    .line 49
    const/16 v0, 0x19

    iput v0, p0, Laiu;->j:I

    .line 50
    iget-object v0, p0, Laiu;->c:Landroid/content/Context;

    invoke-static {v0}, Latm;->a(Landroid/content/Context;)Latm;

    move-result-object v0

    iput-object v0, p0, Laiu;->q:Latm;

    .line 51
    invoke-static {p1}, Lath;->a(Landroid/content/Context;)Lath;

    move-result-object v0

    iput-object v0, p0, Laiu;->p:Lath;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laiu;->w:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laiu;->x:Ljava/util/ArrayList;

    .line 54
    return-void
.end method


# virtual methods
.method public a()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 58
    iget-boolean v0, p0, Laiu;->s:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Laiu;->n:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Laiu;->t:Z

    if-eqz v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iput-boolean v9, p0, Laiu;->t:Z

    .line 62
    iput v2, p0, Laiu;->k:I

    .line 63
    iput v2, p0, Laiu;->v:I

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laiu;->r:D

    .line 66
    iget-object v0, p0, Laiu;->c:Landroid/content/Context;

    invoke-static {v0}, Laze;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Laiu;->y:Ljava/util/ArrayList;

    .line 67
    iget-object v0, p0, Laiu;->q:Latm;

    invoke-virtual {v0}, Latm;->b()Lats;

    move-result-object v0

    iput-object v0, p0, Laiu;->a:Lats;

    .line 68
    iget-object v0, p0, Laiu;->a:Lats;

    iget-object v0, v0, Lats;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 69
    if-gtz v3, :cond_2

    .line 70
    iput-boolean v2, p0, Laiu;->n:Z

    .line 71
    iput v10, p0, Laiu;->l:I

    .line 72
    iget-object v0, p0, Laiu;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0318

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laiu;->m:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move v1, v2

    .line 76
    :goto_1
    if-ge v1, v3, :cond_5

    iget v0, p0, Laiu;->v:I

    const/4 v4, 0x5

    if-ge v0, v4, :cond_5

    .line 77
    iget-object v0, p0, Laiu;->a:Lats;

    iget-object v0, v0, Lats;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latu;

    .line 78
    iget-object v4, p0, Laiu;->p:Lath;

    iget v5, v0, Latu;->a:I

    iget-object v6, v0, Latu;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lath;->a(ILjava/lang/String;)Lati;

    move-result-object v4

    .line 80
    iget-object v5, v4, Lati;->b:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v4, Lati;->b:Ljava/lang/String;

    const-string v6, "com.dianxinos.dxbs"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Laiu;->y:Ljava/util/ArrayList;

    iget-object v6, v4, Lati;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 76
    :cond_3
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 85
    :cond_4
    iget v5, p0, Laiu;->v:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Laiu;->v:I

    .line 86
    iget-wide v5, p0, Laiu;->r:D

    iget-wide v7, v0, Latu;->e:D

    add-double/2addr v5, v7

    iput-wide v5, p0, Laiu;->r:D

    .line 87
    iget-object v0, p0, Laiu;->w:Ljava/util/ArrayList;

    iget-object v5, v4, Lati;->b:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Laiu;->x:Ljava/util/ArrayList;

    iget-object v4, v4, Lati;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 92
    :cond_5
    iput v10, p0, Laiu;->l:I

    .line 93
    iget v0, p0, Laiu;->v:I

    if-eqz v0, :cond_6

    iget-wide v0, p0, Laiu;->r:D

    const-wide/high16 v3, 0x4024

    cmpg-double v0, v0, v3

    if-gtz v0, :cond_7

    .line 94
    :cond_6
    iput-boolean v2, p0, Laiu;->n:Z

    goto/16 :goto_0

    .line 96
    :cond_7
    iput-boolean v9, p0, Laiu;->n:Z

    .line 97
    iget-object v0, p0, Laiu;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0319

    new-array v3, v10, [Ljava/lang/Object;

    iget v4, p0, Laiu;->v:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v4, "%.1f%%"

    new-array v5, v9, [Ljava/lang/Object;

    iget-wide v6, p0, Laiu;->r:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Lazq;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v9

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laiu;->m:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public b()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 105
    iget v0, p0, Laiu;->j:I

    iput v0, p0, Laiu;->k:I

    .line 106
    iput-boolean v7, p0, Laiu;->s:Z

    .line 107
    iget-boolean v0, p0, Laiu;->n:Z

    if-eqz v0, :cond_0

    iget v0, p0, Laiu;->l:I

    if-ne v0, v7, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Laiu;->u:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_2

    .line 112
    iget-object v0, p0, Laiu;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Laiu;->u:Landroid/content/pm/PackageManager;

    .line 115
    :cond_2
    iget-object v0, p0, Laiu;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 116
    if-eqz v0, :cond_3

    .line 118
    iget-object v2, p0, Laiu;->c:Landroid/content/Context;

    invoke-static {v2, v0}, Lazy;->b(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_1

    .line 121
    :cond_4
    iget-object v0, p0, Laiu;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0340

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Laiu;->v:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    const-string v3, "%.1f%%"

    new-array v4, v7, [Ljava/lang/Object;

    iget-wide v5, p0, Laiu;->r:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Lazq;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laiu;->m:Ljava/lang/String;

    .line 123
    iput v7, p0, Laiu;->l:I

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Laiu;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0317

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Laiu;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0344

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
