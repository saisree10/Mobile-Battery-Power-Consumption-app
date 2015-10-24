.class public Lcom/dianxinos/powermanager/mode/ModeIconView;
.super Landroid/widget/LinearLayout;
.source "ModeIconView.java"


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/ImageView;

.field c:Landroid/widget/ImageView;

.field d:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/mode/ModeIconView;->a(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/mode/ModeIconView;->a(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/mode/ModeIconView;->setGravity(I)V

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/mode/ModeIconView;->setOrientation(I)V

    .line 41
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f03004c

    invoke-static {p1, v0, p0}, Lcom/dianxinos/powermanager/mode/ModeIconView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070146

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/mode/ModeIconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeIconView;->a:Landroid/widget/ImageView;

    .line 44
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070147

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/mode/ModeIconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeIconView;->b:Landroid/widget/ImageView;

    .line 45
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070148

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/mode/ModeIconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeIconView;->c:Landroid/widget/ImageView;

    .line 46
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070149

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/mode/ModeIconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeIconView;->d:Landroid/widget/ImageView;

    .line 47
    return-void
.end method


# virtual methods
.method public a(ILamp;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x4

    const v4, 0x7f020426

    const/4 v2, 0x2

    const v3, 0x7f02042b

    const/4 v1, 0x0

    .line 50
    invoke-virtual {p2}, Lamp;->g()Lamh;

    move-result-object v0

    invoke-virtual {v0}, Lamh;->l()Lahd;

    move-result-object v0

    invoke-virtual {v0}, Lahd;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lazf;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeIconView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeIconView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeIconView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    invoke-virtual {p2}, Lamp;->g()Lamh;

    move-result-object v0

    invoke-virtual {v0, v5}, Lamh;->a(I)Lahp;

    move-result-object v0

    invoke-virtual {v0}, Lahp;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeIconView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    :cond_2
    if-ne p1, v2, :cond_3

    invoke-static {}, Lazf;->n()Z

    move-result v0

    if-nez v0, :cond_3

    .line 61
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeIconView;->a:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020428

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeIconView;->b:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020424

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 68
    :goto_0
    if-nez p1, :cond_4

    .line 69
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeIconView;->c:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeIconView;->d:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    :goto_1
    return-void

    .line 64
    :cond_3
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeIconView;->a:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020429

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeIconView;->b:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020425

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 71
    :cond_4
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    .line 72
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeIconView;->c:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeIconView;->d:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020427

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 74
    :cond_5
    if-ne p1, v2, :cond_6

    .line 75
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeIconView;->c:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeIconView;->d:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 78
    :cond_6
    invoke-virtual {p2, p1}, Lamp;->g(I)I

    move-result v0

    .line 79
    invoke-virtual {p2}, Lamp;->f()Lanb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lanb;->a(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 80
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_7

    .line 81
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeIconView;->c:Landroid/widget/ImageView;

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    :goto_2
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_8

    .line 87
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeIconView;->d:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 83
    :cond_7
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeIconView;->c:Landroid/widget/ImageView;

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f02042c

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 89
    :cond_8
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeIconView;->d:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020427

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1
.end method

.method public setCurrStatus(Lamp;)V
    .locals 8
    .parameter

    .prologue
    const v7, 0x7f02042c

    const v6, 0x7f020426

    const/4 v5, 0x4

    const/4 v1, 0x0

    .line 95
    invoke-virtual {p1}, Lamp;->g()Lamh;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lamh;->l()Lahd;

    move-result-object v2

    invoke-virtual {v2}, Lahd;->a()Z

    move-result v2

    .line 97
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lamh;->a(I)Lahp;

    move-result-object v3

    invoke-virtual {v3}, Lahp;->a()Z

    move-result v3

    .line 98
    invoke-virtual {v0, v5}, Lamh;->a(I)Lahp;

    move-result-object v4

    invoke-virtual {v4}, Lahp;->a()Z

    move-result v4

    .line 99
    invoke-virtual {v0}, Lamh;->l()Lahd;

    move-result-object v0

    invoke-virtual {v0}, Lahd;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lazf;->n()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    const/4 v0, 0x1

    .line 102
    :goto_0
    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeIconView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeIconView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    :cond_1
    invoke-virtual {p1}, Lamp;->g()Lamh;

    move-result-object v0

    invoke-virtual {v0, v5}, Lamh;->a(I)Lahp;

    move-result-object v0

    invoke-virtual {v0}, Lahp;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeIconView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeIconView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    if-eqz v2, :cond_3

    invoke-static {}, Lazf;->n()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 112
    :cond_3
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeIconView;->a:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020429

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeIconView;->b:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020425

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    :goto_1
    if-eqz v4, :cond_7

    .line 120
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeIconView;->d:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020427

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 125
    :goto_2
    invoke-static {}, Lazf;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    .line 126
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeIconView;->d:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    :cond_4
    if-eqz v3, :cond_8

    .line 130
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeIconView;->c:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    :goto_3
    return-void

    :cond_5
    move v0, v1

    .line 99
    goto :goto_0

    .line 115
    :cond_6
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeIconView;->a:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020428

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeIconView;->b:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020424

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 122
    :cond_7
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeIconView;->d:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 132
    :cond_8
    iget-object v0, p0, Lcom/dianxinos/powermanager/mode/ModeIconView;->c:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3
.end method
