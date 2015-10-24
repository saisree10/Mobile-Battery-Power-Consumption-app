.class Lajl;
.super Ljava/lang/Object;
.source "ItemBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lajk;


# direct methods
.method constructor <init>(Lajk;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lajl;->a:Lajk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 178
    iget-object v0, p0, Lajl;->a:Lajk;

    invoke-virtual {v0}, Lajk;->b()V

    .line 179
    iget-object v0, p0, Lajl;->a:Lajk;

    iget-object v0, v0, Lajk;->d:Landroid/os/Handler;

    const/16 v1, 0xa

    iget-object v2, p0, Lajl;->a:Lajk;

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 181
    return-void
.end method
