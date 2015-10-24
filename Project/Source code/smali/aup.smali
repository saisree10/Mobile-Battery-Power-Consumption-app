.class Laup;
.super Ljava/lang/Object;
.source "ToolboxActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lauo;


# direct methods
.method constructor <init>(Lauo;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Laup;->a:Lauo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 99
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 101
    iget-object v1, p0, Laup;->a:Lauo;

    iget-object v1, v1, Lauo;->c:Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;

    invoke-static {v1}, Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;->e(Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 102
    iget-object v0, p0, Laup;->a:Lauo;

    iget-object v0, v0, Lauo;->c:Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;->f(Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lpf;->l(Landroid/content/Context;)V

    .line 103
    return-void
.end method
