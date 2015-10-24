.class public Lavo;
.super Ljava/lang/Object;
.source "WheelScroller.java"


# instance fields
.field private a:Lavq;

.field private b:Landroid/widget/Scroller;

.field private c:I

.field private d:Z

.field private final e:I

.field private final f:I

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lavq;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lavo;->e:I

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lavo;->f:I

    .line 66
    new-instance v0, Lavp;

    invoke-direct {v0, p0}, Lavp;-><init>(Lavo;)V

    iput-object v0, p0, Lavo;->g:Landroid/os/Handler;

    .line 36
    new-instance v0, Landroid/widget/Scroller;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lavo;->b:Landroid/widget/Scroller;

    .line 38
    iput-object p2, p0, Lavo;->a:Lavq;

    .line 39
    return-void
.end method

.method static synthetic a(Lavo;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12
    iput p1, p0, Lavo;->c:I

    return p1
.end method

.method static synthetic a(Lavo;)Landroid/widget/Scroller;
    .locals 1
    .parameter

    .prologue
    .line 12
    iget-object v0, p0, Lavo;->b:Landroid/widget/Scroller;

    return-object v0
.end method

.method private a(I)V
    .locals 1
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Lavo;->c()V

    .line 58
    iget-object v0, p0, Lavo;->g:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 59
    return-void
.end method

.method static synthetic b(Lavo;)I
    .locals 1
    .parameter

    .prologue
    .line 12
    iget v0, p0, Lavo;->c:I

    return v0
.end method

.method static synthetic c(Lavo;)Lavq;
    .locals 1
    .parameter

    .prologue
    .line 12
    iget-object v0, p0, Lavo;->a:Lavq;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lavo;->g:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 63
    iget-object v0, p0, Lavo;->g:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 64
    return-void
.end method

.method static synthetic d(Lavo;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 12
    iget-object v0, p0, Lavo;->g:Landroid/os/Handler;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lavo;->a:Lavq;

    invoke-interface {v0}, Lavq;->c()V

    .line 92
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lavo;->a(I)V

    .line 93
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lavo;->d:Z

    if-nez v0, :cond_0

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lavo;->d:Z

    .line 98
    iget-object v0, p0, Lavo;->a:Lavq;

    invoke-interface {v0}, Lavq;->a()V

    .line 100
    :cond_0
    return-void
.end method

.method static synthetic e(Lavo;)V
    .locals 0
    .parameter

    .prologue
    .line 12
    invoke-direct {p0}, Lavo;->d()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lavo;->b:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 54
    return-void
.end method

.method public a(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 42
    iget-object v0, p0, Lavo;->b:Landroid/widget/Scroller;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 44
    iput v1, p0, Lavo;->c:I

    .line 46
    iget-object v0, p0, Lavo;->b:Landroid/widget/Scroller;

    if-eqz p2, :cond_0

    move v5, p2

    :goto_0
    move v2, v1

    move v3, v1

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 47
    invoke-direct {p0, v1}, Lavo;->a(I)V

    .line 49
    invoke-direct {p0}, Lavo;->e()V

    .line 50
    return-void

    .line 46
    :cond_0
    const/16 v5, 0x190

    goto :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lavo;->d:Z

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lavo;->a:Lavq;

    invoke-interface {v0}, Lavq;->b()V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lavo;->d:Z

    .line 107
    :cond_0
    return-void
.end method
