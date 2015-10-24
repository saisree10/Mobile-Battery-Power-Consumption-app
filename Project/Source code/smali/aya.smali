.class public Laya;
.super Landroid/widget/BaseAdapter;
.source "AppPowerUsageListAdapter.java"


# static fields
.field private static j:I

.field private static k:I


# instance fields
.field a:Landroid/view/View$OnClickListener;

.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;

.field private d:Lath;

.field private e:Ljava/util/ArrayList;

.field private f:Ljava/util/HashSet;

.field private g:D

.field private h:I

.field private i:I

.field private l:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 66
    new-instance v0, Layb;

    invoke-direct {v0, p0}, Layb;-><init>(Laya;)V

    iput-object v0, p0, Laya;->l:Ljava/util/Comparator;

    .line 257
    new-instance v0, Layc;

    invoke-direct {v0, p0}, Layc;-><init>(Laya;)V

    iput-object v0, p0, Laya;->a:Landroid/view/View$OnClickListener;

    .line 92
    iput-object p1, p0, Laya;->b:Landroid/content/Context;

    .line 93
    invoke-direct {p0}, Laya;->a()V

    .line 94
    iget-object v0, p0, Laya;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Laya;->c:Landroid/view/LayoutInflater;

    .line 95
    iget-object v0, p0, Laya;->b:Landroid/content/Context;

    invoke-static {v0}, Lath;->a(Landroid/content/Context;)Lath;

    move-result-object v0

    iput-object v0, p0, Laya;->d:Lath;

    .line 96
    return-void
.end method

