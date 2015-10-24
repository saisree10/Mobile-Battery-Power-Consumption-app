.class Lpy;
.super Landroid/content/BroadcastReceiver;
.source "ToolboxBaseListActivity.java"


# instance fields
.field final synthetic a:Lpv;


# direct methods
.method constructor <init>(Lpv;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lpy;->a:Lpv;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lpy;->a:Lpv;

    invoke-virtual {v0, p2}, Lpv;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lpy;->a:Lpv;

    invoke-static {v0}, Lpv;->a(Lpv;)V

    goto :goto_0
.end method
