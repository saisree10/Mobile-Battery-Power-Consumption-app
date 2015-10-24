.class Lpz;
.super Ljava/lang/Object;
.source "ToolboxBaseListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lpv;


# direct methods
.method constructor <init>(Lpv;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lpz;->a:Lpv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 99
    sget v1, Loi;->toolbox_no_apps_refresh_button:I

    if-ne v0, v1, :cond_1

    .line 100
    iget-object v0, p0, Lpz;->a:Lpv;

    invoke-virtual {v0}, Lpv;->a()V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    sget v1, Loi;->nonetworkbar:I

    if-ne v0, v1, :cond_2

    .line 102
    iget-object v0, p0, Lpz;->a:Lpv;

    invoke-virtual {v0}, Lpv;->b()V

    goto :goto_0

    .line 103
    :cond_2
    const v1, 0x1020027

    if-ne v0, v1, :cond_3

    .line 104
    iget-object v0, p0, Lpz;->a:Lpv;

    iget-object v0, v0, Lpv;->a:Landroid/app/Activity;

    invoke-static {v0}, Lpf;->h(Landroid/content/Context;)V

    .line 105
    iget-object v0, p0, Lpz;->a:Lpv;

    invoke-static {v0}, Lpv;->b(Lpv;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 106
    :cond_3
    sget v1, Loi;->toolbox_balancebar:I

    if-ne v0, v1, :cond_4

    .line 107
    iget-object v0, p0, Lpz;->a:Lpv;

    invoke-virtual {v0}, Lpv;->f()V

    goto :goto_0

    .line 108
    :cond_4
    sget v1, Loi;->toolbox_balance_refresh:I

    if-ne v0, v1, :cond_0

    .line 109
    iget-object v0, p0, Lpz;->a:Lpv;

    invoke-virtual {v0}, Lpv;->g()V

    goto :goto_0
.end method
