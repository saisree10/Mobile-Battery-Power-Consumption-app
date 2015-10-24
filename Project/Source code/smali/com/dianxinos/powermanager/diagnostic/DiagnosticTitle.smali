.class public Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;
.super Landroid/widget/TextView;
.source "DiagnosticTitle.java"


# instance fields
.field public a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Laff;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;->a:I

    .line 29
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 30
    sget-object v1, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v1, 0x7f09003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;->b:I

    .line 31
    sget-object v1, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v1, 0x7f09003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;->c:I

    .line 32
    sget-object v1, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v1, 0x7f090054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;->d:I

    .line 33
    invoke-static {p1}, Laff;->a(Landroid/content/Context;)Laff;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;->f:Laff;

    .line 34
    return-void
.end method


# virtual methods
.method public setChargingStatus(Lacz;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x67

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;->setVisibility(I)V

    .line 38
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;->f:Laff;

    invoke-virtual {v0}, Laff;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;->f:Laff;

    invoke-virtual {v0}, Laff;->e()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 40
    const/4 v0, 0x3

    iput v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;->e:I

    .line 41
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0356

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;->setText(I)V

    .line 42
    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;->d:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;->setTextColor(I)V

    .line 52
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;->f:Laff;

    invoke-virtual {v0}, Laff;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;->f:Laff;

    invoke-virtual {v0}, Laff;->e()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;->f:Laff;

    invoke-virtual {v0}, Laff;->e()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 46
    const/4 v0, 0x2

    iput v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;->e:I

    .line 47
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0357

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;->setText(I)V

    .line 48
    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;->d:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;->setTextColor(I)V

    goto :goto_0

    .line 50
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;->e:I

    goto :goto_0
.end method

.method public setState(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 55
    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;->a:I

    if-lt p1, v0, :cond_0

    .line 56
    iput p1, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;->a:I

    .line 58
    :cond_0
    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;->e:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;->e:I

    if-ne v0, v2, :cond_2

    .line 73
    :cond_1
    :goto_0
    return-void

    .line 60
    :cond_2
    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 61
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0353

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;->setText(I)V

    .line 62
    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;->b:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;->setTextColor(I)V

    goto :goto_0

    .line 63
    :cond_3
    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;->a:I

    if-ne v0, v2, :cond_4

    .line 64
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a035b

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;->setText(I)V

    .line 65
    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;->b:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;->setTextColor(I)V

    goto :goto_0

    .line 66
    :cond_4
    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;->a:I

    if-ne v0, v3, :cond_5

    .line 67
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0354

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;->setText(I)V

    .line 68
    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;->d:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;->setTextColor(I)V

    goto :goto_0

    .line 69
    :cond_5
    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 70
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0355

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;->setText(I)V

    .line 71
    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;->d:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticTitle;->setTextColor(I)V

    goto :goto_0
.end method
