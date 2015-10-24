.class Lawh;
.super Ljava/lang/Object;
.source "RateDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lawg;


# direct methods
.method constructor <init>(Lawg;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lawh;->a:Lawg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 31
    :try_start_0
    iget-object v0, p0, Lawh;->a:Lawg;

    invoke-static {v0}, Lawg;->a(Lawg;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lawh;->a:Lawg;

    invoke-static {v1}, Lawg;->a(Lawg;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lazz;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 32
    iget-object v0, p0, Lawh;->a:Lawg;

    invoke-static {v0}, Lawg;->a(Lawg;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbc;->a(Landroid/content/Context;)Lbc;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "go_rate"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lbc;->a(Landroid/content/Intent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    iget-object v0, p0, Lawh;->a:Lawg;

    invoke-virtual {v0}, Lawg;->dismiss()V

    .line 40
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    :try_start_1
    iget-object v0, p0, Lawh;->a:Lawg;

    invoke-static {v0}, Lawg;->a(Lawg;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a01bc

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    iget-object v0, p0, Lawh;->a:Lawg;

    invoke-virtual {v0}, Lawg;->dismiss()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lawh;->a:Lawg;

    invoke-virtual {v1}, Lawg;->dismiss()V

    throw v0
.end method
