.class public Lcom/dianxinos/powermanager/mode/NewModeActivity;
.super Laao;
.source "NewModeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:I

.field private c:Ljava/util/ArrayList;

.field private d:Lamh;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/EditText;

.field private h:Lamp;

.field private i:Lamx;

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Ljava/util/ArrayList;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Laao;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->p:Z

    return-void
.end method

.method private a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 150
    iget-boolean v1, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->l:Z

    if-nez v1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v0

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->m:Ljava/util/ArrayList;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0056

    invoke-virtual {p0, v2}, Lcom/dianxinos/powermanager/mode/NewModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v1, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->m:Ljava/util/ArrayList;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a00b6

    invoke-virtual {p0, v2}, Lcom/dianxinos/powermanager/mode/NewModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v1, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->m:Ljava/util/ArrayList;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a00b3

    invoke-virtual {p0, v2}, Lcom/dianxinos/powermanager/mode/NewModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v1, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->m:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(I)Z
    .locals 2
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->d:Lamh;

    invoke-virtual {v0}, Lamh;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Lamg;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lahp;

    invoke-virtual {v0}, Lahp;->e()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 60
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/mode/NewModeActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->l:Z

    return p1
.end method

.method private a(Ljava/util/ArrayList;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 197
    move v1, v2

    :goto_0
    iget v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->b:I

    if-ge v1, v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->d:Lamh;

    invoke-static {v1}, Lamg;->a(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lamh;->a(I)Lahp;

    move-result-object v0

    invoke-virtual {v0}, Lahp;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->i:Lamx;

    iget v3, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->j:I

    invoke-static {v1}, Lamg;->a(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lamx;->b(II)I

    move-result v3

    .line 200
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v3, v0, :cond_1

    .line 201
    const/4 v2, 0x1

    .line 205
    :cond_0
    return v2

    .line 197
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private b(I)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const v6, 0x7f0a0106

    const/4 v0, 0x3

    .line 125
    const-string v1, ""

    .line 126
    if-ne p1, v0, :cond_1

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    invoke-virtual {p0, v6}, Lcom/dianxinos/powermanager/mode/NewModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, -0x3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    :cond_0
    return-object v0

    .line 131
    :cond_1
    iget-object v2, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->m:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move v2, v0

    .line 132
    :goto_0
    if-ge v2, p1, :cond_2

    .line 133
    iget-object v3, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->i:Lamx;

    invoke-virtual {v3, v2}, Lamx;->c(I)Ljava/lang/String;

    move-result-object v3

    .line 134
    iget-object v4, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->m:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v7, v0

    move-object v0, v1

    move v1, v7

    .line 138
    :goto_1
    if-gt v1, p1, :cond_0

    .line 139
    add-int/lit8 v0, v1, -0x3

    add-int/lit8 v2, v0, 0x1

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    invoke-virtual {p0, v6}, Lcom/dianxinos/powermanager/mode/NewModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    const-string v3, "NewModeActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "title : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "postfixNum :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v2, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private b()V
    .locals 2

    .prologue
    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->l:Z

    .line 166
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->g:Landroid/widget/EditText;

    new-instance v1, Lang;

    invoke-direct {v1, p0}, Lang;-><init>(Lcom/dianxinos/powermanager/mode/NewModeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 175
    return-void
.end method

.method private c(I)Landroid/view/View;
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 358
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->a:Landroid/view/LayoutInflater;

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f03004f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 360
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07001f

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 361
    invoke-static {p1}, Lamg;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 363
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070151

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 364
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->d:Lamh;

    invoke-static {p1}, Lamg;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lamh;->a(I)Lahp;

    move-result-object v0

    invoke-virtual {v0}, Lahp;->b()Ljava/lang/String;

    move-result-object v5

    .line 365
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->d:Lamh;

    invoke-static {p1}, Lamg;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lamh;->a(I)Lahp;

    move-result-object v0

    invoke-virtual {v0}, Lahp;->f()I

    move-result v2

    .line 366
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->k:Z

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->i:Lamx;

    iget v1, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->j:I

    invoke-static {p1}, Lamg;->a(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lamx;->b(II)I

    move-result v0

    .line 369
    iget-object v1, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->d:Lamh;

    invoke-static {p1}, Lamg;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lamh;->a(I)Lahp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lahp;->c(I)I

    move-result v2

    .line 370
    iget-object v1, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->d:Lamh;

    invoke-static {p1}, Lamg;->a(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lamh;->a(I)Lahp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lahp;->b(I)Ljava/lang/String;

    move-result-object v5

    .line 376
    :cond_0
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    new-instance v0, Lani;

    move-object v1, p0

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lani;-><init>(Landroid/content/Context;IZZLjava/lang/String;Landroid/view/View;)V

    .line 379
    iget-object v1, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    invoke-virtual {v7, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 382
    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    return-object v7
.end method

.method private c()V
    .locals 4

    .prologue
    .line 298
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070171

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/mode/NewModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 300
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->b:I

    if-ge v1, v2, :cond_2

    .line 302
    iget-object v2, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->d:Lamh;

    invoke-static {v1}, Lamg;->a(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lamh;->a(I)Lahp;

    move-result-object v2

    invoke-virtual {v2}, Lahp;->h()Z

    move-result v2

    if-nez v2, :cond_0

    .line 303
    new-instance v2, Lani;

    invoke-direct {v2}, Lani;-><init>()V

    .line 304
    iget-object v3, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 307
    :cond_0
    invoke-direct {p0}, Lcom/dianxinos/powermanager/mode/NewModeActivity;->d()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 308
    invoke-direct {p0, v1}, Lcom/dianxinos/powermanager/mode/NewModeActivity;->a(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 309
    invoke-direct {p0, v1}, Lcom/dianxinos/powermanager/mode/NewModeActivity;->c(I)Landroid/view/View;

    move-result-object v2

    .line 310
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 313
    :cond_1
    invoke-direct {p0, v1}, Lcom/dianxinos/powermanager/mode/NewModeActivity;->d(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 317
    :cond_2
    return-void
.end method

.method private d()Landroid/view/View;
    .locals 5

    .prologue
    .line 424
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 425
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/mode/NewModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f0203bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 426
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 428
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 429
    return-object v0
.end method

.method private d(I)Landroid/view/View;
    .locals 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 388
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->a:Landroid/view/LayoutInflater;

    sget-object v2, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v2, 0x7f030052

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 390
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07001f

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 391
    invoke-static {p1}, Lamg;->b(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 393
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070157

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/dianxinos/powermanager/ui/DXSwitchButton;

    .line 395
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->d:Lamh;

    invoke-static {p1}, Lamg;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lamh;->a(I)Lahp;

    move-result-object v0

    invoke-virtual {v0}, Lahp;->a()Z

    move-result v4

    .line 396
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->k:Z

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->i:Lamx;

    iget v2, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->j:I

    invoke-static {p1}, Lamg;->a(I)I

    move-result v4

    invoke-virtual {v0, v2, v4}, Lamx;->b(II)I

    move-result v0

    .line 399
    invoke-static {p1}, Lamg;->a(I)I

    move-result v2

    const/4 v4, 0x6

    if-ne v2, v4, :cond_2

    .line 400
    iget-object v2, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->d:Lamh;

    invoke-static {p1}, Lamg;->a(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lamh;->a(I)Lahp;

    move-result-object v2

    invoke-virtual {v2, v0}, Lahp;->c(I)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    move v4, v0

    .line 412
    :cond_0
    :goto_1
    if-eqz v4, :cond_4

    move v2, v3

    .line 414
    :goto_2
    new-instance v0, Lani;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lani;-><init>(Landroid/content/Context;IZZLjava/lang/String;Landroid/view/View;)V

    .line 415
    iget-object v1, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    invoke-virtual {v7, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 418
    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    return-object v7

    :cond_1
    move v0, v3

    .line 400
    goto :goto_0

    .line 403
    :cond_2
    if-nez v0, :cond_3

    move v4, v1

    .line 404
    goto :goto_1

    :cond_3
    move v4, v3

    .line 406
    goto :goto_1

    :cond_4
    move v2, v1

    .line 412
    goto :goto_2
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 321
    invoke-static {p1}, Lamg;->a(I)I

    move-result v0

    .line 322
    if-nez v0, :cond_1

    .line 323
    packed-switch p2, :pswitch_data_0

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 325
    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 326
    const-string v1, "SelectedValue"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 327
    const-string v2, "SelectedItem"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 328
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/mode/NewModeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v2}, Lahl;->a(Landroid/view/Window;I)V

    .line 329
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lani;

    iget-object v0, v0, Lani;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lani;

    invoke-virtual {v0, v2}, Lani;->a(I)V

    goto :goto_0

    .line 341
    :cond_1
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 343
    :cond_2
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 345
    :pswitch_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 346
    const-string v0, "SelectedValue"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 347
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lani;

    iget-object v0, v0, Lani;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    const-string v0, "SelectedItem"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 349
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lani;

    invoke-virtual {v0, v1}, Lani;->a(I)V

    goto :goto_0

    .line 323
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch

    .line 343
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 210
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->e:Landroid/widget/Button;

    if-ne p1, v0, :cond_6

    .line 211
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a00d8

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/mode/NewModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    invoke-direct {p0}, Lcom/dianxinos/powermanager/mode/NewModeActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a00d9

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/mode/NewModeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 223
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v5

    .line 224
    :goto_1
    iget v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->b:I

    if-ge v1, v0, :cond_3

    .line 225
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lani;

    .line 226
    invoke-virtual {v0}, Lani;->b()I

    move-result v0

    .line 227
    iget-object v2, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->d:Lamh;

    invoke-static {v1}, Lamg;->a(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lamh;->a(I)Lahp;

    move-result-object v2

    invoke-virtual {v2, v0}, Lahp;->e(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 232
    :cond_3
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->k:Z

    if-eqz v0, :cond_d

    invoke-direct {p0, v3}, Lcom/dianxinos/powermanager/mode/NewModeActivity;->a(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v6, v7

    .line 236
    :goto_2
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 237
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->o:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->n:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 238
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->i:Lamx;

    invoke-virtual {v0, v5}, Lamx;->b(Z)V

    .line 240
    :cond_4
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->i:Lamx;

    iget v1, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->j:I

    iget-boolean v4, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->k:Z

    if-nez v4, :cond_5

    move v4, v7

    :goto_3
    invoke-virtual/range {v0 .. v5}, Lamx;->a(ILjava/lang/String;Ljava/util/ArrayList;ZZ)V

    .line 242
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 243
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 244
    const-string v2, "ModeName"

    iget-object v3, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v2, "index"

    iget v3, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->j:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 246
    const-string v2, "settings_changed"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 248
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 249
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/dianxinos/powermanager/mode/NewModeActivity;->setResult(ILandroid/content/Intent;)V

    .line 250
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/mode/NewModeActivity;->finish()V

    .line 252
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->p:Z

    if-eqz v0, :cond_0

    .line 253
    const-string v0, "mode"

    const-string v1, "a"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    goto/16 :goto_0

    :cond_5
    move v4, v5

    .line 240
    goto :goto_3

    .line 257
    :cond_6
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_7

    .line 258
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/mode/NewModeActivity;->finish()V

    goto/16 :goto_0

    .line 260
    :cond_7
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->g:Landroid/widget/EditText;

    if-eq p1, v0, :cond_0

    move v1, v5

    .line 266
    :goto_4
    iget v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->b:I

    if-ge v1, v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lani;

    .line 268
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 270
    invoke-virtual {v0}, Lani;->a()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 271
    invoke-virtual {v0}, Lani;->c()V

    .line 266
    :cond_8
    :goto_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 275
    :cond_9
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/dianxinos/powermanager/mode/SettingListDialog;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 276
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 277
    invoke-static {v1}, Lamg;->a(I)I

    move-result v0

    if-nez v0, :cond_b

    .line 278
    const-string v0, "title"

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 286
    :cond_a
    :goto_6
    const-string v0, "counts"

    iget-object v4, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->d:Lamh;

    invoke-static {v1}, Lamg;->a(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lamh;->a(I)Lahp;

    move-result-object v4

    invoke-virtual {v4}, Lahp;->e()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 288
    const-string v4, "Selected"

    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lani;

    invoke-virtual {v0}, Lani;->b()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 289
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 290
    invoke-virtual {p0, v2, v1}, Lcom/dianxinos/powermanager/mode/NewModeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_5

    .line 280
    :cond_b
    invoke-static {v1}, Lamg;->a(I)I

    move-result v0

    if-ne v0, v7, :cond_c

    .line 281
    const-string v0, "title"

    invoke-virtual {v3, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_6

    .line 283
    :cond_c
    invoke-static {v1}, Lamg;->a(I)I

    move-result v0

    const/4 v4, 0x6

    if-ne v0, v4, :cond_a

    .line 284
    const-string v0, "title"

    const/4 v4, 0x2

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_6

    :cond_d
    move v6, v5

    goto/16 :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    invoke-super {p0, p1}, Laao;->onCreate(Landroid/os/Bundle;)V

    .line 67
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f030057

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/mode/NewModeActivity;->setContentView(I)V

    .line 68
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/mode/NewModeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 69
    const-string v1, "isadd"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->p:Z

    .line 70
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 71
    const-string v1, "index"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->j:I

    .line 72
    const-string v1, "counts"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 77
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07016f

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/mode/NewModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->g:Landroid/widget/EditText;

    .line 78
    invoke-direct {p0}, Lcom/dianxinos/powermanager/mode/NewModeActivity;->b()V

    .line 80
    invoke-static {p0}, Lamp;->a(Landroid/content/Context;)Lamp;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->h:Lamp;

    .line 81
    new-instance v0, Lamx;

    invoke-direct {v0, p0}, Lamx;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->i:Lamx;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->c:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->m:Ljava/util/ArrayList;

    .line 85
    iget v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->j:I

    if-ne v0, v1, :cond_1

    .line 87
    iput-boolean v2, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->k:Z

    .line 88
    iget v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->j:I

    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/mode/NewModeActivity;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 94
    iget-object v1, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 112
    :cond_0
    :goto_0
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07005f

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/mode/NewModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->e:Landroid/widget/Button;

    .line 113
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070060

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/mode/NewModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->f:Landroid/widget/Button;

    .line 115
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->a:Landroid/view/LayoutInflater;

    .line 119
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->h:Lamp;

    invoke-virtual {v0}, Lamp;->g()Lamh;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->d:Lamh;

    .line 120
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->d:Lamh;

    invoke-virtual {v0}, Lamh;->c()I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->b:I

    .line 121
    invoke-direct {p0}, Lcom/dianxinos/powermanager/mode/NewModeActivity;->c()V

    .line 122
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->h:Lamp;

    iget v1, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->j:I

    invoke-virtual {v0, v1}, Lamp;->c(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->n:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 104
    iget-object v1, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 105
    iput-boolean v3, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->k:Z

    .line 106
    iget v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->j:I

    iget-object v1, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->h:Lamp;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lamp;->g(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->i:Lamx;

    invoke-virtual {v0}, Lamx;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iput-boolean v3, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->o:Z

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 179
    invoke-super {p0}, Laao;->onDestroy()V

    .line 180
    iput-object v1, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->i:Lamx;

    .line 181
    iput-object v1, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->c:Ljava/util/ArrayList;

    .line 182
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 183
    iput-object v1, p0, Lcom/dianxinos/powermanager/mode/NewModeActivity;->m:Ljava/util/ArrayList;

    .line 184
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 193
    invoke-super {p0}, Laao;->onPause()V

    .line 194
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 188
    invoke-super {p0}, Laao;->onResume()V

    .line 189
    return-void
.end method
