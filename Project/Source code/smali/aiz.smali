.class Laiz;
.super Ljava/lang/Object;
.source "CpuOpt.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Laiy;


# direct methods
.method constructor <init>(Laiy;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Laiz;->a:Laiy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Laiz;->a:Laiy;

    invoke-virtual {v0}, Laiy;->b()V

    .line 95
    iget-object v0, p0, Laiz;->a:Laiy;

    iget-object v0, v0, Laiy;->d:Landroid/os/Handler;

    const/16 v1, 0xa

    iget-object v2, p0, Laiz;->a:Laiy;

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 97
    iget-object v0, p0, Laiz;->a:Laiy;

    iget-object v0, v0, Laiy;->c:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.dianxinos.dxbs.action.RemainingTimeUpate"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 98
    return-void
.end method
