.class public Lcom/dianxinos/powermanager/ui/WidgetAirplaneDialogActivity;
.super Laao;
.source "WidgetAirplaneDialogActivity.java"


# instance fields
.field private a:Lauu;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Laao;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/ui/WidgetAirplaneDialogActivity;)Lauu;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/WidgetAirplaneDialogActivity;->a:Lauu;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 23
    invoke-super {p0, p1}, Laao;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ui/WidgetAirplaneDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 26
    const-string v1, "widget_airplane_mode"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 27
    const-string v2, "widget_airplane_status"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 29
    new-instance v2, Lauu;

    invoke-direct {v2, p0}, Lauu;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/dianxinos/powermanager/ui/WidgetAirplaneDialogActivity;->a:Lauu;

    .line 30
    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/WidgetAirplaneDialogActivity;->a:Lauu;

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a0288

    invoke-virtual {v2, v3}, Lauu;->setTitle(I)V

    .line 31
    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/WidgetAirplaneDialogActivity;->a:Lauu;

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a0289

    invoke-virtual {v2, v3}, Lauu;->c(I)V

    .line 32
    iget-object v2, p0, Lcom/dianxinos/powermanager/ui/WidgetAirplaneDialogActivity;->a:Lauu;

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a0114

    new-instance v4, Laxc;

    invoke-direct {v4, p0, v1, v0}, Laxc;-><init>(Lcom/dianxinos/powermanager/ui/WidgetAirplaneDialogActivity;IZ)V

    invoke-virtual {v2, v3, v4}, Lauu;->a(ILandroid/view/View$OnClickListener;)V

    .line 40
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/WidgetAirplaneDialogActivity;->a:Lauu;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0115

    new-instance v2, Laxd;

    invoke-direct {v2, p0}, Laxd;-><init>(Lcom/dianxinos/powermanager/ui/WidgetAirplaneDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Lauu;->b(ILandroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/WidgetAirplaneDialogActivity;->a:Lauu;

    new-instance v1, Laxe;

    invoke-direct {v1, p0}, Laxe;-><init>(Lcom/dianxinos/powermanager/ui/WidgetAirplaneDialogActivity;)V

    invoke-virtual {v0, v1}, Lauu;->a(Lauy;)V

    .line 53
    iget-object v0, p0, Lcom/dianxinos/powermanager/ui/WidgetAirplaneDialogActivity;->a:Lauu;

    invoke-virtual {v0}, Lauu;->show()V

    .line 54
    return-void
.end method
