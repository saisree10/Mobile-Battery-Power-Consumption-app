.class public Lcom/dianxinos/powermanager/feedback/HotQAActivity;
.super Laao;
.source "HotQAActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Laao;-><init>()V

    .line 77
    return-void
.end method

.method private a()Landroid/view/View;
    .locals 4

    .prologue
    .line 71
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 72
    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f0203bf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 73
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    return-object v0
.end method

.method private a(Lakn;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 65
    new-instance v0, Lakm;

    invoke-direct {v0, p0, p0}, Lakm;-><init>(Lcom/dianxinos/powermanager/feedback/HotQAActivity;Landroid/content/Context;)V

    .line 66
    iget-object v1, p1, Lakn;->a:Ljava/lang/String;

    iget-object v2, p1, Lakn;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lakm;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1}, Laao;->onCreate(Landroid/os/Bundle;)V

    .line 28
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f030044

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/feedback/HotQAActivity;->setContentView(I)V

    .line 31
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/feedback/HotQAActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    const-string v1, "QA_LIST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 35
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/feedback/HotQAActivity;->startActivity(Landroid/content/Intent;)V

    .line 36
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/feedback/HotQAActivity;->finish()V

    .line 62
    :goto_0
    return-void

    .line 40
    :cond_1
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f070007

    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/feedback/HotQAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/dianxinos/powermanager/ui/MainTitle;

    .line 41
    invoke-virtual {v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->a()V

    .line 42
    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f020450

    invoke-virtual {v1, v2}, Lcom/dianxinos/powermanager/ui/MainTitle;->setLeftButtonIcon(I)V

    .line 43
    new-instance v2, Lakk;

    invoke-direct {v2, p0}, Lakk;-><init>(Lcom/dianxinos/powermanager/feedback/HotQAActivity;)V

    invoke-virtual {v1, v2}, Lcom/dianxinos/powermanager/ui/MainTitle;->setLeftButtonOnclickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f070121

    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/feedback/HotQAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 51
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakn;

    .line 52
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/feedback/HotQAActivity;->a(Lakn;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 53
    invoke-direct {p0}, Lcom/dianxinos/powermanager/feedback/HotQAActivity;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 56
    :cond_2
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070122

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/feedback/HotQAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lakl;

    invoke-direct {v1, p0}, Lakl;-><init>(Lcom/dianxinos/powermanager/feedback/HotQAActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
