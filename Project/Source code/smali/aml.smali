.class public Laml;
.super Lauu;
.source "ModeListDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lamp;

.field private e:I

.field private f:Landroid/view/LayoutInflater;

.field private g:I

.field private h:Lamm;

.field private i:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/os/Handler;Lamm;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lauu;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-virtual {p0}, Laml;->k()V

    .line 35
    iput-object p1, p0, Laml;->c:Landroid/content/Context;

    .line 36
    iput p2, p0, Laml;->g:I

    .line 37
    iput-object p3, p0, Laml;->i:Landroid/os/Handler;

    .line 38
    iput-object p4, p0, Laml;->h:Lamm;

    .line 40
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0104

    invoke-virtual {p0, v0}, Laml;->setTitle(I)V

    .line 42
    iget-object v0, p0, Laml;->c:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Laml;->f:Landroid/view/LayoutInflater;

    .line 43
    iget-object v0, p0, Laml;->c:Landroid/content/Context;

    invoke-static {v0}, Lamp;->a(Landroid/content/Context;)Lamp;

    move-result-object v0

    iput-object v0, p0, Laml;->d:Lamp;

    .line 44
    iget-object v0, p0, Laml;->d:Lamp;

    invoke-virtual {v0}, Lamp;->a()I

    move-result v0

    iput v0, p0, Laml;->e:I

    .line 45
    invoke-direct {p0}, Laml;->a()V

    .line 47
    invoke-virtual {p0}, Laml;->i()V

    .line 48
    return-void
.end method

.method private a(I)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Laml;->f:Landroid/view/LayoutInflater;

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f030072

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 63
    invoke-direct {p0, v1, p1}, Laml;->b(Landroid/view/View;I)V

    .line 64
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070156

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 65
    iget-object v2, p0, Laml;->d:Lamp;

    invoke-virtual {v2, p1}, Lamp;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget v0, p0, Laml;->g:I

    if-ne p1, v0, :cond_0

    .line 68
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701cf

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 69
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f0201f2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 74
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-object v1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 51
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Laml;->e:I

    if-ge v0, v1, :cond_0

    .line 52
    invoke-direct {p0, v0}, Laml;->a(I)Landroid/view/View;

    move-result-object v1

    .line 53
    invoke-virtual {p0, v1}, Laml;->a(Landroid/view/View;)V

    .line 54
    iget-object v1, p0, Laml;->c:Landroid/content/Context;

    invoke-static {v1}, Lauu;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Laml;->a(Landroid/view/View;)V

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    invoke-direct {p0}, Laml;->b()Landroid/view/View;

    move-result-object v0

    .line 58
    invoke-virtual {p0, v0}, Laml;->a(Landroid/view/View;)V

    .line 59
    return-void
.end method

.method private b()Landroid/view/View;
    .locals 4

    .prologue
    .line 134
    iget-object v0, p0, Laml;->f:Landroid/view/LayoutInflater;

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f030072

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 136
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701cf

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 137
    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f02000c

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 138
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070156

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 141
    iget-object v2, p0, Laml;->c:Landroid/content/Context;

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a00b8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    const-string v0, "addNew"

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 144
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    return-object v1
.end method

.method private b(Landroid/view/View;I)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x4

    const v8, 0x7f020426

    const/4 v7, 0x2

    const v6, 0x7f02042b

    const/4 v5, 0x0

    .line 80
    if-le p2, v7, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070146

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 84
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f070147

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 85
    sget-object v2, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v2, 0x7f070148

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 86
    sget-object v3, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v3, 0x7f070149

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 87
    iget-object v4, p0, Laml;->d:Lamp;

    invoke-virtual {v4}, Lamp;->g()Lamh;

    move-result-object v4

    invoke-virtual {v4}, Lamh;->l()Lahd;

    move-result-object v4

    invoke-virtual {v4}, Lahd;->h()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lazf;->n()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 89
    :cond_2
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    :cond_3
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    iget-object v4, p0, Laml;->d:Lamp;

    invoke-virtual {v4}, Lamp;->g()Lamh;

    move-result-object v4

    invoke-virtual {v4, v9}, Lamh;->a(I)Lahp;

    move-result-object v4

    invoke-virtual {v4}, Lahp;->h()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 94
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    :cond_4
    iget-object v4, p0, Laml;->d:Lamp;

    invoke-virtual {v4, v5}, Lamp;->g(I)I

    move-result v4

    if-ne p2, v4, :cond_5

    .line 98
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 101
    :cond_5
    iget-object v4, p0, Laml;->d:Lamp;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lamp;->g(I)I

    move-result v4

    if-ne p2, v4, :cond_6

    .line 102
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020427

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 104
    :cond_6
    iget-object v4, p0, Laml;->d:Lamp;

    invoke-virtual {v4, v7}, Lamp;->g(I)I

    move-result v4

    if-ne p2, v4, :cond_8

    .line 105
    invoke-static {}, Lazf;->n()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 106
    sget-object v4, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v4, 0x7f020429

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020425

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    :goto_1
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 109
    :cond_7
    sget-object v4, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v4, 0x7f020428

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020424

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 115
    :cond_8
    iget-object v0, p0, Laml;->d:Lamp;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lamp;->g(I)I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 116
    iget-object v0, p0, Laml;->d:Lamp;

    invoke-virtual {v0}, Lamp;->f()Lanb;

    move-result-object v0

    invoke-virtual {v0, p2}, Lanb;->a(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 118
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_9

    .line 119
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    :goto_2
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_a

    .line 125
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 121
    :cond_9
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f02042c

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 127
    :cond_a
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020427

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method private d(Ljava/lang/String;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Laml;->f:Landroid/view/LayoutInflater;

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f030072

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 161
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070156

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 162
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget v0, p0, Laml;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 165
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    return-object v1
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 151
    invoke-direct {p0, p1}, Laml;->d(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 152
    iget v1, p0, Laml;->e:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Laml;->a(Landroid/view/View;I)V

    .line 153
    iget-object v0, p0, Laml;->c:Landroid/content/Context;

    invoke-static {v0}, Lauu;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Laml;->e:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0, v1}, Laml;->a(Landroid/view/View;I)V

    .line 154
    iget-object v0, p0, Laml;->d:Lamp;

    invoke-virtual {v0, p1}, Lamp;->a(Ljava/lang/String;)V

    .line 155
    iget v0, p0, Laml;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laml;->e:I

    .line 156
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f0701cf

    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "addNew"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 174
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 175
    iget v1, p0, Laml;->e:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 176
    iget-object v1, p0, Laml;->i:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 196
    :goto_0
    return-void

    .line 180
    :cond_0
    iget v0, p0, Laml;->g:I

    invoke-virtual {p0, v0}, Laml;->e(I)Landroid/view/View;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_1

    .line 183
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 184
    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0201f1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 186
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget v0, p0, Laml;->e:I

    if-ge v1, v0, :cond_3

    .line 187
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    iget-object v0, p0, Laml;->h:Lamm;

    if-eqz v0, :cond_2

    .line 189
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 190
    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f0201f2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 191
    iget-object v0, p0, Laml;->h:Lamm;

    iget-object v2, p0, Laml;->d:Lamp;

    invoke-virtual {v2, v1}, Lamp;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lamm;->a(ILjava/lang/String;)V

    .line 186
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 195
    :cond_3
    invoke-virtual {p0}, Laml;->dismiss()V

    goto :goto_0
.end method
