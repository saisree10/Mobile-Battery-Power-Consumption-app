.class public Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;
.super Lrc;
.source "AppsPowerUsageHistory.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Latq;
.implements Lawp;


# static fields
.field private static t:Landroid/widget/ImageView;


# instance fields
.field private A:Z

.field private e:I

.field private f:I

.field private g:Lays;

.field private h:Lato;

.field private i:Lats;

.field private j:J

.field private k:Laya;

.field private l:Landroid/widget/ListView;

.field private m:Landroid/widget/Button;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/LinearLayout;

.field private p:Layf;

.field private q:Lawn;

.field private r:Landroid/view/View;

.field private s:Landroid/view/View;

.field private u:Z

.field private v:Landroid/view/View;

.field private w:D

.field private x:D

.field private y:Ljava/lang/String;

.field private z:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 55
    invoke-direct {p0}, Lrc;-><init>()V

    .line 66
    iput v1, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->e:I

    .line 84
    new-instance v0, Layf;

    invoke-direct {v0, p0}, Layf;-><init>(Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->p:Layf;

    .line 91
    iput-boolean v1, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->u:Z

    .line 360
    return-void
.end method

.method private a(Lats;)D
    .locals 11
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 278
    iget-object v0, p1, Lats;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v4, v3

    .line 279
    :goto_0
    if-ge v4, v5, :cond_4

    .line 280
    iget-object v0, p1, Lats;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latu;

    .line 281
    iget v1, v0, Latu;->a:I

    if-nez v1, :cond_0

    .line 282
    iget-wide v1, v0, Latu;->e:D

    iput-wide v1, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->w:D

    .line 284
    :cond_0
    iget-object v1, v0, Latu;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v2, v3

    .line 285
    :goto_1
    if-ge v2, v6, :cond_1

    .line 286
    iget-object v1, v0, Latu;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Latx;

    .line 288
    iget-wide v7, v1, Latx;->e:D

    const-wide v9, 0x3fb99999a0000000L

    cmpg-double v7, v7, v9

    if-gez v7, :cond_2

    .line 279
    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 290
    :cond_2
    iget v7, v0, Latu;->a:I

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->y:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, v1, Latx;->a:I

    invoke-static {v9}, Latg;->a(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 292
    iget-wide v0, v1, Latx;->e:D

    iput-wide v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->x:D

    .line 293
    iget-wide v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->x:D

    .line 297
    :goto_2
    return-wide v0

    .line 285
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 297
    :cond_4
    const-wide/high16 v0, -0x4010

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Landroid/widget/ImageView;ZZZ)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 412
    new-instance v0, Lawd;

    invoke-direct {v0, p0}, Lawd;-><init>(Landroid/content/Context;)V

    .line 415
    if-eqz p2, :cond_3

    .line 417
    if-eqz p3, :cond_1

    .line 418
    invoke-static {p0}, Latm;->a(Landroid/content/Context;)Latm;

    move-result-object v1

    invoke-virtual {v1}, Latm;->c()Lats;

    move-result-object v1

    .line 430
    :goto_0
    if-eqz p4, :cond_2

    .line 431
    iget-object v1, v1, Lats;->b:Ljava/util/ArrayList;

    :goto_1
    move-object v7, v1

    .line 440
    :goto_2
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 441
    :cond_0
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a008c

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 528
    :goto_3
    return-void

    .line 420
    :cond_1
    invoke-static {p0}, Lato;->a(Landroid/content/Context;)Lato;

    move-result-object v1

    .line 423
    :try_start_0
    invoke-virtual {v1}, Lato;->a()Latr;

    move-result-object v1

    iget-object v1, v1, Latr;->c:Lats;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 433
    :cond_2
    iget-object v1, v1, Lats;->g:Ljava/util/ArrayList;

    goto :goto_1

    .line 436
    :cond_3
    invoke-static {p0}, Lato;->a(Landroid/content/Context;)Lato;

    move-result-object v1

    .line 437
    invoke-virtual {v1}, Lato;->a()Latr;

    move-result-object v1

    iget-object v1, v1, Latr;->d:Latl;

    iget-object v1, v1, Latl;->g:Ljava/util/ArrayList;

    move-object v7, v1

    goto :goto_2

    .line 445
    :cond_4
    invoke-static {p0}, Lath;->a(Landroid/content/Context;)Lath;

    move-result-object v8

    .line 448
    const/4 v6, 0x0

    .line 449
    const/4 v1, 0x5

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 450
    add-int/lit8 v1, v5, 0x1

    new-array v9, v1, [Ljava/lang/String;

    .line 451
    add-int/lit8 v1, v5, 0x1

    new-array v10, v1, [I

    .line 453
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v5, :cond_c

    .line 454
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Latl;

    .line 456
    if-eqz p4, :cond_5

    move-object v2, v1

    .line 457
    check-cast v2, Latu;

    iget-wide v2, v2, Latu;->w:D

    .line 462
    :goto_5
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    .line 463
    const/4 v3, 0x1

    if-ge v2, v3, :cond_6

    move v2, v4

    move v3, v6

    .line 490
    :goto_6
    if-eqz p2, :cond_b

    if-lez v2, :cond_b

    .line 491
    add-int/lit8 v4, v2, -0x1

    .line 492
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Latu;

    .line 493
    iget v1, v1, Latu;->a:I

    const/4 v5, -0x1

    if-ne v1, v5, :cond_b

    .line 495
    aget v1, v10, v4

    .line 496
    sub-int v1, v3, v1

    rsub-int/lit8 v1, v1, 0x64

    aput v1, v10, v4

    .line 497
    const/16 v1, 0x64

    .line 501
    :goto_7
    rsub-int/lit8 v1, v1, 0x64

    .line 502
    const/4 v3, 0x1

    if-lt v1, v3, :cond_a

    .line 503
    if-eqz p2, :cond_9

    .line 504
    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a008d

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v2

    .line 508
    :goto_8
    aput v1, v10, v2

    .line 509
    add-int/lit8 v1, v2, 0x1

    .line 512
    :goto_9
    new-array v2, v1, [Ljava/lang/String;

    .line 513
    new-array v3, v1, [I

    .line 514
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v9, v4, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 515
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v10, v4, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 516
    invoke-virtual {v0, v2, v3}, Lawd;->a([Ljava/lang/String;[I)V

    .line 518
    invoke-static {p0}, Laxb;->a(Landroid/content/Context;)I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3fe999999999999aL

    mul-double/2addr v1, v3

    double-to-int v4, v1

    .line 519
    invoke-static {p0}, Laxb;->a(Landroid/content/Context;)I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v5, 0x3ff0

    mul-double/2addr v1, v5

    double-to-int v5, v1

    .line 521
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 522
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 523
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 524
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 526
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lawd;->a(Landroid/graphics/Canvas;IIII)Landroid/graphics/Canvas;

    .line 527
    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_3

    .line 459
    :cond_5
    iget-wide v2, v1, Latl;->e:D

    goto/16 :goto_5

    .line 468
    :cond_6
    if-eqz p2, :cond_7

    .line 470
    check-cast v1, Latu;

    .line 471
    iget v3, v1, Latu;->a:I

    iget-object v1, v1, Latu;->b:Ljava/lang/String;

    invoke-virtual {v8, v3, v1}, Lath;->a(ILjava/lang/String;)Lati;

    move-result-object v1

    .line 473
    iget-object v1, v1, Lati;->a:Ljava/lang/String;

    aput-object v1, v9, v4

    .line 479
    :goto_a
    aput v2, v10, v4

    .line 480
    add-int/2addr v6, v2

    .line 482
    const/16 v1, 0x64

    if-lt v6, v1, :cond_8

    .line 483
    aget v1, v10, v4

    add-int/lit8 v2, v6, -0x64

    sub-int/2addr v1, v2

    aput v1, v10, v4

    .line 484
    const/16 v3, 0x64

    .line 485
    add-int/lit8 v2, v4, 0x1

    .line 486
    goto/16 :goto_6

    .line 476
    :cond_7
    check-cast v1, Latd;

    .line 477
    iget v1, v1, Latd;->a:I

    invoke-static {v1}, Latg;->a(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v4

    goto :goto_a

    .line 453
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 506
    :cond_9
    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a008e

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v2

    goto/16 :goto_8

    .line 424
    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_a
    move v1, v2

    goto/16 :goto_9

    :cond_b
    move v1, v3

    goto/16 :goto_7

    :cond_c
    move v2, v5

    move v3, v6

    goto/16 :goto_6
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->g()V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x1

    const-wide/high16 v10, -0x4010

    .line 245
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 246
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_4

    .line 247
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latl;

    move-object v1, v0

    .line 248
    check-cast v1, Latu;

    .line 249
    iget-wide v4, v0, Latl;->e:D

    .line 251
    iget v1, v1, Latu;->a:I

    if-nez v1, :cond_2

    .line 252
    iget-wide v6, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->x:D

    cmpl-double v1, v6, v10

    if-nez v1, :cond_0

    .line 253
    iput-wide v4, v0, Latl;->f:D

    .line 246
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 255
    :cond_0
    if-ne v3, v12, :cond_1

    .line 256
    iput-wide v4, v0, Latl;->f:D

    .line 257
    iput-boolean v12, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->A:Z

    goto :goto_1

    .line 259
    :cond_1
    iget-wide v6, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->x:D

    sub-double/2addr v4, v6

    iput-wide v4, v0, Latl;->f:D

    goto :goto_1

    .line 263
    :cond_2
    iget-wide v6, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->x:D

    cmpl-double v1, v6, v10

    if-nez v1, :cond_3

    .line 264
    const-wide/high16 v6, 0x3ff0

    iput-wide v6, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->z:D

    .line 265
    iput-wide v4, v0, Latl;->f:D

    goto :goto_1

    .line 267
    :cond_3
    const-wide/high16 v6, 0x4059

    iget-wide v8, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->w:D

    sub-double/2addr v6, v8

    div-double v6, v4, v6

    iget-wide v8, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->x:D

    mul-double/2addr v6, v8

    add-double/2addr v6, v4

    .line 270
    div-double v4, v6, v4

    iput-wide v4, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->z:D

    .line 271
    iput-wide v6, v0, Latl;->f:D

    goto :goto_1

    .line 275
    :cond_4
    return-void
.end method

.method private a(Z)V
    .locals 4
    .parameter

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x0

    .line 531
    if-eqz p1, :cond_0

    .line 532
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->r:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 533
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->s:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 539
    :goto_0
    return-void

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->r:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 536
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->getActivity()Ln;

    move-result-object v0

    sget-object v1, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->t:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v3, v3}, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->a(Landroid/content/Context;Landroid/widget/ImageView;ZZZ)V

    .line 537
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->s:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private f()Ljava/util/HashSet;
    .locals 5

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->getActivity()Ln;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Ln;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 153
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 154
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 155
    if-nez v3, :cond_0

    move-object v0, v1

    .line 164
    :goto_0
    return-object v0

    .line 158
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 160
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_1

    .line 162
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 160
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 164
    goto :goto_0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->h:Lato;

    invoke-virtual {v0}, Lato;->a()Latr;

    move-result-object v0

    .line 179
    if-nez v0, :cond_1

    .line 182
    iget v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->f:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->h:Lato;

    invoke-virtual {v0}, Lato;->b()V

    .line 184
    iget v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->f:I

    .line 197
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->g:Lays;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->getActivity()Ln;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->d:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lays;->a(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    .line 191
    :cond_1
    iget-object v1, v0, Latr;->c:Lats;

    iput-object v1, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->i:Lats;

    .line 192
    iget-object v1, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->i:Lats;

    iget-object v1, v1, Lats;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 193
    iget-object v1, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->v:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 195
    :cond_2
    iget-wide v0, v0, Latr;->b:J

    iput-wide v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->j:J

    .line 196
    invoke-direct {p0}, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->h()V

    goto :goto_0
.end method

.method private h()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-wide v3, 0x40ac200000000000L

    const/4 v5, 0x1

    .line 200
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->g:Lays;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->getActivity()Ln;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->d:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lays;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 202
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->i:Lats;

    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->a(Lats;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->x:D

    .line 203
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->i:Lats;

    iget-object v0, v0, Lats;->g:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->a(Ljava/util/ArrayList;)V

    .line 204
    iget v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->e:I

    if-ne v0, v5, :cond_0

    .line 205
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->i:Lats;

    iget-object v0, v0, Lats;->g:Ljava/util/ArrayList;

    new-instance v1, Laye;

    invoke-direct {v1, p0}, Laye;-><init>(Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 213
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->k:Laya;

    iget-object v1, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->i:Lats;

    iget-object v1, v1, Lats;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Laya;->a(Ljava/util/ArrayList;)V

    .line 214
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->k:Laya;

    iget v1, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->e:I

    invoke-virtual {v0, v1}, Laya;->a(I)V

    .line 215
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->i:Lats;

    iget-wide v0, v0, Lats;->d:D

    div-double/2addr v0, v3

    double-to-int v0, v0

    .line 228
    :goto_0
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701c6

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 229
    iget-wide v1, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->j:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    .line 230
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->getActivity()Ln;

    move-result-object v2

    invoke-static {v2, v1}, Lazq;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-static {}, Lazf;->a()I

    move-result v2

    if-nez v2, :cond_2

    .line 236
    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a021d

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 241
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    return-void

    .line 216
    :cond_0
    iget v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 217
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->k:Laya;

    iget-object v1, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->i:Lats;

    iget-object v1, v1, Lats;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Laya;->a(Ljava/util/ArrayList;)V

    .line 218
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->k:Laya;

    iget v1, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->e:I

    invoke-virtual {v0, v1}, Laya;->a(I)V

    .line 219
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->i:Lats;

    iget-wide v0, v0, Lats;->h:D

    div-double/2addr v0, v3

    double-to-int v0, v0

    goto :goto_0

    .line 224
    :cond_1
    const-string v0, "AppsPowerUsageHistory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sort type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lazt;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :cond_2
    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0082

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->getActivity()Ln;

    move-result-object v0

    invoke-virtual {v0}, Ln;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 394
    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 399
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 397
    :cond_0
    invoke-super {p0}, Lrc;->a()Z

    goto :goto_0
.end method

.method public a_(I)V
    .locals 2
    .parameter

    .prologue
    .line 380
    iget v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->e:I

    if-eq v0, p1, :cond_1

    .line 381
    iput p1, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->e:I

    .line 382
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 383
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->m:Landroid/widget/Button;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a008f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 387
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->g()V

    .line 389
    :cond_1
    return-void

    .line 384
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->m:Landroid/widget/Button;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0090

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->p:Layf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Layf;->sendEmptyMessage(I)Z

    .line 358
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 327
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->m:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 329
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->getActivity()Ln;

    move-result-object v0

    invoke-virtual {v0}, Ln;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 330
    if-nez v0, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->getActivity()Ln;

    move-result-object v0

    .line 333
    :cond_0
    new-instance v1, Lawn;

    invoke-direct {v1, v0}, Lawn;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->q:Lawn;

    .line 334
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->q:Lawn;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0080

    invoke-virtual {v0, v1}, Lawn;->setTitle(I)V

    .line 335
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->q:Lawn;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0091

    invoke-virtual {v0, v2, v1}, Lawn;->a(II)V

    .line 336
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->q:Lawn;

    const/4 v1, 0x2

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0092

    invoke-virtual {v0, v1, v2}, Lawn;->a(II)V

    .line 337
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->q:Lawn;

    invoke-virtual {v0, p0}, Lawn;->a(Lawp;)V

    .line 338
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->q:Lawn;

    iget v1, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->e:I

    invoke-virtual {v0, v1}, Lawn;->a(I)Z

    .line 339
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->q:Lawn;

    invoke-virtual {v0}, Lawn;->show()V

    .line 352
    :cond_1
    :goto_0
    return-void

    .line 340
    :cond_2
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->n:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->i:Lats;

    if-eqz v0, :cond_1

    .line 344
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->u:Z

    if-eqz v0, :cond_3

    .line 345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->u:Z

    .line 346
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->u:Z

    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->a(Z)V

    goto :goto_0

    .line 348
    :cond_3
    iput-boolean v2, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->u:Z

    .line 349
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->u:Z

    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->a(Z)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f030068

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->d:Landroid/view/View;

    .line 103
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->y:Ljava/lang/String;

    .line 105
    new-instance v0, Lays;

    invoke-direct {v0}, Lays;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->g:Lays;

    .line 106
    new-instance v0, Laya;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->getActivity()Ln;

    move-result-object v1

    invoke-direct {v0, v1}, Laya;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->k:Laya;

    .line 108
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07013c

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->l:Landroid/widget/ListView;

    .line 110
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->getActivity()Ln;

    move-result-object v0

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f030069

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->v:Landroid/view/View;

    .line 111
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->l:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->v:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 112
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->l:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->k:Laya;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 113
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070011

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->o:Landroid/widget/LinearLayout;

    .line 114
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->l:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 115
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->l:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 117
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->getActivity()Ln;

    move-result-object v0

    invoke-static {v0}, Lato;->a(Landroid/content/Context;)Lato;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->h:Lato;

    .line 118
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->h:Lato;

    invoke-virtual {v0, p0}, Lato;->a(Latq;)V

    .line 120
    invoke-direct {p0}, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->g()V

    .line 122
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701c7

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->m:Landroid/widget/Button;

    .line 123
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->m:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701c8

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->n:Landroid/view/View;

    .line 127
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->n:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->h:Lato;

    invoke-virtual {v0}, Lato;->b()V

    .line 130
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701cb

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->r:Landroid/view/View;

    .line 131
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701c9

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->s:Landroid/view/View;

    .line 132
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701ca

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->t:Landroid/widget/ImageView;

    .line 134
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->d:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 169
    invoke-super {p0}, Lrc;->onDestroy()V

    .line 170
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->h:Lato;

    invoke-virtual {v0, p0}, Lato;->b(Latq;)V

    .line 171
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->g:Lays;

    invoke-virtual {v0}, Lays;->b()V

    .line 172
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->m:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->l:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 175
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 303
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Layd;

    .line 305
    if-nez v0, :cond_0

    .line 322
    :goto_0
    return-void

    .line 309
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->getActivity()Ln;

    move-result-object v3

    const-class v4, Lcom/dianxinos/powermanager/usage/AppPowerUsageDetails;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 310
    const-string v3, "position"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 311
    const-string v3, "bar_percent"

    iget-wide v4, v0, Layd;->h:D

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 312
    const-string v3, "bg"

    iget v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->e:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 313
    const-string v0, "growth_rate"

    iget-wide v3, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->z:D

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 314
    const-string v0, "only_has_system"

    iget-boolean v3, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->A:Z

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 315
    const-string v0, "commu_module_percent"

    iget-wide v3, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->x:D

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 316
    invoke-virtual {p0, v2}, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->startActivity(Landroid/content/Intent;)V

    .line 318
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->getActivity()Ln;

    move-result-object v0

    const-string v2, "monitor"

    const-string v3, "adetail"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_0

    .line 312
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 404
    invoke-super {p0}, Lrc;->onPause()V

    .line 405
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->q:Lawn;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->q:Lawn;

    invoke-virtual {v0}, Lawn;->dismiss()V

    .line 408
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 139
    invoke-super {p0}, Lrc;->onResume()V

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->f:I

    .line 141
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->k:Laya;

    invoke-direct {p0}, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->f()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Laya;->a(Ljava/util/HashSet;)V

    .line 142
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->g:Lays;

    invoke-virtual {v0}, Lays;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->h:Lato;

    invoke-virtual {v0}, Lato;->b()V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->h:Lato;

    invoke-virtual {v0}, Lato;->c()V

    .line 148
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 543
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/usage/AppsPowerUsageHistory;->getActivity()Ln;

    move-result-object v0

    invoke-virtual {v0}, Ln;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 544
    return-void
.end method
