.class public Lajd;
.super Lajk;
.source "DashiRecommend.java"


# instance fields
.field private a:Lavd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lajk;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;)V

    .line 27
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lajd;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a02ba

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lajd;->m:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 31
    iget-object v0, p0, Lajd;->c:Landroid/content/Context;

    const-string v1, "com.dianxinos.optimizer.duplay"

    invoke-static {v0, v1}, Lazy;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 33
    const-string v1, "com.dianxinos.optimizer.duplay"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    iget-object v1, p0, Lajd;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 44
    :goto_0
    iget-object v0, p0, Lajd;->c:Landroid/content/Context;

    const-string v1, "rdoc"

    const-string v2, "rdo"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 48
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lajd;->a:Lavd;

    if-nez v0, :cond_1

    .line 38
    new-instance v0, Lavd;

    iget-object v1, p0, Lajd;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lavd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lajd;->a:Lavd;

    .line 39
    iget-object v0, p0, Lajd;->a:Lavd;

    invoke-virtual {v0}, Lavd;->a()V

    .line 41
    :cond_1
    iget-object v0, p0, Lajd;->a:Lavd;

    invoke-virtual {v0}, Lavd;->show()V

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lajd;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a02b9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lajd;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a02a1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    invoke-virtual {p0}, Lajd;->b()V

    .line 68
    return-void
.end method
