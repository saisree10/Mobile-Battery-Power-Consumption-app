.class public Lcom/dianxinos/powermanager/ui/RunAppBackView;
.super Landroid/widget/LinearLayout;
.source "RunAppBackView.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/widget/GridView;

.field private d:Lawm;

.field private e:Landroid/view/animation/Animation;

.field private f:Landroid/view/animation/LayoutAnimationController;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/content/Context;

.field private i:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 93
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/RunAppBackView;->a()V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ui/RunAppBackView;->a()V

    .line 99
    return-void
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/ui/RunAppBackView;)I
    .locals 1
    .parameter

    .prologue
    .line 26
    iget v0, p0, Lcom/dianxinos/powermanager/ui/RunAppBackView;->a:I

    return v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/RunAppBackView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/RunAppBackView;->h:Landroid/content/Context;

    .line 103
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/RunAppBackView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f03006c

    invoke-static {v0, v1, p0}, Lcom/dianxinos/powermanager/ui/RunAppBackView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/RunAppBackView;->h:Landroid/content/Context;

    sget-object v1, Lly;->a:Lcom/dianxinos/dxbs/R$anim;

    const v1, 0x7f040001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/RunAppBackView;->e:Landroid/view/animation/Animation;

    .line 106
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/RunAppBackView;->e:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 107
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/RunAppBackView;->e:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 108
    new-instance v0, Landroid/view/animation/LayoutAnimationController;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/RunAppBackView;->e:Landroid/view/animation/Animation;

    invoke-direct {v0, v1}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/RunAppBackView;->f:Landroid/view/animation/LayoutAnimationController;

    .line 109
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/RunAppBackView;->f:Landroid/view/animation/LayoutAnimationController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/LayoutAnimationController;->setDelay(F)V

    .line 110
    return-void
.end method

.method public static synthetic b(Lcom/dianxinos/powermanager/ui/RunAppBackView;)I
    .locals 1
    .parameter

    .prologue
    .line 26
    iget v0, p0, Lcom/dianxinos/powermanager/ui/RunAppBackView;->b:I

    return v0
.end method

.method public static synthetic c(Lcom/dianxinos/powermanager/ui/RunAppBackView;)Landroid/widget/GridView;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/RunAppBackView;->c:Landroid/widget/GridView;

    return-object v0
.end method


# virtual methods
.method public a(Lawl;)V
    .locals 2
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/RunAppBackView;->c:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/RunAppBackView;->f:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 149
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/RunAppBackView;->c:Landroid/widget/GridView;

    new-instance v1, Lawj;

    invoke-direct {v1, p0, p1}, Lawj;-><init>(Lcom/dianxinos/powermanager/ui/RunAppBackView;Lawl;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 163
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/RunAppBackView;->i:Landroid/os/Handler;

    new-instance v1, Lawk;

    invoke-direct {v1, p0}, Lawk;-><init>(Lcom/dianxinos/powermanager/ui/RunAppBackView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 169
    return-void
.end method

.method public a(Ljava/util/ArrayList;Landroid/os/Handler;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 122
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/RunAppBackView;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/RunAppBackView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v4, 0x7f0a0315

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iput-object p2, p0, Lcom/dianxinos/powermanager/ui/RunAppBackView;->i:Landroid/os/Handler;

    .line 124
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/RunAppBackView;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 126
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 127
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
    :try_start_0
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 134
    :goto_1
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/RunAppBackView;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x1080093

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 136
    :cond_0
    new-instance v0, Lawm;

    iget-object v3, p0, Lcom/dianxinos/powermanager/ui/RunAppBackView;->h:Landroid/content/Context;

    invoke-direct {v0, p0, v3, v4}, Lawm;-><init>(Lcom/dianxinos/powermanager/ui/RunAppBackView;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/RunAppBackView;->d:Lawm;

    .line 137
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/RunAppBackView;->c:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/dianxinos/powermanager/ui/RunAppBackView;->d:Lawm;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/RunAppBackView;->c:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 140
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 141
    div-int/lit8 v4, v3, 0x6

    .line 142
    mul-int/lit8 v5, v4, 0x6

    sub-int/2addr v3, v5

    if-nez v3, :cond_1

    .line 143
    :goto_2
    iget v2, p0, Lcom/dianxinos/powermanager/ui/RunAppBackView;->a:I

    iget v3, p0, Lcom/dianxinos/powermanager/ui/RunAppBackView;->b:I

    add-int/2addr v2, v3

    add-int/2addr v1, v4

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/dianxinos/powermanager/ui/RunAppBackView;->b:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 144
    iget-object v1, p0, Lcom/dianxinos/powermanager/ui/RunAppBackView;->c:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    return-void

    :cond_1
    move v1, v2

    .line 142
    goto :goto_2
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 115
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701d3

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/RunAppBackView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/RunAppBackView;->c:Landroid/widget/GridView;

    .line 116
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701d2

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ui/RunAppBackView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/ui/RunAppBackView;->g:Landroid/widget/TextView;

    .line 117
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/RunAppBackView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v1, 0x7f080084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/RunAppBackView;->a:I

    .line 118
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/RunAppBackView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v1, 0x7f080085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/ui/RunAppBackView;->b:I

    .line 119
    return-void
.end method
