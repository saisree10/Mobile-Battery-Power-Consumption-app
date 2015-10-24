.class public Labw;
.super Landroid/os/Handler;
.source "PowerMgrTabActivity.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;


# direct methods
.method private constructor <init>(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Labw;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dianxinos/powermanager/PowerMgrTabActivity;Labm;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-direct {p0, p1}, Labw;-><init>(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 105
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->a()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->b()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 112
    iget-object v0, p0, Labw;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    iget-object v1, p0, Labw;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0191

    invoke-virtual {v1, v2}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 119
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->c()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 120
    iget-object v0, p0, Labw;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->finish()V

    goto :goto_0

    .line 121
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->d()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 122
    iget-object v0, p0, Labw;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->a(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)Lazr;

    move-result-object v0

    invoke-virtual {v0}, Lazr;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labw;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Labw;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->c(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)Lcom/dianxinos/powermanager/ui/InverseTabHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/ui/InverseTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    iget-object v1, p0, Labw;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->b(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f070230

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
