.class public abstract Lamy;
.super Laao;
.source "ModeSelectBase.java"

# interfaces
.implements Ladc;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected a:I

.field protected b:I

.field private c:Landroid/view/LayoutInflater;

.field private d:Landroid/widget/LinearLayout;

.field private e:I

.field private f:I

.field private g:Ljava/util/ArrayList;

.field private h:Lamp;

.field private i:Lamh;

.field private j:Z

.field private k:I

.field private l:Lacz;

.field private m:Z

.field private n:Lane;

.field private o:Lauu;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Laao;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lamy;->b:I

    return-void
.end method

.method static synthetic a(Lamy;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput p1, p0, Lamy;->f:I

    return p1
.end method

.method private a(I)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lamy;->c:Landroid/view/LayoutInflater;

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f030072

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 115
    invoke-direct {p0, v2, p1}, Lamy;->a(Landroid/view/View;I)V

    .line 116
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070156

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 117
    iget-object v1, p0, Lamy;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget v0, p0, Lamy;->f:I

    if-ne p1, v0, :cond_0

    .line 119
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701cf

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 120
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0201f2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 125
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    return-object v2
.end method

.method private a(Ljava/lang/String;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 356
    iget-object v0, p0, Lamy;->c:Landroid/view/LayoutInflater;

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f030072

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 360
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070156

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 361
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    iget v0, p0, Lamy;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 364
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    return-object v1
.end method

.method private a(Ljava/lang/String;I)Landroid/view/View;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 340
    iget-object v0, p0, Lamy;->c:Landroid/view/LayoutInflater;

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f030072

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 342
    invoke-virtual {v1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 343
    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f02000c

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 344
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 346
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070156

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 347
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    const-string v0, "addNew"

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 350
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    return-object v1
.end method

.method static synthetic a(Lamy;)Lauu;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lamy;->o:Lauu;

    return-object v0
.end method

.method private a(Landroid/view/View;I)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    const v9, 0x7f020426

    const/4 v8, 0x2

    const v7, 0x7f02042b

    const/4 v6, 0x0

    .line 131
    iget-object v0, p0, Lamy;->h:Lamp;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lamp;->g(I)I

    move-result v0

    .line 132
    if-ne v0, v2, :cond_1

    iget-object v1, p0, Lamy;->h:Lamp;

    invoke-virtual {v1, v8}, Lamp;->g(I)I

    move-result v1

    if-le p2, v1, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    if-eq v0, v2, :cond_2

    if-gt p2, v0, :cond_0

    .line 138
    :cond_2
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070146

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 139
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f070147

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 140
    sget-object v2, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v2, 0x7f070148

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 141
    sget-object v3, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v3, 0x7f070149

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 142
    iget-object v4, p0, Lamy;->h:Lamp;

    invoke-virtual {v4}, Lamp;->g()Lamh;

    move-result-object v4

    invoke-virtual {v4}, Lamh;->l()Lahd;

    move-result-object v4

    invoke-virtual {v4}, Lahd;->h()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lazf;->n()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 144
    :cond_3
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    :cond_4
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    iget-object v4, p0, Lamy;->h:Lamp;

    invoke-virtual {v4}, Lamp;->g()Lamh;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lamh;->a(I)Lahp;

    move-result-object v4

    invoke-virtual {v4}, Lahp;->h()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 149
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    :cond_5
    iget-object v4, p0, Lamy;->h:Lamp;

    invoke-virtual {v4, v6}, Lamp;->g(I)I

    move-result v4

    if-ne p2, v4, :cond_6

    .line 153
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 154
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 156
    :cond_6
    iget-object v4, p0, Lamy;->h:Lamp;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lamp;->g(I)I

    move-result v4

    if-ne p2, v4, :cond_7

    .line 157
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 158
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020427

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 160
    :cond_7
    iget-object v4, p0, Lamy;->h:Lamp;

    invoke-virtual {v4, v8}, Lamp;->g(I)I

    move-result v4

    if-ne p2, v4, :cond_9

    .line 161
    invoke-static {}, Lazf;->n()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 162
    sget-object v4, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v4, 0x7f020429

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 163
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020425

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 168
    :goto_1
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 169
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 165
    :cond_8
    sget-object v4, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v4, 0x7f020428

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 166
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020424

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 171
    :cond_9
    iget-object v0, p0, Lamy;->h:Lamp;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lamp;->g(I)I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 172
    iget-object v0, p0, Lamy;->h:Lamp;

    invoke-virtual {v0}, Lamp;->f()Lanb;

    move-result-object v0

    invoke-virtual {v0, p2}, Lanb;->a(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 174
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_a

    .line 175
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 181
    :goto_2
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_b

    .line 182
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 178
    :cond_a
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f02042c

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 185
    :cond_b
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020427

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lamy;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-boolean p1, p0, Lamy;->m:Z

    return p1
.end method

.method static synthetic b(Lamy;)I
    .locals 1
    .parameter

    .prologue
    .line 31
    iget v0, p0, Lamy;->k:I

    return v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 99
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070097

    invoke-virtual {p0, v0}, Lamy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lamy;->d:Landroid/widget/LinearLayout;

    .line 101
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lamy;->e:I

    if-ge v0, v1, :cond_0

    .line 103
    invoke-direct {p0, v0}, Lamy;->a(I)Landroid/view/View;

    move-result-object v1

    .line 104
    iget-object v2, p0, Lamy;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 105
    iget-object v1, p0, Lamy;->d:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lauu;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a00b8

    invoke-virtual {p0, v0}, Lamy;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0701cf

    invoke-direct {p0, v0, v1}, Lamy;->a(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lamy;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 111
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 239
    iget-object v0, p0, Lamy;->h:Lamp;

    iget v1, p0, Lamy;->f:I

    invoke-virtual {v0, v1}, Lamp;->a(I)V

    .line 240
    iget-object v0, p0, Lamy;->i:Lamh;

    iget-boolean v1, p0, Lamy;->j:Z

    invoke-virtual {v0, v1}, Lamh;->a(Z)V

    .line 241
    iget-object v0, p0, Lamy;->i:Lamh;

    iget v1, p0, Lamy;->f:I

    invoke-virtual {v0, v1}, Lamh;->c(I)V

    .line 242
    iget-object v0, p0, Lamy;->i:Lamh;

    iget v1, p0, Lamy;->f:I

    invoke-virtual {v0, v1, v2}, Lamh;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lamy;->i:Lamh;

    invoke-virtual {v0}, Lamh;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 244
    invoke-virtual {p0}, Lamy;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v0}, Lahl;->a(Landroid/view/Window;I)V

    .line 246
    :cond_0
    return-void
.end method

.method static synthetic c(Lamy;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lamy;->c()V

    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 254
    iget-object v0, p0, Lamy;->o:Lauu;

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Lauu;

    invoke-direct {v0, p0}, Lauu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lamy;->o:Lauu;

    .line 257
    :cond_0
    iget-object v0, p0, Lamy;->o:Lauu;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00f2

    invoke-virtual {p0, v1}, Lamy;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lauu;->b(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lamy;->o:Lauu;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00fb

    invoke-virtual {p0, v1}, Lamy;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lauu;->a(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v0, p0, Lamy;->o:Lauu;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lauu;->b(ILandroid/view/View$OnClickListener;)V

    .line 261
    iget-object v0, p0, Lamy;->o:Lauu;

    new-instance v1, Lamz;

    invoke-direct {v1, p0}, Lamz;-><init>(Lamy;)V

    invoke-virtual {v0, v2, v1}, Lauu;->a(ILandroid/view/View$OnClickListener;)V

    .line 290
    iget-object v0, p0, Lamy;->o:Lauu;

    invoke-virtual {v0}, Lauu;->show()V

    .line 291
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 317
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/mode/NewModeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 318
    const-string v1, "index"

    iget v2, p0, Lamy;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 319
    const-string v1, "counts"

    iget v2, p0, Lamy;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 320
    const-string v1, "isadd"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 321
    invoke-virtual {p0, v0, v3}, Lamy;->startActivityForResult(Landroid/content/Intent;I)V

    .line 322
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 67
    invoke-static {p0}, Lamp;->a(Landroid/content/Context;)Lamp;

    move-result-object v0

    iput-object v0, p0, Lamy;->h:Lamp;

    .line 68
    iget-object v0, p0, Lamy;->h:Lamp;

    invoke-virtual {v0}, Lamp;->d()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lamy;->g:Ljava/util/ArrayList;

    .line 69
    iget-object v0, p0, Lamy;->h:Lamp;

    invoke-virtual {v0}, Lamp;->g()Lamh;

    move-result-object v0

    iput-object v0, p0, Lamy;->i:Lamh;

    .line 70
    iget-object v0, p0, Lamy;->i:Lamh;

    invoke-virtual {v0}, Lamh;->g()V

    .line 71
    iget-object v0, p0, Lamy;->i:Lamh;

    iget-object v1, p0, Lamy;->h:Lamp;

    invoke-virtual {v1}, Lamp;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lamh;->c(I)V

    .line 73
    iget-object v0, p0, Lamy;->h:Lamp;

    invoke-virtual {v0}, Lamp;->a()I

    move-result v0

    iput v0, p0, Lamy;->e:I

    .line 74
    iget-object v0, p0, Lamy;->h:Lamp;

    invoke-virtual {v0}, Lamp;->b()I

    move-result v0

    iput v0, p0, Lamy;->f:I

    .line 75
    iget-object v0, p0, Lamy;->h:Lamp;

    iget v1, p0, Lamy;->f:I

    invoke-virtual {v0, v1}, Lamp;->h(I)I

    move-result v0

    iput v0, p0, Lamy;->a:I

    .line 77
    iget-object v0, p0, Lamy;->i:Lamh;

    invoke-virtual {v0}, Lamh;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lamy;->j:Z

    .line 84
    :goto_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lamy;->c:Landroid/view/LayoutInflater;

    .line 85
    invoke-direct {p0}, Lamy;->b()V

    .line 87
    invoke-static {p0}, Lacz;->a(Landroid/content/Context;)Lacz;

    move-result-object v0

    iput-object v0, p0, Lamy;->l:Lacz;

    .line 88
    iget-object v0, p0, Lamy;->l:Lacz;

    invoke-virtual {v0, p0}, Lacz;->a(Ladc;)V

    .line 89
    return-void

    .line 81
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamy;->j:Z

    goto :goto_0
.end method

.method public a(Ladd;)V
    .locals 2
    .parameter

    .prologue
    .line 295
    iget-boolean v0, p0, Lamy;->m:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Ladd;->i:Z

    if-eqz v0, :cond_1

    .line 296
    new-instance v0, Lanf;

    invoke-direct {v0}, Lanf;-><init>()V

    .line 297
    iget-boolean v1, p1, Ladd;->l:Z

    iput-boolean v1, v0, Lanf;->a:Z

    .line 298
    iget v1, p1, Ladd;->k:I

    iput v1, v0, Lanf;->b:I

    .line 300
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 301
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 302
    const/4 v0, 0x1

    iput v0, v1, Landroid/os/Message;->what:I

    .line 304
    iget-object v0, p0, Lamy;->n:Lane;

    invoke-virtual {v0, v1}, Lane;->sendMessage(Landroid/os/Message;)Z

    .line 305
    invoke-virtual {p0}, Lamy;->finish()V

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    iget-object v0, p0, Lamy;->n:Lane;

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Lane;

    iget v1, p1, Ladd;->k:I

    invoke-direct {v0, p0, v1}, Lane;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lamy;->n:Lane;

    goto :goto_0
.end method

.method public a(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 191
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "addNew"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    invoke-direct {p0}, Lamy;->e()V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lamy;->e:I

    if-ge v0, v1, :cond_0

    .line 198
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 200
    iput v0, p0, Lamy;->k:I

    .line 202
    iget v1, p0, Lamy;->f:I

    if-eq v0, v1, :cond_4

    .line 203
    iget-object v1, p0, Lamy;->h:Lamp;

    invoke-virtual {v1, v0}, Lamp;->h(I)I

    move-result v1

    if-ne v1, v4, :cond_2

    invoke-static {}, Lazf;->n()Z

    move-result v1

    if-nez v1, :cond_2

    .line 205
    invoke-direct {p0}, Lamy;->d()V

    goto :goto_0

    .line 208
    :cond_2
    iput-boolean v3, p0, Lamy;->m:Z

    .line 209
    iput v0, p0, Lamy;->f:I

    .line 211
    invoke-direct {p0}, Lamy;->c()V

    .line 213
    iget v0, p0, Lamy;->b:I

    if-ne v0, v4, :cond_3

    .line 215
    const-string v0, "widget14"

    const-string v1, "sm"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_0

    .line 219
    :cond_3
    iget v0, p0, Lamy;->b:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 221
    const-string v0, "home"

    const-string v1, "sm"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_0

    .line 231
    :cond_4
    invoke-virtual {p0}, Lamy;->finish()V

    goto :goto_0

    .line 196
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 326
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 327
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 328
    const-string v1, "ModeName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    invoke-direct {p0, v0}, Lamy;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 331
    iget-object v2, p0, Lamy;->d:Landroid/widget/LinearLayout;

    iget v3, p0, Lamy;->e:I

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 332
    iget-object v1, p0, Lamy;->d:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lauu;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lamy;->e:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 334
    iget-object v1, p0, Lamy;->h:Lamp;

    invoke-virtual {v1, v0}, Lamp;->a(Ljava/lang/String;)V

    .line 335
    iget v0, p0, Lamy;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lamy;->e:I

    .line 337
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 314
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    invoke-super {p0, p1}, Laao;->onCreate(Landroid/os/Bundle;)V

    .line 64
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Laao;->onDestroy()V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamy;->m:Z

    .line 95
    iget-object v0, p0, Lamy;->l:Lacz;

    invoke-virtual {v0, p0}, Lacz;->b(Ladc;)V

    .line 96
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 249
    invoke-super {p0}, Laao;->onPause()V

    .line 250
    return-void
.end method
