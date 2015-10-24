.class Laxj;
.super Ljava/lang/Object;
.source "MarketListDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lkh;

.field final synthetic b:Laxi;


# direct methods
.method constructor <init>(Laxi;Lkh;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Laxj;->b:Laxi;

    iput-object p2, p0, Laxj;->a:Lkh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Laxj;->b:Laxi;

    invoke-virtual {v0}, Laxi;->dismiss()V

    .line 87
    iget-object v0, p0, Laxj;->b:Laxi;

    invoke-static {v0}, Laxi;->a(Laxi;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Laxj;->b:Laxi;

    invoke-static {v0}, Laxi;->a(Laxi;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 89
    iget-object v0, p0, Laxj;->b:Laxi;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Laxi;->a(Laxi;Landroid/os/Handler;)Landroid/os/Handler;

    .line 91
    :cond_0
    iget-object v0, p0, Laxj;->b:Laxi;

    invoke-static {v0}, Laxi;->b(Laxi;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Laxj;->a:Lkh;

    iget-object v1, v1, Lkh;->c:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 92
    return-void
.end method
