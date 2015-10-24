.class public Lakh;
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
    .line 115
    iput-object p1, p0, Lakh;->a:Lcom/dianxinos/powermanager/feedback/FeedbackDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lakh;->a:Lcom/dianxinos/powermanager/feedback/FeedbackDialog;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->a(Lcom/dianxinos/powermanager/feedback/FeedbackDialog;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lakh;->a:Lcom/dianxinos/powermanager/feedback/FeedbackDialog;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->b(Lcom/dianxinos/powermanager/feedback/FeedbackDialog;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lakh;->a:Lcom/dianxinos/powermanager/feedback/FeedbackDialog;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->dismiss()V

    .line 121
    return-void
.end method
