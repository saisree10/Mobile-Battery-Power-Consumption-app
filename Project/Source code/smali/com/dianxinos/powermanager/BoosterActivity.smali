.class public Lcom/dianxinos/powermanager/BoosterActivity;
.super Laao;
.source "BoosterActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Laao;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const v3, 0x40c1999a

    const/4 v2, 0x0

    .line 21
    invoke-super {p0, p1}, Laao;->onCreate(Landroid/os/Bundle;)V

    .line 22
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/BoosterActivity;->setContentView(I)V

    .line 24
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070007

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/BoosterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/MainTitle;

    .line 25
    invoke-virtual {v0}, Lcom/dianxinos/powermanager/ui/MainTitle;->a()V

    .line 26
    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020450

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setLeftButtonIcon(I)V

    .line 27
    new-instance v1, Laaj;

    invoke-direct {v1, p0}, Laaj;-><init>(Lcom/dianxinos/powermanager/BoosterActivity;)V

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setLeftButtonOnclickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    new-instance v0, Landroid/view/animation/RotateAnimation;

    invoke-direct {v0, v3, v3, v2, v2}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    .line 35
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 36
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 37
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f070054

    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/BoosterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 39
    new-instance v0, Lqb;

    invoke-direct {v0, p0}, Lqb;-><init>(Landroid/app/Activity;)V

    .line 40
    new-instance v1, Lou;

    invoke-direct {v1}, Lou;-><init>()V

    .line 41
    const-string v2, "DSB"

    iput-object v2, v1, Lou;->q:Ljava/lang/String;

    .line 42
    const-string v2, "DU Speed Booster"

    iput-object v2, v1, Lou;->e:Ljava/lang/String;

    .line 43
    const-string v2, "com.dianxinos.optimizer.duplay"

    iput-object v2, v1, Lou;->f:Ljava/lang/String;

    .line 44
    const-string v2, "https://play.google.com/store/apps/details?id=com.dianxinos.optimizer.duplay&referrer=com.dianxinos.dxbs"

    iput-object v2, v1, Lou;->m:Ljava/lang/String;

    .line 45
    iput v4, v1, Lou;->j:I

    .line 47
    sget-object v2, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v2, 0x7f070055

    invoke-virtual {p0, v2}, Lcom/dianxinos/powermanager/BoosterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 48
    new-instance v3, Laak;

    invoke-direct {v3, p0, v0, v1}, Laak;-><init>(Lcom/dianxinos/powermanager/BoosterActivity;Lqb;Lou;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method
