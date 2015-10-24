.class public Lajt;
.super Lajk;
.source "SmartPageEntrance.java"


# instance fields
.field private a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;Landroid/os/Handler;Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lajk;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;)V

    .line 22
    iput-object p1, p0, Lajt;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    .line 23
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lajt;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a02ee

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lajt;->m:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 33
    iget-object v0, p0, Lajt;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    const-string v1, "adc"

    const-string v2, "adcgs"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 36
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lajt;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    const-class v2, Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    const-string v1, "From"

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 38
    const-string v1, "diagnose_goto_smart_page"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 39
    iget-object v1, p0, Lajt;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-virtual {v1, v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 40
    iget-object v0, p0, Lajt;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->finish()V

    .line 41
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lajt;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a02ee

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lajt;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a02ef

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-virtual {p0}, Lajt;->b()V

    .line 51
    return-void
.end method
