.class Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget$3;
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
    .line 114
    iput-object p1, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget$3;->this$0:Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.dianxinos.dxbs.ONEKEY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget$3;->this$0:Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;

    #getter for: Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->mContext:Lcom/gau/go/launcherex/gowidget/framework/DxContextWrapper;
    invoke-static {v1}, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->access$100(Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;)Lcom/gau/go/launcherex/gowidget/framework/DxContextWrapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gau/go/launcherex/gowidget/framework/DxContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 119
    return-void
.end method