.method static synthetic a(Laya;)Lath;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Laya;->d:Lath;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x5

    const/4 v2, 0x0

    .line 118
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    move v3, v2

    .line 121
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 122
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latu;

    .line 123
    iget-object v6, p0, Laya;->d:Lath;

    iget v7, v0, Latu;->a:I

    iget-object v8, v0, Latu;->b:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lath;->a(ILjava/lang/String;)Lati;

    move-result-object v6

    .line 125
    iget-object v6, v6, Lati;->b:Ljava/lang/String;

    invoke-static {v6, p1}, Lazy;->b(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 126
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 128
    add-int/lit8 v3, v3, 0x1

    .line 130
    :cond_0
    add-int/lit8 v0, v1, 0x1

    sub-int/2addr v0, v3

    if-ne v0, v4, :cond_3

    .line 135
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 136
    if-eqz v3, :cond_2

    if-nez v0, :cond_4

    .line 163
    :cond_2
    return-object p2

    .line 121
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 140
    :cond_4
    if-lt v0, v4, :cond_5

    move v1, v4

    :goto_1
    move v0, v2

    .line 142
    :goto_2
    if-ge v0, v3, :cond_6

    .line 143
    add-int v4, v1, v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p2, v4, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move v1, v0

    .line 140
    goto :goto_1

    .line 145
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    move v5, v1

    .line 148
    :goto_3
    add-int v0, v1, v3

    if-ge v5, v0, :cond_2

    .line 149
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latu;

    iget-wide v6, v0, Latu;->f:D

    add-int/lit8 v0, v5, -0x1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latu;

    iget-wide v8, v0, Latu;->f:D

    sub-double/2addr v6, v8

    .line 150
    const-wide/16 v8, 0x0

    cmpg-double v0, v6, v8

    if-lez v0, :cond_2

    .line 154
    int-to-double v8, v5

    div-double v8, v6, v8

    move v4, v2

    .line 156
    :goto_4
    if-ge v4, v5, :cond_7

    .line 157
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latu;

    iget-wide v10, v0, Latu;->f:D

    .line 158
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latu;

    add-double/2addr v10, v8

    iput-wide v10, v0, Latu;->f:D

    .line 156
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_4

    .line 160
    :cond_7
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latu;

    iget-wide v8, v0, Latu;->f:D

    .line 161
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latu;

    sub-double v6, v8, v6

    iput-wide v6, v0, Latu;->f:D

    .line 148
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_3
.end method

.method private a()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Laya;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 87
    sget-object v1, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v1, 0x7f090020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Laya;->j:I

    .line 88
    sget-object v1, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v1, 0x7f090036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Laya;->k:I

    .line 89
    return-void
.end method

.method static synthetic a(Laya;Layd;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Laya;->a(Layd;)V

    return-void
.end method

.method private a(Layd;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 266
    iget v1, p1, Layd;->g:I

    .line 267
    iget-object v0, p0, Laya;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latu;

    .line 273
    iget-object v2, p0, Laya;->d:Lath;

    iget v3, v0, Latu;->a:I

    iget-object v0, v0, Latu;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lath;->a(ILjava/lang/String;)Lati;

    move-result-object v0

    .line 276
    iget-object v2, p0, Laya;->b:Landroid/content/Context;

    const-string v3, "monitor"

    const-string v4, "astop"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 280
    iget-object v2, v0, Lati;->b:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 281
    iget-object v1, v0, Lati;->b:Ljava/lang/String;

    const-string v2, "com.dianxinos.dxbs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    iget-object v0, p0, Laya;->b:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0142

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 283
    iget-object v1, p0, Laya;->b:Landroid/content/Context;

    invoke-static {v1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 309
    :goto_0
    return-void

    .line 285
    :cond_0
    iget-object v1, p0, Laya;->b:Landroid/content/Context;

    iget-object v2, v0, Lati;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lazy;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 286
    iget-object v0, v0, Lati;->b:Ljava/lang/String;

    invoke-static {v0}, Lazf;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 287
    iget-object v1, p0, Laya;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 290
    :cond_1
    iget-object v1, p0, Laya;->b:Landroid/content/Context;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a013e

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, v0, Lati;->a:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 292
    iget-object v2, p0, Laya;->b:Landroid/content/Context;

    invoke-static {v2, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 293
    iget-object v1, p0, Laya;->f:Ljava/util/HashSet;

    iget-object v0, v0, Lati;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 294
    invoke-virtual {p0}, Laya;->notifyDataSetChanged()V

    goto :goto_0

    .line 300
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Laya;->b:Landroid/content/Context;

    const-class v3, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 301
    const-string v2, "position"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 302
    const-string v1, "bar_percent"

    iget-wide v2, p1, Layd;->h:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 304
    const-string v1, "bg"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 305
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 306
    iget-object v1, p0, Laya;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic b(Laya;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Laya;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 167
    iput p1, p0, Laya;->i:I

    .line 168
    iget v0, p0, Laya;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 169
    iget-object v0, p0, Laya;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Laya;->e:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latu;

    iget-wide v0, v0, Latu;->w:D

    :goto_0
    iput-wide v0, p0, Laya;->g:D

    .line 172
    :cond_0
    return-void

    .line 169
    :cond_1
    const-wide/high16 v0, 0x3ff0

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 2
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Laya;->b:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Laya;->a(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Laya;->e:Ljava/util/ArrayList;

    .line 105
    iget-object v0, p0, Laya;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Laya;->e:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latl;

    iget-wide v0, v0, Latl;->f:D

    :goto_0
    iput-wide v0, p0, Laya;->g:D

    .line 106
    iget-object v0, p0, Laya;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Laya;->h:I

    .line 109
    invoke-virtual {p0}, Laya;->notifyDataSetChanged()V

    .line 110
    return-void

    .line 105
    :cond_0
    const-wide/high16 v0, 0x3ff0

    goto :goto_0
.end method

.method public a(Ljava/util/HashSet;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Laya;->f:Ljava/util/HashSet;

    .line 100
    invoke-virtual {p0}, Laya;->notifyDataSetChanged()V

    .line 101
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Laya;->h:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 183
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 189
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 196
    if-nez p2, :cond_3

    .line 197
    iget-object v0, p0, Laya;->c:Landroid/view/LayoutInflater;

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f03005d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 198
    new-instance v1, Layd;

    invoke-direct {v1}, Layd;-><init>()V

    .line 199
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Layd;->a:Landroid/widget/ImageView;

    .line 200
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07001f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Layd;->b:Landroid/widget/TextView;

    .line 201
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701c5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Layd;->c:Landroid/widget/TextView;

    .line 202
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701b6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Layd;->d:Landroid/widget/ImageView;

    .line 203
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701b5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Layd;->e:Landroid/widget/TextView;

    .line 204
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07018c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Layd;->f:Landroid/widget/TextView;

    .line 205
    invoke-static {}, Lbag;->a()Lbag;

    move-result-object v0

    invoke-virtual {v0}, Lbag;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laya;->b:Landroid/content/Context;

    invoke-static {v0}, Lazf;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, v1, Layd;->f:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    :cond_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    .line 214
    :goto_0
    iget-object v0, p0, Laya;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latl;

    .line 215
    iget-wide v3, v0, Latl;->f:D

    .line 216
    iget v1, p0, Laya;->i:I

    const/4 v5, 0x2

    if-ne v1, v5, :cond_1

    move-object v1, v0

    .line 217
    check-cast v1, Latu;

    iget-wide v3, v1, Latu;->w:D

    .line 220
    :cond_1
    check-cast v0, Latu;

    .line 221
    iget-object v1, p0, Laya;->d:Lath;

    iget v5, v0, Latu;->a:I

    iget-object v6, v0, Latu;->b:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lath;->a(ILjava/lang/String;)Lati;

    move-result-object v1

    .line 223
    iput p1, v2, Layd;->g:I

    .line 224
    iget-object v5, v2, Layd;->f:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 225
    iget-object v5, v2, Layd;->a:Landroid/widget/ImageView;

    iget-object v6, v1, Lati;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 226
    iget-object v5, v2, Layd;->b:Landroid/widget/TextView;

    iget-object v6, v1, Lati;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v1, v1, Lati;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Laya;->f:Ljava/util/HashSet;

    if-eqz v1, :cond_2

    iget-object v1, p0, Laya;->f:Ljava/util/HashSet;

    iget-object v0, v0, Latu;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 229
    :cond_2
    iget-object v0, v2, Layd;->c:Landroid/widget/TextView;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0140

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 230
    iget-object v0, v2, Layd;->c:Landroid/widget/TextView;

    sget v1, Laya;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 231
    iget-object v0, v2, Layd;->f:Landroid/widget/TextView;

    sget v1, Laya;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 232
    iget-object v0, v2, Layd;->f:Landroid/widget/TextView;

    iget-object v1, p0, Laya;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    :goto_1
    const-wide v0, 0x4058f999a0000000L

    cmpl-double v0, v3, v0

    if-lez v0, :cond_5

    .line 243
    iget-object v0, v2, Layd;->e:Landroid/widget/TextView;

    const-string v1, "100%"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    :goto_2
    iget-object v0, p0, Laya;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0201e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 248
    iget-object v1, p0, Laya;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v5, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v5, 0x7f0201e5

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 249
    iget-wide v5, p0, Laya;->g:D

    div-double/2addr v3, v5

    .line 250
    new-instance v5, Lawc;

    invoke-direct {v5, v0, v1, v3, v4}, Lawc;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;D)V

    .line 251
    iget-object v0, v2, Layd;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 252
    iput-wide v3, v2, Layd;->h:D

    .line 254
    return-object p2

    .line 211
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layd;

    move-object v2, v0

    goto/16 :goto_0

    .line 235
    :cond_4
    iget-object v0, v2, Layd;->c:Landroid/widget/TextView;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0141

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 236
    iget-object v0, v2, Layd;->c:Landroid/widget/TextView;

    sget v1, Laya;->k:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 237
    iget-object v0, v2, Layd;->f:Landroid/widget/TextView;

    sget v1, Laya;->k:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 238
    iget-object v0, v2, Layd;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setClickable(Z)V

    .line 239
    iget-object v0, v2, Layd;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setFocusable(Z)V

    goto :goto_1

    .line 245
    :cond_5
    iget-object v0, v2, Layd;->e:Landroid/widget/TextView;

    const-string v1, "%.1f%%"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v1, v5}, Lazq;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
