.class public Lcom/dianxinos/powermanager/mode/ModeMgrActivity;
.super Lrc;
.source "ModeMgrActivity.java"

# interfaces
.implements Ladc;
.implements Lamk;
.implements Lamo;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Laff;

.field private D:Landroid/content/BroadcastReceiver;

.field private final e:I

.field private f:Lamv;

.field private g:I

.field private h:I

.field private i:Landroid/widget/LinearLayout;

.field private j:Ljava/util/ArrayList;

.field private k:Landroid/view/LayoutInflater;

.field private l:I

.field private m:Lauu;

.field private n:I

.field private o:Lamh;

.field private p:Z

.field private q:Lamp;

.field private r:Z

.field private s:Larr;

.field private t:Landroid/widget/TextView;

.field private u:Z

.field private v:Lacz;

.field private w:Ladd;

.field private x:Z

.field private y:I

.field private z:Lamw;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Lrc;-><init>()V

    .line 50
    iput v3, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->e:I

    .line 59
    new-instance v0, Lamv;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lamv;-><init>(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;Lamr;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->f:Lamv;

    .line 61
    const/4 v0, 0x3

    iput v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->g:I

    .line 62
    iput v2, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->h:I

    .line 74
    iput-boolean v2, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->r:Z

    .line 83
    iput v3, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->y:I

    .line 85
    iput-boolean v2, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->A:Z

    .line 86
    iput-boolean v2, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->B:Z

    .line 592
    new-instance v0, Lamt;

    invoke-direct {v0, p0}, Lamt;-><init>(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->D:Landroid/content/BroadcastReceiver;

    .line 677
    return-void
.end method

.method private a(ILjava/lang/String;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 254
    new-instance v0, Lamn;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->getActivity()Ln;

    move-result-object v1

    invoke-direct {v0, v1}, Lamn;-><init>(Landroid/content/Context;)V

    .line 255
    invoke-virtual {v0, p2}, Lamn;->setTitle(Ljava/lang/String;)V

    .line 257
    const/4 v1, 0x3

    if-lt p1, v1, :cond_2

    .line 258
    invoke-virtual {v0, v2}, Lamn;->setEditDelPanelVisiable(I)V

    .line 259
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00b0

    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->q:Lamp;

    invoke-virtual {v1}, Lamp;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a015a

    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lamn;->setSummary(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0, v2}, Lamn;->setSummaryVisibility(I)V

    .line 274
    :cond_0
    :goto_0
    iget v1, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->h:I

    if-ne p1, v1, :cond_1

    .line 275
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lamn;->setSelected(Z)V

    .line 278
    :cond_1
    invoke-virtual {v0, p0}, Lamn;->setOnActionListener(Lamo;)V

    .line 279
    invoke-virtual {v0, p0}, Lamn;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v1, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    return-object v0

    .line 264
    :cond_2
    invoke-virtual {v0, v2}, Lamn;->setSummaryVisibility(I)V

    .line 265
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lamn;->setEditDelPanelVisiable(I)V

    .line 266
    iget-object v1, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->q:Lamp;

    invoke-virtual {v1, p1}, Lamp;->d(I)Ljava/lang/String;

    move-result-object v1

    .line 267
    if-eqz v1, :cond_3

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 268
    iget-object v1, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->q:Lamp;

    invoke-virtual {v1, p1}, Lamp;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lamn;->setSummary(Ljava/lang/String;)V

    goto :goto_0

    .line 270
    :cond_3
    const-string v1, ""

    invoke-virtual {v0, v1}, Lamn;->setSummary(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 509
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->k:Landroid/view/LayoutInflater;

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f030051

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 510
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070155

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 511
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070156

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 514
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    if-eqz p3, :cond_0

    .line 516
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v3, 0x7f090038

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 517
    :cond_0
    return-object v1
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;)Lauu;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->m:Lauu;

    return-object v0
.end method

.method private a(IZ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 618
    if-nez p2, :cond_0

    .line 619
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->w:Ladd;

    iget v0, v0, Ladd;->k:I

    .line 620
    if-eq v0, v2, :cond_0

    .line 621
    iget v1, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->y:I

    if-ne v1, v2, :cond_1

    .line 622
    iput v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->y:I

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 625
    :cond_1
    iput v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->y:I

    .line 627
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->A:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->B:Z

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->z:Lamw;

    if-eqz v0, :cond_2

    .line 630
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->z:Lamw;

    invoke-virtual {v0}, Lamw;->a()V

    .line 632
    :cond_2
    new-instance v0, Lamw;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lamw;-><init>(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;Lamr;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->z:Lamw;

    .line 633
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->z:Lamw;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lamw;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 634
    iput-boolean v3, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->A:Z

    goto :goto_0
.end method

.method private a(Landroid/widget/LinearLayout;Z)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x6

    const v9, 0x7f0a00f8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 361
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->o:Lamh;

    iget v3, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->n:I

    invoke-virtual {v0, v3}, Lamh;->d(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 363
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v2

    .line 365
    :goto_0
    if-ge v4, v6, :cond_8

    .line 367
    invoke-static {v4}, Lamg;->a(I)I

    move-result v3

    .line 368
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->o:Lamh;

    invoke-virtual {v0, v3}, Lamh;->a(I)Lahp;

    move-result-object v0

    invoke-virtual {v0}, Lahp;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    :goto_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->o:Lamh;

    invoke-virtual {v0, v3}, Lamh;->a(I)Lahp;

    move-result-object v0

    invoke-virtual {v0}, Lahp;->c()Ljava/lang/String;

    move-result-object v7

    .line 374
    if-eqz p2, :cond_1

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v8, -0x1

    if-ne v0, v8, :cond_4

    .line 375
    :cond_1
    if-eqz v3, :cond_2

    if-eq v3, v10, :cond_2

    if-ne v3, v1, :cond_3

    .line 378
    :cond_2
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->o:Lamh;

    invoke-virtual {v0, v3}, Lamh;->a(I)Lahp;

    move-result-object v0

    invoke-virtual {v0}, Lahp;->b()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move v0, v2

    .line 403
    :goto_2
    invoke-direct {p0, v7, v3, v0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v0

    .line 404
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 381
    :cond_3
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->o:Lamh;

    invoke-virtual {v0, v3}, Lamh;->a(I)Lahp;

    move-result-object v0

    invoke-virtual {v0}, Lahp;->g()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->c(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move v0, v2

    goto :goto_2

    .line 386
    :cond_4
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 387
    iget-object v8, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->o:Lamh;

    invoke-virtual {v8, v3}, Lamh;->a(I)Lahp;

    move-result-object v8

    .line 388
    invoke-virtual {v8, v0}, Lahp;->e(I)I

    move-result v0

    .line 389
    if-eqz v3, :cond_5

    if-ne v3, v1, :cond_6

    .line 391
    :cond_5
    iget-object v8, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->o:Lamh;

    invoke-virtual {v8, v3}, Lamh;->a(I)Lahp;

    move-result-object v3

    invoke-virtual {v3, v0}, Lahp;->b(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move v0, v1

    goto :goto_2

    .line 393
    :cond_6
    if-ne v3, v10, :cond_7

    .line 394
    iget-object v8, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->o:Lamh;

    invoke-virtual {v8, v3}, Lamh;->a(I)Lahp;

    move-result-object v3

    invoke-virtual {v3, v0}, Lahp;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 395
    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a00e7

    invoke-virtual {p0, v3}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 396
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    invoke-virtual {p0, v9}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move v0, v1

    goto :goto_2

    .line 399
    :cond_7
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 400
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    invoke-virtual {p0, v9}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move v0, v1

    goto/16 :goto_2

    .line 407
    :cond_8
    iget v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->n:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_9

    .line 408
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->u:Z

    if-eqz v0, :cond_9

    .line 409
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0103

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 410
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a00fa

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 412
    if-eqz p2, :cond_b

    .line 413
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    invoke-virtual {p0, v9}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 414
    iget-object v4, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->o:Lamh;

    iget-object v4, v4, Lamh;->a:Lahd;

    invoke-virtual {v4}, Lahd;->a()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 415
    invoke-direct {p0, v3, v0, v2}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v0

    .line 425
    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 429
    :cond_9
    return-void

    .line 417
    :cond_a
    invoke-direct {p0, v3, v0, v1}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_3

    .line 420
    :cond_b
    iget-object v1, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->o:Lamh;

    iget-object v1, v1, Lamh;->a:Lahd;

    invoke-virtual {v1}, Lahd;->a()Z

    move-result v1

    if-nez v1, :cond_c

    .line 421
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a00f9

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 423
    :cond_c
    invoke-direct {p0, v3, v0, v2}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_3

    :cond_d
    move-object v3, v0

    move v0, v1

    goto/16 :goto_2
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->e(I)V

    return-void
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->a(IZ)V

    return-void
.end method

.method private a(Z)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f07005d

    .line 297
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->m:Lauu;

    if-nez v0, :cond_0

    .line 298
    new-instance v0, Lauu;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->getActivity()Ln;

    move-result-object v1

    sget-object v2, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v2, 0x7f030014

    invoke-direct {v0, v1, v2}, Lauu;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->m:Lauu;

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->m:Lauu;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f070018

    invoke-virtual {v0, v1}, Lauu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    .line 301
    iget-object v1, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->q:Lamp;

    iget v2, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->n:I

    invoke-virtual {v1, v2}, Lamp;->c(I)Ljava/lang/String;

    move-result-object v1

    .line 302
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->m:Lauu;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f070064

    invoke-virtual {v0, v1}, Lauu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    check-cast v0, Landroid/widget/LinearLayout;

    .line 305
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 306
    invoke-direct {p0, v0, p1}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->a(Landroid/widget/LinearLayout;Z)V

    .line 308
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->m:Lauu;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f070066

    invoke-virtual {v0, v1}, Lauu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    check-cast v0, Landroid/widget/Button;

    .line 309
    new-instance v1, Lamr;

    invoke-direct {v1, p0}, Lamr;-><init>(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->m:Lauu;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f070065

    invoke-virtual {v0, v1}, Lauu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    check-cast v0, Landroid/widget/Button;

    .line 322
    new-instance v1, Lams;

    invoke-direct {v1, p0}, Lams;-><init>(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    if-eqz p1, :cond_1

    .line 343
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->m:Lauu;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    invoke-virtual {v0, v3}, Lauu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 348
    :goto_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->m:Lauu;

    invoke-virtual {v0}, Lauu;->show()V

    .line 349
    return-void

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->m:Lauu;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    invoke-virtual {v0, v3}, Lauu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->A:Z

    return p1
.end method

.method public static synthetic b(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 48
    iget v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->n:I

    return v0
.end method

.method public static synthetic b(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput p1, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->h:I

    return p1
.end method

.method private b(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 226
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->o:Lamh;

    invoke-virtual {v0, p1, v2}, Lamh;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->o:Lamh;

    invoke-virtual {v0}, Lamh;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 228
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->getActivity()Ln;

    move-result-object v0

    invoke-virtual {v0}, Ln;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->getActivity()Ln;

    move-result-object v0

    .line 230
    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v1}, Lahl;->a(Landroid/view/Window;I)V

    .line 233
    :cond_0
    iput-boolean v2, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->p:Z

    .line 235
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a00f4

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->getActivity()Ln;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 237
    return-void

    .line 228
    :cond_1
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->getActivity()Ln;

    move-result-object v0

    invoke-virtual {v0}, Ln;->getParent()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method public static synthetic b(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->B:Z

    return p1
.end method

.method public static synthetic c(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;)Lamp;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->q:Lamp;

    return-object v0
.end method

.method private c(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 352
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 353
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a00f9

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 356
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a00fa

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static synthetic c(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->f(I)V

    return-void
.end method

.method public static synthetic d(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method private d(I)Z
    .locals 9
    .parameter

    .prologue
    const v8, 0x7f0a014a

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 468
    iget-object v2, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->s:Larr;

    invoke-virtual {v2}, Larr;->i()Z

    move-result v2

    .line 469
    iget-object v3, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->s:Larr;

    invoke-virtual {v3}, Larr;->l()Z

    move-result v3

    .line 470
    if-nez v2, :cond_1

    if-nez v3, :cond_1

    .line 494
    :cond_0
    :goto_0
    return v0

    .line 473
    :cond_1
    iget-object v4, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->q:Lamp;

    iget-object v5, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->s:Larr;

    invoke-virtual {v5}, Larr;->k()I

    move-result v5

    invoke-virtual {v4, v5}, Lamp;->g(I)I

    move-result v4

    .line 474
    iget-object v5, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->q:Lamp;

    iget-object v6, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->s:Larr;

    iget v7, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->h:I

    invoke-virtual {v6, v7}, Larr;->h(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lamp;->g(I)I

    move-result v5

    .line 476
    if-eqz v2, :cond_3

    if-eq v4, p1, :cond_2

    if-ne v5, p1, :cond_3

    .line 478
    :cond_2
    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    invoke-virtual {p0, v8}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 479
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->getActivity()Ln;

    move-result-object v3

    invoke-static {v3, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 480
    goto :goto_0

    .line 483
    :cond_3
    iget-object v2, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->q:Lamp;

    iget-object v4, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->s:Larr;

    invoke-virtual {v4}, Larr;->m()I

    move-result v4

    invoke-virtual {v2, v4}, Lamp;->g(I)I

    move-result v2

    .line 484
    iget-object v4, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->q:Lamp;

    iget-object v5, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->s:Larr;

    iget v6, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->h:I

    invoke-virtual {v5, v6}, Larr;->f(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lamp;->g(I)I

    move-result v4

    .line 487
    if-eqz v3, :cond_0

    if-eq v2, p1, :cond_4

    if-ne v4, p1, :cond_0

    .line 489
    :cond_4
    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    invoke-virtual {p0, v8}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 490
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->getActivity()Ln;

    move-result-object v3

    invoke-static {v3, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 491
    goto :goto_0
.end method

.method public static synthetic e(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 48
    iget v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->h:I

    return v0
.end method

.method private e(I)V
    .locals 2
    .parameter

    .prologue
    .line 498
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->j:Ljava/util/ArrayList;

    iget v1, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->h:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lamn;->setSelected(Z)V

    .line 499
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamn;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lamn;->setSelected(Z)V

    .line 500
    iput p1, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->h:I

    .line 501
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->q:Lamp;

    iget v1, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->h:I

    invoke-virtual {v0, v1}, Lamp;->a(I)V

    .line 502
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->o:Lamh;

    iget-boolean v1, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->p:Z

    invoke-virtual {v0, v1}, Lamh;->a(Z)V

    .line 503
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->o:Lamh;

    iget v1, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->h:I

    invoke-virtual {v0, v1}, Lamh;->c(I)V

    .line 504
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->b(I)V

    .line 506
    return-void
.end method

.method public static synthetic f(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;)Laff;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->C:Laff;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 240
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->g:I

    if-ge v0, v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->q:Lamp;

    invoke-virtual {v1, v0}, Lamp;->c(I)Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-direct {p0, v0, v1}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->a(ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 243
    iget-object v2, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 244
    iget-object v1, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->i:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->h()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    :cond_0
    invoke-direct {p0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->g()Landroid/view/View;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 250
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->i:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->i()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 251
    return-void
.end method

.method private f(I)V
    .locals 2
    .parameter

    .prologue
    .line 551
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->q:Lamp;

    invoke-virtual {v0, p1}, Lamp;->h(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 552
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->q:Lamp;

    invoke-virtual {v0}, Lamp;->k()V

    .line 554
    :cond_0
    iget v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->h:I

    if-le v0, p1, :cond_1

    .line 556
    iget v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->h:I

    .line 557
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->q:Lamp;

    iget v1, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->h:I

    invoke-virtual {v0, v1}, Lamp;->a(I)V

    .line 560
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 562
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->i:Landroid/widget/LinearLayout;

    mul-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 563
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->i:Landroid/widget/LinearLayout;

    mul-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 565
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->q:Lamp;

    invoke-virtual {v0, p1}, Lamp;->b(I)V

    .line 566
    iget v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->g:I

    .line 567
    return-void
.end method

.method private g()Landroid/view/View;
    .locals 2

    .prologue
    .line 287
    new-instance v0, Lamn;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->getActivity()Ln;

    move-result-object v1

    invoke-direct {v0, v1}, Lamn;-><init>(Landroid/content/Context;)V

    .line 288
    const-string v1, "addNew"

    invoke-virtual {v0, v1}, Lamn;->setTag(Ljava/lang/Object;)V

    .line 289
    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f02000c

    invoke-virtual {v0, v1}, Lamn;->setIcon(I)V

    .line 290
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00b8

    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lamn;->setTitle(Ljava/lang/String;)V

    .line 291
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00b9

    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lamn;->setSummary(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v0, p0}, Lamn;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    return-object v0
.end method

.method public static synthetic g(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->x:Z

    return v0
.end method

.method public static synthetic h(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;)Ladd;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->w:Ladd;

    return-object v0
.end method

.method private h()Landroid/view/View;
    .locals 4

    .prologue
    .line 521
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->getActivity()Ln;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 522
    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0203bf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 523
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 524
    return-object v0
.end method

.method public static synthetic i(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 48
    iget v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->l:I

    return v0
.end method

.method private i()Landroid/view/View;
    .locals 5

    .prologue
    .line 528
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->getActivity()Ln;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 529
    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0201ca

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 530
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->getActivity()Ln;

    move-result-object v3

    invoke-virtual {v3}, Ln;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v4, 0x7f08010b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 532
    return-object v0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 536
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->o:Lamh;

    invoke-virtual {v0}, Lamh;->g()V

    .line 537
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->o:Lamh;

    iget v1, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->h:I

    invoke-virtual {v0, v1}, Lamh;->c(I)V

    .line 539
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->o:Lamh;

    invoke-virtual {v0}, Lamh;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 540
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->p:Z

    .line 547
    :goto_0
    return-void

    .line 543
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->p:Z

    goto :goto_0
.end method

.method private k()V
    .locals 3

    .prologue
    .line 587
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 588
    const-string v1, "com.dianxinos.dxbs.MODECHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 589
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->getActivity()Ln;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->D:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ln;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 590
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 432
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->getActivity()Ln;

    move-result-object v1

    const-class v2, Lcom/dianxinos/powermanager/mode/NewModeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 433
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 434
    const-string v2, "index"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 435
    const-string v2, "counts"

    iget v3, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->g:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 436
    if-ne p2, v4, :cond_0

    .line 437
    const-string v2, "isadd"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 438
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 439
    invoke-virtual {p0, v0, p2}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 440
    return-void
.end method

.method public a(Ladd;)V
    .locals 2
    .parameter

    .prologue
    .line 608
    iput-object p1, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->w:Ladd;

    .line 609
    iget-boolean v0, p1, Ladd;->i:Z

    if-eqz v0, :cond_0

    .line 610
    iget-boolean v0, p1, Ladd;->i:Z

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->B:Z

    .line 611
    :cond_0
    iget-boolean v0, p1, Ladd;->l:Z

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->x:Z

    .line 612
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->f:Lamv;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lamv;->sendEmptyMessage(I)Z

    .line 613
    return-void
.end method

.method public a(Lamn;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 694
    const/4 v0, 0x3

    :goto_0
    iget v1, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->g:I

    if-ge v0, v1, :cond_0

    .line 695
    iget-object v1, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_3

    .line 696
    sget v1, Lamn;->a:I

    if-ne p2, v1, :cond_1

    .line 697
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->a(II)V

    .line 734
    :cond_0
    :goto_1
    return-void

    .line 699
    :cond_1
    sget v1, Lamn;->b:I

    if-ne p2, v1, :cond_3

    .line 700
    iget v1, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->h:I

    if-ne v1, v0, :cond_2

    .line 701
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0105

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 702
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->getActivity()Ln;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 706
    :cond_2
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->d(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 709
    iput v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->l:I

    .line 710
    new-instance v1, Lauu;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->getActivity()Ln;

    move-result-object v2

    invoke-direct {v1, v2}, Lauu;-><init>(Landroid/content/Context;)V

    .line 712
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->getActivity()Ln;

    move-result-object v2

    const-string v3, "mode"

    const-string v4, "cdelete"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 716
    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a00f0

    invoke-virtual {v1, v2}, Lauu;->setTitle(I)V

    .line 717
    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a00f1

    invoke-virtual {v1, v2}, Lauu;->c(I)V

    .line 718
    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a00d2

    new-instance v3, Lamu;

    invoke-direct {v3, p0}, Lamu;-><init>(Lcom/dianxinos/powermanager/mode/ModeMgrActivity;)V

    invoke-virtual {v1, v2, v3}, Lauu;->a(ILandroid/view/View$OnClickListener;)V

    .line 729
    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a00d3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lauu;->b(ILandroid/view/View$OnClickListener;)V

    .line 730
    invoke-virtual {v1}, Lauu;->show()V

    .line 694
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 738
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->getActivity()Ln;

    move-result-object v0

    invoke-virtual {v0}, Ln;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 739
    if-eqz v0, :cond_0

    .line 740
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 744
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 742
    :cond_0
    invoke-super {p0}, Lrc;->a()Z

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 571
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->p:Z

    if-nez v0, :cond_0

    .line 572
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->p:Z

    .line 573
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->f:Lamv;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lamv;->sendEmptyMessage(I)Z

    .line 575
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 579
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->p:Z

    if-eqz v0, :cond_0

    .line 581
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->p:Z

    .line 582
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->f:Lamv;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lamv;->sendEmptyMessage(I)Z

    .line 584
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 164
    if-ne p1, v5, :cond_2

    .line 166
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->r:Z

    if-eqz v0, :cond_0

    .line 167
    iget v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->n:I

    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->e(I)V

    .line 168
    iput-boolean v4, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->r:Z

    .line 171
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 222
    :cond_1
    :goto_0
    return-void

    .line 173
    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 174
    const-string v1, "ModeName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    iget v1, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->g:I

    invoke-direct {p0, v1, v0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->a(ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 176
    iget-object v2, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->i:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->g:I

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 177
    iget-object v1, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->i:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->h()Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->g:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 178
    iget-object v1, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->q:Lamp;

    invoke-virtual {v1, v0}, Lamp;->a(Ljava/lang/String;)V

    .line 179
    iget v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->g:I

    goto :goto_0

    .line 185
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 186
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 188
    :pswitch_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 189
    const-string v1, "ModeName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 190
    const-string v2, "index"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 191
    const-string v3, "settings_changed"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 192
    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->q:Lamp;

    invoke-virtual {v0, v2}, Lamp;->h(I)I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    .line 194
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->q:Lamp;

    invoke-virtual {v0}, Lamp;->k()V

    .line 197
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->t:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 198
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->t:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    :cond_3
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->q:Lamp;

    iget v4, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->h:I

    invoke-virtual {v0, v4}, Lamp;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 202
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->q:Lamp;

    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Lamp;->f(I)V

    .line 205
    :cond_4
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->q:Lamp;

    invoke-virtual {v0, v2, v1}, Lamp;->a(ILjava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamn;

    invoke-virtual {v0, v1}, Lamn;->setTitle(Ljava/lang/String;)V

    .line 207
    iget v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->h:I

    if-ne v2, v0, :cond_1

    .line 209
    if-eqz v3, :cond_1

    .line 210
    iput-boolean v5, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->A:Z

    .line 211
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->o:Lamh;

    iget-boolean v1, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->p:Z

    invoke-virtual {v0, v1}, Lamh;->a(Z)V

    .line 212
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->o:Lamh;

    iget v1, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->h:I

    invoke-virtual {v0, v1}, Lamh;->c(I)V

    .line 213
    iget v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->h:I

    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->b(I)V

    goto/16 :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch

    .line 186
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 444
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 447
    if-eqz v0, :cond_1

    const-string v2, "addNew"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 448
    iget v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->g:I

    invoke-virtual {p0, v0, v3}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->a(II)V

    .line 450
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->getActivity()Ln;

    move-result-object v0

    const-string v1, "mode"

    const-string v2, "add"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 465
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 454
    :goto_0
    iget v2, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->g:I

    if-ge v0, v2, :cond_0

    .line 455
    iget-object v2, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_2

    .line 456
    iput v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->n:I

    .line 457
    iget v2, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->h:I

    if-eq v2, v0, :cond_3

    .line 458
    invoke-direct {p0, v3}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->a(Z)V

    .line 454
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 460
    :cond_3
    invoke-direct {p0, v1}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->a(Z)V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 94
    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f03004e

    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->d:Landroid/view/View;

    .line 96
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->getActivity()Ln;

    move-result-object v1

    invoke-static {v1}, Lacz;->a(Landroid/content/Context;)Lacz;

    move-result-object v1

    iput-object v1, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->v:Lacz;

    .line 98
    sget-boolean v1, Lazw;->i:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->getActivity()Ln;

    move-result-object v1

    invoke-static {v1}, Lazf;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lazf;->n()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->u:Z

    .line 100
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->getActivity()Ln;

    move-result-object v0

    invoke-static {v0}, Lamp;->a(Landroid/content/Context;)Lamp;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->q:Lamp;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->j:Ljava/util/ArrayList;

    .line 102
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07014f

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->i:Landroid/widget/LinearLayout;

    .line 104
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->q:Lamp;

    invoke-virtual {v0}, Lamp;->a()I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->g:I

    .line 105
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->q:Lamp;

    invoke-virtual {v0}, Lamp;->b()I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->h:I

    .line 107
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->getActivity()Ln;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->k:Landroid/view/LayoutInflater;

    .line 108
    invoke-direct {p0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->f()V

    .line 109
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->q:Lamp;

    invoke-virtual {v0}, Lamp;->g()Lamh;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->o:Lamh;

    .line 110
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->o:Lamh;

    invoke-virtual {v0, p0}, Lamh;->a(Lamk;)V

    .line 112
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->getActivity()Ln;

    move-result-object v0

    invoke-static {v0}, Larr;->a(Landroid/content/Context;)Larr;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->s:Larr;

    .line 114
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->getActivity()Ln;

    move-result-object v0

    invoke-virtual {v0}, Ln;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Laff;->a(Landroid/content/Context;)Laff;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->C:Laff;

    .line 115
    invoke-direct {p0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->k()V

    .line 116
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->d:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 122
    :try_start_0
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->getActivity()Ln;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->D:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ln;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->o:Lamh;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lamh;->a(Lamk;)V

    .line 129
    invoke-super {p0}, Lrc;->onDestroy()V

    .line 130
    return-void

    .line 123
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 152
    invoke-super {p0}, Lrc;->onPause()V

    .line 153
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->z:Lamw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->z:Lamw;

    invoke-virtual {v0}, Lamw;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->z:Lamw;

    invoke-virtual {v0}, Lamw;->a()V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->v:Lacz;

    invoke-virtual {v0, p0}, Lacz;->b(Ladc;)V

    .line 159
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->f:Lamv;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lamv;->removeMessages(I)V

    .line 160
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 136
    const/4 v0, -0x1

    iput v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->y:I

    .line 137
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->v:Lacz;

    invoke-virtual {v0, p0}, Lacz;->a(Ladc;)V

    .line 138
    invoke-direct {p0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->j()V

    .line 139
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->o:Lamh;

    invoke-virtual {v0}, Lamh;->k()V

    .line 141
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->q:Lamp;

    invoke-virtual {v0}, Lamp;->a()I

    move-result v0

    iget v1, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->g:I

    if-le v0, v1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 143
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 144
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->q:Lamp;

    invoke-virtual {v0}, Lamp;->a()I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->g:I

    .line 145
    invoke-direct {p0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->f()V

    .line 147
    :cond_0
    invoke-super {p0}, Lrc;->onResume()V

    .line 148
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 749
    invoke-super {p0, p1, p2}, Lrc;->startActivityForResult(Landroid/content/Intent;I)V

    .line 750
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/mode/ModeMgrActivity;->getActivity()Ln;

    move-result-object v0

    invoke-virtual {v0}, Ln;->getParent()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lly;->a:Lcom/dianxinos/dxbs/R$anim;

    const v1, 0x7f040006

    sget-object v2, Lly;->a:Lcom/dianxinos/dxbs/R$anim;

    const v2, 0x7f040007

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 751
    return-void
.end method
