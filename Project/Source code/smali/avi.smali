.class public Lavi;
.super Landroid/app/Dialog;
.source "DxUpdateTips.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/content/res/Resources;

.field private c:[Ljava/lang/String;

.field private d:Z

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Lavj;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lavj;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 40
    sget-object v0, Lly;->j:Lcom/dianxinos/dxbs/R$style;

    const v0, 0x7f0b0006

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lavi;->d:Z

    .line 41
    invoke-virtual {p0}, Lavi;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget-object v1, Lly;->j:Lcom/dianxinos/dxbs/R$style;

    const v1, 0x7f0b001b

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 42
    iput-object p1, p0, Lavi;->a:Landroid/app/Activity;

    .line 43
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f0300a1

    invoke-virtual {p0, v0}, Lavi;->setContentView(I)V

    .line 45
    iget-object v0, p0, Lavi;->a:Landroid/app/Activity;

    invoke-static {v0}, Lazr;->a(Landroid/content/Context;)Lazr;

    move-result-object v0

    invoke-virtual {v0}, Lazr;->h()Z

    move-result v0

    iput-boolean v0, p0, Lavi;->d:Z

    .line 47
    iget-object v0, p0, Lavi;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lavi;->b:Landroid/content/res/Resources;

    .line 48
    iget-object v1, p0, Lavi;->b:Landroid/content/res/Resources;

    iget-boolean v0, p0, Lavi;->d:Z

    if-eqz v0, :cond_0

    sget-object v0, Lly;->m:Lcom/dianxinos/dxbs/R$array;

    const v0, 0x7f0d000c

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lavi;->c:[Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Lavi;->a()V

    .line 52
    iput-object p2, p0, Lavi;->g:Lavj;

    .line 53
    return-void

    .line 48
    :cond_0
    sget-object v0, Lly;->m:Lcom/dianxinos/dxbs/R$array;

    const v0, 0x7f0d000d

    goto :goto_0
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 56
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070280

    invoke-virtual {p0, v0}, Lavi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 57
    invoke-virtual {p0}, Lavi;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lazp;->a(Landroid/content/Context;)Lazp;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Lazp;->a()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 60
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700e9

    invoke-virtual {p0, v0}, Lavi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 61
    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020496

    .line 63
    new-instance v3, Laza;

    iget-object v4, p0, Lavi;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lavi;->a:Landroid/app/Activity;

    invoke-static {v5}, Laxb;->a(Landroid/content/Context;)I

    move-result v5

    invoke-direct {v3, v4, v1, v5}, Laza;-><init>(Landroid/content/res/Resources;II)V

    .line 65
    invoke-virtual {v3}, Laza;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 67
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070281

    invoke-virtual {p0, v0}, Lavi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lavi;->e:Landroid/widget/TextView;

    .line 68
    iget-object v1, p0, Lavi;->e:Landroid/widget/TextView;

    iget-boolean v0, p0, Lavi;->d:Z

    if-eqz v0, :cond_0

    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a030b

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 70
    iget-object v0, p0, Lavi;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070282

    invoke-virtual {p0, v0}, Lavi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 72
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a030d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 74
    iget-object v0, p0, Lavi;->a:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 76
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f070285

    invoke-virtual {p0, v1}, Lavi;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 78
    iget-object v3, p0, Lavi;->c:[Ljava/lang/String;

    array-length v4, v3

    move v3, v2

    .line 79
    :goto_1
    if-ge v3, v4, :cond_1

    .line 80
    sget-object v2, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v2, 0x7f030037

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 81
    iget-object v5, p0, Lavi;->c:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 79
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 68
    :cond_0
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a030c

    goto :goto_0

    .line 85
    :cond_1
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070286

    invoke-virtual {p0, v0}, Lavi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lavi;->f:Landroid/widget/TextView;

    .line 86
    iget-object v0, p0, Lavi;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    :try_start_0
    iget-object v0, p0, Lavi;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lavi;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 91
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070284

    invoke-virtual {p0, v0}, Lavi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lavi;->a:Landroid/app/Activity;

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a0301

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_2
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 110
    iget-object v0, p0, Lavi;->f:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 111
    iget-object v0, p0, Lavi;->a:Landroid/app/Activity;

    const-string v1, "wnc"

    const-string v2, "wnsb"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4, v0, v1, v2, v3}, Lbal;->a(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 120
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lavi;->dismiss()V

    .line 121
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lavi;->e:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 114
    iget-object v0, p0, Lavi;->a:Landroid/app/Activity;

    const-string v1, "wnc"

    const-string v2, "wnmb"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4, v0, v1, v2, v3}, Lbal;->a(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 116
    iget-boolean v0, p0, Lavi;->d:Z

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lavi;->g:Lavj;

    invoke-interface {v0}, Lavj;->a()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 101
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 102
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 104
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
