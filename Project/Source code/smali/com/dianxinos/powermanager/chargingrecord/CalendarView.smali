.class public Lcom/dianxinos/powermanager/chargingrecord/CalendarView;
.super Landroid/widget/LinearLayout;
.source "CalendarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private A:I

.field private B:I

.field private C:Landroid/content/res/Resources;

.field private D:Landroid/widget/PopupWindow;

.field private E:Landroid/view/LayoutInflater;

.field private F:Landroid/view/View;

.field private G:Lafv;

.field private H:Z

.field private volatile I:Z

.field private J:Lafs;

.field private K:Landroid/os/Handler;

.field private L:Ljava/util/List;

.field private a:Ljava/util/ArrayList;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/ImageView;

.field private d:I

.field private e:Landroid/view/animation/TranslateAnimation;

.field private f:Landroid/view/animation/TranslateAnimation;

.field private g:Landroid/graphics/Bitmap;

.field private h:Ljava/util/Calendar;

.field private i:Ljava/util/Calendar;

.field private j:Ljava/util/Calendar;

.field private k:Ljava/util/Calendar;

.field private l:I

.field private m:I

.field private n:I

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:I

.field private s:I

.field private t:Landroid/content/Context;

.field private u:I

.field private v:I

.field private final w:I

.field private final x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 133
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->a:Ljava/util/ArrayList;

    .line 53
    iput-object v3, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->b:Landroid/widget/LinearLayout;

    .line 54
    iput-object v3, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->c:Landroid/widget/ImageView;

    .line 55
    iput v2, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->d:I

    .line 63
    iput-object v3, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->g:Landroid/graphics/Bitmap;

    .line 71
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->h:Ljava/util/Calendar;

    .line 72
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->i:Ljava/util/Calendar;

    .line 73
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->j:Ljava/util/Calendar;

    .line 74
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->k:Ljava/util/Calendar;

    .line 76
    iput v4, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->l:I

    .line 77
    iput v2, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->m:I

    .line 78
    iput v2, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->n:I

    .line 87
    iput v2, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->r:I

    .line 88
    iput v2, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->s:I

    .line 97
    const/4 v0, 0x6

    iput v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->w:I

    .line 98
    const/4 v0, 0x7

    iput v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->x:I

    .line 99
    iput v2, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->y:I

    .line 100
    iput v2, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->z:I

    .line 104
    iput v2, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->A:I

    .line 105
    iput v2, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->B:I

    .line 110
    iput-object v3, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->C:Landroid/content/res/Resources;

    .line 114
    iput-object v3, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->G:Lafv;

    .line 115
    iput-boolean v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->H:Z

    .line 116
    iput-boolean v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->I:Z

    .line 118
    iput-object v3, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->J:Lafs;

    .line 123
    new-instance v0, Lafw;

    invoke-direct {v0, p0}, Lafw;-><init>(Lcom/dianxinos/powermanager/chargingrecord/CalendarView;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->K:Landroid/os/Handler;

    .line 626
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->L:Ljava/util/List;

    .line 134
    iput-object p1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->t:Landroid/content/Context;

    .line 135
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->t:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->C:Landroid/content/res/Resources;

    .line 136
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->t:Landroid/content/Context;

    invoke-static {v0}, Lafs;->a(Landroid/content/Context;)Lafs;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->J:Lafs;

    .line 138
    iput v4, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->l:I

    .line 143
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->t:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->E:Landroid/view/LayoutInflater;

    .line 144
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->E:Landroid/view/LayoutInflater;

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f030016

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->F:Landroid/view/View;

    .line 145
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->F:Landroid/view/View;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->D:Landroid/widget/PopupWindow;

    .line 146
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->D:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 147
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->D:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 149
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f030012

    invoke-static {v0, v1, p0}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 150
    return-void
.end method

.method private a(FF)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 513
    float-to-int v0, p1

    iget v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->A:I

    div-int/2addr v0, v1

    .line 514
    float-to-int v1, p2

    iget v2, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->B:I

    div-int/2addr v1, v2

    .line 515
    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    return v0
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/chargingrecord/CalendarView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->g:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/chargingrecord/CalendarView;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a(I)Landroid/widget/LinearLayout;
    .locals 4
    .parameter

    .prologue
    .line 228
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->t:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 229
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 233
    return-object v0
.end method

.method private a(III)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, -0x2

    .line 483
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->F:Landroid/view/View;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f07006a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 484
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 485
    iget-object v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->C:Landroid/content/res/Resources;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a020e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    :goto_0
    rem-int/lit8 v0, p1, 0x7

    .line 492
    div-int/lit8 v1, p1, 0x7

    .line 493
    iget v2, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->A:I

    mul-int/2addr v0, v2

    iget v2, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->d:I

    div-int/lit8 v2, v2, 0x7

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->A:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->y:I

    add-int/2addr v0, v2

    .line 494
    add-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->B:I

    mul-int/2addr v1, v2

    .line 496
    iget-object v2, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->D:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 497
    iget-object v2, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->D:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0, v1, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 503
    :goto_1
    return-void

    .line 487
    :cond_0
    iget-object v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->C:Landroid/content/res/Resources;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a020d

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 488
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 499
    :cond_1
    iget-object v2, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->D:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->b:Landroid/widget/LinearLayout;

    const/16 v4, 0x33

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 500
    iget-object v2, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->D:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0, v1, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_1
.end method

.method private a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 637
    iget-object v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->L:Ljava/util/List;

    monitor-enter v1

    .line 638
    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafy;

    .line 639
    invoke-interface {v0, p1}, Lafy;->a(Z)V

    goto :goto_0

    .line 641
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 642
    return-void
.end method

.method public static synthetic b(Lcom/dianxinos/powermanager/chargingrecord/CalendarView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->g:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static synthetic c(Lcom/dianxinos/powermanager/chargingrecord/CalendarView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->b:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 200
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 201
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->b:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->e()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_0
    return-void
.end method

.method private e()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 207
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->a(I)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 208
    iget v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->d:I

    div-int/lit8 v1, v1, 0x7

    iput v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->A:I

    .line 209
    iget-object v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->t:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v3, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v3, 0x7f080180

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->B:I

    move v1, v0

    .line 212
    :goto_0
    const/4 v0, 0x7

    if-ge v1, v0, :cond_2

    .line 214
    if-eqz v1, :cond_0

    const/4 v0, 0x6

    if-ne v1, v0, :cond_1

    .line 215
    :cond_0
    new-instance v0, Lafv;

    iget-object v3, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->t:Landroid/content/Context;

    iget v4, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->d:I

    iget v5, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->A:I

    mul-int/lit8 v5, v5, 0x7

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->A:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->B:I

    invoke-direct {v0, v3, v4, v5}, Lafv;-><init>(Landroid/content/Context;II)V

    .line 221
    :goto_1
    iget-object v3, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 212
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 218
    :cond_1
    new-instance v0, Lafv;

    iget-object v3, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->t:Landroid/content/Context;

    iget v4, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->A:I

    iget v5, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->B:I

    invoke-direct {v0, v3, v4, v5}, Lafv;-><init>(Landroid/content/Context;II)V

    goto :goto_1

    .line 224
    :cond_2
    return-object v2
.end method

.method private f()V
    .locals 6

    .prologue
    const/4 v0, 0x6

    const/4 v5, 0x2

    const/4 v4, 0x7

    const/4 v3, 0x1

    .line 251
    iget-object v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->h:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->m:I

    .line 252
    iget-object v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->h:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->n:I

    .line 254
    invoke-direct {p0}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->h()V

    .line 255
    iget-object v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->h:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 260
    const/4 v1, 0x0

    .line 261
    iget v2, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->l:I

    .line 262
    if-ne v2, v5, :cond_0

    .line 263
    iget-object v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->h:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    .line 264
    if-gez v1, :cond_0

    move v1, v0

    .line 267
    :cond_0
    if-ne v2, v3, :cond_1

    .line 268
    iget-object v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->h:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 269
    if-gez v1, :cond_1

    .line 272
    :goto_0
    iget-object v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->h:Ljava/util/Calendar;

    neg-int v0, v0

    invoke-virtual {v1, v4, v0}, Ljava/util/Calendar;->add(II)V

    .line 273
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private g()V
    .locals 13

    .prologue
    const/4 v12, 0x7

    const/4 v11, 0x2

    const/4 v10, 0x5

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 277
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->j:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->h:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 282
    iput v8, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->r:I

    .line 283
    iput v8, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->s:I

    move v7, v8

    .line 285
    :goto_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 286
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->j:Ljava/util/Calendar;

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 287
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->j:Ljava/util/Calendar;

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 288
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->j:Ljava/util/Calendar;

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 289
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->j:Ljava/util/Calendar;

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 291
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafv;

    .line 297
    iget-object v5, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->i:Ljava/util/Calendar;

    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v5, v1, :cond_4

    .line 298
    iget-object v5, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->i:Ljava/util/Calendar;

    invoke-virtual {v5, v11}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v5, v2, :cond_4

    .line 299
    iget-object v5, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->i:Ljava/util/Calendar;

    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v5, v3, :cond_4

    move v5, v9

    .line 306
    :goto_1
    if-eq v4, v12, :cond_0

    if-ne v4, v9, :cond_3

    :cond_0
    move v6, v9

    .line 309
    :goto_2
    iget v4, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->m:I

    invoke-virtual/range {v0 .. v6}, Lafv;->a(IIIIZZ)V

    .line 318
    invoke-virtual {v0}, Lafv;->getCurrentMonth()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 319
    iget-object v4, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->J:Lafs;

    invoke-virtual {v4, v1, v2, v3}, Lafs;->a(III)Lafu;

    move-result-object v1

    .line 320
    invoke-virtual {v0, v1}, Lafv;->setChargingData(Lafu;)V

    .line 321
    if-eqz v1, :cond_1

    .line 322
    iget v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->r:I

    iget v2, v1, Lafu;->d:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->r:I

    .line 323
    iget v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->s:I

    iget v1, v1, Lafu;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->s:I

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->j:Ljava/util/Calendar;

    invoke-virtual {v0, v10, v9}, Ljava/util/Calendar;->add(II)V

    .line 285
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 335
    :cond_2
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->I:Z

    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->a(Z)V

    .line 336
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->invalidate()V

    .line 337
    return-void

    :cond_3
    move v6, v8

    goto :goto_2

    :cond_4
    move v5, v8

    goto :goto_1
.end method

.method private getScreenView()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, -0x8000

    .line 655
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isDrawingCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setDrawingCacheEnabled(Z)V

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->b:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->u:I

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v2, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->v:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 659
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 660
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->buildDrawingCache()V

    .line 662
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 664
    return-object v0
.end method

.method private getStartCalendar()V
    .locals 4

    .prologue
    .line 237
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->i:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 238
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->i:Ljava/util/Calendar;

    iget v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->l:I

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 240
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->k:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->h:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 242
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->h:Ljava/util/Calendar;

    iget v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->l:I

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 247
    :goto_0
    invoke-direct {p0}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->f()V

    .line 248
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->h:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->k:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 245
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->h:Ljava/util/Calendar;

    iget v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->l:I

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    goto :goto_0
.end method

.method private h()V
    .locals 4

    .prologue
    .line 451
    iget v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->m:I

    add-int/lit8 v0, v0, 0x1

    .line 452
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 453
    iget-object v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->o:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->n:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    :goto_0
    return-void

    .line 455
    :cond_0
    iget-object v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->o:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->n:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->D:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->D:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 472
    :cond_0
    return-void
.end method

.method private j()V
    .locals 5

    .prologue
    const-wide/16 v3, 0xc8

    const/4 v2, 0x0

    .line 519
    iget v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->m:I

    .line 520
    iget v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->m:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 521
    const/4 v0, 0x0

    iput v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->m:I

    .line 522
    iget v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->n:I

    .line 525
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->u:I

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->e:Landroid/view/animation/TranslateAnimation;

    .line 526
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->e:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 527
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->e:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 528
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->u:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->f:Landroid/view/animation/TranslateAnimation;

    .line 529
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->f:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 530
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->f:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 532
    iget v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->n:I

    iget v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->m:I

    invoke-virtual {p0, v0, v1}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->a(II)V

    .line 533
    return-void
.end method

.method private k()V
    .locals 5

    .prologue
    const-wide/16 v3, 0xc8

    const/4 v2, 0x0

    .line 536
    iget v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->m:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->m:I

    .line 537
    iget v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->m:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 538
    const/16 v0, 0xb

    iput v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->m:I

    .line 539
    iget v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->n:I

    .line 542
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->u:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->e:Landroid/view/animation/TranslateAnimation;

    .line 543
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->e:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 544
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->e:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 545
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->u:I

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->f:Landroid/view/animation/TranslateAnimation;

    .line 546
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->f:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 547
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->f:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 549
    iget v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->n:I

    iget v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->m:I

    invoke-virtual {p0, v0, v1}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->a(II)V

    .line 550
    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const-wide/16 v4, 0xc8

    const/4 v3, 0x0

    .line 553
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->i:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 554
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->i:Ljava/util/Calendar;

    iget v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->l:I

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 555
    iget v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->n:I

    iget-object v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->i:Ljava/util/Calendar;

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->m:I

    iget-object v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->i:Ljava/util/Calendar;

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 578
    :goto_0
    return-void

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->i:Ljava/util/Calendar;

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->n:I

    .line 559
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->i:Ljava/util/Calendar;

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->m:I

    .line 561
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->h:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->i:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 562
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->u:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v1, v3, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->e:Landroid/view/animation/TranslateAnimation;

    .line 563
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->e:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 564
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->e:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 565
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->u:I

    int-to-float v1, v1

    invoke-direct {v0, v3, v1, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->f:Landroid/view/animation/TranslateAnimation;

    .line 566
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->f:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 567
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->f:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 577
    :goto_1
    iget v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->n:I

    iget v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->m:I

    invoke-virtual {p0, v0, v1}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->a(II)V

    goto :goto_0

    .line 569
    :cond_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->u:I

    int-to-float v1, v1

    invoke-direct {v0, v1, v3, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->e:Landroid/view/animation/TranslateAnimation;

    .line 570
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->e:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 571
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->e:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 572
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->u:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v3, v1, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->f:Landroid/view/animation/TranslateAnimation;

    .line 573
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->f:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 574
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->f:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_1
.end method

.method public a(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 340
    invoke-direct {p0}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->getScreenView()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->g:Landroid/graphics/Bitmap;

    .line 341
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->f:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lafx;

    invoke-direct {v1, p0}, Lafx;-><init>(Lcom/dianxinos/powermanager/chargingrecord/CalendarView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 360
    iput p2, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->m:I

    .line 361
    iput p1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->n:I

    .line 363
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->h:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 364
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->h:Ljava/util/Calendar;

    iget v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->l:I

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 365
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->h:Ljava/util/Calendar;

    iget v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->m:I

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 366
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->h:Ljava/util/Calendar;

    iget v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->n:I

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 367
    invoke-direct {p0}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->f()V

    .line 368
    invoke-direct {p0}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->g()V

    .line 369
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 371
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 372
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->f:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 373
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->e:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->i:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 380
    iget v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->n:I

    iget-object v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->i:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->m:I

    iget-object v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->i:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 382
    iput-boolean v3, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->I:Z

    .line 383
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->I:Z

    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->a(Z)V

    .line 388
    :goto_0
    return-void

    .line 385
    :cond_1
    iput-boolean v4, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->I:Z

    .line 386
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->I:Z

    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->a(Z)V

    goto :goto_0
.end method

.method public a(Lafy;)V
    .locals 2
    .parameter

    .prologue
    .line 629
    iget-object v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->L:Ljava/util/List;

    monitor-enter v1

    .line 630
    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->L:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->L:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->I:Z

    invoke-interface {p1, v0}, Lafy;->a(Z)V

    .line 635
    return-void

    .line 633
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 595
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafv;

    .line 599
    invoke-virtual {v0}, Lafv;->getNormalCharging()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Lafv;->getCurrentMonth()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 600
    invoke-virtual {v0}, Lafv;->a()V

    goto :goto_0

    .line 603
    :cond_1
    return-void
.end method

.method public b(Lafy;)V
    .locals 2
    .parameter

    .prologue
    .line 645
    iget-object v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->L:Ljava/util/List;

    monitor-enter v1

    .line 646
    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->L:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 647
    monitor-exit v1

    .line 648
    return-void

    .line 647
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 609
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafv;

    .line 613
    invoke-virtual {v0}, Lafv;->getHealthCharging()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Lafv;->getCurrentMonth()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 614
    invoke-virtual {v0}, Lafv;->b()V

    goto :goto_0

    .line 618
    :cond_1
    return-void
.end method

.method public getTotalHealthCharger()I
    .locals 1

    .prologue
    .line 463
    iget v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->s:I

    return v0
.end method

.method public getTotalNormalCharger()I
    .locals 1

    .prologue
    .line 459
    iget v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->r:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 582
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->p:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 583
    invoke-direct {p0}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->k()V

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 584
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->q:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    .line 585
    invoke-direct {p0}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->j()V

    goto :goto_0

    .line 586
    :cond_2
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->o:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 587
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->a()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 154
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 156
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070057

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->o:Landroid/widget/TextView;

    .line 157
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->o:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070056

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->p:Landroid/widget/TextView;

    .line 159
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070058

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->q:Landroid/widget/TextView;

    .line 161
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->q:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070059

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->b:Landroid/widget/LinearLayout;

    .line 164
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07005a

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->c:Landroid/widget/ImageView;

    .line 165
    invoke-direct {p0}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->getStartCalendar()V

    .line 166
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 170
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 171
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->d:I

    .line 176
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->y:I

    .line 177
    iget v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->d:I

    iget v1, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->y:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->d:I

    .line 184
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->H:Z

    if-eqz v0, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->d()V

    .line 186
    invoke-direct {p0}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->g()V

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->H:Z

    .line 188
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->K:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->u:I

    .line 192
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->v:I

    .line 196
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x29

    const/4 v5, 0x1

    .line 392
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 393
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 394
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 395
    iget-object v3, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->G:Lafv;

    if-eqz v3, :cond_0

    .line 396
    iget-object v3, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->G:Lafv;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lafv;->a(Z)V

    .line 397
    :cond_0
    iput-object v7, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->G:Lafv;

    .line 403
    iget v3, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->u:I

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-gtz v3, :cond_1

    const/4 v3, 0x0

    cmpg-float v3, v1, v3

    if-gez v3, :cond_3

    .line 404
    :cond_1
    invoke-direct {p0}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->i()V

    .line 447
    :cond_2
    :goto_0
    return v5

    .line 411
    :cond_3
    if-nez v0, :cond_7

    .line 412
    invoke-direct {p0, v1, v2}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->a(FF)I

    move-result v1

    .line 413
    if-gt v1, v6, :cond_4

    if-gez v1, :cond_5

    .line 414
    :cond_4
    invoke-direct {p0}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->i()V

    goto :goto_0

    .line 418
    :cond_5
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafv;

    iput-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->G:Lafv;

    .line 419
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->G:Lafv;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->G:Lafv;

    invoke-virtual {v0}, Lafv;->getCurrentMonth()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 420
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->G:Lafv;

    invoke-virtual {v0, v5}, Lafv;->a(Z)V

    .line 421
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->G:Lafv;

    invoke-virtual {v0}, Lafv;->getNormalCharging()I

    move-result v0

    iget-object v2, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->G:Lafv;

    invoke-virtual {v2}, Lafv;->getHealthCharging()I

    move-result v2

    invoke-direct {p0, v1, v0, v2}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->a(III)V

    goto :goto_0

    .line 423
    :cond_6
    invoke-direct {p0}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->i()V

    goto :goto_0

    .line 425
    :cond_7
    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 426
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 427
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 428
    invoke-direct {p0, v0, v1}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->a(FF)I

    move-result v1

    .line 430
    if-gt v1, v6, :cond_8

    if-gez v1, :cond_9

    .line 431
    :cond_8
    invoke-direct {p0}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->i()V

    goto :goto_0

    .line 435
    :cond_9
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafv;

    iput-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->G:Lafv;

    .line 436
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->G:Lafv;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->G:Lafv;

    invoke-virtual {v0}, Lafv;->getCurrentMonth()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 437
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->G:Lafv;

    invoke-virtual {v0, v5}, Lafv;->a(Z)V

    .line 438
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->G:Lafv;

    invoke-virtual {v0}, Lafv;->getNormalCharging()I

    move-result v0

    iget-object v2, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->G:Lafv;

    invoke-virtual {v2}, Lafv;->getHealthCharging()I

    move-result v2

    invoke-direct {p0, v1, v0, v2}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->a(III)V

    goto :goto_0

    .line 440
    :cond_a
    invoke-direct {p0}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->i()V

    goto/16 :goto_0

    .line 443
    :cond_b
    if-eq v0, v5, :cond_c

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 444
    :cond_c
    iput-object v7, p0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->G:Lafv;

    .line 445
    invoke-direct {p0}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->i()V

    goto/16 :goto_0
.end method
