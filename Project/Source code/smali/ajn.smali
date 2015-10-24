.class public Lajn;
.super Lajk;
.source "MostUsageAppOpt.java"


# static fields
.field private static a:D


# instance fields
.field private p:Latm;

.field private q:Lats;

.field private r:Lath;

.field private s:Latu;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:I

.field private w:Ljava/util/ArrayList;

.field private x:Z

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    const-wide/high16 v0, 0x4024

    sput-wide v0, Lajn;->a:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lajk;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;)V

    .line 38
    const/16 v0, 0xf

    iput v0, p0, Lajn;->j:I

    .line 39
    invoke-static {p1}, Latm;->a(Landroid/content/Context;)Latm;

    move-result-object v0

    iput-object v0, p0, Lajn;->p:Latm;

    .line 40
    invoke-static {p1}, Lath;->a(Landroid/content/Context;)Lath;

    move-result-object v0

    iput-object v0, p0, Lajn;->r:Lath;

    .line 41
    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    .prologue
    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 45
    iget-boolean v0, p0, Lajn;->x:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lajn;->n:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lajn;->y:Z

    if-eqz v0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iput-boolean v8, p0, Lajn;->y:Z

    .line 49
    iput-boolean v2, p0, Lajn;->n:Z

    .line 50
    iput v2, p0, Lajn;->k:I

    .line 51
    iget-object v0, p0, Lajn;->c:Landroid/content/Context;

    invoke-static {v0}, Laze;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lajn;->w:Ljava/util/ArrayList;

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lajn;->v:I

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lajn;->s:Latu;

    .line 54
    iget-object v0, p0, Lajn;->p:Latm;

    invoke-virtual {v0}, Latm;->b()Lats;

    move-result-object v0

    iput-object v0, p0, Lajn;->q:Lats;

    .line 55
    iget-object v0, p0, Lajn;->q:Lats;

    iget-object v0, v0, Lats;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 56
    if-gtz v3, :cond_2

    .line 57
    iput-boolean v2, p0, Lajn;->n:Z

    .line 58
    iput v7, p0, Lajn;->l:I

    .line 59
    iget-object v0, p0, Lajn;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0318

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lajn;->m:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move v1, v2

    .line 62
    :goto_1
    if-ge v1, v3, :cond_0

    .line 63
    iget-object v0, p0, Lajn;->q:Lats;

    iget-object v0, v0, Lats;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latu;

    iput-object v0, p0, Lajn;->s:Latu;

    .line 64
    iget-object v0, p0, Lajn;->r:Lath;

    iget-object v4, p0, Lajn;->s:Latu;

    iget v4, v4, Latu;->a:I

    iget-object v5, p0, Lajn;->s:Latu;

    iget-object v5, v5, Latu;->b:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lath;->a(ILjava/lang/String;)Lati;

    move-result-object v0

    .line 66
    iget-object v4, v0, Lati;->b:Ljava/lang/String;

    iput-object v4, p0, Lajn;->t:Ljava/lang/String;

    .line 67
    iget-object v4, p0, Lajn;->t:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lajn;->t:Ljava/lang/String;

    const-string v5, "com.dianxinos.dxbs"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lajn;->w:Ljava/util/ArrayList;

    iget-object v5, v0, Lati;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 62
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 72
    :cond_4
    iput v1, p0, Lajn;->v:I

    .line 73
    iget-object v1, p0, Lajn;->s:Latu;

    iget-wide v3, v1, Latu;->e:D

    sget-wide v5, Lajn;->a:D

    cmpg-double v1, v3, v5

    if-gtz v1, :cond_5

    .line 74
    iput-boolean v2, p0, Lajn;->n:Z

    .line 75
    iput v8, p0, Lajn;->l:I

    goto/16 :goto_0

    .line 77
    :cond_5
    iput-boolean v8, p0, Lajn;->n:Z

    .line 78
    iput v7, p0, Lajn;->l:I

    .line 79
    iget-object v0, v0, Lati;->a:Ljava/lang/String;

    iput-object v0, p0, Lajn;->u:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lajn;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a031a

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lajn;->u:Ljava/lang/String;

    aput-object v4, v3, v2

    const-string v4, "%.1f%%"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lajn;->s:Latu;

    iget-wide v6, v6, Latu;->e:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Lazq;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v8

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lajn;->m:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 91
    iget v0, p0, Lajn;->j:I

    iput v0, p0, Lajn;->k:I

    .line 92
    iget-boolean v0, p0, Lajn;->n:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lajn;->l:I

    if-ne v0, v2, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iput v2, p0, Lajn;->l:I

    .line 95
    iget-object v0, p0, Lajn;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a033f

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lajn;->u:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lajn;->m:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lajn;->t:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lajn;->t:Ljava/lang/String;

    const-string v1, "com.dianxinos.dxbs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lajn;->c:Landroid/content/Context;

    iget-object v1, p0, Lajn;->t:Ljava/lang/String;

    invoke-static {v0, v1}, Lazy;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 100
    iget-object v0, p0, Lajn;->s:Latu;

    if-eqz v0, :cond_0

    iget v0, p0, Lajn;->v:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 101
    iget-object v0, p0, Lajn;->p:Latm;

    iget-object v1, p0, Lajn;->s:Latu;

    iget v1, v1, Latu;->a:I

    iget-object v2, p0, Lajn;->s:Latu;

    iget-object v2, v2, Latu;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Latm;->a(ILjava/lang/String;)V

    .line 102
    iget-object v0, p0, Lajn;->q:Lats;

    iget v1, p0, Lajn;->v:I

    invoke-virtual {v0, v1, v4}, Lats;->a(IZ)V

    .line 103
    iget-object v0, p0, Lajn;->q:Lats;

    iget-object v1, p0, Lajn;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lats;->a(Landroid/content/Context;)V

    .line 104
    iget-object v0, p0, Lajn;->q:Lats;

    iget-object v1, p0, Lajn;->c:Landroid/content/Context;

    const/16 v2, 0x14

    const-wide v3, 0x3fb999999999999aL

    invoke-virtual {v0, v1, v2, v3, v4}, Lats;->a(Landroid/content/Context;ID)V

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lajn;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0317

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return-object v0
.end method
