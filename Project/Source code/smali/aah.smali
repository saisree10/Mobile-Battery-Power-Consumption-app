.class public Laah;
.super Landroid/widget/BaseAdapter;
.source "BatteryInfoDetailsActivity.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;

.field private b:Z

.field private c:Ljava/util/ArrayList;

.field private d:Ljava/util/ArrayList;

.field private e:Landroid/content/Context;

.field private f:Landroid/view/LayoutInflater;

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Laah;->a:Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Laah;->b:Z

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laah;->c:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laah;->d:Ljava/util/ArrayList;

    .line 55
    iput-object p2, p0, Laah;->e:Landroid/content/Context;

    .line 56
    iget-object v0, p0, Laah;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Laah;->f:Landroid/view/LayoutInflater;

    .line 57
    return-void
.end method


# virtual methods
.method public a(I)Lacy;
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x3

    .line 121
    if-ne p1, v0, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 125
    :goto_0
    return-object v0

    .line 124
    :cond_0
    if-le p1, v0, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 125
    :cond_1
    iget-object v0, p0, Laah;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacy;

    goto :goto_0
.end method

.method public a()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Laah;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Lacy;)V
    .locals 1
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Laah;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 180
    invoke-virtual {p0}, Laah;->notifyDataSetChanged()V

    .line 181
    return-void
.end method

.method public a(Lacy;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 184
    const/4 v0, 0x3

    if-le p2, v0, :cond_0

    add-int/lit8 p2, p2, -0x1

    .line 185
    :cond_0
    iget-object v0, p0, Laah;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 186
    invoke-virtual {p0}, Laah;->notifyDataSetChanged()V

    .line 187
    return-void
.end method

.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 60
    iget-object v0, p0, Laah;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 62
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

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

    .line 63
    iget-object v3, p0, Laah;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    :cond_0
    iget-boolean v0, p0, Laah;->b:Z

    if-eqz v0, :cond_1

    .line 68
    iput-boolean v1, p0, Laah;->b:Z

    .line 69
    :goto_1
    iget-object v0, p0, Laah;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 70
    iget-object v0, p0, Laah;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacy;

    .line 71
    iget-object v2, p0, Laah;->a:Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;

    invoke-static {v2}, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->a(Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;)[I

    move-result-object v2

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Lacy;->a(I)V

    .line 72
    iget-object v2, p0, Laah;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lacy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 75
    :cond_1
    :goto_2
    iget-object v0, p0, Laah;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 76
    iget-object v0, p0, Laah;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacy;

    .line 77
    iget-object v2, p0, Laah;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lacy;->f()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 78
    iget-object v2, p0, Laah;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lacy;->f()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_2
    iget-object v2, p0, Laah;->a:Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;

    invoke-static {v2}, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->a(Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;)[I

    move-result-object v2

    iget-object v3, p0, Laah;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lacy;->f()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Lacy;->a(I)V

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 83
    :cond_3
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-boolean p1, p0, Laah;->g:Z

    .line 87
    invoke-virtual {p0}, Laah;->notifyDataSetChanged()V

    .line 88
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Laah;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Laah;->a(I)Lacy;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 130
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter

    .prologue
    .line 116
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 135
    if-ne p1, v3, :cond_1

    .line 136
    if-nez p2, :cond_0

    .line 137
    iget-object v0, p0, Laah;->f:Landroid/view/LayoutInflater;

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f030008

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 175
    :cond_0
    :goto_0
    return-object p2

    .line 143
    :cond_1
    if-nez p2, :cond_3

    .line 144
    iget-object v0, p0, Laah;->f:Landroid/view/LayoutInflater;

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f030007

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 145
    new-instance v1, Laai;

    invoke-direct {v1, p0, v2}, Laai;-><init>(Laah;Laac;)V

    .line 146
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070022

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Laai;->a:Landroid/widget/ImageView;

    .line 147
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070023

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Laai;->b:Landroid/widget/TextView;

    .line 148
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070024

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Laai;->c:Landroid/widget/TextView;

    .line 149
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070025

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Laai;->d:Landroid/widget/ImageView;

    .line 150
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 155
    :goto_1
    if-le p1, v3, :cond_2

    add-int/lit8 p1, p1, -0x1

    .line 156
    :cond_2
    iget-object v0, p0, Laah;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacy;

    .line 157
    iget-object v2, v1, Laai;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lacy;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 158
    iget-object v2, v1, Laai;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lacy;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 159
    iget-object v2, v1, Laai;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lacy;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v2, v1, Laai;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lacy;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    invoke-virtual {v0}, Lacy;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 162
    iget-object v2, p0, Laah;->a:Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;

    invoke-virtual {v2}, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v3, 0x7f090090

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 163
    iget-object v3, v1, Laai;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    :goto_2
    iget-boolean v2, p0, Laah;->g:Z

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lacy;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 170
    iget-object v0, v1, Laai;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 152
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laai;

    move-object v1, v0

    goto :goto_1

    .line 165
    :cond_4
    iget-object v2, p0, Laah;->a:Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;

    invoke-virtual {v2}, Lcom/dianxinos/powermanager/BatteryInfoDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v3, 0x7f09006b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 166
    iget-object v3, v1, Laai;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 172
    :cond_5
    iget-object v0, v1, Laai;->d:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 106
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
