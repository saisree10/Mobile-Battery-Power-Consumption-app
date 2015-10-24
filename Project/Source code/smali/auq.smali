.class public Lauq;
.super Landroid/widget/LinearLayout;
.source "ChargingFlowView.java"


# instance fields
.field private a:Landroid/view/WindowManager;

.field private b:Landroid/content/Context;

.field private c:Z

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lauq;->c:Z

    .line 36
    new-instance v0, Laur;

    invoke-direct {v0, p0}, Laur;-><init>(Lauq;)V

    iput-object v0, p0, Lauq;->d:Landroid/os/Handler;

    .line 51
    iput-object p1, p0, Lauq;->b:Landroid/content/Context;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x2

    const/4 v6, 0x1

    .line 57
    invoke-direct {p0, p1}, Lauq;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 60
    const/16 v0, 0x7d2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 61
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 62
    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 63
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 64
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 65
    const/16 v0, 0x33

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lauq;->a:Landroid/view/WindowManager;

    .line 69
    iget-object v0, p0, Lauq;->a:Landroid/view/WindowManager;

    if-nez v0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lauq;->a:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v3, 0x7f080217

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v4, 0x7f080215

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 82
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xc

    if-le v4, v5, :cond_3

    .line 83
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 84
    invoke-virtual {v0, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 85
    iget v0, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 86
    iget v0, v4, Landroid/graphics/Point;->y:I

    mul-int/lit8 v0, v0, 0x5f

    div-int/lit8 v0, v0, 0x64

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 91
    :goto_1
    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-gez v0, :cond_2

    .line 92
    const/4 v0, 0x0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 95
    :cond_2
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 97
    sget-object v2, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v2, 0x7f030015

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 98
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070069

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lauq;->d:Landroid/os/Handler;

    const/16 v3, 0x111

    const-wide/16 v4, 0xfa0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 102
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070067

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Laus;

    invoke-direct {v2, p0, p1}, Laus;-><init>(Lauq;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lauq;->a:Landroid/view/WindowManager;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    iput-boolean v6, p0, Lauq;->c:Z

    .line 127
    iget-object v0, p0, Lauq;->b:Landroid/content/Context;

    const-string v1, "birc"

    const-string v2, "cfvd"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    goto/16 :goto_0

    .line 88
    :cond_3
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    sub-int v3, v4, v3

    div-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 89
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5f

    div-int/lit8 v0, v0, 0x64

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1
.end method

.method static synthetic a(Lauq;)Z
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-boolean v0, p0, Lauq;->c:Z

    return v0
.end method

.method static synthetic a(Lauq;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-boolean p1, p0, Lauq;->c:Z

    return p1
.end method

.method static synthetic b(Lauq;)Landroid/view/WindowManager;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lauq;->a:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic c(Lauq;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lauq;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lauq;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lauq;->d:Landroid/os/Handler;

    return-object v0
.end method
