.class public Lakg;
.super Ljava/lang/Object;
.source "FeedbackDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/feedback/FeedbackDialog;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/feedback/FeedbackDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lakg;->a:Lcom/dianxinos/powermanager/feedback/FeedbackDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lakg;->a:Lcom/dianxinos/powermanager/feedback/FeedbackDialog;

    invoke-static {v0}, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->e(Lcom/dianxinos/powermanager/feedback/FeedbackDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lakg;->a:Lcom/dianxinos/powermanager/feedback/FeedbackDialog;

    invoke-static {v1}, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->f(Lcom/dianxinos/powermanager/feedback/FeedbackDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 101
    iget-object v2, p0, Lakg;->a:Lcom/dianxinos/powermanager/feedback/FeedbackDialog;

    invoke-static {v2}, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->g(Lcom/dianxinos/powermanager/feedback/FeedbackDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a0175

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 105
    iget-object v3, p0, Lakg;->a:Lcom/dianxinos/powermanager/feedback/FeedbackDialog;

    invoke-static {v3, v0}, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->a(Lcom/dianxinos/powermanager/feedback/FeedbackDialog;Ljava/lang/String;)V

    .line 106
    iget-object v3, p0, Lakg;->a:Lcom/dianxinos/powermanager/feedback/FeedbackDialog;

    invoke-static {v3, v1}, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->b(Lcom/dianxinos/powermanager/feedback/FeedbackDialog;Ljava/lang/String;)V

    .line 107
    iget-object v3, p0, Lakg;->a:Lcom/dianxinos/powermanager/feedback/FeedbackDialog;

    invoke-static {v3}, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->a(Lcom/dianxinos/powermanager/feedback/FeedbackDialog;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lakg;->a:Lcom/dianxinos/powermanager/feedback/FeedbackDialog;

    invoke-static {v4}, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->a(Lcom/dianxinos/powermanager/feedback/FeedbackDialog;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 110
    iget-object v0, p0, Lakg;->a:Lcom/dianxinos/powermanager/feedback/FeedbackDialog;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->dismiss()V

    .line 112
    :cond_0
    return-void
.end method
