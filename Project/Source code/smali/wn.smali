.class Lwn;
.super Landroid/content/BroadcastReceiver;
.source "AppsMonitor.java"


# instance fields
.field final synthetic a:Lwm;


# direct methods
.method constructor <init>(Lwm;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lwn;->a:Lwm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 88
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 90
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    iget-object v0, p0, Lwn;->a:Lwm;

    invoke-static {v0}, Lwm;->a(Lwm;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lzv;->b(Landroid/content/Context;)I

    move-result v5

    .line 92
    iget-object v0, p0, Lwn;->a:Lwm;

    invoke-static {v0}, Lwm;->b(Lwm;)I

    move-result v0

    if-eq v0, v5, :cond_1

    .line 94
    iget-object v0, p0, Lwn;->a:Lwm;

    invoke-static {v0}, Lwm;->c(Lwm;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lwn;->a:Lwm;

    iget-object v1, p0, Lwn;->a:Lwm;

    invoke-static {v1}, Lwm;->c(Lwm;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lwn;->a:Lwm;

    invoke-static {v2}, Lwm;->d(Lwm;)I

    move-result v2

    iget-object v3, p0, Lwn;->a:Lwm;

    invoke-static {v3}, Lwm;->e(Lwm;)Z

    move-result v3

    iget-object v4, p0, Lwn;->a:Lwm;

    invoke-static {v4}, Lwm;->b(Lwm;)I

    move-result v4

    invoke-static/range {v0 .. v5}, Lwm;->a(Lwm;Ljava/lang/String;IZII)V

    .line 98
    :cond_0
    iget-object v0, p0, Lwn;->a:Lwm;

    invoke-static {v0, v5}, Lwm;->a(Lwm;I)I

    .line 115
    :cond_1
    :goto_0
    return-void

    .line 100
    :cond_2
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 101
    iget-object v0, p0, Lwn;->a:Lwm;

    invoke-static {v0}, Lwm;->c(Lwm;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 102
    iget-object v0, p0, Lwn;->a:Lwm;

    iget-object v1, p0, Lwn;->a:Lwm;

    invoke-static {v1}, Lwm;->c(Lwm;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lwn;->a:Lwm;

    invoke-static {v2}, Lwm;->e(Lwm;)Z

    move-result v2

    invoke-static {v0, v1, v4, v2}, Lwm;->a(Lwm;Ljava/lang/String;ZZ)V

    .line 104
    :cond_3
    iget-object v0, p0, Lwn;->a:Lwm;

    invoke-static {v0, v4}, Lwm;->a(Lwm;Z)Z

    goto :goto_0

    .line 105
    :cond_4
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 106
    iget-object v0, p0, Lwn;->a:Lwm;

    invoke-static {v0}, Lwm;->c(Lwm;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 107
    iget-object v0, p0, Lwn;->a:Lwm;

    iget-object v1, p0, Lwn;->a:Lwm;

    invoke-static {v1}, Lwm;->c(Lwm;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lwn;->a:Lwm;

    invoke-static {v2}, Lwm;->e(Lwm;)Z

    move-result v2

    invoke-static {v0, v1, v3, v2}, Lwm;->a(Lwm;Ljava/lang/String;ZZ)V

    .line 109
    :cond_5
    iget-object v0, p0, Lwn;->a:Lwm;

    invoke-static {v0, v3}, Lwm;->a(Lwm;Z)Z

    goto :goto_0

    .line 110
    :cond_6
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 111
    iget-object v0, p0, Lwn;->a:Lwm;

    invoke-static {v0, v4}, Lwm;->b(Lwm;Z)V

    goto :goto_0

    .line 112
    :cond_7
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lwn;->a:Lwm;

    invoke-static {v0, v3}, Lwm;->b(Lwm;Z)V

    goto :goto_0
.end method
