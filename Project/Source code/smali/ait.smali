.class public Lait;
.super Lajk;
.source "ADAutoCleanApp.java"


# instance fields
.field private a:Z

.field private p:Lou;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lajk;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lait;->a:Z

    .line 32
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 36
    iget-object v0, p0, Lait;->c:Landroid/content/Context;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a02a2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lait;->m:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lait;->c:Landroid/content/Context;

    invoke-static {v0}, Laje;->a(Landroid/content/Context;)Laje;

    move-result-object v0

    invoke-virtual {v0}, Laje;->a()Z

    move-result v0

    .line 38
    if-nez v0, :cond_0

    iget-object v0, p0, Lait;->c:Landroid/content/Context;

    invoke-static {v0}, Lakx;->a(Landroid/content/Context;)Lakx;

    move-result-object v0

    invoke-virtual {v0}, Lakx;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lait;->c:Landroid/content/Context;

    sget-object v2, Laoe;->g:Laoe;

    invoke-static {v0, v2}, Lahb;->a(Landroid/content/Context;Laoe;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lait;->a:Z

    .line 42
    iget-boolean v0, p0, Lait;->a:Z

    if-eqz v0, :cond_3

    .line 58
    :cond_1
    :goto_1
    return-void

    .line 38
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 46
    :cond_3
    iget-object v0, p0, Lait;->c:Landroid/content/Context;

    invoke-static {v0}, Lpa;->a(Landroid/content/Context;)Lpa;

    move-result-object v0

    const-string v2, "ADUNLOCK"

    invoke-virtual {v0, v2}, Lpa;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lou;

    .line 48
    iget-object v3, p0, Lait;->c:Landroid/content/Context;

    iget-object v4, v0, Lou;->f:Ljava/lang/String;

    invoke-static {v3, v4}, Lazy;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 51
    iput-object v0, p0, Lait;->p:Lou;

    .line 54
    :cond_5
    iget-object v0, p0, Lait;->p:Lou;

    if-nez v0, :cond_1

    .line 55
    iput-boolean v1, p0, Lait;->a:Z

    .line 56
    iget-object v0, p0, Lait;->c:Landroid/content/Context;

    invoke-static {v0}, Laje;->a(Landroid/content/Context;)Laje;

    move-result-object v0

    invoke-virtual {v0}, Laje;->c()V

    goto :goto_1
.end method

.method public b()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 62
    iget-boolean v0, p0, Lait;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lait;->p:Lou;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lait;->c:Landroid/content/Context;

    const-string v1, "dac"

    const-string v2, "dad"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, v4}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;Z)V

    .line 67
    new-instance v0, Lave;

    iget-object v1, p0, Lait;->c:Landroid/content/Context;

    iget-object v2, p0, Lait;->p:Lou;

    invoke-direct {v0, v1, v2}, Lave;-><init>(Landroid/content/Context;Lou;)V

    invoke-virtual {v0}, Lave;->show()V

    .line 77
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lait;->c:Landroid/content/Context;

    const-string v1, "dac"

    const-string v2, "daac"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, v4}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;Z)V

    .line 73
    iget-object v0, p0, Lait;->c:Landroid/content/Context;

    invoke-static {v0}, Laje;->a(Landroid/content/Context;)Laje;

    move-result-object v0

    invoke-virtual {v0}, Laje;->c()V

    .line 74
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lait;->c:Landroid/content/Context;

    const-class v2, Lcom/dianxinos/powermanager/menu/AutoCleanupSettings;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    iget-object v1, p0, Lait;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lait;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a02a2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    iget-boolean v0, p0, Lait;->a:Z

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lait;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a02a1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lait;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a02f6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    invoke-virtual {p0}, Lait;->b()V

    .line 96
    return-void
.end method
