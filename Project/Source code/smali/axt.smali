.class public Laxt;
.super Ljava/lang/Object;
.source "UpdateHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lka;

.field private b:Landroid/app/Activity;

.field private c:I

.field private d:Laxl;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lka;->a(Landroid/content/Context;)Lka;

    move-result-object v0

    iput-object v0, p0, Laxt;->a:Lka;

    .line 359
    iput-object p1, p0, Laxt;->b:Landroid/app/Activity;

    .line 360
    iput p2, p0, Laxt;->c:I

    .line 361
    new-instance v0, Laxl;

    iget-object v1, p0, Laxt;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Laxl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Laxt;->d:Laxl;

    .line 362
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 366
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f070093

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 367
    iget-object v1, p0, Laxt;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lka;->a(Landroid/content/Context;)Lka;

    move-result-object v1

    .line 368
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sget-object v3, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v3, 0x7f070065

    if-ne v2, v3, :cond_3

    .line 369
    invoke-virtual {v1}, Lka;->n()Ljava/util/List;

    move-result-object v0

    .line 370
    new-instance v1, Laxi;

    iget-object v2, p0, Laxt;->b:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Laxi;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/os/Handler;)V

    .line 371
    invoke-virtual {v1}, Laxi;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 372
    invoke-virtual {v1}, Laxi;->b()V

    .line 382
    :cond_0
    :goto_0
    iget-object v0, p0, Laxt;->b:Landroid/app/Activity;

    instance-of v0, v0, Lcom/dianxinos/powermanager/update/UpdateDialogActivity;

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Laxt;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 385
    :cond_1
    return-void

    .line 374
    :cond_2
    iget-object v0, p0, Laxt;->b:Landroid/app/Activity;

    invoke-static {v0}, Laxn;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 376
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget-object v2, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v2, 0x7f070066

    if-ne v1, v2, :cond_0

    .line 377
    iget-object v1, p0, Laxt;->a:Lka;

    invoke-virtual {v1}, Lka;->g()V

    .line 378
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Laxt;->d:Laxl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laxl;->c(Z)V

    goto :goto_0
.end method
