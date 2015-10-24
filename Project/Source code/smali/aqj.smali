.class public Laqj;
.super Laqp;
.source "SkinShopAdapter.java"

# interfaces
.implements Laet;


# instance fields
.field private a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

.field private b:I

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ListView;

.field private g:Landroid/view/View;

.field private h:Ladp;

.field private i:Laql;

.field private j:Ljava/util/ArrayList;

.field private k:Ljava/util/ArrayList;

.field private l:Ljava/util/ArrayList;

.field private m:Z

.field private n:Landroid/os/Message;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 186
    invoke-direct {p0}, Laqp;-><init>()V

    .line 170
    const/4 v0, 0x0

    iput v0, p0, Laqj;->b:I

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laqj;->j:Ljava/util/ArrayList;

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laqj;->k:Ljava/util/ArrayList;

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laqj;->l:Ljava/util/ArrayList;

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Laqj;->m:Z

    .line 187
    iput-object p1, p0, Laqj;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    .line 188
    iget-object v0, p0, Laqj;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->a(Laet;)V

    .line 190
    iget-object v0, p0, Laqj;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-static {v0}, Ladp;->a(Landroid/content/Context;)Ladp;

    move-result-object v0

    iput-object v0, p0, Laqj;->h:Ladp;

    .line 192
    new-instance v0, Laql;

    iget-object v1, p0, Laqj;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-direct {v0, p0, v1}, Laql;-><init>(Laqj;Landroid/content/Context;)V

    iput-object v0, p0, Laqj;->i:Laql;

    .line 193
    return-void
.end method

.method static synthetic a(Laqj;)Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Laqj;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 370
    return-void
.end method

.method static synthetic a(Laqj;Ljava/lang/String;I)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Laqj;->b(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Laqj;)Ladp;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Laqj;->h:Ladp;

    return-object v0
.end method

.method private b(Ljava/lang/String;I)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 284
    iget-object v1, p0, Laqj;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-static {v1}, Ladp;->a(Landroid/content/Context;)Ladp;

    move-result-object v1

    .line 285
    invoke-virtual {v1}, Ladp;->f()Ljava/lang/String;

    move-result-object v2

    .line 286
    invoke-virtual {v1}, Ladp;->g()I

    move-result v1

    .line 287
    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 294
    :cond_0
    :goto_0
    return v0

    .line 291
    :cond_1
    const-string v3, "dt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    if-ne p2, v1, :cond_0

    .line 292
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c(Landroid/view/ViewGroup;)V
    .locals 1
    .parameter

    .prologue
    .line 276
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701f0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Laqj;->c:Landroid/widget/ImageView;

    .line 277
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070018

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laqj;->d:Landroid/widget/TextView;

    .line 278
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070019

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laqj;->e:Landroid/widget/TextView;

    .line 279
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701f2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Laqj;->f:Landroid/widget/ListView;

    .line 280
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701f4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Laqj;->g:Landroid/view/View;

    .line 281
    return-void
.end method

