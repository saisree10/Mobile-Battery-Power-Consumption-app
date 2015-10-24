.class public Laki;
.super Ljava/lang/Object;
.source "FeedbackDialog.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/dianxinos/powermanager/feedback/FeedbackDialog;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/feedback/FeedbackDialog;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Laki;->b:Lcom/dianxinos/powermanager/feedback/FeedbackDialog;

    iput-object p2, p0, Laki;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 139
    check-cast p1, Landroid/widget/EditText;

    .line 140
    if-nez p2, :cond_0

    .line 141
    iget-object v0, p0, Laki;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
