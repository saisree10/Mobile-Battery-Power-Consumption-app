.class public abstract Lavg;
.super Landroid/widget/RelativeLayout;
.source "DxPreference.java"


# static fields
.field public static e:I


# instance fields
.field public a:Lavh;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z

.field public f:F

.field public g:I

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    iput-object v0, p0, Lavg;->a:Lavh;

    .line 24
    iput-object v0, p0, Lavg;->b:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lavg;->c:Ljava/lang/String;

    .line 32
    const/high16 v0, -0x4080

    iput v0, p0, Lavg;->f:F

    .line 33
    iput v3, p0, Lavg;->g:I

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lavg;->h:Ljava/lang/String;

    .line 40
    invoke-virtual {p0}, Lavg;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 41
    sget-object v1, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v1, 0x7f080082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lavg;->e:I

    .line 43
    sget-object v1, Lly;->k:Lcom/dianxinos/dxbs/R$styleable;

    sget-object v1, Lcom/dianxinos/dxbs/R$styleable;->DxPref:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 44
    sget-object v2, Lly;->k:Lcom/dianxinos/dxbs/R$styleable;

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lavg;->b:Ljava/lang/String;

    .line 45
    sget-object v2, Lly;->k:Lcom/dianxinos/dxbs/R$styleable;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lavg;->c:Ljava/lang/String;

    .line 46
    sget-object v2, Lly;->k:Lcom/dianxinos/dxbs/R$styleable;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lavg;->d:Z

    .line 47
    sget-object v2, Lly;->k:Lcom/dianxinos/dxbs/R$styleable;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lavg;->f:F

    .line 48
    sget-object v2, Lly;->k:Lcom/dianxinos/dxbs/R$styleable;

    const/4 v2, 0x5

    sget-object v3, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v3, 0x7f090024

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lavg;->g:I

    .line 49
    sget-object v0, Lly;->k:Lcom/dianxinos/dxbs/R$styleable;

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lavg;->h:Ljava/lang/String;

    .line 51
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    return-void
.end method


# virtual methods
.method public abstract b()V
.end method

.method public abstract c()V
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 58
    if-nez v0, :cond_1

    .line 59
    invoke-virtual {p0, v2}, Lavg;->setPressed(Z)V

    .line 66
    :cond_0
    :goto_0
    return v2

    .line 60
    :cond_1
    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 61
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lavg;->setPressed(Z)V

    .line 62
    if-ne v0, v2, :cond_0

    .line 63
    invoke-virtual {p0}, Lavg;->c()V

    goto :goto_0
.end method

.method public setOnPreferenceChangeListener(Lavh;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lavg;->a:Lavh;

    .line 22
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lavg;->c:Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Lavg;->b()V

    .line 75
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lavg;->b:Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Lavg;->b()V

    .line 80
    return-void
.end method
