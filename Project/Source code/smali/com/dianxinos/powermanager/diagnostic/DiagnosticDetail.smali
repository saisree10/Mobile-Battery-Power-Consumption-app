.class public Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;
.super Landroid/widget/TextView;
.source "DiagnosticDetail.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/content/Context;

.field private d:Laff;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->a:I

    .line 37
    iput-object p1, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->c:Landroid/content/Context;

    .line 38
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->c:Landroid/content/Context;

    invoke-static {v0}, Laff;->a(Landroid/content/Context;)Laff;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->d:Laff;

    .line 39
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 95
    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->a:I

    if-lt p1, v0, :cond_0

    .line 96
    iput p1, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->a:I

    .line 97
    invoke-virtual {p0, p2}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :cond_0
    return-void
.end method

.method public a(Lacz;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 49
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->d:Laff;

    invoke-virtual {v0}, Laff;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->d:Laff;

    invoke-virtual {v0}, Laff;->e()I

    move-result v0

    const/16 v1, 0x67

    if-eq v0, v1, :cond_1

    .line 51
    iput v4, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->b:I

    .line 60
    :goto_0
    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->a:I

    if-ne v0, v3, :cond_3

    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->b:I

    if-eq v0, v2, :cond_3

    .line 61
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a035a

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->setText(I)V

    .line 73
    :cond_0
    :goto_1
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->d:Laff;

    invoke-virtual {v0}, Laff;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->d:Laff;

    invoke-virtual {v0}, Laff;->e()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_2

    .line 54
    iput v3, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->b:I

    goto :goto_0

    .line 56
    :cond_2
    iput v2, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->b:I

    goto :goto_0

    .line 62
    :cond_3
    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->a:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->a:I

    if-ne v0, v4, :cond_0

    .line 63
    :cond_4
    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->b:I

    if-ne v0, v4, :cond_5

    .line 64
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a035e

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->c:Landroid/content/Context;

    invoke-static {v3, p2}, Lazq;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 67
    :cond_5
    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->b:I

    if-ne v0, v3, :cond_0

    .line 68
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a035f

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->c:Landroid/content/Context;

    invoke-static {v3, p2}, Lazq;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setState(I)V
    .locals 1
    .parameter

    .prologue
    .line 42
    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->a:I

    if-lt p1, v0, :cond_0

    .line 43
    iput p1, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->a:I

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->setVisibility(I)V

    .line 46
    :cond_0
    return-void
.end method

.method public setTime(I)V
    .locals 5
    .parameter

    .prologue
    const/16 v0, 0x3c

    const/4 v2, 0x1

    .line 76
    iget v1, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->b:I

    if-eq v1, v2, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    if-ge p1, v0, :cond_2

    move p1, v0

    .line 82
    :cond_2
    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->a:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_3

    .line 83
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a035d

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->c:Landroid/content/Context;

    invoke-static {v4, p1}, Lazq;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 85
    :cond_3
    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 86
    iget-object v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0358

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 87
    :cond_4
    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 88
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a035c

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->setText(I)V

    goto :goto_0

    .line 89
    :cond_5
    iget v0, p0, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 90
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0359

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticDetail;->setText(I)V

    goto :goto_0
.end method
