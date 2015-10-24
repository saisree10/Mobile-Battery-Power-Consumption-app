.class abstract Lvw;
.super Landroid/app/Service;
.source "DXIntentService.java"


# instance fields
.field private volatile a:Landroid/os/Looper;

.field private volatile b:Lvx;

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 72
    iput-object p1, p0, Lvw;->c:Ljava/lang/String;

    .line 73
    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/Intent;)V
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-boolean p1, p0, Lvw;->d:Z

    .line 93
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 130
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 102
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IntentService["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lvw;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 105
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lvw;->a:Landroid/os/Looper;

    .line 106
    new-instance v0, Lvx;

    iget-object v1, p0, Lvw;->a:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lvx;-><init>(Lvw;Landroid/os/Looper;)V

    iput-object v0, p0, Lvw;->b:Lvx;

    .line 107
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lvw;->a:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 126
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lvw;->b:Lvx;

    invoke-virtual {v0}, Lvx;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 112
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 113
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 114
    iget-object v1, p0, Lvw;->b:Lvx;

    invoke-virtual {v1, v0}, Lvx;->sendMessage(Landroid/os/Message;)Z

    .line 115
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    invoke-virtual {p0, p1, p3}, Lvw;->onStart(Landroid/content/Intent;I)V

    .line 120
    iget-boolean v0, p0, Lvw;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
