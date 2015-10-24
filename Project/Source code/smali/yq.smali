.class public Lyq;
.super Ljava/lang/Object;
.source "MessageBoxActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lyq;->a:Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 131
    iget-object v0, p0, Lyq;->a:Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;

    invoke-static {v0}, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->b(Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;)Lyx;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lyx;->a(I)Ljava/util/List;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lyq;->a:Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;

    invoke-static {v1}, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->c(Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 134
    iget-object v1, p0, Lyq;->a:Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;

    invoke-static {v1}, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->c(Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 135
    iget-object v0, p0, Lyq;->a:Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;

    invoke-static {v0}, Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;->d(Lcom/dianxinos/optimizer/module/messagebox/MessageBoxActivity;)V

    .line 136
    return-void
.end method
