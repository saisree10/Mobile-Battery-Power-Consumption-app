.class public Lauo;
.super Lqs;
.source "ToolboxActivity.java"


# instance fields
.field final synthetic c:Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lauo;->c:Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;

    invoke-direct {p0, p2}, Lqs;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    .line 93
    new-instance v0, Lauu;

    iget-object v1, p0, Lauo;->c:Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;->d(Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lauu;-><init>(Landroid/content/Context;)V

    .line 94
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0120

    invoke-virtual {v0, v1}, Lauu;->setTitle(I)V

    .line 95
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0037

    invoke-virtual {v0, v1}, Lauu;->c(I)V

    .line 96
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a01c1

    new-instance v2, Laup;

    invoke-direct {v2, p0}, Laup;-><init>(Lauo;)V

    invoke-virtual {v0, v1, v2}, Lauu;->a(ILandroid/view/View$OnClickListener;)V

    .line 105
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0115

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lauu;->b(ILandroid/view/View$OnClickListener;)V

    .line 106
    invoke-virtual {v0}, Lauu;->show()V

    .line 107
    iget-object v0, p0, Lauo;->c:Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;->g(Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lpf;->k(Landroid/content/Context;)V

    .line 108
    return-void
.end method
