.class public Lcom/dianxinos/powermanager/usage/MonitorTitleView;
.super Landroid/widget/RelativeLayout;
.source "MonitorTitleView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Z

.field private e:Layu;

.field private f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/usage/MonitorTitleView;->d:Z

    .line 32
    iput-object p1, p0, Lcom/dianxinos/powermanager/usage/MonitorTitleView;->f:Landroid/content/Context;

    .line 34
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/usage/MonitorTitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f030053

    invoke-static {v0, v1, p0}, Lcom/dianxinos/powermanager/usage/MonitorTitleView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 35
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700e2

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/usage/MonitorTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/usage/MonitorTitleView;->a:Landroid/view/View;

    .line 36
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070018

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/usage/MonitorTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/usage/MonitorTitleView;->b:Landroid/widget/TextView;

    .line 37
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0700d5

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/usage/MonitorTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/usage/MonitorTitleView;->c:Landroid/widget/ImageView;

    .line 39
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/MonitorTitleView;->b:Landroid/widget/TextView;

    sget-object v1, Lly;->k:Lcom/dianxinos/dxbs/R$styleable;

    sget-object v1, Lcom/dianxinos/dxbs/R$styleable;->MonitorTitleView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    invoke-virtual {p0, p0}, Lcom/dianxinos/powermanager/usage/MonitorTitleView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 42
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/usage/MonitorTitleView;->d:Z

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/MonitorTitleView;->a:Landroid/view/View;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0203b5

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 77
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/MonitorTitleView;->c:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0203b3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 82
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/MonitorTitleView;->a:Landroid/view/View;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0203b1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 80
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/MonitorTitleView;->c:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0203af

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/usage/MonitorTitleView;->d:Z

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/MonitorTitleView;->a:Landroid/view/View;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0203b6

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 87
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/MonitorTitleView;->c:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0203b4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 92
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/MonitorTitleView;->a:Landroid/view/View;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0203b2

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 90
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/MonitorTitleView;->c:Landroid/widget/ImageView;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0203b0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 52
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 56
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 57
    packed-switch v0, :pswitch_data_0

    .line 71
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 59
    :pswitch_1
    invoke-direct {p0}, Lcom/dianxinos/powermanager/usage/MonitorTitleView;->b()V

    goto :goto_0

    .line 62
    :pswitch_2
    invoke-direct {p0}, Lcom/dianxinos/powermanager/usage/MonitorTitleView;->a()V

    goto :goto_0

    .line 65
    :pswitch_3
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/usage/MonitorTitleView;->d:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/dianxinos/powermanager/usage/MonitorTitleView;->d:Z

    .line 66
    invoke-direct {p0}, Lcom/dianxinos/powermanager/usage/MonitorTitleView;->a()V

    .line 67
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/MonitorTitleView;->e:Layu;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/dianxinos/powermanager/usage/MonitorTitleView;->e:Layu;

    invoke-interface {v0, p0}, Layu;->a(Lcom/dianxinos/powermanager/usage/MonitorTitleView;)V

    goto :goto_0

    .line 65
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setOnClickListener(Layu;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/dianxinos/powermanager/usage/MonitorTitleView;->e:Layu;

    .line 46
    return-void
.end method
