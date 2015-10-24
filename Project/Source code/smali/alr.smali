.class public Lalr;
.super Ljava/lang/Object;
.source "CustomMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:Lalt;

.field private c:Landroid/content/Context;

.field private d:Landroid/view/LayoutInflater;

.field private e:Landroid/widget/PopupWindow;

.field private f:Z

.field private g:Z

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lalt;Landroid/view/LayoutInflater;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lalr;->b:Lalt;

    .line 40
    iput-object v0, p0, Lalr;->c:Landroid/content/Context;

    .line 41
    iput-object v0, p0, Lalr;->d:Landroid/view/LayoutInflater;

    .line 42
    iput-object v0, p0, Lalr;->e:Landroid/widget/PopupWindow;

    .line 43
    iput-boolean v1, p0, Lalr;->f:Z

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lalr;->g:Z

    .line 45
    iput v1, p0, Lalr;->h:I

    .line 46
    const/4 v0, 0x3

    iput v0, p0, Lalr;->i:I

    .line 47
    const/4 v0, 0x6

    iput v0, p0, Lalr;->j:I

    .line 126
    iput-object p2, p0, Lalr;->b:Lalt;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lalr;->a:Ljava/util/ArrayList;

    .line 128
    iput-object p1, p0, Lalr;->c:Landroid/content/Context;

    .line 129
    iput-object p3, p0, Lalr;->d:Landroid/view/LayoutInflater;

    .line 130
    return-void
.end method

.method static synthetic a(Lalr;)Lalt;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lalr;->b:Lalt;

    return-object v0
.end method

.method static synthetic b(Lalr;)Z
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-boolean v0, p0, Lalr;->g:Z

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput p1, p0, Lalr;->i:I

    .line 86
    return-void
.end method

.method public declared-synchronized a(Landroid/view/View;)V
    .locals 10
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 141
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lalr;->f:Z

    .line 143
    iget-object v0, p0, Lalr;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 144
    if-ge v4, v2, :cond_1

    .line 193
    :cond_0
    monitor-exit p0

    return-void

    .line 146
    :cond_1
    :try_start_1
    iget-object v0, p0, Lalr;->e:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lalr;->c:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 152
    :cond_2
    iget-object v2, p0, Lalr;->d:Landroid/view/LayoutInflater;

    sget-object v3, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v3, 0x7f03002d

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 153
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    new-instance v3, Landroid/widget/PopupWindow;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct {v3, v2, v5, v6, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v3, p0, Lalr;->e:Landroid/widget/PopupWindow;

    .line 156
    iget-object v3, p0, Lalr;->e:Landroid/widget/PopupWindow;

    const v5, 0x1030056

    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 157
    iget-object v3, p0, Lalr;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 158
    iget-object v0, p0, Lalr;->e:Landroid/widget/PopupWindow;

    const/16 v3, 0x50

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, p1, v3, v5, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 160
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700a5

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 161
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 162
    int-to-float v2, v4

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    move v3, v1

    .line 163
    :goto_0
    if-ge v3, v4, :cond_0

    .line 165
    iget-object v1, p0, Lalr;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lalu;

    .line 166
    iget-object v2, p0, Lalr;->d:Landroid/view/LayoutInflater;

    sget-object v5, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v5, 0x7f03002e

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 167
    sget-object v2, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v2, 0x7f0700a6

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 168
    invoke-virtual {v1}, Lalu;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    const/4 v6, 0x0

    iget-object v7, p0, Lalr;->c:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v1}, Lalu;->b()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 171
    new-instance v2, Lals;

    invoke-direct {v2, p0, v1}, Lals;-><init>(Lalr;Lalu;)V

    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 181
    if-nez v1, :cond_3

    .line 182
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v6, -0x1

    invoke-direct {v1, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 186
    :cond_3
    if-eqz v3, :cond_4

    .line 187
    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 189
    :cond_4
    const/high16 v2, 0x3f80

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 190
    invoke-virtual {v5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/util/ArrayList;)V
    .locals 2
    .parameter

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lalr;->f:Z

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Menu list may not be modified while menu is displayed."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 112
    :cond_0
    :try_start_1
    iput-object p1, p0, Lalr;->a:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    monitor-exit p0

    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-boolean p1, p0, Lalr;->g:Z

    .line 75
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lalr;->f:Z

    return v0
.end method

.method public declared-synchronized b()V
    .locals 1

    .prologue
    .line 201
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lalr;->f:Z

    .line 202
    iget-object v0, p0, Lalr;->e:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lalr;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    :try_start_1
    iget-object v0, p0, Lalr;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 208
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lalr;->e:Landroid/widget/PopupWindow;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    :cond_0
    monitor-exit p0

    return-void

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 205
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput p1, p0, Lalr;->j:I

    .line 97
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    invoke-virtual {p0}, Lalr;->b()V

    .line 216
    return-void
.end method
