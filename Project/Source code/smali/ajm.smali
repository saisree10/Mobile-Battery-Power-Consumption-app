.class public Lajm;
.super Lajk;
.source "MobileDataOpt.java"


# instance fields
.field private a:Landroid/net/ConnectivityManager;

.field private p:Lahv;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lajk;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;)V

    .line 25
    const/4 v0, 0x2

    iput v0, p0, Lajm;->j:I

    .line 26
    new-instance v0, Lahv;

    invoke-direct {v0, p1}, Lahv;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lajm;->p:Lahv;

    .line 27
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 31
    sget-boolean v0, Lazw;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lajm;->c:Landroid/content/Context;

    invoke-static {v0}, Lazf;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lazf;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lajm;->o:Z

    .line 33
    iget-boolean v0, p0, Lajm;->o:Z

    if-nez v0, :cond_1

    .line 34
    iput v1, p0, Lajm;->l:I

    .line 35
    iput-boolean v2, p0, Lajm;->n:Z

    .line 36
    iget v0, p0, Lajm;->j:I

    iput v0, p0, Lajm;->k:I

    .line 50
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 31
    goto :goto_0

    .line 40
    :cond_1
    iget-object v0, p0, Lajm;->c:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lajm;->a:Landroid/net/ConnectivityManager;

    .line 41
    iget-object v0, p0, Lajm;->a:Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lgj;->a(Landroid/net/ConnectivityManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    const/4 v0, 0x3

    iput v0, p0, Lajm;->l:I

    .line 43
    iput v2, p0, Lajm;->k:I

    .line 44
    iget-object v0, p0, Lajm;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0324

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lajm;->m:Ljava/lang/String;

    goto :goto_1

    .line 46
    :cond_2
    iput v1, p0, Lajm;->l:I

    .line 47
    iget-object v0, p0, Lajm;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0325

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lajm;->m:Ljava/lang/String;

    .line 48
    iget v0, p0, Lajm;->j:I

    iput v0, p0, Lajm;->k:I

    goto :goto_1
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 54
    iget-object v0, p0, Lajm;->a:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 55
    iget v0, p0, Lajm;->l:I

    if-ne v0, v1, :cond_1

    .line 56
    iput v3, p0, Lajm;->l:I

    .line 57
    iget-object v0, p0, Lajm;->p:Lahv;

    invoke-virtual {v0, v2}, Lahv;->a(Z)V

    .line 58
    iget-object v0, p0, Lajm;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0325

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lajm;->m:Ljava/lang/String;

    .line 59
    iget v0, p0, Lajm;->j:I

    iput v0, p0, Lajm;->k:I

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    iget v0, p0, Lajm;->l:I

    if-ne v0, v3, :cond_0

    .line 61
    iput v1, p0, Lajm;->l:I

    .line 63
    iget-object v0, p0, Lajm;->p:Lahv;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lahv;->a(Z)V

    .line 64
    iget-object v0, p0, Lajm;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0324

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lajm;->m:Ljava/lang/String;

    .line 65
    iput v2, p0, Lajm;->k:I

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lajm;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0323

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    iget v0, p0, Lajm;->l:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 78
    iget-object v0, p0, Lajm;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0349

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lajm;->c:Landroid/content/Context;

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
    .line 85
    invoke-virtual {p0}, Lajm;->e()V

    .line 86
    return-void
.end method
