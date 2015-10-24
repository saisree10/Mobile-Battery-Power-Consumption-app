.class public Lavl;
.super Landroid/widget/LinearLayout;
.source "TigerGameView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lavv;

.field private b:Lavu;

.field private c:Landroid/content/Context;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/widget/Button;

.field private f:Ljava/util/ArrayList;

.field private g:Lavm;


# direct methods
.method static synthetic a(Lavl;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lavl;->c:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 258
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070232

    invoke-direct {p0, v0}, Lavl;->a(I)V

    .line 259
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070233

    invoke-direct {p0, v0}, Lavl;->a(I)V

    .line 260
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070234

    invoke-direct {p0, v0}, Lavl;->a(I)V

    .line 261
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070237

    invoke-virtual {p0, v0}, Lavl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lavl;->d:Landroid/widget/RelativeLayout;

    .line 262
    iget-object v0, p0, Lavl;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object v0, p0, Lavl;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 264
    iget-object v0, p0, Lavl;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 265
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070236

    invoke-virtual {p0, v0}, Lavl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lavl;->e:Landroid/widget/Button;

    .line 266
    iget-object v0, p0, Lavl;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070239

    invoke-virtual {p0, v0}, Lavl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 268
    iget-object v1, p0, Lavl;->c:Landroid/content/Context;

    invoke-static {v1}, Lazp;->a(Landroid/content/Context;)Lazp;

    move-result-object v1

    .line 269
    invoke-virtual {v1}, Lazp;->d()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 270
    return-void
.end method

.method private a(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 273
    invoke-direct {p0, p1}, Lavl;->b(I)Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;

    move-result-object v0

    .line 274
    new-instance v1, Lavn;

    iget-object v2, p0, Lavl;->c:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lavn;-><init>(Lavl;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->setViewAdapter(Lavn;)V

    .line 275
    invoke-virtual {v0, v3}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->setCurrentItem(I)V

    .line 276
    iget-object v1, p0, Lavl;->b:Lavu;

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->a(Lavu;)V

    .line 277
    iget-object v1, p0, Lavl;->a:Lavv;

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->a(Lavv;)V

    .line 278
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->setCyclic(Z)V

    .line 279
    invoke-virtual {v0, v3}, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;->setEnabled(Z)V

    .line 280
    return-void
.end method

.method private b(I)Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;
    .locals 1
    .parameter

    .prologue
    .line 283
    invoke-virtual {p0, p1}, Lavl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/Integratelottery/WheelView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 308
    iget-object v0, p0, Lavl;->d:Landroid/widget/RelativeLayout;

    if-ne v0, p1, :cond_1

    .line 309
    iget-object v0, p0, Lavl;->c:Landroid/content/Context;

    invoke-static {v0}, Lme;->e(Landroid/content/Context;)V

    .line 310
    iget-object v0, p0, Lavl;->c:Landroid/content/Context;

    invoke-static {v0}, Lazx;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lavl;->c:Landroid/content/Context;

    invoke-static {v0}, Lme;->f(Landroid/content/Context;)V

    .line 313
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "goto_personal_center"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 314
    const-string v1, "lottery_result"

    iget-object v2, p0, Lavl;->g:Lavm;

    iget-object v2, v2, Lavm;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    iget-object v1, p0, Lavl;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 317
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 252
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 253
    invoke-direct {p0}, Lavl;->a()V

    .line 254
    invoke-static {}, Lavm;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lavl;->f:Ljava/util/ArrayList;

    .line 255
    return-void
.end method
