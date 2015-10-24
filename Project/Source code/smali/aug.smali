.class public Laug;
.super Ljava/lang/Object;
.source "CoinBalanceBar.java"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/dianxinos/common/coins/CoinManager;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v0, p0, Laug;->a:Landroid/app/Activity;

    .line 14
    iput-object v0, p0, Laug;->b:Lcom/dianxinos/common/coins/CoinManager;

    .line 20
    iput-object p1, p0, Laug;->a:Landroid/app/Activity;

    .line 21
    iput-object p2, p0, Laug;->d:Landroid/view/View;

    .line 22
    iget-object v0, p0, Laug;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/dianxinos/common/coins/CoinManager;->a(Landroid/content/Context;)Lcom/dianxinos/common/coins/CoinManager;

    move-result-object v0

    iput-object v0, p0, Laug;->b:Lcom/dianxinos/common/coins/CoinManager;

    .line 23
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070074

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laug;->c:Landroid/widget/TextView;

    .line 25
    iget-object v0, p0, Laug;->d:Landroid/view/View;

    new-instance v1, Lauh;

    invoke-direct {v1, p0}, Lauh;-><init>(Laug;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Laug;->b:Lcom/dianxinos/common/coins/CoinManager;

    invoke-virtual {v0}, Lcom/dianxinos/common/coins/CoinManager;->a()I

    move-result v0

    .line 35
    iget-object v1, p0, Laug;->c:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    return-void
.end method

.method b()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Laui;

    iget-object v1, p0, Laug;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Laui;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Laui;->show()V

    .line 40
    return-void
.end method
