.class public Lake;
.super Landroid/os/Handler;
.source "FeedbackDialog.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/feedback/FeedbackDialog;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/feedback/FeedbackDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lake;->a:Lcom/dianxinos/powermanager/feedback/FeedbackDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 59
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 39
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 40
    invoke-static {}, Lazi;->a()Lazi;

    move-result-object v1

    new-instance v2, Lakf;

    iget-object v0, p0, Lake;->a:Lcom/dianxinos/powermanager/feedback/FeedbackDialog;

    invoke-static {v0}, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->a(Lcom/dianxinos/powermanager/feedback/FeedbackDialog;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v0, v4}, Lakf;-><init>(Lake;Landroid/os/Message;Ljava/lang/String;Lake;)V

    invoke-virtual {v1, v2}, Lazi;->b(Ljava/lang/Runnable;)V

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_0

    .line 45
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    iget-object v0, p0, Lake;->a:Lcom/dianxinos/powermanager/feedback/FeedbackDialog;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->a(Lcom/dianxinos/powermanager/feedback/FeedbackDialog;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lake;->a:Lcom/dianxinos/powermanager/feedback/FeedbackDialog;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->b(Lcom/dianxinos/powermanager/feedback/FeedbackDialog;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lake;->a:Lcom/dianxinos/powermanager/feedback/FeedbackDialog;

    invoke-static {v0}, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->b(Lcom/dianxinos/powermanager/feedback/FeedbackDialog;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0111

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 52
    :cond_2
    iget-object v0, p0, Lake;->a:Lcom/dianxinos/powermanager/feedback/FeedbackDialog;

    invoke-static {v0}, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->c(Lcom/dianxinos/powermanager/feedback/FeedbackDialog;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0112

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
