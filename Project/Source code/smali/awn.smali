.class public Lawn;
.super Landroid/app/Dialog;
.source "SingleChoiceDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Ljava/util/ArrayList;

.field private c:I

.field private d:Lawp;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 37
    sget-object v0, Lly;->j:Lcom/dianxinos/dxbs/R$style;

    const v0, 0x7f0b0007

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lawn;->b:Ljava/util/ArrayList;

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lawn;->c:I

    .line 38
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f030078

    invoke-virtual {p0, v0}, Lawn;->setContentView(I)V

    .line 40
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701ee

    invoke-virtual {p0, v0}, Lawn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lawn;->a:Landroid/widget/LinearLayout;

    .line 41
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 54
    invoke-virtual {p0}, Lawn;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 55
    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f030079

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 57
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0701ef

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 58
    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f0201f1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    sget-object v2, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v2, 0x7f07001f

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 61
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(I)V

    .line 63
    new-instance v2, Lawq;

    invoke-direct {v2, v3}, Lawq;-><init>(Lawo;)V

    .line 64
    iput-object v1, v2, Lawq;->a:Landroid/widget/ImageView;

    .line 65
    iput p1, v2, Lawq;->b:I

    .line 66
    iput-object v0, v2, Lawq;->c:Landroid/widget/LinearLayout;

    .line 68
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 69
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v1, p0, Lawn;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 72
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lawn;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 73
    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f0203d6

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    iget-object v3, p0, Lawn;->a:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    :cond_0
    iget-object v1, p0, Lawn;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 80
    iget-object v0, p0, Lawn;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method public a(Lawp;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lawn;->d:Lawp;

    .line 142
    return-void
.end method

.method public a(I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 114
    iget v0, p0, Lawn;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 115
    iget-object v0, p0, Lawn;->b:Ljava/util/ArrayList;

    iget v1, p0, Lawn;->c:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawq;

    .line 116
    iget v1, v0, Lawq;->b:I

    if-ne v1, p1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v2

    .line 119
    :cond_1
    iget-object v0, v0, Lawq;->a:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0201f1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    move v1, v2

    .line 123
    :goto_1
    iget-object v0, p0, Lawn;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 124
    iget-object v0, p0, Lawn;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawq;

    .line 125
    iget v3, v0, Lawq;->b:I

    if-ne v3, p1, :cond_3

    .line 129
    iget-object v2, v0, Lawq;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 130
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 131
    iget-object v0, v0, Lawq;->a:Landroid/widget/ImageView;

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f0201f2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    iput v1, p0, Lawn;->c:I

    .line 133
    const/4 v2, 0x1

    goto :goto_0

    .line 123
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawq;

    .line 148
    iget v1, v0, Lawq;->b:I

    invoke-virtual {p0, v1}, Lawn;->a(I)Z

    move-result v1

    .line 149
    iget-object v2, p0, Lawn;->d:Lawp;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lawn;->d:Lawp;

    iget v0, v0, Lawq;->b:I

    invoke-interface {v1, v0}, Lawp;->a_(I)V

    .line 152
    :cond_0
    invoke-virtual {p0}, Lawn;->dismiss()V

    .line 153
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter

    .prologue
    .line 44
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070018

    invoke-virtual {p0, v0}, Lawn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 45
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 46
    return-void
.end method
