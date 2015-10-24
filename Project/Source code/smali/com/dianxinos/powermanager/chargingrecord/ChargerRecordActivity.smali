.class public Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;
.super Laao;
.source "ChargerRecordActivity.java"

# interfaces
.implements Lafy;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/dianxinos/powermanager/chargingrecord/CalendarView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Z

.field private f:Landroid/os/Handler;

.field private g:Lcom/dianxinos/powermanager/ui/MainTitle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Laao;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->e:Z

    .line 44
    new-instance v0, Lafz;

    invoke-direct {v0, p0}, Lafz;-><init>(Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->f:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->d:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 5
    .parameter

    .prologue
    const-wide/16 v3, 0xc8

    const/4 v2, 0x0

    .line 129
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->a:Lcom/dianxinos/powermanager/chargingrecord/CalendarView;

    invoke-virtual {v1}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->getTotalNormalCharger()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->a:Lcom/dianxinos/powermanager/chargingrecord/CalendarView;

    invoke-virtual {v1}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->getTotalHealthCharger()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    .line 134
    iget-boolean v1, p0, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->e:Z

    if-ne v1, p1, :cond_0

    .line 179
    :goto_0
    return-void

    .line 137
    :cond_0
    iput-boolean p1, p0, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->e:Z

    .line 140
    if-eqz p1, :cond_1

    .line 142
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v0, v0

    invoke-direct {v1, v2, v0, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 143
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 144
    invoke-virtual {v1, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 145
    new-instance v0, Lagb;

    invoke-direct {v0, p0}, Lagb;-><init>(Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 157
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->d:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 161
    :cond_1
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v0, v0

    invoke-direct {v1, v0, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 162
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 163
    invoke-virtual {v1, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 164
    new-instance v0, Lagc;

    invoke-direct {v0, p0}, Lagc;-><init>(Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 176
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, 0x708

    .line 104
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->b:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->a:Lcom/dianxinos/powermanager/chargingrecord/CalendarView;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->b()V

    .line 109
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->f:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->c:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    .line 113
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->a:Lcom/dianxinos/powermanager/chargingrecord/CalendarView;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->c()V

    .line 116
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->f:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 118
    :cond_3
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->d:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->a:Lcom/dianxinos/powermanager/chargingrecord/CalendarView;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->a()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 62
    invoke-super {p0, p1}, Laao;->onCreate(Landroid/os/Bundle;)V

    .line 63
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->setContentView(I)V

    .line 64
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070007

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/MainTitle;

    iput-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->g:Lcom/dianxinos/powermanager/ui/MainTitle;

    .line 65
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->g:Lcom/dianxinos/powermanager/ui/MainTitle;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f07013b

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->d:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07006b

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->a:Lcom/dianxinos/powermanager/chargingrecord/CalendarView;

    .line 70
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07006c

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->b:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07006d

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->c:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->a:Lcom/dianxinos/powermanager/chargingrecord/CalendarView;

    invoke-virtual {v1}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->getTotalNormalCharger()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->a:Lcom/dianxinos/powermanager/chargingrecord/CalendarView;

    invoke-virtual {v1}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->getTotalHealthCharger()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->a:Lcom/dianxinos/powermanager/chargingrecord/CalendarView;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->b(Lafy;)V

    .line 82
    invoke-super {p0}, Laao;->onPause()V

    .line 83
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->a:Lcom/dianxinos/powermanager/chargingrecord/CalendarView;

    invoke-virtual {v0, p0}, Lcom/dianxinos/powermanager/chargingrecord/CalendarView;->a(Lafy;)V

    .line 88
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->g:Lcom/dianxinos/powermanager/ui/MainTitle;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/ui/MainTitle;->a()V

    .line 89
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->g:Lcom/dianxinos/powermanager/ui/MainTitle;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020450

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setLeftButtonIcon(I)V

    .line 90
    iget-object v0, p0, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->g:Lcom/dianxinos/powermanager/ui/MainTitle;

    new-instance v1, Laga;

    invoke-direct {v1, p0}, Laga;-><init>(Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;)V

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setLeftButtonOnclickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-static {p0}, Lazf;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lazf;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    :cond_0
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07006e

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/chargingrecord/ChargerRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    :cond_1
    invoke-super {p0}, Laao;->onResume()V

    .line 100
    return-void
.end method
