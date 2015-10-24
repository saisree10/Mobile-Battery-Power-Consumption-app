.class public Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;
.super Laao;
.source "OperationConfigActivity.java"

# interfaces
.implements Laeu;


# instance fields
.field protected a:Lcom/dianxinos/powermanager/ui/MainTitle;

.field public b:Laqj;

.field protected c:Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;

.field private d:Laex;

.field private e:Laet;

.field private f:Ladp;

.field private g:Z

.field private h:Lakx;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Landroid/content/BroadcastReceiver;

.field private k:Lazz;

.field private l:Lawg;

.field private m:Lmc;

.field private n:Landroid/os/Handler;

.field private o:Ladz;

.field private p:Lajy;

.field private q:Landroid/widget/Toast;

.field private r:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Laao;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->g:Z

    .line 91
    new-instance v0, Lapm;

    invoke-direct {v0, p0}, Lapm;-><init>(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->m:Lmc;

    .line 141
    new-instance v0, Lapu;

    invoke-direct {v0, p0}, Lapu;-><init>(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->n:Landroid/os/Handler;

    .line 328
    new-instance v0, Laqa;

    invoke-direct {v0, p0}, Laqa;-><init>(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->p:Lajy;

    .line 455
    new-instance v0, Lapo;

    invoke-direct {v0, p0}, Lapo;-><init>(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->r:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;)Ladp;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->f:Ladp;

    return-object v0
.end method

.method private a(Landroid/widget/ImageView;)V
    .locals 2
    .parameter

    .prologue
    .line 730
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lly;->a:Lcom/dianxinos/dxbs/R$anim;

    const v1, 0x7f04000a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 732
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 733
    return-void
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->e()V

    return-void
.end method

.method public static synthetic c(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->n:Landroid/os/Handler;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->f:Ladp;

    invoke-virtual {v0}, Ladp;->m()J

    move-result-wide v0

    .line 118
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->f:Ladp;

    invoke-virtual {v0}, Ladp;->n()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    invoke-static {}, Laoj;->b()Laoj;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->b:Laqj;

    invoke-virtual {v2}, Laqj;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Laoj;->b(Ljava/lang/String;Ljava/util/ArrayList;)Laev;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_0

    .line 127
    invoke-static {}, Lazi;->a()Lazi;

    move-result-object v1

    new-instance v2, Lapt;

    invoke-direct {v2, p0, v0}, Lapt;-><init>(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;Laev;)V

    invoke-virtual {v1, v2}, Lazi;->a(Ljava/lang/Runnable;)V

    .line 133
    invoke-static {p0}, Lcom/dianxinos/common/coins/CoinManager;->a(Landroid/content/Context;)Lcom/dianxinos/common/coins/CoinManager;

    move-result-object v1

    const-string v2, "9"

    iget-wide v3, v0, Laev;->u:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dianxinos/common/coins/CoinManager;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    sget-object v1, Laew;->c:Laew;

    iput-object v1, v0, Laev;->h:Laew;

    .line 136
    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->b(Laev;)V

    goto :goto_0
.end method

.method public static synthetic d(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->g:Z

    return v0
.end method

.method public static synthetic e(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;)Laet;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->e:Laet;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->k:Lazz;

    sget-object v1, Lbad;->b:Lbad;

    invoke-virtual {v0, v1}, Lazz;->a(Lbad;)Lbab;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 189
    iget-object v1, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->l:Lawg;

    if-nez v1, :cond_0

    .line 190
    new-instance v1, Lawg;

    invoke-direct {v1, p0}, Lawg;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->l:Lawg;

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->l:Lawg;

    invoke-virtual {v1}, Lawg;->dismiss()V

    .line 193
    iget-object v1, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->l:Lawg;

    sget-object v2, Lbab;->b:Lbab;

    if-ne v0, v2, :cond_2

    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0304

    :goto_0
    invoke-virtual {v1, v0}, Lawg;->setTitle(I)V

    .line 196
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->l:Lawg;

    invoke-virtual {v0}, Lawg;->show()V

    .line 198
    :cond_1
    return-void

    .line 193
    :cond_2
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0305

    goto :goto_0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->o:Ladz;

    invoke-virtual {v0}, Ladz;->a()V

    .line 384
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->o:Ladz;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->o:Ladz;

    invoke-virtual {v0}, Ladz;->b()V

    .line 389
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->o:Ladz;

    .line 391
    :cond_0
    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    .line 430
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "purchase_changed_action"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 431
    const-string v1, "use_default_skin"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 432
    invoke-static {p0}, Lbc;->a(Landroid/content/Context;)Lbc;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lbc;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 434
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 437
    invoke-static {p0}, Lbc;->a(Landroid/content/Context;)Lbc;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lbc;->a(Landroid/content/BroadcastReceiver;)V

    .line 438
    return-void
.end method


# virtual methods
.method public a(Laev;)Laew;
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 636
    iget v0, p1, Laev;->i:F

    invoke-static {v0, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    .line 637
    :goto_0
    iget-object v3, p1, Laev;->g:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    .line 638
    :goto_1
    iget v4, p1, Laev;->j:I

    int-to-float v4, v4

    invoke-static {v4, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-lez v4, :cond_2

    .line 641
    :goto_2
    invoke-virtual {p0, p1}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->c(Laev;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 642
    sget-object v0, Laew;->g:Laew;

    .line 685
    :goto_3
    return-object v0

    :cond_0
    move v0, v2

    .line 636
    goto :goto_0

    :cond_1
    move v3, v2

    .line 637
    goto :goto_1

    :cond_2
    move v1, v2

    .line 638
    goto :goto_2

    .line 645
    :cond_3
    iget-boolean v4, p1, Laev;->v:Z

    if-eqz v4, :cond_4

    .line 646
    iput-boolean v2, p1, Laev;->v:Z

    .line 647
    sget-object v0, Laew;->f:Laew;

    goto :goto_3

    .line 651
    :cond_4
    iget-object v4, p1, Laev;->p:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 652
    sget-object v0, Laew;->e:Laew;

    goto :goto_3

    .line 656
    :cond_5
    iget-object v4, p1, Laev;->p:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 657
    sget-object v0, Laew;->d:Laew;

    goto :goto_3

    .line 660
    :cond_6
    iget-object v4, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->h:Lakx;

    invoke-virtual {v4}, Lakx;->b()Z

    move-result v4

    .line 661
    if-eqz v4, :cond_7

    if-eqz v0, :cond_8

    if-eqz v3, :cond_8

    :cond_7
    if-nez v4, :cond_9

    if-nez v1, :cond_9

    .line 664
    :cond_8
    sget-object v0, Laew;->a:Laew;

    goto :goto_3

    .line 668
    :cond_9
    if-eqz v1, :cond_c

    .line 669
    invoke-static {p0}, Lcom/dianxinos/common/coins/CoinManager;->a(Landroid/content/Context;)Lcom/dianxinos/common/coins/CoinManager;

    move-result-object v1

    const-string v4, "9"

    iget-wide v5, p1, Laev;->u:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/dianxinos/common/coins/CoinManager;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 674
    :goto_4
    if-eqz v0, :cond_a

    if-eqz v3, :cond_a

    .line 676
    invoke-static {p0}, Laek;->a(Landroid/content/Context;)Laek;

    move-result-object v0

    .line 677
    iget-object v2, p1, Laev;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Laek;->a(Ljava/lang/String;)Z

    move-result v2

    .line 680
    :cond_a
    if-nez v1, :cond_b

    if-nez v2, :cond_b

    .line 681
    sget-object v0, Laew;->b:Laew;

    goto :goto_3

    .line 685
    :cond_b
    sget-object v0, Laew;->c:Laew;

    goto :goto_3

    :cond_c
    move v1, v2

    goto :goto_4
.end method

.method protected a()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 310
    invoke-static {}, Laoj;->b()Laoj;

    move-result-object v0

    invoke-virtual {v0}, Laoj;->e()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 444
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->q:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 445
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->q:Landroid/widget/Toast;

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->q:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 449
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->q:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 450
    return-void
.end method

.method public a(Laet;)V
    .locals 0
    .parameter

    .prologue
    .line 631
    iput-object p1, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->e:Laet;

    .line 632
    return-void
.end method

.method public a(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Laev;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v6, 0x7f020413

    const v5, 0x7f02041e

    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 542
    sget-object v0, Laps;->a:[I

    iget-object v1, p5, Laev;->h:Laew;

    invoke-virtual {v1}, Laew;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 625
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You forget handle me: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p5, Laev;->h:Laew;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :pswitch_0
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 545
    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 546
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a02b0

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {p1, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 548
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v1, 0x7f0900ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 550
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 551
    invoke-virtual {p4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 552
    invoke-virtual {p4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 627
    :goto_0
    return-void

    .line 555
    :pswitch_1
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 556
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->h:Lakx;

    invoke-virtual {v0}, Lakx;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 558
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0385

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p5, Laev;->i:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    :goto_1
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {p1, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 564
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v1, 0x7f0900ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 566
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 567
    invoke-virtual {p4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 568
    invoke-virtual {p4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 560
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p5, Laev;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 571
    :pswitch_2
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 572
    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 573
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a02b2

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 574
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 575
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v1, 0x7f0900ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 577
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 578
    invoke-virtual {p4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 579
    invoke-virtual {p4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 582
    :pswitch_3
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 583
    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 584
    const-string v0, ""

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020420

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 586
    invoke-virtual {p4, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 587
    invoke-direct {p0, p4}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->a(Landroid/widget/ImageView;)V

    .line 588
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 591
    :pswitch_4
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 592
    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 593
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a02b1

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 594
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 595
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v1, 0x7f0900ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 597
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 598
    invoke-virtual {p4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 599
    invoke-virtual {p4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 602
    :pswitch_5
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 603
    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 604
    const-string v0, ""

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f020420

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 606
    invoke-virtual {p4, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 607
    invoke-direct {p0, p4}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->a(Landroid/widget/ImageView;)V

    .line 608
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 611
    :pswitch_6
    invoke-virtual {p4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 612
    invoke-virtual {p4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 613
    invoke-static {p0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 614
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 615
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 616
    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 617
    const-string v0, ""

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    invoke-virtual {p3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 620
    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 621
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 542
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 394
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->e:Laet;

    if-nez v0, :cond_0

    .line 403
    :goto_0
    return-void

    .line 397
    :cond_0
    new-instance v0, Laqb;

    invoke-direct {v0, p0, p1, p2}, Laqb;-><init>(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 689
    if-nez p1, :cond_0

    .line 690
    const/4 v0, 0x0

    .line 692
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->o:Ladz;

    invoke-virtual {v0, p1}, Ladz;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 717
    invoke-static {}, Lazi;->a()Lazi;

    move-result-object v0

    new-instance v1, Lapr;

    invoke-direct {v1, p0}, Lapr;-><init>(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;)V

    invoke-virtual {v0, v1}, Lazi;->a(Ljava/lang/Runnable;)V

    .line 727
    return-void
.end method

.method public b(Laev;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 477
    sget-object v0, Laps;->a:[I

    iget-object v1, p1, Laev;->h:Laew;

    invoke-virtual {v1}, Laew;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 537
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 479
    :pswitch_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->f:Ladp;

    iget-wide v1, p1, Laev;->u:J

    invoke-virtual {v0, v1, v2}, Ladp;->b(J)V

    .line 480
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->f:Ladp;

    iget-object v1, p1, Laev;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ladp;->c(Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->h:Lakx;

    invoke-virtual {v0}, Lakx;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 482
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->d:Laex;

    iget-object v1, p1, Laev;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laex;->a(Ljava/lang/String;)V

    .line 483
    iget-object v0, p1, Laev;->g:Ljava/lang/String;

    invoke-static {p0, v0}, Lbak;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 485
    const-string v0, "ssp"

    invoke-static {p0, v0, p1}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Laev;)V

    goto :goto_0

    .line 488
    :cond_1
    new-instance v0, Lagz;

    new-instance v1, Lapp;

    invoke-direct {v1, p0}, Lapp;-><init>(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;)V

    invoke-direct {v0, p0, p1, v1}, Lagz;-><init>(Landroid/content/Context;Laev;Laha;)V

    invoke-virtual {v0, v5}, Lagz;->a(I)V

    goto :goto_0

    .line 497
    :pswitch_2
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->f:Ladp;

    iget-wide v1, p1, Laev;->u:J

    invoke-virtual {v0, v1, v2}, Ladp;->b(J)V

    .line 498
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->f:Ladp;

    iget-object v1, p1, Laev;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ladp;->c(Ljava/lang/String;)V

    .line 499
    const-string v0, "ssf"

    invoke-static {p0, v0, p1}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Laev;)V

    .line 501
    invoke-static {}, Lazi;->a()Lazi;

    move-result-object v0

    new-instance v1, Lapq;

    invoke-direct {v1, p0, p1}, Lapq;-><init>(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;Laev;)V

    invoke-virtual {v0, v1}, Lazi;->a(Ljava/lang/Runnable;)V

    .line 508
    :pswitch_3
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->f:Ladp;

    iget-wide v1, p1, Laev;->u:J

    invoke-virtual {v0, v1, v2}, Ladp;->b(J)V

    .line 509
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->f:Ladp;

    iget-object v1, p1, Laev;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ladp;->c(Ljava/lang/String;)V

    .line 510
    const-string v0, "ssd"

    invoke-static {p0, v0, p1}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Laev;)V

    .line 512
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->o:Ladz;

    iget-object v1, p1, Laev;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ladz;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 517
    :pswitch_4
    iput-boolean v5, p1, Laev;->v:Z

    .line 518
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->d()V

    .line 519
    invoke-static {p0, p1}, Lbal;->a(Landroid/content/Context;Laev;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 521
    new-instance v1, Laqc;

    invoke-direct {v1, p0, p0}, Laqc;-><init>(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;Landroid/content/Context;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p1, Laev;->p:Ljava/lang/String;

    aput-object v4, v2, v3

    aput-object v0, v2, v5

    const/4 v0, 0x2

    iget-object v3, p1, Laev;->g:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget-wide v3, p1, Laev;->u:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Laqc;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 527
    :pswitch_5
    invoke-static {p0}, Lcom/dianxinos/powermanager/batterytheme/BatteryThemeActivity;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->n:Landroid/os/Handler;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 477
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 696
    if-nez p1, :cond_0

    .line 697
    const/4 v0, 0x0

    .line 699
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Ladz;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->m:Lmc;

    invoke-static {p0, v0}, Lcom/dianxinos/common/coins/CoinManager;->a(Landroid/content/Context;Lmc;)V

    .line 210
    return-void
.end method

.method public c(Laev;)Z
    .locals 4
    .parameter

    .prologue
    .line 703
    const-string v0, "ot_"

    iget-object v1, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->f:Ladp;

    invoke-virtual {v1}, Ladp;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p1, Laev;->u:J

    iget-object v2, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->f:Ladp;

    invoke-virtual {v2}, Ladp;->h()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p1, Laev;->q:Ljava/lang/String;

    iget-object v1, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->f:Ladp;

    invoke-virtual {v1}, Ladp;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->e:Laet;

    if-nez v0, :cond_0

    .line 427
    :goto_0
    return-void

    .line 421
    :cond_0
    new-instance v0, Lapn;

    invoke-direct {v0, p0}, Lapn;-><init>(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;)V

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 202
    invoke-super {p0}, Laao;->finish()V

    .line 203
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->g:Z

    if-eqz v0, :cond_0

    .line 204
    sget-object v0, Lly;->a:Lcom/dianxinos/dxbs/R$anim;

    const v0, 0x7f040004

    sget-object v1, Lly;->a:Lcom/dianxinos/dxbs/R$anim;

    const v1, 0x7f040005

    invoke-virtual {p0, v0, v1}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->overridePendingTransition(II)V

    .line 206
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 737
    invoke-super {p0, p1, p2, p3}, Laao;->onActivityResult(IILandroid/content/Intent;)V

    .line 738
    const/16 v0, 0x104

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 739
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->finish()V

    .line 741
    :cond_0
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 742
    if-eqz v0, :cond_1

    .line 743
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    .line 745
    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 749
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->finish()V

    .line 750
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 214
    invoke-super {p0, p1}, Laao;->onCreate(Landroid/os/Bundle;)V

    .line 215
    invoke-static {p0}, Ladp;->a(Landroid/content/Context;)Ladp;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->f:Ladp;

    .line 216
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->c()V

    .line 217
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020127

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->i:Landroid/graphics/drawable/Drawable;

    .line 218
    invoke-static {p0}, Lakx;->a(Landroid/content/Context;)Lakx;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->h:Lakx;

    .line 219
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_0

    .line 221
    const-string v1, "from_arc"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->g:Z

    .line 224
    :cond_0
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f03007c

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->setContentView(I)V

    .line 226
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070007

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/MainTitle;

    iput-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->a:Lcom/dianxinos/powermanager/ui/MainTitle;

    .line 227
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->a:Lcom/dianxinos/powermanager/ui/MainTitle;

    invoke-virtual {v0, v2}, Lcom/dianxinos/powermanager/ui/MainTitle;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->a:Lcom/dianxinos/powermanager/ui/MainTitle;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020450

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setLeftButtonIcon(I)V

    .line 229
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->a:Lcom/dianxinos/powermanager/ui/MainTitle;

    new-instance v1, Lapv;

    invoke-direct {v1, p0}, Lapv;-><init>(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;)V

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setLeftButtonOnclickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->a:Lcom/dianxinos/powermanager/ui/MainTitle;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020205

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setRightButtonIcon(I)V

    .line 237
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->a:Lcom/dianxinos/powermanager/ui/MainTitle;

    new-instance v1, Lapw;

    invoke-direct {v1, p0}, Lapw;-><init>(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;)V

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setRightButtonOnclickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->a:Lcom/dianxinos/powermanager/ui/MainTitle;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/ui/MainTitle;->a()V

    .line 258
    new-instance v0, Ladz;

    iget-object v1, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->p:Lajy;

    invoke-direct {v0, v1}, Ladz;-><init>(Lajy;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->o:Ladz;

    .line 259
    new-instance v0, Laex;

    invoke-direct {v0, p0}, Laex;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->d:Laex;

    .line 261
    invoke-direct {p0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->f()V

    .line 262
    invoke-direct {p0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->h()V

    .line 264
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 265
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701fe

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;

    iput-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->c:Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;

    .line 266
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->c:Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;

    new-instance v2, Lapx;

    invoke-direct {v2, p0, v1}, Lapx;-><init>(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->setOnPageChangeListener(Lara;)V

    .line 288
    new-instance v0, Laqj;

    invoke-direct {v0, p0}, Laqj;-><init>(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->b:Laqj;

    .line 289
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->b:Laqj;

    invoke-virtual {v0, v1}, Laqj;->a(Ljava/util/ArrayList;)V

    .line 290
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->c:Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;

    iget-object v1, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->b:Laqj;

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->setAdapter(Laqp;)V

    .line 294
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->c:Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->f()V

    .line 295
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->c:Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/skinshop/SkinShopViewPager;->setCurrentItemInCenter(I)V

    .line 297
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 298
    const-string v1, "com.dianxinos.dxbs.GOTO_TOOLBOX"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 299
    new-instance v1, Lapz;

    invoke-direct {v1, p0}, Lapz;-><init>(Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;)V

    iput-object v1, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->j:Landroid/content/BroadcastReceiver;

    .line 305
    iget-object v1, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 306
    invoke-static {p0}, Lazz;->a(Landroid/content/Context;)Lazz;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->k:Lazz;

    .line 307
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 315
    invoke-super {p0}, Laao;->onDestroy()V

    .line 316
    invoke-direct {p0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->g()V

    .line 317
    invoke-direct {p0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->i()V

    .line 318
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->m:Lmc;

    invoke-static {p0, v0}, Lcom/dianxinos/common/coins/CoinManager;->b(Landroid/content/Context;Lmc;)V

    .line 319
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->j:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->l:Lawg;

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->l:Lawg;

    invoke-virtual {v0}, Lawg;->dismiss()V

    .line 325
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 711
    invoke-super {p0}, Laao;->onResume()V

    .line 712
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->d()V

    .line 713
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/skinshop/OperationConfigActivity;->b()V

    .line 714
    return-void
.end method
