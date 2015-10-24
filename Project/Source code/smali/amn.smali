.class public Lamn;
.super Landroid/widget/LinearLayout;
.source "ModeListItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static a:I

.field public static b:I


# instance fields
.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View$OnClickListener;

.field private j:Lamo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x1

    sput v0, Lamn;->a:I

    .line 17
    const/4 v0, 0x2

    sput v0, Lamn;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lamn;->i:Landroid/view/View$OnClickListener;

    .line 36
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f03004d

    invoke-static {p1, v0, p0}, Lamn;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 37
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lamn;->setGravity(I)V

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lamn;->setOrientation(I)V

    .line 39
    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v0, 0x7f0201f0

    invoke-virtual {p0, v0}, Lamn;->setBackgroundResource(I)V

    .line 41
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070014

    invoke-virtual {p0, v0}, Lamn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lamn;->e:Landroid/widget/ImageView;

    .line 42
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07001f

    invoke-virtual {p0, v0}, Lamn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lamn;->c:Landroid/widget/TextView;

    .line 43
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07014a

    invoke-virtual {p0, v0}, Lamn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lamn;->d:Landroid/widget/TextView;

    .line 45
    invoke-virtual {p0, v1}, Lamn;->setClickable(Z)V

    .line 46
    invoke-virtual {p0, v1}, Lamn;->setFocusable(Z)V

    .line 48
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07014b

    invoke-virtual {p0, v0}, Lamn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lamn;->h:Landroid/view/View;

    .line 49
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07014c

    invoke-virtual {p0, v0}, Lamn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lamn;->f:Landroid/widget/ImageView;

    .line 50
    iget-object v0, p0, Lamn;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07014d

    invoke-virtual {p0, v0}, Lamn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lamn;->g:Landroid/widget/ImageView;

    .line 52
    iget-object v0, p0, Lamn;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lamn;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lamn;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lamn;->i:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lamn;->i:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 121
    :cond_0
    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lamn;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lamn;->j:Lamo;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lamn;->f:Landroid/widget/ImageView;

    if-ne v0, p1, :cond_1

    .line 62
    iget-object v0, p0, Lamn;->j:Lamo;

    sget v1, Lamn;->a:I

    invoke-interface {v0, p0, v1}, Lamo;->a(Lamn;I)V

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v0, p0, Lamn;->j:Lamo;

    sget v1, Lamn;->b:I

    invoke-interface {v0, p0, v1}, Lamo;->a(Lamn;I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 72
    if-nez v0, :cond_1

    .line 73
    invoke-virtual {p0, v2}, Lamn;->setPressed(Z)V

    .line 74
    iget-object v0, p0, Lamn;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 75
    iget-object v0, p0, Lamn;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 82
    :cond_0
    :goto_0
    return v2

    .line 76
    :cond_1
    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 77
    :cond_2
    invoke-virtual {p0, v3}, Lamn;->setPressed(Z)V

    .line 78
    if-ne v0, v2, :cond_0

    .line 79
    invoke-virtual {p0}, Lamn;->a()V

    goto :goto_0
.end method

.method public setEditDelPanelVisiable(I)V
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lamn;->h:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 87
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lamn;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 115
    return-void
.end method

.method public setOnActionListener(Lamo;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lamn;->j:Lamo;

    .line 130
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lamn;->i:Landroid/view/View$OnClickListener;

    .line 126
    return-void
.end method

.method public setSelected(Z)V
    .locals 2
    .parameter

    .prologue
    .line 106
    if-eqz p1, :cond_0

    .line 107
    iget-object v0, p0, Lamn;->e:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0201f2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lamn;->e:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0201f1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lamn;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    return-void
.end method

.method public setSummaryVisibility(I)V
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lamn;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lamn;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    return-void
.end method
