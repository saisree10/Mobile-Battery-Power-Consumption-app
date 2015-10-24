.class Lacl;
.super Landroid/content/BroadcastReceiver;
.source "WidgetUpdataServiceBase.java"


# instance fields
.field final synthetic a:Lacj;


# direct methods
.method constructor <init>(Lacj;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lacl;->a:Lacj;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 119
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    iget-object v0, p0, Lacl;->a:Lacj;

    invoke-static {v0}, Lacj;->a(Lacj;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lacl;->a:Lacj;

    invoke-static {v0}, Lacj;->b(Lacj;)Lacz;

    move-result-object v0

    iget-object v1, p0, Lacl;->a:Lacj;

    invoke-virtual {v0, v1}, Lacz;->b(Ladc;)V

    .line 122
    iget-object v0, p0, Lacl;->a:Lacj;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lacj;->a(Lacj;Z)Z

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lacl;->a:Lacj;

    invoke-static {v0}, Lacj;->a(Lacj;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lacl;->a:Lacj;

    invoke-static {v0}, Lacj;->b(Lacj;)Lacz;

    move-result-object v0

    iget-object v1, p0, Lacl;->a:Lacj;

    invoke-virtual {v0, v1}, Lacz;->a(Ladc;)V

    .line 130
    iget-object v0, p0, Lacl;->a:Lacj;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lacj;->a(Lacj;Z)Z

    goto :goto_0
.end method
