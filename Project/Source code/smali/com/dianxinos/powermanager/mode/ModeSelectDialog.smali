.class public Lcom/dianxinos/powermanager/mode/ModeSelectDialog;
.super Lamy;
.source "ModeSelectDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lamy;-><init>()V

    return-void
.end method

.method private a(I)V
    .locals 3
    .parameter

    .prologue
    .line 62
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 66
    const-string v0, "widget14"

    const-string v1, "switch_mode"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 70
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-super {p0, p1}, Lamy;->a(Landroid/view/View;)V

    .line 80
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 26
    invoke-super {p0, p1}, Lamy;->onCreate(Landroid/os/Bundle;)V

    .line 27
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f030050

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/mode/ModeSelectDialog;->setContentView(I)V

    .line 29
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070153

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/mode/ModeSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 30
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0104

    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/mode/ModeSelectDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/mode/ModeSelectDialog;->a()V

    .line 35
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/mode/ModeSelectDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 36
    const-string v1, "From"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/mode/ModeSelectDialog;->b:I

    .line 39
    iget v0, p0, Lcom/dianxinos/powermanager/mode/ModeSelectDialog;->b:I

    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/mode/ModeSelectDialog;->a(I)V

    .line 41
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/mode/ModeSelectDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 42
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 44
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070152

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/mode/ModeSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lana;

    invoke-direct {v1, p0}, Lana;-><init>(Lcom/dianxinos/powermanager/mode/ModeSelectDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Lamy;->onDestroy()V

    .line 75
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/dianxinos/powermanager/mode/ModeSelectDialog;->setIntent(Landroid/content/Intent;)V

    .line 55
    const-string v0, "From"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/mode/ModeSelectDialog;->b:I

    .line 56
    iget v0, p0, Lcom/dianxinos/powermanager/mode/ModeSelectDialog;->b:I

    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/mode/ModeSelectDialog;->a(I)V

    .line 59
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 83
    invoke-super {p0}, Lamy;->onPause()V

    .line 84
    return-void
.end method
