.class public Lawr;
.super Landroid/widget/LinearLayout;
.source "SleepModeTopTipsGuideView.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/LinearLayout;

.field private c:Lawt;

.field private d:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object p1, p0, Lawr;->a:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lawr;->d:Landroid/view/LayoutInflater;

    .line 48
    iget-object v0, p0, Lawr;->d:Landroid/view/LayoutInflater;

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f03007f

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 49
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f070206

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lawr;->b:Landroid/widget/LinearLayout;

    .line 50
    iget-object v0, p0, Lawr;->b:Landroid/widget/LinearLayout;

    new-instance v1, Laws;

    invoke-direct {v1, p0}, Laws;-><init>(Lawr;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method

.method static synthetic a(Lawr;)Lawt;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lawr;->c:Lawt;

    return-object v0
.end method


# virtual methods
.method public setCloseListener(Lawt;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lawr;->c:Lawt;

    .line 61
    return-void
.end method
