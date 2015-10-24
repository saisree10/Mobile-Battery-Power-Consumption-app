.class public Lcom/dianxinos/powermanager/ui/HistoryChartView;
.super Landroid/widget/FrameLayout;
.source "HistoryChartView.java"


# instance fields
.field private a:Lbec;

.field private b:Lbei;

.field private c:Lbed;

.field private d:Lbdm;

.field private e:[D

.field private f:[D

.field private g:[D

.field private h:Z

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Lbec;

    invoke-direct {v0}, Lbec;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->a:Lbec;

    .line 40
    new-instance v0, Lbei;

    invoke-direct {v0}, Lbei;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->b:Lbei;

    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->g:[D

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->h:Z

    .line 53
    sget-object v0, Lly;->k:Lcom/dianxinos/dxbs/R$styleable;

    sget-object v0, Lcom/dianxinos/dxbs/R$styleable;->MainTitle:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->j:Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/HistoryChartView;->c()V

    .line 57
    return-void

    .line 44
    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x38t 0xc0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x38t 0x40t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x59t 0x40t
    .end array-data
.end method

.method private a([D)I
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 229
    .line 230
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-wide v3, p1, v1

    .line 231
    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_0

    .line 232
    add-int/lit8 v0, v0, 0x1

    .line 230
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    :cond_1
    return v0
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/ui/HistoryChartView;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 277
    new-instance v0, Lbed;

    invoke-direct {v0, p1}, Lbed;-><init>(Ljava/lang/String;)V

    .line 278
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->a:Lbec;

    invoke-virtual {v1, v0}, Lbec;->a(Lbed;)V

    .line 279
    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->c:Lbed;

    .line 280
    new-instance v0, Lbek;

    invoke-direct {v0}, Lbek;-><init>()V

    .line 281
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->b:Lbei;

    invoke-virtual {v1, v0}, Lbei;->a(Lbeh;)V

    .line 282
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v2, 0x7f0800cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lbek;->b(F)V

    .line 283
    invoke-virtual {v0, v3}, Lbek;->c(Z)V

    .line 284
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Lbek;->a(F)V

    .line 285
    invoke-virtual {v0, v3}, Lbek;->a(Z)V

    .line 286
    sget-object v1, Lbdv;->b:Lbdv;

    invoke-virtual {v0, v1}, Lbek;->a(Lbdv;)V

    .line 287
    return-void
.end method

.method private b([D)V
    .locals 9
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 239
    move v1, v0

    move v2, v0

    move v3, v4

    .line 242
    :goto_0
    array-length v5, p1

    if-ge v0, v5, :cond_3

    .line 243
    aget-wide v5, p1, v0

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_2

    .line 246
    add-int/lit8 v1, v1, 0x1

    .line 247
    if-eqz v2, :cond_0

    if-eq v3, v4, :cond_0

    .line 248
    aget-wide v5, p1, v0

    aget-wide v7, p1, v3

    sub-double/2addr v5, v7

    add-int/lit8 v3, v2, 0x1

    int-to-double v7, v3

    div-double/2addr v5, v7

    .line 249
    :goto_1
    if-eqz v2, :cond_0

    .line 250
    sub-int v3, v0, v2

    sub-int v7, v0, v2

    add-int/lit8 v7, v7, -0x1

    aget-wide v7, p1, v7

    add-double/2addr v7, v5

    aput-wide v7, p1, v3

    .line 251
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_0
    move v3, v0

    .line 242
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    :cond_2
    if-eq v3, v4, :cond_1

    .line 258
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 263
    :cond_3
    const/4 v0, 0x2

    if-lt v1, v0, :cond_4

    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->h:Z

    .line 266
    :cond_4
    return-void
.end method

.method private c()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/HistoryChartView;->d()V

    .line 61
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/HistoryChartView;->e()V

    .line 62
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/HistoryChartView;->f()V

    .line 63
    return-void
.end method

.method private d()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const-wide/high16 v12, 0x4059

    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 66
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/HistoryChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v1, 0x7f08009b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 67
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/HistoryChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v3, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v3, 0x7f090044

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 68
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/HistoryChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v4, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v4, 0x7f090048

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 69
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/HistoryChartView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v5, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v5, 0x7f0800ce

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 71
    iget-object v5, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->b:Lbei;

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Lbei;->a(F)V

    .line 72
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->b:Lbei;

    invoke-virtual {v0, v3}, Lbei;->w(I)V

    .line 73
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->b:Lbei;

    invoke-virtual {v0, v1}, Lbei;->c(I)V

    .line 74
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->b:Lbei;

    invoke-virtual {v0, v2}, Lbei;->b(Z)V

    .line 75
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->b:Lbei;

    invoke-virtual {v0, v2}, Lbei;->o(I)V

    .line 77
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->b:Lbei;

    invoke-virtual {v0, v14}, Lbei;->d(I)V

    .line 78
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->b:Lbei;

    invoke-virtual {v0, v10, v11, v2}, Lbei;->a(DI)V

    .line 79
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->b:Lbei;

    const-wide/high16 v5, 0x4038

    invoke-virtual {v0, v5, v6, v2}, Lbei;->b(DI)V

    .line 80
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->j:Landroid/content/Context;

    invoke-static {v0}, Lbap;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lly;->m:Lcom/dianxinos/dxbs/R$array;

    const v1, 0x7f0d000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    move v1, v2

    .line 86
    :goto_1
    const/16 v5, 0x11

    if-ge v1, v5, :cond_1

    .line 87
    iget-object v5, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->b:Lbei;

    mul-int/lit8 v6, v1, 0x3

    add-int/lit8 v6, v6, -0x18

    int-to-double v6, v6

    aget-object v8, v0, v1

    invoke-virtual {v5, v6, v7, v8}, Lbei;->a(DLjava/lang/String;)V

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lly;->m:Lcom/dianxinos/dxbs/R$array;

    const v1, 0x7f0d000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->b:Lbei;

    invoke-virtual {v0, v2}, Lbei;->r(I)V

    .line 91
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->b:Lbei;

    int-to-float v1, v4

    invoke-virtual {v0, v1}, Lbei;->d(F)V

    .line 92
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->b:Lbei;

    invoke-virtual {v0, v10, v11}, Lbei;->a(D)V

    .line 93
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->b:Lbei;

    invoke-virtual {v0, v12, v13}, Lbei;->b(D)V

    .line 94
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->b:Lbei;

    const-string v1, ""

    invoke-virtual {v0, v10, v11, v1}, Lbei;->b(DLjava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->b:Lbei;

    const-wide/high16 v5, 0x4034

    const-string v1, ""

    invoke-virtual {v0, v5, v6, v1}, Lbei;->b(DLjava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->b:Lbei;

    const-wide/high16 v5, 0x4044

    const-string v1, ""

    invoke-virtual {v0, v5, v6, v1}, Lbei;->b(DLjava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->b:Lbei;

    const-wide/high16 v5, 0x404e

    const-string v1, ""

    invoke-virtual {v0, v5, v6, v1}, Lbei;->b(DLjava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->b:Lbei;

    const-wide/high16 v5, 0x4054

    const-string v1, ""

    invoke-virtual {v0, v5, v6, v1}, Lbei;->b(DLjava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->b:Lbei;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "100%"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->j:Landroid/content/Context;

    sget-object v6, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v6, 0x7f0a0235

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v12, v13, v1}, Lbei;->b(DLjava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->b:Lbei;

    invoke-virtual {v0, v2, v3}, Lbei;->a(II)V

    .line 101
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->b:Lbei;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Lbei;->a(Landroid/graphics/Paint$Align;)V

    .line 103
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->b:Lbei;

    invoke-virtual {v0, v9}, Lbei;->c(Z)V

    .line 104
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->b:Lbei;

    invoke-virtual {v0, v2}, Lbei;->d(Z)V

    .line 105
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->b:Lbei;

    invoke-virtual {v0, v2, v2}, Lbei;->b(ZZ)V

    .line 106
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->b:Lbei;

    const/high16 v1, 0x40c0

    invoke-virtual {v0, v1}, Lbei;->c(F)V

    .line 107
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->b:Lbei;

    invoke-virtual {v0, v9, v2}, Lbei;->a(ZZ)V

    .line 108
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->b:Lbei;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->g:[D

    invoke-virtual {v0, v1}, Lbei;->a([D)V

    .line 109
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->b:Lbei;

    const/4 v1, 0x4

    new-array v1, v1, [I

    add-int/lit8 v3, v4, 0x19

    aput v3, v1, v2

    aput v2, v1, v9

    aput v2, v1, v14

    const/4 v3, 0x3

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Lbei;->a([I)V

    .line 112
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->b:Lbei;

    const/16 v1, 0xff

    invoke-static {v2, v1, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Lbei;->s(I)V

    .line 113
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->b:Lbei;

    invoke-virtual {v0, v2}, Lbei;->b(I)V

    .line 114
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->b:Lbei;

    invoke-virtual {v0, v9}, Lbei;->a(Z)V

    .line 115
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->b:Lbei;

    new-instance v1, Lavk;

    invoke-direct {v1, p0}, Lavk;-><init>(Lcom/dianxinos/powermanager/ui/HistoryChartView;)V

    invoke-virtual {v0, v1}, Lbei;->a(Lbeg;)V

    .line 140
    return-void
.end method

.method private e()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 151
    new-instance v0, Lbdm;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->j:Landroid/content/Context;

    new-instance v2, Laiq;

    iget-object v3, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->a:Lbec;

    iget-object v4, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->b:Lbei;

    iget-object v5, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->j:Landroid/content/Context;

    invoke-direct {v2, v3, v4, v5}, Laiq;-><init>(Lbec;Lbei;Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Lbdm;-><init>(Landroid/content/Context;Lbdr;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->d:Lbdm;

    .line 152
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->d:Lbdm;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/dianxinos/powermanager/ui/HistoryChartView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->i:Landroid/widget/ImageView;

    .line 155
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->i:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f02013d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 156
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->i:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 157
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->i:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 160
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->i:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/HistoryChartView;->addView(Landroid/view/View;)V

    .line 162
    return-void
.end method

.method private f()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    .line 165
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->j:Landroid/content/Context;

    invoke-static {v0}, Laio;->a(Landroid/content/Context;)Laio;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Laio;->a()[D

    move-result-object v2

    iput-object v2, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->e:[D

    .line 167
    invoke-virtual {v0}, Laio;->b()[D

    move-result-object v2

    iput-object v2, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->f:[D

    .line 168
    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->e:[D

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->f:[D

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->e:[D

    invoke-direct {p0, v2}, Lcom/dianxinos/powermanager/ui/HistoryChartView;->a([D)I

    move-result v2

    iget-object v3, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->f:[D

    invoke-direct {p0, v3}, Lcom/dianxinos/powermanager/ui/HistoryChartView;->a([D)I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    .line 172
    :cond_0
    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->j:Landroid/content/Context;

    invoke-static {v2}, Lato;->a(Landroid/content/Context;)Lato;

    move-result-object v2

    invoke-virtual {v2}, Lato;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 174
    invoke-virtual {v0}, Laio;->a()[D

    move-result-object v2

    iput-object v2, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->e:[D

    .line 175
    invoke-virtual {v0}, Laio;->b()[D

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->f:[D

    .line 176
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->e:[D

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->f:[D

    if-nez v0, :cond_2

    .line 226
    :cond_1
    return-void

    .line 184
    :cond_2
    const/16 v0, 0x31

    new-array v2, v0, [D

    .line 185
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->f:[D

    iget-object v3, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->f:[D

    array-length v3, v3

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->e:[D

    iget-object v3, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->f:[D

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->e:[D

    array-length v4, v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    invoke-direct {p0, v2}, Lcom/dianxinos/powermanager/ui/HistoryChartView;->b([D)V

    .line 197
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->h:Z

    if-eqz v0, :cond_1

    .line 207
    const-string v0, "forwholechart"

    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/ui/HistoryChartView;->a(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->b:Lbei;

    iget-object v3, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->b:Lbei;

    invoke-virtual {v3}, Lbei;->d()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Lbei;->a(I)Lbeh;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbeh;->a(I)V

    .line 210
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->c:Lbed;

    invoke-virtual {v0, v8, v9, v8, v9}, Lbed;->a(DD)V

    .line 211
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->c:Lbed;

    const-wide/high16 v3, 0x4038

    invoke-virtual {v0, v3, v4, v8, v9}, Lbed;->a(DD)V

    .line 213
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->j:Landroid/content/Context;

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a01aa

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/ui/HistoryChartView;->a(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->b:Lbei;

    iget-object v3, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->b:Lbei;

    invoke-virtual {v3}, Lbei;->d()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Lbei;->a(I)Lbeh;

    move-result-object v0

    check-cast v0, Lbek;

    .line 216
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lbek;->b(Z)V

    .line 217
    iget-object v3, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->j:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v4, 0x7f090045

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lbek;->a(I)V

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lbap;->a(J)I

    move-result v3

    move v0, v1

    .line 220
    :goto_0
    add-int/lit8 v1, v3, 0x1

    add-int/lit8 v1, v1, 0x18

    if-ge v0, v1, :cond_1

    .line 221
    aget-wide v4, v2, v0

    cmpl-double v1, v4, v8

    if-eqz v1, :cond_3

    .line 223
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->c:Lbed;

    add-int/lit8 v4, v0, -0x18

    int-to-double v4, v4

    aget-wide v6, v2, v0

    invoke-virtual {v1, v4, v5, v6, v7}, Lbed;->a(DD)V

    .line 220
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->a:Lbec;

    invoke-virtual {v0}, Lbec;->a()V

    .line 144
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->b:Lbei;

    invoke-virtual {v0}, Lbei;->N()V

    .line 145
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->b:Lbei;

    invoke-virtual {v0}, Lbei;->O()V

    .line 146
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/HistoryChartView;->d()V

    .line 147
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/HistoryChartView;->f()V

    .line 148
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/ui/HistoryChartView;->h:Z

    return v0
.end method
