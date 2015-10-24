.class public Lya;
.super Landroid/widget/HorizontalScrollView;
.source "HorizontalSlideItem.java"


# instance fields
.field private a:I

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/LinearLayout;

.field private f:I

.field private g:I

.field private h:Z

.field private i:Landroid/view/GestureDetector;

.field private j:Lyf;

.field private k:Lyg;

.field private l:Lcom/dianxinos/optimizer/module/messagebox/DisableScrollListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dianxinos/optimizer/module/messagebox/DisableScrollListView;Landroid/view/View;Landroid/view/View;Lyg;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lya;->a:I

    .line 97
    iput-object p1, p0, Lya;->b:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lya;->l:Lcom/dianxinos/optimizer/module/messagebox/DisableScrollListView;

    .line 99
    iput-object p5, p0, Lya;->k:Lyg;

    .line 100
    invoke-direct {p0, p3, p4}, Lya;->a(Landroid/view/View;Landroid/view/View;)V

    .line 101
    invoke-direct {p0}, Lya;->b()V

    .line 102
    return-void
.end method

.method static synthetic a(Lya;)I
    .locals 1
    .parameter

    .prologue
    .line 21
    iget v0, p0, Lya;->g:I

    return v0
.end method

.method static synthetic a(Lya;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput p1, p0, Lya;->a:I

    return p1
.end method

.method private a(Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 105
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 107
    invoke-virtual {p0, v0}, Lya;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    invoke-virtual {p0, v3}, Lya;->setVerticalScrollBarEnabled(Z)V

    .line 109
    invoke-virtual {p0, v3}, Lya;->setHorizontalScrollBarEnabled(Z)V

    .line 110
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lya;->setFillViewport(Z)V

    .line 111
    invoke-virtual {p0, v3}, Lya;->setFadingEdgeLength(I)V

    .line 113
    iget-object v0, p0, Lya;->b:Landroid/content/Context;

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f030043

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 114
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07011e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lya;->e:Landroid/widget/LinearLayout;

    .line 115
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07011f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lya;->c:Landroid/widget/LinearLayout;

    .line 116
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070120

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lya;->d:Landroid/widget/LinearLayout;

    .line 118
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 119
    iget-object v0, p0, Lya;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 120
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lya;->f:I

    .line 121
    iget-object v0, p0, Lya;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lya;->f:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 122
    iget v0, p0, Lya;->f:I

    div-int/lit8 v0, v0, 0x6

    iput v0, p0, Lya;->g:I

    .line 124
    iget-object v0, p0, Lya;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 125
    iget-object v0, p0, Lya;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 126
    return-void
.end method

.method static synthetic b(Lya;)Lcom/dianxinos/optimizer/module/messagebox/DisableScrollListView;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lya;->l:Lcom/dianxinos/optimizer/module/messagebox/DisableScrollListView;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 129
    new-instance v0, Lyb;

    invoke-direct {v0, p0}, Lyb;-><init>(Lya;)V

    iput-object v0, p0, Lya;->j:Lyf;

    .line 140
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lya;->b:Landroid/content/Context;

    new-instance v2, Lyh;

    iget-object v3, p0, Lya;->j:Lyf;

    invoke-direct {v2, p0, v3}, Lyh;-><init>(Lya;Lyf;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lya;->i:Landroid/view/GestureDetector;

    .line 142
    new-instance v0, Lyc;

    invoke-direct {v0, p0}, Lyc;-><init>(Lya;)V

    invoke-virtual {p0, v0}, Lya;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 169
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lya;->h:Z

    .line 182
    iget-object v0, p0, Lya;->k:Lyg;

    invoke-interface {v0}, Lyg;->c()V

    .line 183
    new-instance v0, Lye;

    invoke-direct {v0, p0}, Lye;-><init>(Lya;)V

    invoke-virtual {p0, v0}, Lya;->post(Ljava/lang/Runnable;)Z

    .line 188
    return-void
.end method

.method static synthetic c(Lya;)Z
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-boolean v0, p0, Lya;->h:Z

    return v0
.end method

.method static synthetic d(Lya;)Lyg;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lya;->k:Lyg;

    return-object v0
.end method

.method static synthetic e(Lya;)Landroid/view/GestureDetector;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lya;->i:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic f(Lya;)I
    .locals 1
    .parameter

    .prologue
    .line 21
    iget v0, p0, Lya;->a:I

    return v0
.end method

.method static synthetic g(Lya;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Lya;->c()V

    return-void
.end method

.method static synthetic h(Lya;)I
    .locals 1
    .parameter

    .prologue
    .line 21
    iget v0, p0, Lya;->f:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lya;->h:Z

    .line 173
    new-instance v0, Lyd;

    invoke-direct {v0, p0}, Lyd;-><init>(Lya;)V

    invoke-virtual {p0, v0}, Lya;->post(Ljava/lang/Runnable;)Z

    .line 178
    return-void
.end method
