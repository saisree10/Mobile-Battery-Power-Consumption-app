.class public Lcom/dianxinos/powermanager/menu/StatusBarSettings;
.super Laao;
.source "StatusBarSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Z

.field private b:Lamb;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/view/View;

.field private l:Lcom/dianxinos/powermanager/ui/DXSwitchButton;

.field private m:Landroid/content/res/Resources;

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:I

.field private q:Lcom/dianxinos/powermanager/ui/MainTitle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Laao;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 90
    iget v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->p:I

    if-nez v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->i:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->p:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 96
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->i:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 101
    :cond_2
    iget v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->p:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 102
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->i:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 106
    :cond_3
    iget v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->p:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->i:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->a:Z

    .line 72
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->a:Z

    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->b(Z)V

    .line 73
    return-void
.end method

.method private b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->l:Lcom/dianxinos/powermanager/ui/DXSwitchButton;

    invoke-virtual {v0, p1}, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->setStatus(Z)V

    .line 77
    if-eqz p1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->k:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    :goto_0
    invoke-direct {p0}, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->a()V

    .line 83
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 84
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 85
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 86
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 87
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->k:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 184
    invoke-super {p0}, Laao;->onBackPressed()V

    .line 186
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 142
    iget-object v2, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->k:Landroid/view/View;

    if-ne p1, v2, :cond_0

    .line 143
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0156

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 181
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v2, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->l:Lcom/dianxinos/powermanager/ui/DXSwitchButton;

    if-ne p1, v2, :cond_3

    .line 147
    iget-boolean v2, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->a:Z

    if-nez v2, :cond_2

    :goto_1
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->a(Z)V

    .line 148
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->b:Lamb;

    iget-boolean v1, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->a:Z

    invoke-virtual {v0, v1}, Lamb;->a(Z)V

    .line 178
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->b:Lamb;

    iget v1, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->p:I

    invoke-virtual {v0, v1}, Lamb;->a(I)V

    .line 179
    invoke-direct {p0}, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->a()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 147
    goto :goto_1

    .line 149
    :cond_3
    iget-object v2, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->c:Landroid/widget/LinearLayout;

    if-ne p1, v2, :cond_4

    .line 151
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "statusbar"

    const-string v4, "cg"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v3, v4, v0}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 155
    iput v1, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->p:I

    goto :goto_2

    .line 156
    :cond_4
    iget-object v1, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->d:Landroid/widget/LinearLayout;

    if-ne p1, v1, :cond_5

    .line 158
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "statusbar"

    const-string v3, "cg"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 162
    iput v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->p:I

    goto :goto_2

    .line 163
    :cond_5
    iget-object v1, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->e:Landroid/widget/LinearLayout;

    if-ne p1, v1, :cond_6

    .line 165
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "statusbar"

    const-string v3, "cg"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 169
    const/4 v0, 0x2

    iput v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->p:I

    goto :goto_2

    .line 170
    :cond_6
    iget-object v1, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->f:Landroid/widget/LinearLayout;

    if-ne p1, v1, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "statusbar"

    const-string v3, "cg"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 176
    const/4 v0, 0x3

    iput v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->p:I

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 44
    invoke-super {p0, p1}, Laao;->onCreate(Landroid/os/Bundle;)V

    .line 45
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f030088

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->setContentView(I)V

    .line 46
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070007

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/MainTitle;

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->q:Lcom/dianxinos/powermanager/ui/MainTitle;

    .line 47
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->q:Lcom/dianxinos/powermanager/ui/MainTitle;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f070135

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/DXSwitchButton;

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->l:Lcom/dianxinos/powermanager/ui/DXSwitchButton;

    .line 48
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->l:Lcom/dianxinos/powermanager/ui/DXSwitchButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->setVisibility(I)V

    .line 49
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->l:Lcom/dianxinos/powermanager/ui/DXSwitchButton;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/ui/DXSwitchButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070229

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->c:Landroid/widget/LinearLayout;

    .line 52
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07022b

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->d:Landroid/widget/LinearLayout;

    .line 53
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07022d

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->e:Landroid/widget/LinearLayout;

    .line 54
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070227

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->f:Landroid/widget/LinearLayout;

    .line 55
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07022a

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->g:Landroid/widget/ImageView;

    .line 56
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07022c

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->h:Landroid/widget/ImageView;

    .line 57
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07022e

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->i:Landroid/widget/ImageView;

    .line 58
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070228

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->j:Landroid/widget/ImageView;

    .line 59
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07001d

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->k:Landroid/view/View;

    .line 60
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->k:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->m:Landroid/content/res/Resources;

    .line 62
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->m:Landroid/content/res/Resources;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0201f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->n:Landroid/graphics/drawable/Drawable;

    .line 63
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->m:Landroid/content/res/Resources;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0201f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->o:Landroid/graphics/drawable/Drawable;

    .line 64
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamb;->a(Landroid/content/Context;)Lamb;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->b:Lamb;

    .line 65
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->b:Lamb;

    invoke-virtual {v0}, Lamb;->b()I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->p:I

    .line 66
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->b:Lamb;

    invoke-virtual {v0}, Lamb;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->a:Z

    .line 67
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->a:Z

    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->a(Z)V

    .line 68
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-super {p0}, Laao;->onPause()V

    .line 117
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 125
    invoke-super {p0}, Laao;->onResume()V

    .line 126
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->q:Lcom/dianxinos/powermanager/ui/MainTitle;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020450

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setLeftButtonIcon(I)V

    .line 127
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->q:Lcom/dianxinos/powermanager/ui/MainTitle;

    new-instance v1, Lamf;

    invoke-direct {v1, p0}, Lamf;-><init>(Lcom/dianxinos/powermanager/menu/StatusBarSettings;)V

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setLeftButtonOnclickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/dianxinos/powermanager/menu/StatusBarSettings;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    return-void
.end method
