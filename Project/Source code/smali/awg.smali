.class public Lawg;
.super Lauu;
.source "RateDialog.java"


# instance fields
.field private c:Landroid/content/Context;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lauu;-><init>(Landroid/content/Context;)V

    .line 21
    iput-object p1, p0, Lawg;->c:Landroid/content/Context;

    .line 22
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lawg;->a(Z)V

    .line 24
    invoke-virtual {p0}, Lawg;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f03006e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 25
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070018

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lawg;->d:Landroid/widget/TextView;

    .line 27
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701d8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lawh;

    invoke-direct {v2, p0}, Lawh;-><init>(Lawg;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701d9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lawi;

    invoke-direct {v2, p0}, Lawi;-><init>(Lawg;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-virtual {p0}, Lawg;->h()V

    .line 51
    invoke-virtual {p0}, Lawg;->i()V

    .line 52
    invoke-virtual {p0, v1}, Lawg;->b(Landroid/view/View;)V

    .line 53
    return-void
.end method

.method static synthetic a(Lawg;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lawg;->c:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lawg;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lawg;->c:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lawg;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 57
    return-void
.end method
