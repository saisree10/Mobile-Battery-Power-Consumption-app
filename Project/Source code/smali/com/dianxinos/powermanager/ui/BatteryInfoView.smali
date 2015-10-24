.class public Lcom/dianxinos/powermanager/ui/BatteryInfoView;
.super Landroid/widget/LinearLayout;
.source "BatteryInfoView.java"


# instance fields
.field private final a:I

.field private b:Landroid/view/LayoutInflater;

.field private c:Lacz;

.field private d:Landroid/util/SparseArray;

.field private e:Landroid/util/SparseArray;

.field private f:Ljava/util/ArrayList;

.field private g:Ljava/util/ArrayList;

.field private h:Lacx;

.field private i:Latj;

.field private j:D

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/content/Context;

.field private r:Landroid/view/View;

.field private s:Landroid/view/View;

.field private t:Landroid/view/View;

.field private u:Landroid/view/View;

.field private v:Landroid/view/View;

.field private w:Laud;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->a:I

    .line 35
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->d:Landroid/util/SparseArray;

    .line 36
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->e:Landroid/util/SparseArray;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->f:Ljava/util/ArrayList;

    .line 58
    iput-object p1, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->q:Landroid/content/Context;

    .line 59
    sget-object v0, Lly;->k:Lcom/dianxinos/dxbs/R$styleable;

    sget-object v0, Lcom/dianxinos/dxbs/R$styleable;->MainTitle:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->q:Landroid/content/Context;

    .line 62
    new-instance v0, Latj;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->q:Landroid/content/Context;

    invoke-direct {v0, v1}, Latj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->i:Latj;

    .line 63
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->i:Latj;

    invoke-virtual {v0}, Latj;->getBatteryCapacity()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->j:D

    .line 64
    new-instance v0, Laud;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->q:Landroid/content/Context;

    invoke-direct {v0, v1}, Laud;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->w:Laud;

    .line 65
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->q:Landroid/content/Context;

    invoke-static {v0}, Lacx;->a(Landroid/content/Context;)Lacx;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->h:Lacx;

    .line 66
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->b()V

    .line 67
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->a()V

    .line 68
    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 315
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->q:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a013a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->q:Landroid/content/Context;

    invoke-static {v0, p1}, Lazq;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lazp;->a(Landroid/content/Context;)Lazp;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lazp;->d()Landroid/graphics/Typeface;

    move-result-object v1

    .line 73
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->q:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->b:Landroid/view/LayoutInflater;

    .line 74
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->b:Landroid/view/LayoutInflater;

    sget-object v2, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v2, 0x7f03000c

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 75
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->q:Landroid/content/Context;

    invoke-static {v0}, Lacz;->a(Landroid/content/Context;)Lacz;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->c:Lacz;

    .line 77
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070032

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->r:Landroid/view/View;

    .line 78
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070033

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->k:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 80
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070034

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->l:Landroid/widget/TextView;

    .line 82
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070036

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->s:Landroid/view/View;

    .line 83
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070037

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->m:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 85
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070038

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->n:Landroid/widget/TextView;

    .line 87
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07003a

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->t:Landroid/view/View;

    .line 88
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07003b

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->o:Landroid/widget/TextView;

    .line 89
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 90
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07003c

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->p:Landroid/widget/TextView;

    .line 91
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070035

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->v:Landroid/view/View;

    .line 92
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070039

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->u:Landroid/view/View;

    .line 93
    return-void
.end method

