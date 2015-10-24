.class public Lcom/dianxinos/common/ui/fragment/TitleIndicator;
.super Landroid/widget/LinearLayout;
.source "TitleIndicator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private a:I

.field private b:Ljava/util/List;

.field private c:Landroid/support/v4/view/ViewPager;

.field private d:Landroid/content/res/ColorStateList;

.field private e:F

.field private f:F

.field private g:Landroid/graphics/Path;

.field private h:Landroid/graphics/Paint;

.field private i:F

.field private j:F

.field private k:I

.field private l:Landroid/content/Context;

.field private final m:I

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:Landroid/view/LayoutInflater;

.field private s:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 46
    iput v1, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->a:I

    .line 57
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->g:Landroid/graphics/Path;

    .line 65
    iput v1, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->k:I

    .line 69
    const v0, 0xffff00

    iput v0, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->m:I

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->n:Z

    .line 73
    iput v1, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->o:I

    .line 75
    iput v1, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->p:I

    .line 77
    iput v1, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->q:I

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->s:Ljava/util/List;

    .line 88
    const/high16 v0, 0x4080

    const/16 v1, -0x3bbb

    invoke-direct {p0, v0, v1}, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->a(FI)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    iput v1, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->a:I

    .line 57
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->g:Landroid/graphics/Path;

    .line 65
    iput v1, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->k:I

    .line 69
    const v0, 0xffff00

    iput v0, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->m:I

    .line 71
    iput-boolean v2, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->n:Z

    .line 73
    iput v1, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->o:I

    .line 75
    iput v1, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->p:I

    .line 77
    iput v1, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->q:I

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->s:Ljava/util/List;

    .line 99
    invoke-virtual {p0, v2}, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->setFocusable(Z)V

    .line 100
    invoke-virtual {p0, p0}, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 101
    iput-object p1, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->l:Landroid/content/Context;

    .line 103
    sget-object v0, Lly;->k:Lcom/dianxinos/dxbs/R$styleable;

    sget-object v0, Lcom/dianxinos/dxbs/R$styleable;->TitleIndicator:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 105
    sget-object v1, Lly;->k:Lcom/dianxinos/dxbs/R$styleable;

    const/4 v1, 0x6

    const/16 v2, -0x3bbb

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 106
    sget-object v2, Lly;->k:Lcom/dianxinos/dxbs/R$styleable;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->d:Landroid/content/res/ColorStateList;

    .line 107
    sget-object v2, Lly;->k:Lcom/dianxinos/dxbs/R$styleable;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->e:F

    .line 108
    sget-object v2, Lly;->k:Lcom/dianxinos/dxbs/R$styleable;

    const/4 v2, 0x4

    iget v3, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->e:F

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->f:F

    .line 110
    sget-object v2, Lly;->k:Lcom/dianxinos/dxbs/R$styleable;

    const/4 v2, 0x5

    const/high16 v3, 0x4080

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->j:F

    .line 112
    sget-object v2, Lly;->k:Lcom/dianxinos/dxbs/R$styleable;

    const/4 v2, 0x7

    const/high16 v3, 0x4120

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->i:F

    .line 115
    iget v2, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->j:F

    invoke-direct {p0, v2, v1}, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->a(FI)V

    .line 116
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v1, 0x7f09004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->setBackgroundColor(I)V

    .line 118
    return-void
.end method

.method public static a(Landroid/content/Context;F)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 170
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 171
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private a(FI)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 124
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->h:Landroid/graphics/Paint;

    .line 125
    iget-object v0, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->h:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 126
    iget-object v0, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 127
    iget-object v0, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 128
    iget-object v0, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 129
    iget-object v0, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 130
    iget-object v0, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    iget-object v0, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->l:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->r:Landroid/view/LayoutInflater;

    .line 133
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 254
    iget-object v0, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    return-void
.end method

