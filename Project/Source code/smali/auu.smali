.class public Lauu;
.super Landroid/app/Dialog;
.source "CommonDialog.java"


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Landroid/widget/Button;

.field private c:Z

.field private d:Lava;

.field private e:Landroid/widget/LinearLayout;

.field private f:Lauy;

.field private g:Landroid/widget/TextView;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    sget-object v0, Lly;->j:Lcom/dianxinos/dxbs/R$style;

    const v0, 0x7f0b0007

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lauu;->h:Z

    .line 33
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f03002a

    invoke-virtual {p0, v0}, Lauu;->setContentView(I)V

    .line 34
    iput-object p1, p0, Lauu;->a:Landroid/content/Context;

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lauu;->b(Z)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 46
    sget-object v0, Lly;->j:Lcom/dianxinos/dxbs/R$style;

    const v0, 0x7f0b0007

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lauu;->h:Z

    .line 47
    invoke-virtual {p0, p2}, Lauu;->setContentView(I)V

    .line 48
    iput-object p1, p0, Lauu;->a:Landroid/content/Context;

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lauu;->b(Z)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    sget-object v0, Lly;->j:Lcom/dianxinos/dxbs/R$style;

    const v0, 0x7f0b0007

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lauu;->h:Z

    .line 40
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f03002a

    invoke-virtual {p0, v0}, Lauu;->setContentView(I)V

    .line 41
    iput-object p1, p0, Lauu;->a:Landroid/content/Context;

    .line 42
    invoke-direct {p0, p2}, Lauu;->b(Z)V

    .line 43
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .parameter

    .prologue
    .line 273
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 274
    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f02018f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 275
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    return-object v0
.end method

.method static synthetic a(Lauu;)Z
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-boolean v0, p0, Lauu;->h:Z

    return v0
.end method

