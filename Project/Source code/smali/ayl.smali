.class public Layl;
.super Landroid/widget/BaseAdapter;
.source "HardwareUsageListAdapter.java"


# static fields
.field public static final a:[I


# instance fields
.field b:Landroid/view/View$OnClickListener;

.field private c:Landroid/content/Context;

.field private d:Landroid/view/LayoutInflater;

.field private e:Lath;

.field private f:Ljava/util/ArrayList;

.field private g:D

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    const/16 v0, 0x9

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f0201f3

    aput v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f0201f4

    aput v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f0201f5

    aput v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f0201f6

    aput v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f0201f7

    aput v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f0201f8

    aput v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f0201f9

    aput v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f0201fa

    aput v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f0201fb

    aput v2, v0, v1

    sput-object v0, Layl;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 194
    new-instance v0, Laym;

    invoke-direct {v0, p0}, Laym;-><init>(Layl;)V

    iput-object v0, p0, Layl;->b:Landroid/view/View$OnClickListener;

    .line 75
    iput-object p1, p0, Layl;->c:Landroid/content/Context;

    .line 76
    iget-object v0, p0, Layl;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Layl;->d:Landroid/view/LayoutInflater;

    .line 77
    iget-object v0, p0, Layl;->c:Landroid/content/Context;

    invoke-static {v0}, Lath;->a(Landroid/content/Context;)Lath;

    move-result-object v0

    iput-object v0, p0, Layl;->e:Lath;

    .line 78
    return-void
.end method

.method static synthetic a(Layl;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Layl;->c:Landroid/content/Context;

    return-object v0
.end method

.method private a(I)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const v7, 0x7f0a0078

    const/16 v6, 0x9

    const/4 v5, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 159
    const-string v0, ""

    .line 160
    iget-object v1, p0, Layl;->c:Landroid/content/Context;

    invoke-static {v1}, Lamp;->a(Landroid/content/Context;)Lamp;

    move-result-object v1

    .line 161
    invoke-virtual {v1}, Lamp;->g()Lamh;

    move-result-object v1

    .line 162
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Layl;->c:Landroid/content/Context;

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a0077

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v4}, Lamh;->a(I)Lahp;

    move-result-object v1

    invoke-virtual {v1}, Lahp;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    :cond_0
    :goto_0
    return-object v0

    .line 166
    :cond_1
    if-ne p1, v3, :cond_2

    .line 167
    invoke-virtual {v1, v3}, Lamh;->a(I)Lahp;

    move-result-object v0

    invoke-virtual {v0}, Lahp;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 169
    :cond_2
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    .line 170
    invoke-virtual {v1}, Lamh;->l()Lahd;

    move-result-object v0

    invoke-virtual {v0}, Lahd;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 172
    :cond_3
    if-ne p1, v5, :cond_4

    .line 173
    invoke-virtual {v1, v5}, Lamh;->a(I)Lahp;

    move-result-object v0

    invoke-virtual {v0}, Lahp;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 175
    :cond_4
    const/4 v2, 0x7

    if-ne p1, v2, :cond_5

    .line 176
    invoke-virtual {v1, v6}, Lamh;->a(I)Lahp;

    move-result-object v0

    invoke-virtual {v0}, Lahp;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 178
    :cond_5
    if-ne p1, v6, :cond_0

    .line 179
    iget-object v0, p0, Layl;->c:Landroid/content/Context;

    invoke-static {v0}, Lazh;->a(Landroid/content/Context;)Lazh;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Lazh;->e()V

    .line 181
    invoke-virtual {v0}, Lazh;->a()I

    move-result v1

    if-nez v1, :cond_6

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Layl;->c:Landroid/content/Context;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Layl;->c:Landroid/content/Context;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0068

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 186
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Layl;->c:Landroid/content/Context;

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v4}, Lazh;->d(I)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Layl;->c:Landroid/content/Context;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0079

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 2
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Layl;->f:Ljava/util/ArrayList;

    .line 82
    iget-object v0, p0, Layl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Layl;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latl;

    iget-wide v0, v0, Latl;->e:D

    :goto_0
    iput-wide v0, p0, Layl;->g:D

    .line 83
    iget-object v0, p0, Layl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Layl;->h:I

    .line 86
    invoke-virtual {p0}, Layl;->notifyDataSetChanged()V

    .line 87
    return-void

    .line 82
    :cond_0
    const-wide/high16 v0, 0x3ff0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Layl;->h:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 106
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    if-nez p2, :cond_1

    .line 114
    iget-object v0, p0, Layl;->d:Landroid/view/LayoutInflater;

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f030065

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 115
    new-instance v1, Layn;

    invoke-direct {v1}, Layn;-><init>()V

    .line 116
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Layn;->a:Landroid/widget/ImageView;

    .line 117
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07001f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Layn;->b:Landroid/widget/TextView;

    .line 118
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701c5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Layn;->c:Landroid/widget/TextView;

    .line 119
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701b6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Layn;->d:Landroid/widget/ImageView;

    .line 120
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701b5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Layn;->e:Landroid/widget/TextView;

    .line 121
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07018c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Layn;->f:Landroid/widget/ImageView;

    .line 122
    iget-object v0, v1, Layn;->f:Landroid/widget/ImageView;

    iget-object v2, p0, Layl;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 127
    :goto_0
    iput p1, v1, Layn;->g:I

    .line 128
    iget-object v0, p0, Layl;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latl;

    .line 129
    iget-wide v2, v0, Latl;->e:D

    .line 131
    check-cast v0, Latd;

    .line 132
    iget-object v4, v1, Layn;->a:Landroid/widget/ImageView;

    iget v5, v0, Latd;->a:I

    invoke-static {v5}, Latg;->b(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    iget-object v4, v1, Layn;->b:Landroid/widget/TextView;

    iget v5, v0, Latd;->a:I

    invoke-static {v5}, Latg;->a(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 134
    iget-object v4, v1, Layn;->c:Landroid/widget/TextView;

    iget v5, v0, Latd;->a:I

    invoke-direct {p0, v5}, Layl;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v4, v1, Layn;->f:Landroid/widget/ImageView;

    sget-object v5, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v5, 0x7f0201d8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 137
    const-wide v4, 0x4058f999a0000000L

    cmpl-double v4, v2, v4

    if-lez v4, :cond_2

    .line 138
    iget-object v4, v1, Layn;->e:Landroid/widget/TextView;

    const-string v5, "100%"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :goto_1
    iget-object v4, p0, Layl;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v5, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v5, 0x7f0201e4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 143
    iget-object v5, p0, Layl;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-object v6, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v6, 0x7f0201e5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 144
    iget-wide v6, p0, Layl;->g:D

    div-double/2addr v2, v6

    .line 145
    new-instance v6, Lawc;

    invoke-direct {v6, v4, v5, v2, v3}, Lawc;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;D)V

    .line 146
    iget-object v4, v1, Layn;->d:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    iput-wide v2, v1, Layn;->h:D

    .line 148
    iget v0, v0, Latd;->a:I

    iput v0, v1, Layn;->i:I

    .line 149
    iget-object v0, v1, Layn;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 150
    sget-object v0, Layl;->a:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 151
    iget-object v0, v1, Layn;->a:Landroid/widget/ImageView;

    sget-object v1, Layl;->a:[I

    sget-object v2, Layl;->a:[I

    array-length v2, v2

    rem-int v2, p1, v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 154
    :cond_0
    return-object p2

    .line 125
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layn;

    move-object v1, v0

    goto/16 :goto_0

    .line 140
    :cond_2
    iget-object v4, v1, Layn;->e:Landroid/widget/TextView;

    const-string v5, "%.1f%%"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lazq;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
