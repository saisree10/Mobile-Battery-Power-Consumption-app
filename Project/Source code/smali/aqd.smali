.class public Laqd;
.super Ljava/lang/Object;
.source "OperationSkinPage.java"


# instance fields
.field private a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

.field private b:Laon;

.field private c:Landroid/view/LayoutInflater;

.field private d:Landroid/view/ViewGroup;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/ListView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/TextView;

.field private j:Lbbk;

.field private k:Laqg;

.field private l:I

.field private m:Landroid/view/View;

.field private n:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;Laon;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p2, p0, Laqd;->b:Laon;

    .line 39
    iput-object p1, p0, Laqd;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    .line 40
    iget-object v0, p0, Laqd;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Laqd;->c:Landroid/view/LayoutInflater;

    .line 41
    invoke-static {}, Lbbk;->a()Lbbk;

    move-result-object v0

    iput-object v0, p0, Laqd;->j:Lbbk;

    .line 42
    return-void
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 1
    .parameter

    .prologue
    .line 91
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701f0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Laqd;->h:Landroid/widget/ImageView;

    .line 92
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070018

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laqd;->i:Landroid/widget/TextView;

    .line 93
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070019

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laqd;->g:Landroid/widget/TextView;

    .line 94
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701f2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Laqd;->f:Landroid/widget/ListView;

    .line 95
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701f4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Laqd;->e:Landroid/view/View;

    .line 96
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07013d

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Laqd;->m:Landroid/view/View;

    .line 97
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701f3

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Laqd;->n:Landroid/widget/Button;

    .line 98
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 68
    iget-object v0, p0, Laqd;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Laqd;->j:Lbbk;

    iget-object v1, p0, Laqd;->b:Laon;

    iget-object v1, v1, Laon;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbbk;->a(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    .line 71
    iget-object v1, p0, Laqd;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    :goto_0
    iget-object v0, p0, Laqd;->i:Landroid/widget/TextView;

    iget-object v1, p0, Laqd;->b:Laon;

    iget-object v1, v1, Laon;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Laqd;->g:Landroid/widget/TextView;

    iget-object v1, p0, Laqd;->b:Laon;

    iget-object v1, v1, Laon;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Laqd;->f:Landroid/widget/ListView;

    iget-object v1, p0, Laqd;->k:Laqg;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    iget-object v0, p0, Laqd;->k:Laqg;

    iget-object v1, p0, Laqd;->b:Laon;

    iget-object v1, v1, Laon;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Laqg;->a(Ljava/util/ArrayList;)V

    .line 88
    return-void

    .line 74
    :cond_0
    new-instance v0, Lbas;

    iget-object v1, p0, Laqd;->b:Laon;

    iget-object v1, v1, Laon;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Lbas;-><init>(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Laqd;->h:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    iget-object v1, p0, Laqd;->h:Landroid/widget/ImageView;

    iget-object v2, p0, Laqd;->b:Laon;

    iget-object v2, v2, Laon;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 79
    iget-object v1, p0, Laqd;->h:Landroid/widget/ImageView;

    const/4 v2, 0x1

    iget v3, p0, Laqd;->l:I

    invoke-virtual {v0, v1, v2, v3}, Lbas;->a(Landroid/widget/ImageView;II)V

    goto :goto_0
.end method


# virtual methods
.method public a()Laqg;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Laqd;->k:Laqg;

    return-object v0
.end method

.method public a(ZLandroid/os/Message;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Laqd;->c:Landroid/view/LayoutInflater;

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f03007a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Laqd;->d:Landroid/view/ViewGroup;

    .line 47
    new-instance v0, Laqg;

    iget-object v1, p0, Laqd;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    iget-object v2, p0, Laqd;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-direct {v0, v1, v2}, Laqg;-><init>(Landroid/content/Context;Laeu;)V

    iput-object v0, p0, Laqd;->k:Laqg;

    .line 48
    iget-object v0, p0, Laqd;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v1, 0x7f08025d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Laqd;->l:I

    .line 51
    iget-object v0, p0, Laqd;->d:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Laqd;->a(Landroid/view/ViewGroup;)V

    .line 52
    iget-object v0, p0, Laqd;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    invoke-direct {p0}, Laqd;->c()V

    .line 55
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 56
    iget-object v0, p0, Laqd;->f:Landroid/widget/ListView;

    iget-object v1, p0, Laqd;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 57
    iget-object v0, p0, Laqd;->n:Landroid/widget/Button;

    new-instance v1, Laqe;

    invoke-direct {v1, p0, p2}, Laqe;-><init>(Laqd;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    :cond_0
    return-void
.end method

.method public b()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Laqd;->d:Landroid/view/ViewGroup;

    return-object v0
.end method
