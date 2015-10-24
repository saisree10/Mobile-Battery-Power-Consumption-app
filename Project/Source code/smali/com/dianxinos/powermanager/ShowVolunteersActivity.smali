.class public Lcom/dianxinos/powermanager/ShowVolunteersActivity;
.super Laao;
.source "ShowVolunteersActivity.java"


# instance fields
.field private a:Lcom/dianxinos/powermanager/ui/MainTitle;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Lazp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Laao;-><init>()V

    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    .line 41
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070007

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ShowVolunteersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/MainTitle;

    iput-object v0, p0, Lcom/dianxinos/powermanager/ShowVolunteersActivity;->a:Lcom/dianxinos/powermanager/ui/MainTitle;

    .line 42
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701e7

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ShowVolunteersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/ShowVolunteersActivity;->b:Landroid/widget/TextView;

    .line 43
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701e8

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ShowVolunteersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/powermanager/ShowVolunteersActivity;->c:Landroid/widget/TextView;

    .line 44
    iget-object v0, p0, Lcom/dianxinos/powermanager/ShowVolunteersActivity;->c:Landroid/widget/TextView;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0267

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v4, 0x7f0a0228

    invoke-virtual {p0, v4}, Lcom/dianxinos/powermanager/ShowVolunteersActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/dianxinos/powermanager/ShowVolunteersActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ShowVolunteersActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lazp;->a(Landroid/content/Context;)Lazp;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/ShowVolunteersActivity;->d:Lazp;

    .line 46
    iget-object v0, p0, Lcom/dianxinos/powermanager/ShowVolunteersActivity;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dianxinos/powermanager/ShowVolunteersActivity;->d:Lazp;

    invoke-virtual {v1}, Lazp;->a()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 48
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ShowVolunteersActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lazf;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/dianxinos/powermanager/ShowVolunteersActivity;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 26
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f030075

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ShowVolunteersActivity;->setContentView(I)V

    .line 27
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ShowVolunteersActivity;->a()V

    .line 28
    iget-object v0, p0, Lcom/dianxinos/powermanager/ShowVolunteersActivity;->a:Lcom/dianxinos/powermanager/ui/MainTitle;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0265

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setTitleText(I)V

    .line 29
    iget-object v0, p0, Lcom/dianxinos/powermanager/ShowVolunteersActivity;->a:Lcom/dianxinos/powermanager/ui/MainTitle;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/ui/MainTitle;->a()V

    .line 30
    iget-object v0, p0, Lcom/dianxinos/powermanager/ShowVolunteersActivity;->a:Lcom/dianxinos/powermanager/ui/MainTitle;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020450

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setLeftButtonIcon(I)V

    .line 31
    iget-object v0, p0, Lcom/dianxinos/powermanager/ShowVolunteersActivity;->a:Lcom/dianxinos/powermanager/ui/MainTitle;

    new-instance v1, Lacb;

    invoke-direct {v1, p0}, Lacb;-><init>(Lcom/dianxinos/powermanager/ShowVolunteersActivity;)V

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setLeftButtonOnclickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    invoke-super {p0, p1}, Laao;->onCreate(Landroid/os/Bundle;)V

    .line 38
    return-void
.end method
