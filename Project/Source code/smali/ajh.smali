.class public Lajh;
.super Ljava/lang/Object;
.source "DiagnosticMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 730
    iput-object p1, p0, Lajh;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 733
    iget-object v0, p0, Lajh;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->j(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajk;

    .line 734
    iget-object v2, p0, Lajh;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v2}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->a(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 753
    :cond_0
    const-wide/16 v0, 0x12c

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 757
    :goto_1
    iget-object v0, p0, Lajh;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->z(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 758
    return-void

    .line 738
    :cond_1
    invoke-virtual {v0}, Lajk;->l()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 740
    iget-object v2, p0, Lajh;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v2}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->z(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v0}, Lajk;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 743
    :cond_2
    invoke-virtual {v0}, Lajk;->b()V

    .line 745
    const-wide/16 v2, 0x64

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 749
    :goto_2
    iget-object v2, p0, Lajh;->a:Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;

    invoke-static {v2}, Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;->z(Lcom/dianxinos/powermanager/diagnostic/DiagnosticMainActivity;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 746
    :catch_0
    move-exception v2

    .line 747
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 754
    :catch_1
    move-exception v0

    .line 755
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
