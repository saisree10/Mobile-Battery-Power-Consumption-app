.class Laql;
.super Landroid/widget/ArrayAdapter;
.source "SkinShopAdapter.java"


# instance fields
.field final synthetic a:Laqj;

.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Laqj;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Laql;->a:Laqj;

    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 82
    iput-object p2, p0, Laql;->b:Landroid/content/Context;

    .line 83
    iget-object v0, p0, Laql;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Laql;->c:Landroid/view/LayoutInflater;

    .line 84
    return-void
.end method

.method static synthetic a(Laql;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Laql;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 2
    .parameter

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 90
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/ArrayAdapter;->setNotifyOnChange(Z)V

    .line 91
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 92
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqn;

    .line 93
    invoke-super {p0, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 95
    :cond_1
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 101
    invoke-virtual {p0, p1}, Laql;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqn;

    .line 102
    if-nez p2, :cond_0

    .line 103
    iget-object v1, p0, Laql;->c:Landroid/view/LayoutInflater;

    sget-object v2, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v2, 0x7f03007b

    invoke-virtual {v1, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 104
    new-instance v2, Laqi;

    invoke-direct {v2}, Laqi;-><init>()V

    .line 105
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0701f6

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Laqi;->a:Landroid/widget/ImageView;

    .line 106
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0701f9

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Laqi;->b:Landroid/widget/TextView;

    .line 107
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0701fa

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v2, Laqi;->c:Landroid/view/View;

    .line 108
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0701fb

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Laqi;->d:Landroid/widget/TextView;

    .line 109
    iget-object v1, v2, Laqi;->c:Landroid/view/View;

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02041e

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 110
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0701fc

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Laqi;->e:Landroid/widget/ImageView;

    .line 111
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0701f8

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Laqi;->g:Landroid/widget/ImageView;

    .line 112
    new-instance v1, Laqo;

    iget-object v3, p0, Laql;->a:Laqj;

    iget-object v4, p0, Laql;->b:Landroid/content/Context;

    invoke-direct {v1, v3, v4, p1}, Laqo;-><init>(Laqj;Landroid/content/Context;I)V

    iput-object v1, v2, Laqi;->h:Laqf;

    .line 113
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    .line 118
    :goto_0
    iget-object v2, v1, Laqi;->h:Laqf;

    invoke-virtual {v2, p1}, Laqf;->a(I)V

    .line 119
    iget-object v2, v1, Laqi;->a:Landroid/widget/ImageView;

    iget-object v3, v0, Laqn;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 120
    iget-object v2, v1, Laqi;->b:Landroid/widget/TextView;

    iget-object v3, v0, Laqn;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    if-nez p1, :cond_1

    .line 122
    iget-object v2, p0, Laql;->a:Laqj;

    const-string v3, "dt"

    invoke-static {v2, v3, v5}, Laqj;->a(Laqj;Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Laqn;->c:Z

    .line 127
    :goto_1
    iget-boolean v0, v0, Laqn;->c:Z

    if-eqz v0, :cond_3

    .line 128
    iget-object v0, v1, Laqi;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Laql;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, v1, Laqi;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    iget-object v0, v1, Laqi;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    iget-object v0, v1, Laqi;->c:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iget-object v0, v1, Laqi;->d:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, v1, Laqi;->c:Landroid/view/View;

    new-instance v1, Laqm;

    invoke-direct {v1, p0}, Laqm;-><init>(Laql;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    :goto_2
    return-object p2

    .line 115
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laqi;

    goto :goto_0

    .line 124
    :cond_1
    iget-object v2, p0, Laql;->a:Laqj;

    const-string v3, "pt_"

    add-int/lit8 v4, p1, -0x1

    invoke-static {v2, v3, v4}, Laqj;->a(Laqj;Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Laqn;->c:Z

    goto :goto_1

    .line 148
    :cond_2
    iget-object v0, v1, Laqi;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    iget-object v0, v1, Laqi;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    iget-object v0, v1, Laqi;->c:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 153
    :cond_3
    iget-object v0, v1, Laqi;->c:Landroid/view/View;

    iget-object v2, v1, Laqi;->h:Laqf;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, v1, Laqi;->c:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 155
    iget-object v0, v1, Laqi;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 156
    iget-object v0, v1, Laqi;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    iget-object v0, v1, Laqi;->d:Landroid/widget/TextView;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a02b1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 158
    iget-object v0, v1, Laqi;->d:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v3, 0x7f0900ae

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    iget-object v0, v1, Laqi;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    iget-object v0, v1, Laqi;->g:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method
