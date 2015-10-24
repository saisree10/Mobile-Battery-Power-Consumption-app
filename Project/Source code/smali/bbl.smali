.class Lbbl;
.super Ljava/lang/Object;
.source "ImageCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbbk;


# direct methods
.method constructor <init>(Lbbk;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lbbl;->a:Lbbk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 53
    iget-object v0, p0, Lbbl;->a:Lbbk;

    invoke-static {v0}, Lbbk;->a(Lbbk;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 55
    :try_start_0
    iget-object v0, p0, Lbbl;->a:Lbbk;

    const-string v2, "init disk cache"

    invoke-static {v0, v2}, Lbbk;->a(Lbbk;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lbbl;->a:Lbbk;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lbbl;->a:Lbbk;

    invoke-static {v3}, Lbbk;->b(Lbbk;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "skinimage"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-wide/32 v5, 0x100000

    invoke-static {v2, v3, v4, v5, v6}, Lbbe;->a(Ljava/io/File;IIJ)Lbbe;

    move-result-object v2

    invoke-static {v0, v2}, Lbbk;->a(Lbbk;Lbbe;)Lbbe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    :try_start_1
    iget-object v0, p0, Lbbl;->a:Lbbk;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lbbk;->a:Z

    .line 64
    iget-object v0, p0, Lbbl;->a:Lbbk;

    invoke-static {v0}, Lbbk;->a(Lbbk;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 65
    monitor-exit v1

    .line 66
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    iget-object v2, p0, Lbbl;->a:Lbbk;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lbbk;->a(Lbbk;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
