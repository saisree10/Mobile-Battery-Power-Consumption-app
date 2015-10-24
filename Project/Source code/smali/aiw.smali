.class public Laiw;
.super Lajk;
.source "AutoSyncOpt.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lajk;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;)V

    .line 17
    const/4 v0, 0x2

    iput v0, p0, Laiw;->j:I

    .line 18
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 22
    sget-boolean v0, Lazw;->a:Z

    iput-boolean v0, p0, Laiw;->o:Z

    .line 23
    iget-boolean v0, p0, Laiw;->o:Z

    if-nez v0, :cond_0

    .line 24
    iput v2, p0, Laiw;->l:I

    .line 25
    iput-boolean v1, p0, Laiw;->n:Z

    .line 26
    iput v1, p0, Laiw;->j:I

    iput v1, p0, Laiw;->k:I

    .line 39
    :goto_0
    return-void

    .line 30
    :cond_0
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    const/4 v0, 0x3

    iput v0, p0, Laiw;->l:I

    .line 32
    iget-object v0, p0, Laiw;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0327

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laiw;->m:Ljava/lang/String;

    .line 38
    :goto_1
    iput-boolean v2, p0, Laiw;->n:Z

    goto :goto_0

    .line 34
    :cond_1
    iput v2, p0, Laiw;->l:I

    .line 35
    iget-object v0, p0, Laiw;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0328

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laiw;->m:Ljava/lang/String;

    .line 36
    iget v0, p0, Laiw;->j:I

    iput v0, p0, Laiw;->k:I

    goto :goto_1
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 43
    iget v0, p0, Laiw;->l:I

    if-ne v0, v1, :cond_1

    .line 44
    iput v3, p0, Laiw;->l:I

    .line 46
    invoke-static {v2}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 47
    iget-object v0, p0, Laiw;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0328

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laiw;->m:Ljava/lang/String;

    .line 48
    iget v0, p0, Laiw;->j:I

    iput v0, p0, Laiw;->k:I

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    iget v0, p0, Laiw;->l:I

    if-ne v0, v3, :cond_0

    .line 50
    iput v1, p0, Laiw;->l:I

    .line 52
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 53
    iget-object v0, p0, Laiw;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0327

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laiw;->m:Ljava/lang/String;

    .line 54
    iput v2, p0, Laiw;->k:I

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Laiw;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0326

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    iget v0, p0, Laiw;->l:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 66
    iget-object v0, p0, Laiw;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0349

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 68
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Laiw;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0345

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    invoke-virtual {p0}, Laiw;->e()V

    .line 74
    return-void
.end method
