.class Laxk;
.super Ljava/lang/Object;
.source "MarketListDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Laxi;


# direct methods
.method constructor <init>(Laxi;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Laxk;->a:Laxi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Laxk;->a:Laxi;

    invoke-virtual {v0}, Laxi;->dismiss()V

    .line 113
    iget-object v0, p0, Laxk;->a:Laxi;

    invoke-static {v0}, Laxi;->a(Laxi;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Laxk;->a:Laxi;

    invoke-static {v0}, Laxi;->a(Laxi;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 115
    iget-object v0, p0, Laxk;->a:Laxi;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Laxi;->a(Laxi;Landroid/os/Handler;)Landroid/os/Handler;

    .line 117
    :cond_0
    iget-object v0, p0, Laxk;->a:Laxi;

    invoke-static {v0}, Laxi;->b(Laxi;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Laxn;->a(Landroid/app/Activity;)V

    .line 118
    return-void
.end method