.method private b(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 53
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070061

    invoke-virtual {p0, v0}, Lauu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lauu;->e:Landroid/widget/LinearLayout;

    .line 54
    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p0}, Lauu;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 56
    invoke-virtual {p0}, Lauu;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 57
    iget-object v0, p0, Lauu;->e:Landroid/widget/LinearLayout;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020043

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 70
    :goto_0
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070065

    invoke-virtual {p0, v0}, Lauu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lauv;

    invoke-direct {v1, p0}, Lauv;-><init>(Lauu;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070066

    invoke-virtual {p0, v0}, Lauu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lauw;

    invoke-direct {v1, p0}, Lauw;-><init>(Lauu;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lauu;->setCanceledOnTouchOutside(Z)V

    .line 60
    iget-object v0, p0, Lauu;->e:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lauu;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Liq;->a(Landroid/view/View;Landroid/content/Context;)V

    .line 61
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070062

    invoke-virtual {p0, v0}, Lauu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 63
    invoke-virtual {p0}, Lauu;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x9

    div-int/lit8 v1, v1, 0xa

    .line 65
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 67
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public a(ILandroid/view/View$OnClickListener;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 114
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070065

    invoke-virtual {p0, v0}, Lauu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lauu;->b:Landroid/widget/Button;

    .line 115
    iget-object v0, p0, Lauu;->b:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 117
    if-lez p1, :cond_0

    .line 118
    iget-object v0, p0, Lauu;->b:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 121
    :cond_0
    if-eqz p2, :cond_1

    .line 122
    iget-object v0, p0, Lauu;->b:Landroid/widget/Button;

    new-instance v1, Lauz;

    invoke-direct {v1, p0, p2}, Lauz;-><init>(Lauu;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lauu;->b:Landroid/widget/Button;

    new-instance v1, Laux;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Laux;-><init>(Lauu;Lauv;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 240
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070090

    invoke-virtual {p0, v0}, Lauu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 241
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 242
    return-void
.end method

.method protected a(Landroid/view/View;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 250
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070090

    invoke-virtual {p0, v0}, Lauu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 251
    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 252
    return-void
.end method

.method public a(Lauy;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lauu;->f:Lauy;

    .line 198
    return-void
.end method

.method public a(Lava;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lauu;->d:Lava;

    .line 154
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 109
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070091

    invoke-virtual {p0, v0}, Lauu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lauu;->g:Landroid/widget/TextView;

    .line 110
    iget-object v0, p0, Lauu;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-boolean p1, p0, Lauu;->h:Z

    .line 236
    invoke-virtual {p0, p1}, Lauu;->setCanceledOnTouchOutside(Z)V

    .line 237
    return-void
.end method

.method public b(ILandroid/view/View$OnClickListener;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 138
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070066

    invoke-virtual {p0, v0}, Lauu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 139
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 141
    if-lez p1, :cond_0

    .line 142
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 145
    :cond_0
    if-eqz p2, :cond_1

    .line 146
    new-instance v1, Lauz;

    invoke-direct {v1, p0, p2}, Lauz;-><init>(Lauu;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_1
    new-instance v1, Laux;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Laux;-><init>(Lauu;Lauv;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected b(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 285
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07008e

    invoke-virtual {p0, v0}, Lauu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 286
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f070090

    invoke-virtual {p0, v1}, Lauu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 287
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f07008f

    invoke-virtual {p0, v1}, Lauu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 288
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 289
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 290
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 94
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070018

    invoke-virtual {p0, v0}, Lauu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 95
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lauu;->c:Z

    .line 86
    return-void
.end method

.method public c(I)V
    .locals 1
    .parameter

    .prologue
    .line 99
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070091

    invoke-virtual {p0, v0}, Lauu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lauu;->g:Landroid/widget/TextView;

    .line 100
    iget-object v0, p0, Lauu;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 101
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 104
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070091

    invoke-virtual {p0, v0}, Lauu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lauu;->g:Landroid/widget/TextView;

    .line 105
    iget-object v0, p0, Lauu;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lauu;->b:Landroid/widget/Button;

    iget-object v1, p0, Lauu;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v2, 0x7f09003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 130
    return-void
.end method

.method public d(I)V
    .locals 1
    .parameter

    .prologue
    .line 226
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070093

    invoke-virtual {p0, v0}, Lauu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setText(I)V

    .line 227
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 202
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 203
    iget-object v0, p0, Lauu;->f:Lauy;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lauu;->f:Lauy;

    invoke-interface {v0}, Lauy;->a()V

    .line 206
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 158
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 159
    const/16 v1, 0x54

    if-ne v0, v1, :cond_0

    .line 160
    const/4 v0, 0x1

    .line 162
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected e(I)Landroid/view/View;
    .locals 2
    .parameter

    .prologue
    .line 245
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070090

    invoke-virtual {p0, v0}, Lauu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 246
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 3

    .prologue
    .line 133
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070018

    invoke-virtual {p0, v0}, Lauu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lauu;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v2, 0x7f09003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 222
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070093

    invoke-virtual {p0, v0}, Lauu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 223
    return-void
.end method

.method public f(I)V
    .locals 2
    .parameter

    .prologue
    .line 293
    iget-object v0, p0, Lauu;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lauu;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 294
    return-void
.end method

.method protected g()V
    .locals 1

    .prologue
    .line 255
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070090

    invoke-virtual {p0, v0}, Lauu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 256
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 257
    return-void
.end method

.method public g(I)V
    .locals 3
    .parameter

    .prologue
    .line 301
    iget-object v0, p0, Lauu;->g:Landroid/widget/TextView;

    const/4 v1, 0x0

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 302
    return-void
.end method

.method protected h()V
    .locals 2

    .prologue
    .line 260
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070018

    invoke-virtual {p0, v0}, Lauu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 261
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07008d

    invoke-virtual {p0, v0}, Lauu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 262
    return-void
.end method

.method protected i()V
    .locals 2

    .prologue
    .line 265
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070094

    invoke-virtual {p0, v0}, Lauu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 266
    return-void
.end method

.method protected j()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 269
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07008f

    invoke-virtual {p0, v0}, Lauu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 270
    return-void
.end method

.method protected k()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 280
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07008f

    invoke-virtual {p0, v0}, Lauu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 281
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070091

    invoke-virtual {p0, v0}, Lauu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 282
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 210
    iget-object v0, p0, Lauu;->d:Lava;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lauu;->d:Lava;

    invoke-interface {v0, p1, p2}, Lava;->a(ILandroid/view/KeyEvent;)V

    .line 214
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lauu;->c:Z

    if-eqz v0, :cond_1

    .line 215
    const/4 v0, 0x1

    .line 218
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setTitle(I)V
    .locals 1
    .parameter

    .prologue
    .line 89
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070018

    invoke-virtual {p0, v0}, Lauu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 90
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 91
    return-void
.end method
