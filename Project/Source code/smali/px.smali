.class Lpx;
.super Landroid/content/BroadcastReceiver;
.source "ToolboxBaseListActivity.java"


# instance fields
.field final synthetic a:Lpv;


# direct methods
.method constructor <init>(Lpv;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lpx;->a:Lpv;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 74
    const-string v1, "tag"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    const-string v2, "com.dianxinos.toolbox.ACTION_PULL_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    const-string v0, "net_status"

    const/16 v2, 0x194

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 78
    iget-object v2, p0, Lpx;->a:Lpv;

    invoke-virtual {v2, v1, v0}, Lpv;->a(Ljava/lang/String;I)V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    const-string v2, "com.dianxinos.toolbox.ACTION_ICON_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lpx;->a:Lpv;

    invoke-virtual {v0, v1}, Lpv;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
