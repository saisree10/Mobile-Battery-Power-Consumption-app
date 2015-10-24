.class public Lajs;
.super Lajk;
.source "SmartBatteryOpt.java"


# instance fields
.field private a:Larr;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lajk;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;)V

    .line 19
    invoke-static {p1}, Larr;->a(Landroid/content/Context;)Larr;

    move-result-object v0

    iput-object v0, p0, Lajs;->a:Larr;

    .line 20
    const/4 v0, 0x5

    iput v0, p0, Lajs;->j:I

    .line 21
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lajs;->a:Larr;

    invoke-virtual {v0}, Larr;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lajs;->l:I

    .line 27
    iget-object v0, p0, Lajs;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0338

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lajs;->m:Ljava/lang/String;

    .line 28
    iget v0, p0, Lajs;->j:I

    iput v0, p0, Lajs;->k:I

    .line 33
    :goto_0
    return-void

    .line 30
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lajs;->l:I

    .line 31
    iget-object v0, p0, Lajs;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0337

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lajs;->m:Ljava/lang/String;

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 37
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lajs;->c:Landroid/content/Context;

    const-class v2, Lcom/dianxinos/powermanager/smart/SmartModeBatterySettings;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 39
    iget-object v1, p0, Lajs;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 40
    iget v0, p0, Lajs;->j:I

    iput v0, p0, Lajs;->k:I

    .line 41
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lajs;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0333

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lajs;->c:Landroid/content/Context;

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
    .line 55
    invoke-virtual {p0}, Lajs;->e()V

    .line 56
    return-void
.end method
