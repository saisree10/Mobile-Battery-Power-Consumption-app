.class Laxq;
.super Ljava/lang/Object;
.source "UpdateHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lauu;

.field final synthetic c:Laxn;


# direct methods
.method constructor <init>(Laxn;ILauu;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 424
    iput-object p1, p0, Laxq;->c:Laxn;

    iput p2, p0, Laxq;->a:I

    iput-object p3, p0, Laxq;->b:Lauu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 431
    const/4 v0, 0x0

    invoke-static {v0}, Laxn;->a(Z)Z

    .line 433
    invoke-static {}, Laxn;->j()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 434
    invoke-static {}, Laxn;->j()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 436
    :cond_0
    iget v0, p0, Laxq;->a:I

    if-nez v0, :cond_1

    .line 437
    iget-object v0, p0, Laxq;->c:Laxn;

    invoke-static {v0}, Laxn;->a(Laxn;)Lka;

    move-result-object v0

    invoke-virtual {v0}, Lka;->g()V

    .line 438
    iget-object v0, p0, Laxq;->b:Lauu;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f070093

    invoke-virtual {v0, v1}, Lauu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 439
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    invoke-static {}, Laxn;->k()Laxl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laxl;->c(Z)V

    .line 443
    :cond_1
    return-void
.end method
