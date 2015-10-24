.class Laoc;
.super Ljava/lang/Object;
.source "CmsServerPullScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Laob;


# direct methods
.method constructor <init>(Laob;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Laoc;->a:Laob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const-wide/32 v11, 0x5265c00

    const-wide/32 v9, 0x36ee80

    const/4 v8, 0x1

    .line 64
    iget-object v0, p0, Laoc;->a:Laob;

    invoke-static {v0}, Laob;->a(Laob;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 65
    iget-object v1, p0, Laoc;->a:Laob;

    invoke-static {v1}, Laob;->a(Laob;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanz;

    .line 66
    iget-object v2, p0, Laoc;->a:Laob;

    invoke-static {v2}, Laob;->b(Laob;)Laoa;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoa;->a(Ljava/lang/String;)J

    move-result-wide v4

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 68
    cmp-long v2, v6, v4

    if-gez v2, :cond_1

    .line 69
    iget-object v0, p0, Laoc;->a:Laob;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pull after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-long v2, v4, v6

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/16 v4, 0x3c

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mins"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laob;->a(Laob;Ljava/lang/String;)V

    .line 99
    :cond_0
    return-void

    .line 72
    :cond_1
    iget-object v2, p0, Laoc;->a:Laob;

    invoke-static {v2}, Laob;->c(Laob;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lazx;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 73
    iget-object v0, p0, Laoc;->a:Laob;

    const-string v1, "pull failed caused by no network"

    invoke-static {v0, v1}, Laob;->a(Laob;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Laoc;->a:Laob;

    invoke-static {v0}, Laob;->c(Laob;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "msgbox"

    const-string v2, "mbnn"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v2, v4}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_0

    .line 85
    :cond_2
    const/4 v2, 0x0

    .line 87
    :try_start_0
    invoke-interface {v1}, Lanz;->a()Z

    move-result v2

    .line 88
    iget-object v1, p0, Laoc;->a:Laob;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pull "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Laob;->a(Laob;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    if-ne v2, v8, :cond_3

    .line 91
    iget-object v1, p0, Laoc;->a:Laob;

    invoke-static {v1}, Laob;->b(Laob;)Laoa;

    move-result-object v1

    add-long v4, v6, v11

    invoke-virtual {v1, v0, v4, v5}, Laoa;->a(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 94
    :cond_3
    iget-object v1, p0, Laoc;->a:Laob;

    invoke-static {v1}, Laob;->b(Laob;)Laoa;

    move-result-object v1

    add-long v4, v6, v9

    invoke-virtual {v1, v0, v4, v5}, Laoa;->a(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 90
    :catchall_0
    move-exception v1

    if-ne v2, v8, :cond_4

    .line 91
    iget-object v2, p0, Laoc;->a:Laob;

    invoke-static {v2}, Laob;->b(Laob;)Laoa;

    move-result-object v2

    add-long v3, v6, v11

    invoke-virtual {v2, v0, v3, v4}, Laoa;->a(Ljava/lang/String;J)V

    .line 94
    :goto_1
    throw v1

    :cond_4
    iget-object v2, p0, Laoc;->a:Laob;

    invoke-static {v2}, Laob;->b(Laob;)Laoa;

    move-result-object v2

    add-long v3, v6, v9

    invoke-virtual {v2, v0, v3, v4}, Laoa;->a(Ljava/lang/String;J)V

    goto :goto_1
.end method
