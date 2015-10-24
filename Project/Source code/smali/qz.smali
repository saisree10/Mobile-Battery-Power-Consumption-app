.class Lqz;
.super Ljava/lang/Object;
.source "ToolboxTctbClickHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lqx;


# direct methods
.method constructor <init>(Lqx;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lqz;->a:Lqx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 123
    const-string v0, "ToolboxTctbClickHandler"

    const-string v1, "[WebView] Timeout TIMEOUT_START."

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lqz;->a:Lqx;

    invoke-static {v0}, Lqx;->a(Lqx;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lqz;->a:Lqx;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lqx;->a(Lqx;Z)Z

    .line 130
    iget-object v0, p0, Lqz;->a:Lqx;

    iget-object v0, v0, Lqx;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 131
    iget-object v0, p0, Lqz;->a:Lqx;

    invoke-static {v0}, Lqx;->b(Lqx;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    const-string v0, "ToolboxTctbClickHandler"

    const-string v1, "[WebView] StartRunnable canceled."

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lqz;->a:Lqx;

    iget-object v0, v0, Lqx;->c:Lqs;

    invoke-static {v0}, Lqs;->a(Lqs;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lqz;->a:Lqx;

    iget-object v1, v1, Lqx;->a:Lou;

    invoke-static {v0, v1}, Lop;->g(Landroid/content/Context;Lou;)V

    goto :goto_0

    .line 137
    :cond_1
    iget-object v0, p0, Lqz;->a:Lqx;

    iget-object v0, v0, Lqx;->c:Lqs;

    iget-object v1, p0, Lqz;->a:Lqx;

    iget-object v1, v1, Lqx;->a:Lou;

    iget-object v2, p0, Lqz;->a:Lqx;

    iget-object v2, v2, Lqx;->a:Lou;

    iget-object v2, v2, Lou;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lqs;->g(Lou;Ljava/lang/String;)V

    goto :goto_0
.end method
