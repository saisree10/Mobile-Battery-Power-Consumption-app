.class public Lcom/dianxinos/acomponent/ui/ADMainActivity;
.super Landroid/app/Activity;
.source "ADMainActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Lhc;

.field private l:I

.field private m:J

.field private n:Z

.field private o:Landroid/os/Handler;

.field private p:Lhk;

.field private q:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->n:Z

    .line 113
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->o:Landroid/os/Handler;

    .line 115
    new-instance v0, Lhv;

    invoke-direct {v0, p0}, Lhv;-><init>(Lcom/dianxinos/acomponent/ui/ADMainActivity;)V

    iput-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->p:Lhk;

    .line 359
    new-instance v0, Lia;

    invoke-direct {v0, p0}, Lia;-><init>(Lcom/dianxinos/acomponent/ui/ADMainActivity;)V

    iput-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->q:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public static synthetic a(Lcom/dianxinos/acomponent/ui/ADMainActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->o:Landroid/os/Handler;

    return-object v0
.end method

.method private a(Z)Landroid/widget/ImageView;
    .locals 2
    .parameter

    .prologue
    .line 389
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 390
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 391
    if-eqz p1, :cond_0

    .line 392
    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f02019e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 396
    :goto_0
    return-object v0

    .line 394
    :cond_0
    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f02019f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private a()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v3, 0x0

    .line 228
    invoke-direct {p0}, Lcom/dianxinos/acomponent/ui/ADMainActivity;->b()V

    .line 230
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 231
    invoke-virtual {p0}, Lcom/dianxinos/acomponent/ui/ADMainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 233
    iput v3, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->l:I

    .line 234
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700da

    invoke-virtual {p0, v0}, Lcom/dianxinos/acomponent/ui/ADMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->b:Landroid/widget/LinearLayout;

    .line 235
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700df

    invoke-virtual {p0, v0}, Lcom/dianxinos/acomponent/ui/ADMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->c:Landroid/widget/LinearLayout;

    .line 236
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700db

    invoke-virtual {p0, v0}, Lcom/dianxinos/acomponent/ui/ADMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->d:Landroid/widget/ImageView;

    .line 237
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700dc

    invoke-virtual {p0, v0}, Lcom/dianxinos/acomponent/ui/ADMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->e:Landroid/widget/ImageView;

    .line 238
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700dd

    invoke-virtual {p0, v0}, Lcom/dianxinos/acomponent/ui/ADMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->f:Landroid/widget/TextView;

    .line 239
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700de

    invoke-virtual {p0, v0}, Lcom/dianxinos/acomponent/ui/ADMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->g:Landroid/widget/TextView;

    .line 240
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700e1

    invoke-virtual {p0, v0}, Lcom/dianxinos/acomponent/ui/ADMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->h:Landroid/widget/ImageView;

    .line 241
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700e0

    invoke-virtual {p0, v0}, Lcom/dianxinos/acomponent/ui/ADMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->j:Landroid/widget/TextView;

    .line 244
    iget-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->b:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->b:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->q:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->h:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->h:Landroid/widget/ImageView;

    new-instance v2, Lhy;

    invoke-direct {v2, p0}, Lhy;-><init>(Lcom/dianxinos/acomponent/ui/ADMainActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->k:Lhc;

    iget-object v0, v0, Lhc;->m:[Lhd;

    aget-object v4, v0, v3

    .line 257
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700d8

    invoke-virtual {p0, v0}, Lcom/dianxinos/acomponent/ui/ADMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->i:Landroid/widget/TextView;

    .line 258
    iget-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->i:Landroid/widget/TextView;

    iget-object v2, v4, Lhd;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->k:Lhc;

    iget-object v0, v0, Lhc;->m:[Lhd;

    array-length v5, v0

    move v2, v3

    .line 262
    :goto_0
    if-ge v2, v5, :cond_3

    .line 263
    iget v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->l:I

    if-ne v2, v0, :cond_2

    .line 264
    invoke-direct {p0, v9}, Lcom/dianxinos/acomponent/ui/ADMainActivity;->a(Z)Landroid/widget/ImageView;

    move-result-object v0

    .line 268
    :goto_1
    iget-object v6, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 262
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 266
    :cond_2
    invoke-direct {p0, v3}, Lcom/dianxinos/acomponent/ui/ADMainActivity;->a(Z)Landroid/widget/ImageView;

    move-result-object v0

    goto :goto_1

    .line 272
    :cond_3
    invoke-virtual {p0}, Lcom/dianxinos/acomponent/ui/ADMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 273
    const/16 v2, 0x14

    .line 274
    mul-int/2addr v0, v2

    div-int/lit16 v6, v0, 0xa0

    .line 275
    const-string v0, "ADMainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " px : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 277
    :goto_2
    if-ge v2, v5, :cond_5

    .line 278
    iget-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 279
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 280
    if-nez v2, :cond_4

    .line 281
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 277
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 283
    :cond_4
    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_3

    .line 286
    :cond_5
    iget-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 289
    iget-object v0, v4, Lhd;->j:[Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, v4, Lhd;->j:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_c

    .line 290
    iget-object v0, v4, Lhd;->j:[Ljava/lang/String;

    aget-object v0, v0, v3

    .line 294
    :goto_4
    invoke-static {p0, v0}, Lim;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 297
    :try_start_0
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 303
    :cond_6
    :goto_5
    if-eqz v1, :cond_a

    .line 304
    iget-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 305
    iget-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 310
    :goto_6
    iget-object v0, v4, Lhd;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget v0, v4, Lhd;->k:I

    if-ne v0, v9, :cond_b

    .line 311
    :cond_7
    iget-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 317
    :goto_7
    iget-object v0, v4, Lhd;->l:Ljava/lang/String;

    .line 318
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 319
    const-string v0, "Download"

    .line 320
    iget-object v1, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->j:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 322
    :cond_8
    iget-object v1, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    .line 324
    iget-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->j:Landroid/widget/TextView;

    new-instance v1, Lhz;

    invoke-direct {v1, p0}, Lhz;-><init>(Lcom/dianxinos/acomponent/ui/ADMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget v0, v4, Lhd;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 331
    iget-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 335
    :cond_9
    return-void

    .line 298
    :catch_0
    move-exception v0

    .line 299
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 307
    :cond_a
    iget-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 313
    :cond_b
    iget-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->f:Landroid/widget/TextView;

    iget-object v1, v4, Lhd;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_c
    move-object v0, v1

    goto :goto_4
.end method

.method private a(I)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v2, 0x0

    .line 408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 410
    iget-wide v3, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->m:J

    const-wide/16 v5, 0x190

    add-long/2addr v3, v5

    cmp-long v3, v0, v3

    if-gez v3, :cond_0

    .line 481
    :goto_0
    return-void

    .line 413
    :cond_0
    iput-wide v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->m:J

    .line 415
    iget v3, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->l:I

    .line 416
    iget-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->k:Lhc;

    iget-object v0, v0, Lhc;->m:[Lhd;

    .line 417
    array-length v1, v0

    .line 419
    add-int v0, v3, p1

    .line 420
    if-gez v0, :cond_1

    move v0, v2

    .line 423
    :cond_1
    if-ne v0, v1, :cond_8

    .line 424
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    .line 427
    :goto_1
    const-string v0, "ADMainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " switching from : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  to :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    if-eq v1, v3, :cond_5

    .line 430
    iget-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->k:Lhc;

    iget-object v0, v0, Lhc;->m:[Lhd;

    aget-object v3, v0, v1

    .line 431
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700d8

    invoke-virtual {p0, v0}, Lcom/dianxinos/acomponent/ui/ADMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->i:Landroid/widget/TextView;

    .line 432
    iget-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->i:Landroid/widget/TextView;

    iget-object v4, v3, Lhd;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    iput v8, v3, Lhd;->c:I

    .line 435
    iget-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->d:Landroid/widget/ImageView;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 437
    const/4 v0, 0x0

    .line 438
    iget-object v4, v3, Lhd;->j:[Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v3, Lhd;->j:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_2

    .line 439
    iget-object v0, v3, Lhd;->j:[Ljava/lang/String;

    aget-object v0, v0, v2

    .line 442
    :cond_2
    invoke-static {p0, v0}, Lim;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 443
    if-eqz v0, :cond_6

    .line 444
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 445
    iget-object v4, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 446
    iget-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 451
    :goto_2
    iget-object v0, v3, Lhd;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, v3, Lhd;->k:I

    if-ne v0, v8, :cond_7

    .line 452
    :cond_3
    iget-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 458
    :goto_3
    iget-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 459
    iget-object v0, v3, Lhd;->l:Ljava/lang/String;

    .line 460
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 461
    const-string v0, "Download"

    .line 462
    iget-object v2, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->j:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 464
    :cond_4
    iget-object v2, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    iget-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    .line 466
    iget-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->j:Landroid/widget/TextView;

    new-instance v2, Lib;

    invoke-direct {v2, p0}, Lib;-><init>(Lcom/dianxinos/acomponent/ui/ADMainActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    iget v0, v3, Lhd;->k:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 473
    iget-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 474
    iget-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 478
    :cond_5
    iput v1, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->l:I

    .line 479
    iget v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->l:I

    invoke-direct {p0, v0}, Lcom/dianxinos/acomponent/ui/ADMainActivity;->b(I)V

    goto/16 :goto_0

    .line 448
    :cond_6
    iget-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 454
    :cond_7
    iget-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 455
    iget-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->f:Landroid/widget/TextView;

    iget-object v4, v3, Lhd;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_8
    move v1, v0

    goto/16 :goto_1
.end method

.method public static synthetic a(Lcom/dianxinos/acomponent/ui/ADMainActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/dianxinos/acomponent/ui/ADMainActivity;->a(I)V

    return-void
.end method

.method public static synthetic a(Lcom/dianxinos/acomponent/ui/ADMainActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->n:Z

    return p1
.end method

.method private b()V
    .locals 7

    .prologue
    const/16 v6, 0xe

    .line 338
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 339
    invoke-virtual {p0}, Lcom/dianxinos/acomponent/ui/ADMainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 340
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700d9

    invoke-virtual {p0, v0}, Lcom/dianxinos/acomponent/ui/ADMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 341
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 345
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p0, v6}, Liq;->a(Landroid/content/Context;I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    mul-int/lit16 v1, v1, 0x18c

    div-int/lit16 v1, v1, 0x1b4

    .line 349
    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v5, 0x140

    if-gt v4, v5, :cond_0

    .line 350
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p0, v6}, Liq;->a(Landroid/content/Context;I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x64

    div-int/lit16 v1, v1, 0x96

    .line 354
    :cond_0
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 355
    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    return-void
.end method

.method private b(I)V
    .locals 4
    .parameter

    .prologue
    .line 484
    iget-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 486
    if-le v2, p1, :cond_1

    .line 487
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 488
    iget-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 489
    if-ne v1, p1, :cond_0

    .line 490
    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02019e

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 487
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 492
    :cond_0
    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02019f

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 496
    :cond_1
    return-void
.end method

.method public static synthetic b(Lcom/dianxinos/acomponent/ui/ADMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/dianxinos/acomponent/ui/ADMainActivity;->c()V

    return-void
.end method

.method private c()V
    .locals 7

    .prologue
    .line 499
    iget-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->k:Lhc;

    iget-object v0, v0, Lhc;->m:[Lhd;

    iget v1, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->l:I

    aget-object v4, v0, v1

    .line 500
    iget-object v2, v4, Lhd;->g:Ljava/lang/String;

    .line 501
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v4, Lhd;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v4, Lhd;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 503
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->n:Z

    .line 504
    invoke-static {p0}, Lhj;->a(Landroid/content/Context;)Lhj;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->a:Ljava/lang/String;

    iget-object v3, v4, Lhd;->f:Ljava/lang/String;

    iget-object v4, v4, Lhd;->h:Ljava/lang/String;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->p:Lhk;

    invoke-virtual/range {v0 .. v6}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILhk;)V

    .line 506
    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->n:Z

    .line 223
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 224
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 140
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 141
    invoke-virtual {p0, v4}, Lcom/dianxinos/acomponent/ui/ADMainActivity;->requestWindowFeature(I)Z

    .line 143
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f030039

    invoke-virtual {p0, v0}, Lcom/dianxinos/acomponent/ui/ADMainActivity;->setContentView(I)V

    .line 144
    invoke-static {p0}, Lhn;->c(Landroid/content/Context;)Lhn;

    move-result-object v0

    invoke-virtual {v0}, Lhn;->a()Lhb;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_0

    .line 146
    iget-object v1, v0, Lhb;->b:Lhc;

    iput-object v1, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->k:Lhc;

    .line 147
    iget-object v1, v0, Lhb;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->a:Ljava/lang/String;

    .line 149
    const-string v1, "ADMainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " rs.unitID  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lhb;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v1, "ADMainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " rs.content.unitID  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lhb;->b:Lhc;

    iget-object v0, v0, Lhc;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->k:Lhc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->k:Lhc;

    invoke-virtual {v0, p0}, Lhc;->c(Landroid/content/Context;)I

    move-result v0

    if-ge v0, v4, :cond_2

    .line 157
    :cond_1
    const-string v0, "dxad_c.s"

    invoke-static {p0, v0}, Lim;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_2

    .line 160
    new-instance v1, Lhb;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lhb;-><init>(Ljava/lang/String;I)V

    .line 161
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lhb;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, v1, Lhb;->b:Lhc;

    invoke-virtual {v0}, Lhc;->a()V

    .line 164
    iget-object v0, v1, Lhb;->b:Lhc;

    invoke-virtual {v0, p0}, Lhc;->c(Landroid/content/Context;)I

    move-result v0

    .line 166
    const-string v2, "ADMainActivity"

    const-string v3, " contnet read from file is ok for a show!  "

    invoke-static {v2, v3}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    if-ne v0, v4, :cond_2

    .line 170
    iget-object v0, v1, Lhb;->b:Lhc;

    iput-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->k:Lhc;

    .line 171
    iget-object v0, v1, Lhb;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->a:Ljava/lang/String;

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->k:Lhc;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->k:Lhc;

    invoke-virtual {v0, p0}, Lhc;->c(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v4, :cond_4

    .line 177
    :cond_3
    invoke-virtual {p0}, Lcom/dianxinos/acomponent/ui/ADMainActivity;->finish()V

    .line 203
    :goto_0
    return-void

    .line 183
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->k:Lhc;

    iget v0, v0, Lhc;->f:I

    if-ne v0, v4, :cond_5

    .line 185
    const-string v0, "ADMainActivity"

    const-string v1, " tyep is  CONTENT_ACTION_DOWNLOAD_DIRECT 1"

    invoke-static {v0, v1}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-direct {p0}, Lcom/dianxinos/acomponent/ui/ADMainActivity;->c()V

    .line 189
    invoke-virtual {p0}, Lcom/dianxinos/acomponent/ui/ADMainActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 200
    :goto_1
    invoke-static {p0}, Lhs;->a(Landroid/content/Context;)Lhs;

    move-result-object v0

    const-string v1, "la"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lhs;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 193
    :cond_5
    :try_start_1
    const-string v0, "ADMainActivity"

    const-string v1, "go on init view "

    invoke-static {v0, v1}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-direct {p0}, Lcom/dianxinos/acomponent/ui/ADMainActivity;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 207
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->n:Z

    .line 209
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 213
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 214
    iget-boolean v0, p0, Lcom/dianxinos/acomponent/ui/ADMainActivity;->n:Z

    if-eqz v0, :cond_0

    .line 215
    invoke-static {p0}, Lhn;->c(Landroid/content/Context;)Lhn;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v1}, Lhn;->a(Landroid/content/Context;ZZ)V

    .line 217
    :cond_0
    return-void
.end method
