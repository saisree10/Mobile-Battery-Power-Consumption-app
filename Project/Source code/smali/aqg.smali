.class public Laqg;
.super Landroid/widget/ArrayAdapter;
.source "SkinListAdapter.java"

# interfaces
.implements Laet;


# instance fields
.field private a:Laeu;

.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Laeu;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 58
    iput-object p1, p0, Laqg;->b:Landroid/content/Context;

    .line 59
    iget-object v0, p0, Laqg;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Laqg;->c:Landroid/view/LayoutInflater;

    .line 60
    iget-object v0, p0, Laqg;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v1, 0x7f080256

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Laqg;->e:I

    .line 62
    iget-object v0, p0, Laqg;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v1, 0x7f080257

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Laqg;->d:I

    .line 64
    iput-object p2, p0, Laqg;->a:Laeu;

    .line 65
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 155
    invoke-virtual {p0}, Laqg;->notifyDataSetChanged()V

    .line 156
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 149
    invoke-virtual {p0}, Laqg;->notifyDataSetChanged()V

    .line 150
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 2
    .parameter

    .prologue
    .line 68
    if-nez p1, :cond_0

    .line 77
    :goto_0
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/ArrayAdapter;->setNotifyOnChange(Z)V

    .line 72
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 73
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laev;

    .line 74
    invoke-super {p0, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 76
    :cond_1
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 82
    invoke-virtual {p0, p1}, Laqg;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laev;

    .line 83
    if-nez p2, :cond_1

    .line 84
    iget-object v0, p0, Laqg;->c:Landroid/view/LayoutInflater;

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f03007b

    invoke-virtual {v0, v1, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 85
    new-instance v1, Laqi;

    invoke-direct {v1}, Laqi;-><init>()V

    .line 86
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701f6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Laqi;->a:Landroid/widget/ImageView;

    .line 87
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701f9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Laqi;->b:Landroid/widget/TextView;

    .line 88
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701fa

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Laqi;->c:Landroid/view/View;

    .line 89
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701fb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Laqi;->d:Landroid/widget/TextView;

    .line 90
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701fc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Laqi;->e:Landroid/widget/ImageView;

    .line 91
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701f8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Laqi;->g:Landroid/widget/ImageView;

    .line 92
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701fd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Laqi;->f:Landroid/widget/ImageView;

    .line 94
    new-instance v0, Laqh;

    iget-object v2, p0, Laqg;->b:Landroid/content/Context;

    iget-object v3, p0, Laqg;->a:Laeu;

    invoke-direct {v0, v2, v3}, Laqh;-><init>(Landroid/content/Context;Laeu;)V

    iput-object v0, v1, Laqi;->h:Laqf;

    .line 95
    iget-object v0, v1, Laqi;->c:Landroid/view/View;

    iget-object v2, v1, Laqi;->h:Laqf;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v6, v1

    .line 101
    :goto_0
    iget-object v0, v6, Laqi;->h:Laqf;

    invoke-virtual {v0, v5}, Laqf;->a(Laev;)V

    .line 102
    iget-object v0, p0, Laqg;->a:Laeu;

    invoke-interface {v0, v5}, Laeu;->a(Laev;)Laew;

    move-result-object v0

    iput-object v0, v5, Laev;->h:Laew;

    .line 104
    iget-object v0, p0, Laqg;->a:Laeu;

    iget-object v1, v6, Laqi;->c:Landroid/view/View;

    iget-object v2, v6, Laqi;->d:Landroid/widget/TextView;

    iget-object v3, v6, Laqi;->e:Landroid/widget/ImageView;

    iget-object v4, v6, Laqi;->f:Landroid/widget/ImageView;

    invoke-interface/range {v0 .. v5}, Laeu;->a(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Laev;)V

    .line 107
    iget-object v0, v5, Laev;->h:Laew;

    sget-object v1, Laew;->g:Laew;

    if-ne v0, v1, :cond_2

    .line 108
    iget-object v0, v6, Laqi;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    :goto_1
    iget-object v0, v6, Laqi;->a:Landroid/widget/ImageView;

    iget-object v1, v5, Laev;->k:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 116
    iget-object v0, v6, Laqi;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 117
    if-eqz v1, :cond_0

    instance-of v0, v1, Lbas;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 120
    check-cast v0, Lbas;

    iget-object v0, v0, Lbas;->a:Ljava/lang/String;

    iget-object v2, v5, Laev;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    check-cast v1, Lbas;

    invoke-virtual {v1}, Lbas;->a()V

    .line 125
    :cond_0
    invoke-static {}, Lbbk;->a()Lbbk;

    move-result-object v0

    iget-object v1, v5, Laev;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbbk;->a(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_3

    .line 128
    iget-object v1, v6, Laqi;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    :goto_2
    iget-object v0, v6, Laqi;->b:Landroid/widget/TextView;

    iget-object v1, v5, Laev;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    return-object p2

    .line 98
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqi;

    move-object v6, v0

    goto :goto_0

    .line 110
    :cond_2
    iget-object v0, v6, Laqi;->g:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 131
    :cond_3
    new-instance v0, Lbas;

    iget-object v1, v5, Laev;->k:Ljava/lang/String;

    invoke-direct {v0, v1}, Lbas;-><init>(Ljava/lang/String;)V

    .line 132
    iget-object v1, v6, Laqi;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    iget-object v1, v6, Laqi;->a:Landroid/widget/ImageView;

    iget v2, p0, Laqg;->e:I

    iget v3, p0, Laqg;->d:I

    invoke-virtual {v0, v1, v2, v3}, Lbas;->a(Landroid/widget/ImageView;II)V

    goto :goto_2
.end method
