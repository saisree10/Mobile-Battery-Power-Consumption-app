.class Lgv;
.super Landroid/content/BroadcastReceiver;
.source "DelayClockService.java"


# instance fields
.field final synthetic a:Lgu;


# direct methods
.method constructor <init>(Lgu;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lgv;->a:Lgu;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, 0x1

    const-wide/16 v8, -0x1

    .line 27
    iget-object v2, p0, Lgv;->a:Lgu;

    invoke-static {v2}, Lgu;->a(Lgu;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 28
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v5, 0xea60

    div-long v5, v2, v5

    .line 31
    iget-object v2, p0, Lgv;->a:Lgu;

    invoke-static {v2}, Lgu;->b(Lgu;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v8, v9}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 32
    cmp-long v7, v2, v8

    if-eqz v7, :cond_0

    .line 33
    sub-long v2, v5, v2

    .line 34
    cmp-long v7, v2, v0

    if-gez v7, :cond_2

    .line 37
    :cond_0
    :goto_0
    iget-object v2, p0, Lgv;->a:Lgu;

    invoke-static {v2}, Lgu;->b(Lgu;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v5, v6}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 39
    iget-object v2, p0, Lgv;->a:Lgu;

    invoke-static {v2}, Lgu;->c(Lgu;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v8, v9}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 40
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-lez v5, :cond_1

    .line 41
    iget-object v5, p0, Lgv;->a:Lgu;

    invoke-static {v5}, Lgu;->c(Lgu;)Ljava/lang/String;

    move-result-object v5

    sub-long v0, v2, v0

    invoke-static {v4, v5, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 42
    :cond_1
    return-void

    :cond_2
    move-wide v0, v2

    goto :goto_0
.end method
