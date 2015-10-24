.class Lcom/appsflyer/AppsFlyerTestActivity$Monitor;
.super Ljava/lang/Object;
.source "AppsFlyerTestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/appsflyer/AppsFlyerTestActivity;

.field private b:Ljava/lang/ref/WeakReference;


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 86
    .line 87
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v0, "HH:mm:ss SSS"

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerTestActivity$Monitor;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 90
    if-eqz v0, :cond_0

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerTestActivity$Monitor;->a:Lcom/appsflyer/AppsFlyerTestActivity;

    const v2, 0x7f050003

    invoke-virtual {v0, v2}, Lcom/appsflyer/AppsFlyerTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 92
    if-eqz v0, :cond_1

    .line 93
    :goto_0
    invoke-static {}, Lcom/appsflyer/DebugLogQueue;->a()Lcom/appsflyer/DebugLogQueue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appsflyer/DebugLogQueue;->b()Lcom/appsflyer/DebugLogQueue$Item;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-virtual {v2}, Lcom/appsflyer/DebugLogQueue$Item;->b()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/appsflyer/DebugLogQueue$Item;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    const-string v1, "AppsFlyerTestActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    :cond_0
    :goto_1
    return-void

    .line 99
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerTestActivity$Monitor;->a:Lcom/appsflyer/AppsFlyerTestActivity;

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerTestActivity;->access$100(Lcom/appsflyer/AppsFlyerTestActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