.method private a(Landroid/view/View;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 302
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070245

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 303
    const/4 v2, 0x0

    if-eqz p2, :cond_0

    iget v1, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->f:F

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 305
    return-void

    .line 303
    :cond_0
    iget v1, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->e:F

    goto :goto_0
.end method

.method private c(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->b:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 185
    iget-object v0, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/common/ui/fragment/TabInfo;

    invoke-virtual {v0}, Lcom/dianxinos/common/ui/fragment/TabInfo;->a()Ljava/lang/String;

    move-result-object v0

    .line 187
    :cond_0
    return-object v0
.end method

.method private d(I)I
    .locals 2
    .parameter

    .prologue
    .line 191
    const/4 v0, 0x0

    .line 192
    iget-object v1, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->b:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/common/ui/fragment/TabInfo;

    invoke-virtual {v0}, Lcom/dianxinos/common/ui/fragment/TabInfo;->b()I

    move-result v0

    .line 195
    :cond_0
    return v0
.end method

.method private e(I)Z
    .locals 2
    .parameter

    .prologue
    .line 199
    const/4 v0, 0x0

    .line 200
    iget-object v1, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->b:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/common/ui/fragment/TabInfo;

    iget-boolean v0, v0, Lcom/dianxinos/common/ui/fragment/TabInfo;->a:Z

    .line 203
    :cond_0
    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput p1, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->a:I

    .line 208
    invoke-virtual {p0}, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->invalidate()V

    .line 209
    return-void
.end method

.method protected a(ILjava/lang/String;IZ)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 232
    iget-object v0, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->r:Landroid/view/LayoutInflater;

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f03008f

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 233
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070245

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 234
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f070246

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 235
    invoke-direct {p0, v1}, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->a(Landroid/view/View;)V

    .line 236
    iget-object v1, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->d:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 239
    :cond_0
    iget v1, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->e:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    .line 240
    iget v1, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->e:F

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 242
    :cond_1
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    if-lez p3, :cond_2

    .line 244
    invoke-virtual {v0, v4, p3, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 246
    :cond_2
    const v0, 0xffff00

    iget v1, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->o:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->o:I

    add-int/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/view/View;->setId(I)V

    .line 247
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 249
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 250
    invoke-virtual {p0, v2}, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->addView(Landroid/view/View;)V

    .line 251
    return-void
.end method

.method public a(ILjava/util/List;Landroid/support/v4/view/ViewPager;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->removeAllViews()V

    .line 221
    iput-object p3, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->c:Landroid/support/v4/view/ViewPager;

    .line 222
    iput-object p2, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->b:Ljava/util/List;

    .line 223
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->q:I

    .line 224
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->q:I

    if-ge v0, v1, :cond_0

    .line 225
    invoke-direct {p0, v0}, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->d(I)I

    move-result v2

    invoke-direct {p0, v0}, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->e(I)Z

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->a(ILjava/lang/String;IZ)V

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual {p0, p1}, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->setCurrentTab(I)V

    .line 228
    invoke-virtual {p0}, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->invalidate()V

    .line 229
    return-void
.end method

.method public declared-synchronized b(I)V
    .locals 1
    .parameter

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 217
    :goto_0
    monitor-exit p0

    return-void

    .line 215
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->setCurrentTab(I)V

    .line 216
    invoke-virtual {p0}, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getChangeOnClick()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->n:Z

    return v0
.end method

.method public getPremiumTipIntoList()Ljava/util/List;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->s:Ljava/util/List;

    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->getChildCount()I

    move-result v0

    .line 281
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 275
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0xffff00

    sub-int/2addr v0, v1

    .line 276
    invoke-virtual {p0, v0}, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->setCurrentTab(I)V

    .line 277
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter

    .prologue
    const/high16 v7, 0x3f80

    .line 141
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 143
    iget v0, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->q:I

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->q:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->p:I

    .line 145
    iget v0, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->k:I

    .line 146
    iget v1, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->a:I

    invoke-virtual {p0}, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getPageMargin()I

    move-result v3

    add-int/2addr v2, v3

    mul-int/2addr v0, v2

    sub-int v0, v1, v0

    iget v1, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->q:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    .line 152
    :goto_0
    iget-object v1, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->g:Landroid/graphics/Path;

    .line 153
    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 154
    iget-object v2, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->l:Landroid/content/Context;

    const/high16 v3, 0x4190

    invoke-static {v2, v3}, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->a(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    .line 155
    iget-object v3, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->l:Landroid/content/Context;

    const/high16 v4, 0x4040

    invoke-static {v3, v4}, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->a(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    .line 156
    iget v4, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->k:I

    iget v5, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->p:I

    mul-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v4, v2

    add-float/2addr v4, v0

    .line 157
    iget v5, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->k:I

    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->p:I

    mul-int/2addr v5, v6

    int-to-float v5, v5

    sub-float v2, v5, v2

    add-float/2addr v0, v2

    .line 158
    invoke-virtual {p0}, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v5, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->j:F

    sub-float/2addr v2, v5

    iget v5, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->i:F

    sub-float/2addr v2, v5

    sub-float/2addr v2, v3

    .line 159
    invoke-virtual {p0}, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->j:F

    sub-float/2addr v5, v6

    sub-float v3, v5, v3

    .line 161
    add-float v5, v2, v7

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 162
    add-float/2addr v2, v7

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 163
    add-float v2, v3, v7

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 164
    add-float v0, v3, v7

    invoke-virtual {v1, v4, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 165
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 166
    iget-object v0, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 167
    return-void

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->p:I

    .line 150
    iget v0, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->a:I

    int-to-float v0, v0

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 309
    if-ne p1, p0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->getTabCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 310
    iget v0, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->k:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    if-eqz p2, :cond_0

    .line 315
    const/4 v0, 0x0

    .line 316
    invoke-virtual {p0}, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->getTabCount()I

    move-result v1

    .line 317
    :goto_1
    if-ge v0, v1, :cond_0

    .line 318
    invoke-virtual {p0, v0}, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 319
    invoke-virtual {p0, v0}, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->setCurrentTab(I)V

    goto :goto_0

    .line 322
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 329
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 330
    iget v0, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->a:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->k:I

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getPageMargin()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->k:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->a:I

    .line 333
    :cond_0
    return-void
.end method

.method public setChangeOnClick(Z)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-boolean p1, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->n:Z

    .line 267
    return-void
.end method

.method public declared-synchronized setCurrentTab(I)V
    .locals 2
    .parameter

    .prologue
    .line 285
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->getTabCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lt p1, v0, :cond_1

    .line 299
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 288
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->k:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 289
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 290
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->a(Landroid/view/View;Z)V

    .line 292
    iput p1, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->k:I

    .line 293
    iget v0, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->k:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 294
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 295
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->a(Landroid/view/View;Z)V

    .line 297
    iget-object v0, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->c:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->k:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 298
    invoke-virtual {p0}, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDisplayedPage(I)V
    .locals 0
    .parameter

    .prologue
    .line 262
    iput p1, p0, Lcom/dianxinos/common/ui/fragment/TitleIndicator;->k:I

    .line 263
    return-void
.end method
