.class Lwf;
.super Ljava/lang/Object;
.source "WidgetClientService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lwd;


# direct methods
.method constructor <init>(Lwd;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lwf;->a:Lwd;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lwf;->a:Lwd;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lwd;->c:Z

    .line 125
    iget-object v0, p0, Lwf;->a:Lwd;

    iget-object v0, v0, Lwd;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lwb;->a(Landroid/os/IBinder;)Lwa;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-boolean v0, Lvy;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "WidgetClientService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WidgetClientService onServiceConnected mService= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lwf;->a:Lwd;

    iget-object v2, v2, Lwd;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 127
    const-string v2, ",mTaskQueue.size()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lwf;->a:Lwd;

    invoke-static {v2}, Lwd;->b(Lwd;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    iget-object v0, p0, Lwf;->a:Lwd;

    invoke-static {v0}, Lwd;->c(Lwd;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lwf;->a:Lwd;

    invoke-static {v1}, Lwd;->c(Lwd;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 130
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter

    .prologue
    .line 133
    sget-boolean v0, Lvy;->a:Z

    if-eqz v0, :cond_0

    .line 134
    const-string v0, "WidgetClientService"

    const-string v1, "WidgetClientService onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    iget-object v0, p0, Lwf;->a:Lwd;

    iget-object v0, v0, Lwd;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lwf;->a:Lwd;

    invoke-static {v0}, Lwd;->d(Lwd;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    sget-boolean v0, Lvy;->a:Z

    if-eqz v0, :cond_1

    .line 138
    const-string v0, "WidgetClientService"

    const-string v1, "DXHome is Running!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 140
    const-string v1, "com.dianxinos.dxhome.dxwidget.WidgetServerService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    iget-object v1, p0, Lwf;->a:Lwd;

    invoke-virtual {v1, v0}, Lwd;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 143
    :cond_2
    return-void
.end method
