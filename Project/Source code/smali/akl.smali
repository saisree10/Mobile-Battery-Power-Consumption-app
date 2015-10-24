.class public Lakl;
.super Ljava/lang/Object;
.source "HotQAActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/feedback/HotQAActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/feedback/HotQAActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lakl;->a:Lcom/dianxinos/powermanager/feedback/HotQAActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 59
    new-instance v0, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;

    iget-object v1, p0, Lakl;->a:Lcom/dianxinos/powermanager/feedback/HotQAActivity;

    invoke-direct {v0, v1}, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->show()V

    .line 60
    return-void
.end method
