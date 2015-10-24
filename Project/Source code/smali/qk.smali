.class Lqk;
.super Ljava/lang/Object;
.source "ToolboxClickHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lqi;


# direct methods
.method constructor <init>(Lqi;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lqk;->a:Lqi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 120
    const-string v0, "ToolboxClickHandler"

    const-string v1, "[WebView] Timeout TIMEOUT_START."

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lqk;->a:Lqi;

    invoke-static {v0}, Lqi;->a(Lqi;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lqk;->a:Lqi;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lqi;->a(Lqi;Z)Z

    .line 127
    iget-object v0, p0, Lqk;->a:Lqi;

    iget-object v0, v0, Lqi;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 128
    iget-object v0, p0, Lqk;->a:Lqi;

    invoke-static {v0}, Lqi;->b(Lqi;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    const-string v0, "ToolboxClickHandler"

    const-string v1, "[WebView] StartRunnable canceled."

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lqk;->a:Lqi;

    iget-object v0, v0, Lqi;->c:Lqb;

    invoke-static {v0}, Lqb;->a(Lqb;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lqk;->a:Lqi;

    iget-object v1, v1, Lqi;->a:Lou;

    invoke-static {v0, v1}, Lop;->g(Landroid/content/Context;Lou;)V

    goto :goto_0

    .line 134
    :cond_1
    iget-object v0, p0, Lqk;->a:Lqi;

    iget-object v0, v0, Lqi;->c:Lqb;

    iget-object v1, p0, Lqk;->a:Lqi;

    iget-object v1, v1, Lqi;->a:Lou;

    iget-object v2, p0, Lqk;->a:Lqi;

    iget-object v2, v2, Lqi;->a:Lou;

    iget-object v2, v2, Lou;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lqb;->b(Lou;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lqk;->a:Lqi;

    iget-object v0, v0, Lqi;->c:Lqb;

    invoke-virtual {v0}, Lqb;->c()V

    goto :goto_0
.end method
