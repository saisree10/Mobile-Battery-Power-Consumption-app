.class public Lcom/dianxinos/powermanager/UserTipsActivity;
.super Laao;
.source "UserTipsActivity.java"

# interfaces
.implements Lawa;


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I

.field private static final d:[I


# instance fields
.field private e:Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;

.field private f:Lcom/dianxinos/powermanager/ui/GuideView;

.field private g:[I

.field private h:[I

.field private i:[I

.field private j:I

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    const/4 v0, 0x5

    new-array v0, v0, [I

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f0300a4

    aput v1, v0, v2

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f0300a5

    aput v1, v0, v3

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f0300a5

    aput v1, v0, v4

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f0300a5

    aput v1, v0, v5

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f0300a5

    aput v1, v0, v6

    sput-object v0, Lcom/dianxinos/powermanager/UserTipsActivity;->a:[I

    .line 35
    const/4 v0, 0x5

    new-array v0, v0, [I

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f02047f

    aput v1, v0, v2

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020480

    aput v1, v0, v3

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020481

    aput v1, v0, v4

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020482

    aput v1, v0, v5

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020483

    aput v1, v0, v6

    sput-object v0, Lcom/dianxinos/powermanager/UserTipsActivity;->b:[I

    .line 43
    const/4 v0, 0x5

    new-array v0, v0, [I

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0273

    aput v1, v0, v2

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0275

    aput v1, v0, v3

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0277

    aput v1, v0, v4

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0279

    aput v1, v0, v5

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a027b

    aput v1, v0, v6

    sput-object v0, Lcom/dianxinos/powermanager/UserTipsActivity;->c:[I

    .line 51
    const/4 v0, 0x5

    new-array v0, v0, [I

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0274

    aput v1, v0, v2

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0276

    aput v1, v0, v3

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0278

    aput v1, v0, v4

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a027a

    aput v1, v0, v5

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a027c

    aput v1, v0, v6

    sput-object v0, Lcom/dianxinos/powermanager/UserTipsActivity;->d:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Laao;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/dianxinos/powermanager/UserTipsActivity;->f:Lcom/dianxinos/powermanager/ui/GuideView;

    invoke-virtual {v0, p1}, Lcom/dianxinos/powermanager/ui/GuideView;->setSelectedId(I)V

    .line 144
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v8, -0x1

    .line 73
    invoke-super {p0, p1}, Laao;->onCreate(Landroid/os/Bundle;)V

    .line 74
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f03008d

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/UserTipsActivity;->setContentView(I)V

    .line 76
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070007

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/UserTipsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/MainTitle;

    .line 77
    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setVisibility(I)V

    .line 78
    invoke-virtual {v0}, Lcom/dianxinos/powermanager/ui/MainTitle;->a()V

    .line 79
    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f020450

    invoke-virtual {v0, v2}, Lcom/dianxinos/powermanager/ui/MainTitle;->setLeftButtonIcon(I)V

    .line 80
    new-instance v2, Lach;

    invoke-direct {v2, p0}, Lach;-><init>(Lcom/dianxinos/powermanager/UserTipsActivity;)V

    invoke-virtual {v0, v2}, Lcom/dianxinos/powermanager/ui/MainTitle;->setLeftButtonOnclickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    sget-object v0, Lcom/dianxinos/powermanager/UserTipsActivity;->b:[I

    iput-object v0, p0, Lcom/dianxinos/powermanager/UserTipsActivity;->g:[I

    .line 88
    sget-object v0, Lcom/dianxinos/powermanager/UserTipsActivity;->c:[I

    iput-object v0, p0, Lcom/dianxinos/powermanager/UserTipsActivity;->h:[I

    .line 89
    sget-object v0, Lcom/dianxinos/powermanager/UserTipsActivity;->d:[I

    iput-object v0, p0, Lcom/dianxinos/powermanager/UserTipsActivity;->i:[I

    .line 90
    sget-object v0, Lcom/dianxinos/powermanager/UserTipsActivity;->c:[I

    array-length v0, v0

    iput v0, p0, Lcom/dianxinos/powermanager/UserTipsActivity;->j:I

    .line 92
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07023a

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/UserTipsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/UserTipsActivity;->e:Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;

    .line 94
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07023b

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/UserTipsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 96
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 97
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/UserTipsActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 98
    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 100
    iget-object v2, p0, Lcom/dianxinos/powermanager/UserTipsActivity;->e:Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f80

    invoke-direct {v3, v4, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    invoke-static {p0}, Lazp;->a(Landroid/content/Context;)Lazp;

    move-result-object v5

    move v3, v1

    .line 103
    :goto_0
    iget v1, p0, Lcom/dianxinos/powermanager/UserTipsActivity;->j:I

    if-ge v3, v1, :cond_1

    .line 105
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/UserTipsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget-object v2, Lcom/dianxinos/powermanager/UserTipsActivity;->a:[I

    aget v2, v2, v3

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 106
    if-nez v3, :cond_0

    .line 107
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f070289

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 108
    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {v5}, Lazp;->d()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 112
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f070018

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 116
    sget-object v2, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v2, 0x7f070014

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 117
    iget-object v7, p0, Lcom/dianxinos/powermanager/UserTipsActivity;->g:[I

    aget v7, v7, v3

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    iget-object v2, p0, Lcom/dianxinos/powermanager/UserTipsActivity;->h:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 121
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0700a6

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 122
    iget-object v2, p0, Lcom/dianxinos/powermanager/UserTipsActivity;->i:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 124
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 103
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/UserTipsActivity;->k:I

    .line 128
    iget-object v0, p0, Lcom/dianxinos/powermanager/UserTipsActivity;->e:Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;

    iget v1, p0, Lcom/dianxinos/powermanager/UserTipsActivity;->k:I

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->setItemSize(I)V

    .line 130
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07023c

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/UserTipsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/GuideView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/UserTipsActivity;->f:Lcom/dianxinos/powermanager/ui/GuideView;

    .line 131
    iget-object v0, p0, Lcom/dianxinos/powermanager/UserTipsActivity;->f:Lcom/dianxinos/powermanager/ui/GuideView;

    iget v1, p0, Lcom/dianxinos/powermanager/UserTipsActivity;->k:I

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/GuideView;->setSize(I)V

    .line 132
    iget-object v0, p0, Lcom/dianxinos/powermanager/UserTipsActivity;->e:Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/PageHorizontalScrollView;->setChangeItemListener(Lawa;)V

    .line 134
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 138
    invoke-super {p0}, Laao;->onDestroy()V

    .line 139
    return-void
.end method
