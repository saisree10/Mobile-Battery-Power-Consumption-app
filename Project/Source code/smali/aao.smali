.class public Laao;
.super Landroid/app/Activity;
.source "DXPowerPopupActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 23
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 24
    sget-object v0, Lly;->a:Lcom/dianxinos/dxbs/R$anim;

    const v0, 0x7f040004

    sget-object v1, Lly;->a:Lcom/dianxinos/dxbs/R$anim;

    const v1, 0x7f040005

    invoke-virtual {p0, v0, v1}, Laao;->overridePendingTransition(II)V

    .line 25
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 18
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMangerApplication;->a(Z)V

    .line 19
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 13
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMangerApplication;->a(Z)V

    .line 14
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 30
    sget-object v0, Lly;->a:Lcom/dianxinos/dxbs/R$anim;

    const v0, 0x7f040006

    sget-object v1, Lly;->a:Lcom/dianxinos/dxbs/R$anim;

    const v1, 0x7f040007

    invoke-virtual {p0, v0, v1}, Laao;->overridePendingTransition(II)V

    .line 31
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 36
    sget-object v0, Lly;->a:Lcom/dianxinos/dxbs/R$anim;

    const v0, 0x7f040006

    sget-object v1, Lly;->a:Lcom/dianxinos/dxbs/R$anim;

    const v1, 0x7f040007

    invoke-virtual {p0, v0, v1}, Laao;->overridePendingTransition(II)V

    .line 37
    return-void
.end method
