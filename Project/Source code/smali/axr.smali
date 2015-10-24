.class Laxr;
.super Ljava/lang/Object;
.source "UpdateHelper.java"

# interfaces
.implements Lava;


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
    .line 445
    iput-object p1, p0, Laxr;->c:Laxn;

    iput p2, p0, Laxr;->a:I

    iput-object p3, p0, Laxr;->b:Lauu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/view/KeyEvent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 448
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x54

    if-ne p1, v0, :cond_1

    .line 450
    :cond_0
    iget v0, p0, Laxr;->a:I

    if-nez v0, :cond_2

    .line 451
    iget-object v0, p0, Laxr;->c:Laxn;

    invoke-static {v0}, Laxn;->a(Laxn;)Lka;

    move-result-object v0

    invoke-virtual {v0}, Lka;->g()V

    .line 452
    iget-object v0, p0, Laxr;->b:Lauu;

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f070093

    invoke-virtual {v0, v1}, Lauu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 453
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 454
    invoke-static {}, Laxn;->k()Laxl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laxl;->c(Z)V

    .line 459
    :cond_1
    :goto_0
    return-void

    .line 456
    :cond_2
    iget v0, p0, Laxr;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0
.end method
