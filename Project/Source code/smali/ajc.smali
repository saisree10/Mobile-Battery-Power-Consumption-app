.class Lajc;
.super Landroid/os/Handler;
.source "CpuOpt.java"


# instance fields
.field final synthetic a:Laiy;


# direct methods
.method constructor <init>(Laiy;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lajc;->a:Laiy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 169
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Laiy;->j()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 170
    iget-object v0, p0, Lajc;->a:Laiy;

    invoke-virtual {v0}, Laiy;->e()V

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Laiy;->h()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 177
    iget-object v0, p0, Lajc;->a:Laiy;

    iget-object v0, v0, Laiy;->c:Landroid/content/Context;

    iget-object v1, p0, Lajc;->a:Laiy;

    iget-object v1, v1, Laiy;->c:Landroid/content/Context;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0191

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 184
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Laiy;->i()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 185
    iget-object v0, p0, Lajc;->a:Laiy;

    iget-object v0, v0, Laiy;->c:Landroid/content/Context;

    iget-object v1, p0, Lajc;->a:Laiy;

    iget-object v1, v1, Laiy;->c:Landroid/content/Context;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0194

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
