.class public Lcom/dianxinos/powermanager/diagnostic/StateButton;
.super Landroid/widget/Button;
.source "StateButton.java"


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Lcom/dianxinos/powermanager/diagnostic/StateButton;->a:I

    .line 18
    return-void
.end method


# virtual methods
.method public getSate()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/StateButton;->a:I

    return v0
.end method

.method public setState(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 21
    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/StateButton;->a:I

    if-lt p1, v0, :cond_0

    .line 22
    iput p1, p0, Lcom/dianxinos/powermanager/diagnostic/StateButton;->a:I

    .line 25
    :cond_0
    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/diagnostic/StateButton;->setEnabled(Z)V

    .line 26
    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/StateButton;->a:I

    if-ne v0, v1, :cond_2

    .line 27
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a034a

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/diagnostic/StateButton;->setText(I)V

    .line 36
    :cond_1
    :goto_0
    return-void

    .line 28
    :cond_2
    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/StateButton;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 29
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0313

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/diagnostic/StateButton;->setText(I)V

    goto :goto_0

    .line 30
    :cond_3
    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/StateButton;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 31
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a034c

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/diagnostic/StateButton;->setText(I)V

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/diagnostic/StateButton;->setEnabled(Z)V

    goto :goto_0

    .line 33
    :cond_4
    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/StateButton;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 34
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0347

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/diagnostic/StateButton;->setText(I)V

    goto :goto_0
.end method
