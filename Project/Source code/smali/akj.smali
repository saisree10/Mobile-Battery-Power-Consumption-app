.class public Lakj;
.super Ljava/lang/Object;
.source "FeedbackDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/feedback/FeedbackDialog;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/feedback/FeedbackDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lakj;->a:Lcom/dianxinos/powermanager/feedback/FeedbackDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter

    .prologue
    .line 161
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lakj;->a:Lcom/dianxinos/powermanager/feedback/FeedbackDialog;

    invoke-static {v1}, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->h(Lcom/dianxinos/powermanager/feedback/FeedbackDialog;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 163
    return-void

    .line 162
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 152
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 157
    return-void
.end method
