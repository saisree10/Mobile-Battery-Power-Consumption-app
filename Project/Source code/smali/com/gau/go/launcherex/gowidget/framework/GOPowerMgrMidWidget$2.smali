.class Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget$2;
.super Ljava/lang/Object;
.source "GOPowerMgrMidWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;


# direct methods
.method constructor <init>(Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget$2;->this$0:Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 106
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget$2;->this$0:Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;

    #getter for: Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mContext:Lcom/gau/go/launcherex/gowidget/framework/DxContextWrapper;
    invoke-static {v1}, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->access$100(Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;)Lcom/gau/go/launcherex/gowidget/framework/DxContextWrapper;

    move-result-object v1

    const-class v2, Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    const-string v1, "From"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 110
    iget-object v1, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget$2;->this$0:Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;

    #getter for: Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mContext:Lcom/gau/go/launcherex/gowidget/framework/DxContextWrapper;
    invoke-static {v1}, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->access$100(Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;)Lcom/gau/go/launcherex/gowidget/framework/DxContextWrapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gau/go/launcherex/gowidget/framework/DxContextWrapper;->startActivity(Landroid/content/Intent;)V

    .line 111
    return-void
.end method
