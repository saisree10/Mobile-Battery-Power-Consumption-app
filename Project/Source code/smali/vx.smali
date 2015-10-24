.class final Lvx;
.super Landroid/os/Handler;
.source "DXIntentService.java"


# instance fields
.field final synthetic a:Lvw;


# direct methods
.method public constructor <init>(Lvw;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lvx;->a:Lvw;

    .line 55
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 56
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 60
    iget-object v1, p0, Lvx;->a:Lvw;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lvw;->a(Landroid/content/Intent;)V

    .line 62
    return-void
.end method
