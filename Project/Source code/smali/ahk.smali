.class Lahk;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothCommand.java"


# instance fields
.field final synthetic a:Lahj;


# direct methods
.method constructor <init>(Lahj;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lahk;->a:Lahj;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lahk;->a:Lahj;

    iget-object v0, v0, Lahj;->e:Lahq;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lahk;->a:Lahj;

    invoke-virtual {v0}, Lahj;->a()Z

    .line 56
    iget-object v0, p0, Lahk;->a:Lahj;

    iget-boolean v0, v0, Lahj;->g:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 58
    :goto_0
    iget-object v1, p0, Lahk;->a:Lahj;

    invoke-static {v1}, Lahj;->a(Lahj;)I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lahk;->a:Lahj;

    invoke-static {v1}, Lahj;->a(Lahj;)I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    .line 64
    :cond_0
    :goto_1
    return-void

    .line 56
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 62
    :cond_2
    iget-object v1, p0, Lahk;->a:Lahj;

    iget-object v1, v1, Lahj;->e:Lahq;

    iget-object v2, p0, Lahk;->a:Lahj;

    invoke-interface {v1, v2, v0, v0}, Lahq;->a(Lahp;II)V

    goto :goto_1
.end method
