.class Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget$1;
.super Landroid/content/BroadcastReceiver;
.source "GOPowerMgrMidWidget.java"


# instance fields
.field final synthetic this$0:Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;


# direct methods
.method constructor <init>(Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget$1;->this$0:Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 62
    const-string v1, "broadcast_actiono_refresh_go_widget"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget$1;->this$0:Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;

    #calls: Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->processRefreshIntent(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;->access$000(Lcom/gau/go/launcherex/gowidget/framework/GOPowerMgrMidWidget;Landroid/content/Intent;)V

    .line 66
    :cond_0
    return-void
.end method
