.class public Lawu;
.super Landroid/widget/LinearLayout;
.source "SleepModeTopTipsView.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/LinearLayout;

.field private d:Lawx;

.field private e:Landroid/view/LayoutInflater;

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:I

.field private k:I

.field private l:I

.field private m:Lawy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 61
    iput-object p1, p0, Lawu;->a:Landroid/content/Context;

    .line 63
    iget-object v0, p0, Lawu;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 64
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lawu;->l:I

    .line 66
    iput-object p2, p0, Lawu;->e:Landroid/view/LayoutInflater;

    .line 67
    iget-object v0, p0, Lawu;->e:Landroid/view/LayoutInflater;

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f03007e

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 68
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f070204

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lawu;->c:Landroid/widget/LinearLayout;

    .line 69
    iget-object v0, p0, Lawu;->c:Landroid/widget/LinearLayout;

    new-instance v1, Lawv;

    invoke-direct {v1, p0}, Lawv;-><init>(Lawu;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lawu;->c:Landroid/widget/LinearLayout;

    new-instance v1, Laww;

    invoke-direct {v1, p0}, Laww;-><init>(Lawu;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 84
    return-void
.end method

.method static synthetic a(Lawu;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lawu;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a()Z
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 126
    iget v0, p0, Lawu;->h:F

    float-to-int v0, v0

    iget v1, p0, Lawu;->j:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v2, :cond_0

    iget v0, p0, Lawu;->i:F

    float-to-int v0, v0

    iget v1, p0, Lawu;->k:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v2, :cond_0

    .line 127
    const/4 v0, 0x1

    .line 129
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 87
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lawu;->h:F

    .line 88
    iget-object v0, p0, Lawu;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v1, 0x7f08007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 90
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    int-to-float v0, v0

    sub-float v0, v1, v0

    iput v0, p0, Lawu;->i:F

    .line 91
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 122
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 93
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lawu;->f:F

    .line 94
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lawu;->g:F

    .line 95
    iget v0, p0, Lawu;->h:F

    float-to-int v0, v0

    iput v0, p0, Lawu;->j:I

    .line 96
    iget v0, p0, Lawu;->i:F

    float-to-int v0, v0

    iput v0, p0, Lawu;->k:I

    goto :goto_0

    .line 99
    :pswitch_1
    invoke-direct {p0}, Lawu;->b()V

    goto :goto_0

    .line 103
    :pswitch_2
    invoke-direct {p0}, Lawu;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lawu;->a:Landroid/content/Context;

    const-class v2, Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    const-string v1, "com.dianxinos.dxbs.SLEEPTIPS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const-string v1, "From"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 108
    iget-object v1, p0, Lawu;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 112
    :cond_0
    iget-object v0, p0, Lawu;->m:Lawy;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lawu;->m:Lawy;

    invoke-virtual {v0, v3}, Lawy;->cancel(Z)Z

    .line 116
    :cond_1
    iget v0, p0, Lawu;->h:F

    iget v1, p0, Lawu;->f:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 117
    iget v1, p0, Lawu;->i:F

    iget v2, p0, Lawu;->g:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 118
    new-instance v2, Lawy;

    invoke-direct {v2, p0, v0, v1}, Lawy;-><init>(Lawu;II)V

    iput-object v2, p0, Lawu;->m:Lawy;

    .line 119
    iget-object v0, p0, Lawu;->m:Lawy;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lawy;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lawu;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lawu;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lawu;)I
    .locals 1
    .parameter

    .prologue
    .line 20
    iget v0, p0, Lawu;->l:I

    return v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 133
    iget v0, p0, Lawu;->h:F

    iget v1, p0, Lawu;->f:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 134
    iget v1, p0, Lawu;->i:F

    iget v2, p0, Lawu;->g:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 135
    iget-object v2, p0, Lawu;->d:Lawx;

    if-eqz v2, :cond_0

    .line 136
    iget-object v2, p0, Lawu;->d:Lawx;

    invoke-interface {v2, v0, v1}, Lawx;->a(II)V

    .line 138
    :cond_0
    return-void
.end method

.method static synthetic c(Lawu;)Lawx;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lawu;->d:Lawx;

    return-object v0
.end method


# virtual methods
.method public setFloatText(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lawu;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lawu;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    :cond_0
    return-void
.end method

.method public setMoveListener(Lawx;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lawu;->d:Lawx;

    .line 148
    return-void
.end method
