.class public Laiv;
.super Lajk;
.source "AutoCleanOpt.java"


# instance fields
.field private a:Lamb;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lajk;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;)V

    .line 20
    invoke-static {p1}, Lamb;->a(Landroid/content/Context;)Lamb;

    move-result-object v0

    iput-object v0, p0, Laiv;->a:Lamb;

    .line 21
    const/4 v0, 0x2

    iput v0, p0, Laiv;->j:I

    .line 22
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Laiv;->a:Lamb;

    invoke-virtual {v0}, Lamb;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Laiv;->l:I

    .line 28
    iget-object v0, p0, Laiv;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a033c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laiv;->m:Ljava/lang/String;

    .line 29
    iget v0, p0, Laiv;->j:I

    iput v0, p0, Laiv;->k:I

    .line 34
    :goto_0
    return-void

    .line 31
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Laiv;->l:I

    .line 32
    iget-object v0, p0, Laiv;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a033b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laiv;->m:Ljava/lang/String;

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Laiv;->c:Landroid/content/Context;

    const-class v2, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 40
    iget-object v1, p0, Laiv;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 41
    iget v0, p0, Laiv;->j:I

    iput v0, p0, Laiv;->k:I

    .line 42
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Laiv;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0333

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Laiv;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0343

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    invoke-virtual {p0}, Laiv;->e()V

    .line 57
    return-void
.end method
