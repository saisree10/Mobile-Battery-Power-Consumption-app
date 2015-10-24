.class public Laiy;
.super Lajk;
.source "CpuOpt.java"


# static fields
.field private static p:I

.field private static q:I

.field private static r:I


# instance fields
.field a:Lajc;

.field private s:Larr;

.field private t:Lazh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    sput v0, Laiy;->p:I

    .line 30
    const/4 v0, 0x2

    sput v0, Laiy;->q:I

    .line 32
    const/4 v0, 0x3

    sput v0, Laiy;->r:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lajk;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;)V

    .line 38
    new-instance v0, Lajc;

    invoke-direct {v0, p0}, Lajc;-><init>(Laiy;)V

    iput-object v0, p0, Laiy;->a:Lajc;

    .line 42
    invoke-static {p1}, Larr;->a(Landroid/content/Context;)Larr;

    move-result-object v0

    iput-object v0, p0, Laiy;->s:Larr;

    .line 43
    invoke-static {p1}, Lazh;->a(Landroid/content/Context;)Lazh;

    move-result-object v0

    iput-object v0, p0, Laiy;->t:Lazh;

    .line 44
    const/4 v0, 0x3

    iput v0, p0, Laiy;->j:I

    .line 45
    return-void
.end method

.method static synthetic h()I
    .locals 1

    .prologue
    .line 26
    sget v0, Laiy;->r:I

    return v0
.end method

.method static synthetic i()I
    .locals 1

    .prologue
    .line 26
    sget v0, Laiy;->q:I

    return v0
.end method

.method static synthetic j()I
    .locals 1

    .prologue
    .line 26
    sget v0, Laiy;->p:I

    return v0
.end method

.method private o()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 60
    const/4 v0, 0x0

    .line 61
    iget-object v1, p0, Laiy;->t:Lazh;

    invoke-virtual {v1}, Lazh;->e()V

    .line 62
    iget-object v1, p0, Laiy;->t:Lazh;

    invoke-virtual {v1}, Lazh;->a()I

    move-result v1

    if-lez v1, :cond_0

    .line 63
    iget-object v0, p0, Laiy;->t:Lazh;

    invoke-virtual {v0, v4}, Lazh;->d(I)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    iget-object v0, p0, Laiy;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0335

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Laiy;->c:Landroid/content/Context;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0334

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private p()V
    .locals 3

    .prologue
    .line 113
    new-instance v0, Lauu;

    iget-object v1, p0, Laiy;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lauu;-><init>(Landroid/content/Context;)V

    .line 114
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a018d

    invoke-virtual {v0, v1}, Lauu;->setTitle(I)V

    .line 115
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a018f

    invoke-virtual {v0, v1}, Lauu;->c(I)V

    .line 116
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a018e

    new-instance v2, Laja;

    invoke-direct {v2, p0}, Laja;-><init>(Laiy;)V

    invoke-virtual {v0, v1, v2}, Lauu;->a(ILandroid/view/View$OnClickListener;)V

    .line 123
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0114

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lauu;->b(ILandroid/view/View$OnClickListener;)V

    .line 124
    invoke-virtual {v0}, Lauu;->show()V

    .line 125
    return-void
.end method

.method private q()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 128
    iget-object v0, p0, Laiy;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lazh;->a(Landroid/content/Context;)Lazh;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lazh;->e()V

    .line 130
    invoke-virtual {v0}, Lazh;->a()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, v3}, Lazh;->a(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Laiy;->c:Landroid/content/Context;

    invoke-static {v0}, Larr;->a(Landroid/content/Context;)Larr;

    move-result-object v0

    .line 132
    invoke-virtual {v0, v2}, Larr;->k(I)V

    .line 134
    iget-object v0, p0, Laiy;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0341

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laiy;->m:Ljava/lang/String;

    .line 135
    iput v2, p0, Laiy;->l:I

    .line 136
    iget v0, p0, Laiy;->j:I

    iput v0, p0, Laiy;->k:I

    .line 141
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Laiy;->c:Landroid/content/Context;

    iget-object v1, p0, Laiy;->c:Landroid/content/Context;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0192

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private r()V
    .locals 2

    .prologue
    .line 144
    invoke-static {}, Lbag;->a()Lbag;

    move-result-object v0

    new-instance v1, Lajb;

    invoke-direct {v1, p0}, Lajb;-><init>(Laiy;)V

    invoke-virtual {v0, v1}, Lbag;->a(Lbai;)V

    .line 163
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 49
    iget-object v0, p0, Laiy;->s:Larr;

    invoke-virtual {v0}, Larr;->r()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 50
    iput v1, p0, Laiy;->l:I

    .line 51
    iget-object v0, p0, Laiy;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0336

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laiy;->m:Ljava/lang/String;

    .line 52
    iget v0, p0, Laiy;->j:I

    iput v0, p0, Laiy;->k:I

    .line 57
    :goto_0
    return-void

    .line 54
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Laiy;->l:I

    .line 55
    invoke-direct {p0}, Laiy;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laiy;->m:Ljava/lang/String;

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Laiy;->q()V

    .line 75
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Laiy;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0333

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Laiy;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0343

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected e()V
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Laiy;->f()V

    .line 91
    new-instance v0, Laiz;

    invoke-direct {v0, p0}, Laiz;-><init>(Laiy;)V

    invoke-static {v0}, Layv;->a(Ljava/lang/Runnable;)V

    .line 100
    return-void
.end method

.method protected f()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Laiy;->f:Landroid/view/View;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0700b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 195
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Laiy;->h:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 197
    invoke-super {p0}, Lajk;->f()V

    .line 198
    return-void
.end method

.method public g()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 202
    iget-object v0, p0, Laiy;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Laiy;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Laiy;->f:Landroid/view/View;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0700b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 204
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Laiy;->h:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 206
    iget v0, p0, Laiy;->l:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 207
    iget-object v0, p0, Laiy;->i:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020198

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 211
    :goto_0
    iget-object v0, p0, Laiy;->i:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 212
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Laiy;->i:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f02019a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Laiy;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbag;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-direct {p0}, Laiy;->p()V

    .line 86
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-static {}, Lbag;->a()Lbag;

    move-result-object v0

    invoke-virtual {v0}, Lbag;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {p0}, Laiy;->e()V

    goto :goto_0

    .line 84
    :cond_1
    invoke-direct {p0}, Laiy;->r()V

    goto :goto_0
.end method