.method private c()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 101
    .line 102
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->r:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 104
    iget-object v3, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v3, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :goto_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_1

    .line 111
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->s:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->v:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 113
    iget-object v3, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v3, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->n:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    add-int/lit8 v1, v1, 0x1

    .line 120
    :goto_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_2

    .line 121
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->t:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->u:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 123
    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->o:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->p:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    :goto_2
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->r:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    move v1, v2

    goto :goto_0

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->v:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->s:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->u:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->t:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private d()V
    .locals 15

    .prologue
    .line 132
    .line 133
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->h:Lacx;

    invoke-virtual {v0}, Lacx;->e()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->g:Ljava/util/ArrayList;

    .line 134
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->c:Lacz;

    invoke-virtual {v0}, Lacz;->c()Ladd;

    move-result-object v4

    .line 135
    const/4 v3, 0x0

    .line 136
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 137
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 140
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->g:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    .line 141
    :goto_0
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->c:Lacz;

    iget v2, v4, Ladd;->g:I

    invoke-virtual {v1, v2}, Lacz;->c(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 142
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->q:Landroid/content/Context;

    iget v2, v4, Ladd;->g:I

    invoke-static {v1, v2}, Lbao;->a(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v5

    .line 143
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0367

    .line 144
    iget v2, v4, Ladd;->g:I

    const/16 v6, 0x1c2

    if-lt v2, v6, :cond_0

    .line 145
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0368

    .line 147
    :cond_0
    iget-object v6, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->d:Landroid/util/SparseArray;

    const/4 v2, 0x1

    new-instance v7, Landroid/util/Pair;

    iget-object v8, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->q:Landroid/content/Context;

    sget-object v9, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v9, 0x7f0a022f

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->q:Landroid/content/Context;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    aget-object v12, v5, v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x1

    aget-object v5, v5, v12

    aput-object v5, v10, v11

    invoke-virtual {v9, v1, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v8, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v3, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 151
    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    move v0, v2

    .line 162
    :goto_1
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->g:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_9

    const/4 v1, 0x1

    .line 163
    :goto_2
    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->c:Lacz;

    iget v2, v4, Ladd;->f:I

    invoke-static {v2}, Lacz;->d(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 164
    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a036a

    .line 165
    iget v3, v4, Ladd;->f:I

    const/16 v5, 0x10cc

    if-gt v3, v5, :cond_2

    iget v3, v4, Ladd;->f:I

    const/16 v5, 0xbb8

    if-ge v3, v5, :cond_3

    .line 166
    :cond_2
    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a036b

    .line 168
    :cond_3
    iget-object v5, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->d:Landroid/util/SparseArray;

    const/4 v3, 0x2

    new-instance v6, Landroid/util/Pair;

    iget-object v7, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->q:Landroid/content/Context;

    sget-object v8, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v8, 0x7f0a022d

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->q:Landroid/content/Context;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, v4, Ladd;->f:I

    int-to-double v11, v11

    const-wide v13, 0x408f400000000000L

    div-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->q:Landroid/content/Context;

    sget-object v12, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v12, 0x7f0a0363

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v8, v2, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v7, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v0, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 174
    if-eqz v1, :cond_4

    .line 175
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->f:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    move v0, v3

    .line 185
    :goto_3
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->g:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    const/4 v1, 0x1

    .line 186
    :goto_4
    iget-wide v2, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->j:D

    const-wide/16 v5, 0x0

    cmpl-double v2, v2, v5

    if-eqz v2, :cond_d

    .line 187
    iget-object v3, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->d:Landroid/util/SparseArray;

    const/4 v2, 0x3

    new-instance v5, Landroid/util/Pair;

    iget-object v6, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->q:Landroid/content/Context;

    sget-object v7, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v7, 0x7f0a022c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->q:Landroid/content/Context;

    sget-object v8, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v8, 0x7f0a0369

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, v4, Ladd;->j:I

    int-to-double v11, v11

    iget-wide v13, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->j:D

    mul-double/2addr v11, v13

    const-wide/high16 v13, 0x4059

    div-double/2addr v11, v13

    double-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->q:Landroid/content/Context;

    sget-object v12, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v12, 0x7f0a0360

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v0, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 196
    if-eqz v1, :cond_1c

    .line 197
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->f:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    .line 207
    :goto_5
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->g:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_f

    const/4 v1, 0x1

    .line 208
    :goto_6
    iget-wide v2, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->j:D

    const-wide/16 v5, 0x0

    cmpl-double v2, v2, v5

    if-eqz v2, :cond_10

    .line 209
    iget-object v3, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->d:Landroid/util/SparseArray;

    const/4 v2, 0x4

    new-instance v5, Landroid/util/Pair;

    iget-object v6, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->q:Landroid/content/Context;

    sget-object v7, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v7, 0x7f0a0247

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->q:Landroid/content/Context;

    sget-object v8, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v8, 0x7f0a0369

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-wide v11, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->j:D

    double-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->q:Landroid/content/Context;

    sget-object v12, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v12, 0x7f0a0360

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v0, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 216
    if-eqz v1, :cond_1b

    .line 217
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->f:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    .line 227
    :goto_7
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->g:Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_12

    const/4 v1, 0x1

    .line 228
    :goto_8
    iget-object v3, v4, Ladd;->h:Ljava/lang/String;

    .line 229
    if-eqz v3, :cond_13

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_13

    .line 230
    iget-object v5, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->d:Landroid/util/SparseArray;

    const/4 v2, 0x5

    new-instance v6, Landroid/util/Pair;

    iget-object v7, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->q:Landroid/content/Context;

    sget-object v8, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v8, 0x7f0a022e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->q:Landroid/content/Context;

    sget-object v9, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v9, 0x7f0a0366

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v7, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v0, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 233
    if-eqz v1, :cond_1a

    .line 234
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->f:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    .line 243
    :goto_9
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->w:Laud;

    invoke-virtual {v1}, Laud;->a()V

    .line 246
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->g:Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_15

    const/4 v1, 0x1

    .line 247
    :goto_a
    sget-boolean v2, Lazw;->i:Z

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->q:Landroid/content/Context;

    invoke-static {v2}, Lazf;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 248
    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->w:Laud;

    iget v3, v4, Ladd;->j:I

    int-to-double v5, v3

    const/4 v3, 0x1

    invoke-virtual {v2, v5, v6, v3}, Laud;->a(DI)I

    move-result v3

    .line 250
    iget-object v5, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->d:Landroid/util/SparseArray;

    const/4 v2, 0x6

    new-instance v6, Landroid/util/Pair;

    iget-object v7, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->q:Landroid/content/Context;

    sget-object v8, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v8, 0x7f0a0137

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v3}, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v7, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v0, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 253
    if-eqz v1, :cond_19

    .line 254
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->f:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    .line 263
    :goto_b
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->w:Laud;

    iget v2, v4, Ladd;->j:I

    int-to-double v2, v2

    const/4 v5, 0x2

    invoke-virtual {v1, v2, v3, v5}, Laud;->a(DI)I

    move-result v1

    .line 265
    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->d:Landroid/util/SparseArray;

    const/4 v3, 0x7

    new-instance v5, Landroid/util/Pair;

    iget-object v6, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->q:Landroid/content/Context;

    sget-object v7, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v7, 0x7f0a0136

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v1}, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v6, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v0, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 269
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->w:Laud;

    iget v1, v4, Ladd;->j:I

    int-to-double v1, v1

    const/4 v5, 0x4

    invoke-virtual {v0, v1, v2, v5}, Laud;->a(DI)I

    move-result v0

    .line 271
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->d:Landroid/util/SparseArray;

    const/16 v2, 0x8

    new-instance v5, Landroid/util/Pair;

    iget-object v6, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->q:Landroid/content/Context;

    sget-object v7, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v7, 0x7f0a0138

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v6, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 275
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->w:Laud;

    iget v1, v4, Ladd;->j:I

    int-to-double v5, v1

    const/4 v1, 0x3

    invoke-virtual {v0, v5, v6, v1}, Laud;->a(DI)I

    move-result v0

    .line 277
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->d:Landroid/util/SparseArray;

    const/16 v3, 0x9

    new-instance v5, Landroid/util/Pair;

    iget-object v6, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->q:Landroid/content/Context;

    sget-object v7, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v7, 0x7f0a0139

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v6, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 281
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->w:Laud;

    iget v1, v4, Ladd;->j:I

    int-to-double v1, v1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4}, Laud;->a(DI)I

    move-result v0

    .line 283
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->d:Landroid/util/SparseArray;

    new-instance v2, Landroid/util/Pair;

    iget-object v4, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->q:Landroid/content/Context;

    sget-object v5, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v5, 0x7f0a0135

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 287
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 288
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 290
    :cond_5
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->e()V

    .line 292
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 293
    const/4 v0, 0x0

    move v1, v0

    :goto_c
    const/4 v0, 0x3

    if-ge v1, v0, :cond_18

    .line 294
    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->e:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->d:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 293
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    .line 140
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 155
    :cond_7
    if-nez v0, :cond_8

    .line 156
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->g:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 158
    :cond_8
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->d:Landroid/util/SparseArray;

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 162
    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 178
    :cond_a
    if-nez v1, :cond_b

    .line 179
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->g:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->g:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 181
    :cond_b
    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->d:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    move v0, v1

    goto/16 :goto_3

    .line 185
    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 200
    :cond_d
    if-nez v1, :cond_e

    .line 201
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->g:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->g:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 203
    :cond_e
    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->d:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    move v0, v1

    goto/16 :goto_5

    .line 207
    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_6

    .line 220
    :cond_10
    if-nez v1, :cond_11

    .line 221
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->g:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->g:Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 223
    :cond_11
    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->d:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    move v0, v1

    goto/16 :goto_7

    .line 227
    :cond_12
    const/4 v1, 0x0

    goto/16 :goto_8

    .line 237
    :cond_13
    if-nez v1, :cond_14

    .line 238
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->g:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->g:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 240
    :cond_14
    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->d:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    move v0, v1

    goto/16 :goto_9

    .line 246
    :cond_15
    const/4 v1, 0x0

    goto/16 :goto_a

    .line 257
    :cond_16
    if-nez v1, :cond_17

    .line 258
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->g:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->g:Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 260
    :cond_17
    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->d:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    move v0, v1

    goto/16 :goto_b

    .line 296
    :cond_18
    return-void

    :cond_19
    move v0, v2

    goto/16 :goto_b

    :cond_1a
    move v0, v2

    goto/16 :goto_9

    :cond_1b
    move v0, v2

    goto/16 :goto_7

    :cond_1c
    move v0, v2

    goto/16 :goto_5
.end method

.method private e()V
    .locals 3

    .prologue
    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 302
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 303
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 306
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 307
    if-lez v0, :cond_1

    .line 308
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->h:Lacx;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lacx;->b(Ljava/lang/String;)V

    .line 312
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->d()V

    .line 97
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/BatteryInfoView;->c()V

    .line 98
    return-void
.end method