.method private f()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 299
    iget-object v0, p0, Laqj;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Laqj;->g:Landroid/view/View;

    new-instance v3, Laqk;

    invoke-direct {v3, p0}, Laqk;-><init>(Laqj;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    iget-object v0, p0, Laqj;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-static {v0}, Ladp;->a(Landroid/content/Context;)Ladp;

    move-result-object v3

    .line 308
    iget-object v0, p0, Laqj;->c:Landroid/widget/ImageView;

    sget-object v4, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v4, 0x7f02040a

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 309
    iget-object v0, p0, Laqj;->d:Landroid/widget/TextView;

    sget-object v4, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v4, 0x7f0a037f

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 310
    iget-object v0, p0, Laqj;->e:Landroid/widget/TextView;

    sget-object v4, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v4, 0x7f0a0380

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 312
    iget-object v0, p0, Laqj;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 314
    invoke-virtual {v3}, Ladp;->f()Ljava/lang/String;

    move-result-object v4

    .line 315
    invoke-virtual {v3}, Ladp;->g()I

    move-result v5

    .line 317
    const-string v0, "dt"

    invoke-virtual {v3, v0, v2, v1}, Ladp;->a(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 318
    iget-object v6, p0, Laqj;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    sget-object v7, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v7, 0x7f0a0381

    invoke-virtual {v6, v7}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 319
    const-string v7, "dt"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    .line 320
    iget-object v8, p0, Laqj;->j:Ljava/util/ArrayList;

    new-instance v9, Laqn;

    invoke-direct {v9, v0, v6, v7}, Laqn;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Z)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    const-string v0, "pt_"

    invoke-virtual {v3, v0, v2, v1}, Ladp;->a(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 323
    iget-object v0, p0, Laqj;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    sget-object v7, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v7, 0x7f0a0382

    invoke-virtual {v0, v7}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 324
    const-string v0, "pt_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez v5, :cond_0

    move v0, v1

    .line 325
    :goto_0
    iget-object v8, p0, Laqj;->j:Ljava/util/ArrayList;

    new-instance v9, Laqn;

    invoke-direct {v9, v6, v7, v0}, Laqn;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Z)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    const-string v0, "pt_"

    invoke-virtual {v3, v0, v1, v1}, Ladp;->a(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 328
    iget-object v0, p0, Laqj;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    sget-object v7, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v7, 0x7f0a0383

    invoke-virtual {v0, v7}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 329
    const-string v0, "pt_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-ne v5, v1, :cond_1

    move v0, v1

    .line 330
    :goto_1
    iget-object v8, p0, Laqj;->j:Ljava/util/ArrayList;

    new-instance v9, Laqn;

    invoke-direct {v9, v6, v7, v0}, Laqn;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Z)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    const-string v0, "pt_"

    invoke-virtual {v3, v0, v10, v1}, Ladp;->a(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 333
    iget-object v3, p0, Laqj;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    sget-object v6, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v6, 0x7f0a0384

    invoke-virtual {v3, v6}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 334
    const-string v6, "pt_"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-ne v5, v10, :cond_2

    .line 335
    :goto_2
    iget-object v2, p0, Laqj;->j:Ljava/util/ArrayList;

    new-instance v4, Laqn;

    invoke-direct {v4, v0, v3, v1}, Laqn;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Z)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object v0, p0, Laqj;->i:Laql;

    iget-object v1, p0, Laqj;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Laql;->a(Ljava/util/ArrayList;)V

    .line 338
    iget-object v0, p0, Laqj;->f:Landroid/widget/ListView;

    iget-object v1, p0, Laqj;->i:Laql;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 339
    return-void

    :cond_0
    move v0, v2

    .line 324
    goto :goto_0

    :cond_1
    move v0, v2

    .line 329
    goto :goto_1

    :cond_2
    move v1, v2

    .line 334
    goto :goto_2
.end method


# virtual methods
.method public a(I)F
    .locals 1
    .parameter

    .prologue
    .line 272
    const v0, 0x3f6147ae

    return v0
.end method

.method public a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 228
    const-string v0, "instantiate item!"

    invoke-static {v0}, Laqj;->a(Ljava/lang/String;)V

    .line 229
    iget-boolean v0, p0, Laqj;->m:Z

    if-eqz v0, :cond_1

    move v0, v1

    .line 231
    :goto_0
    iget-boolean v3, p0, Laqj;->m:Z

    if-eqz v3, :cond_2

    if-nez p2, :cond_2

    .line 232
    iget-object v0, p0, Laqj;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f03007d

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 234
    invoke-static {}, Lazf;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f070200

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f02041c

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 237
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f070202

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f02041d

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 239
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0701ff

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a02ac

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 241
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f070201

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a02ad

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 243
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f070203

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 244
    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a02ae

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 261
    :cond_0
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 262
    return-object v0

    :cond_1
    move v0, v2

    .line 229
    goto :goto_0

    .line 247
    :cond_2
    iget v3, p0, Laqj;->b:I

    add-int/lit8 v3, v3, -0x1

    if-ne p2, v3, :cond_3

    .line 249
    iget-object v0, p0, Laqj;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f03007a

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 251
    invoke-direct {p0, v0}, Laqj;->c(Landroid/view/ViewGroup;)V

    .line 252
    invoke-direct {p0}, Laqj;->f()V

    goto :goto_1

    .line 254
    :cond_3
    iget-object v3, p0, Laqj;->k:Ljava/util/ArrayList;

    sub-int v0, p2, v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laon;

    .line 255
    new-instance v3, Laqd;

    iget-object v4, p0, Laqj;->a:Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;

    invoke-direct {v3, v4, v0}, Laqd;-><init>(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;Laon;)V

    .line 256
    iget-boolean v0, p0, Laqj;->m:Z

    if-nez v0, :cond_4

    :goto_2
    iget-object v0, p0, Laqj;->n:Landroid/os/Message;

    invoke-virtual {v3, v1, v0}, Laqd;->a(ZLandroid/os/Message;)V

    .line 257
    iget-object v0, p0, Laqj;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    invoke-virtual {v3}, Laqd;->b()Landroid/view/ViewGroup;

    move-result-object v0

    goto :goto_1

    :cond_4
    move v1, v2

    .line 256
    goto :goto_2
.end method

.method public a()V
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Laqj;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqd;

    .line 358
    invoke-virtual {v0}, Laqd;->a()Laqg;

    move-result-object v0

    invoke-virtual {v0}, Laqg;->a()V

    goto :goto_0

    .line 361
    :cond_0
    iget-object v0, p0, Laqj;->i:Laql;

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Laqj;->i:Laql;

    invoke-virtual {v0}, Laql;->notifyDataSetChanged()V

    .line 364
    :cond_1
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Laqj;->m:Z

    .line 197
    iput-object p1, p0, Laqj;->n:Landroid/os/Message;

    .line 198
    return-void
.end method

.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 267
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 268
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 350
    iget-object v0, p0, Laqj;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqd;

    .line 351
    invoke-virtual {v0}, Laqd;->a()Laqg;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Laqg;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 353
    :cond_0
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .parameter

    .prologue
    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Laqj;->k:Ljava/util/ArrayList;

    .line 202
    invoke-virtual {p0}, Laqj;->e()V

    .line 203
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 223
    check-cast p2, Landroid/view/View;

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Laqj;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Laqj;->m:Z

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Laqj;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Laqj;->b:I

    .line 218
    :goto_0
    iget v0, p0, Laqj;->b:I

    return v0

    .line 216
    :cond_0
    iget-object v0, p0, Laqj;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laqj;->b:I

    goto :goto_0
.end method
