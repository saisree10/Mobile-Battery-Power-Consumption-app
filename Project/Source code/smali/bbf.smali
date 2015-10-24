.class Lbbf;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Lbbe;


# direct methods
.method constructor <init>(Lbbe;)V
    .locals 0
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lbbf;->a:Lbbe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 274
    iget-object v1, p0, Lbbf;->a:Lbbe;

    monitor-enter v1

    .line 275
    :try_start_0
    iget-object v0, p0, Lbbf;->a:Lbbe;

    invoke-static {v0}, Lbbe;->a(Lbbe;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 276
    monitor-exit v1

    .line 284
    :goto_0
    return-object v3

    .line 278
    :cond_0
    iget-object v0, p0, Lbbf;->a:Lbbe;

    invoke-static {v0}, Lbbe;->b(Lbbe;)V

    .line 279
    iget-object v0, p0, Lbbf;->a:Lbbe;

    invoke-static {v0}, Lbbe;->c(Lbbe;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lbbf;->a:Lbbe;

    invoke-static {v0}, Lbbe;->d(Lbbe;)V

    .line 281
    iget-object v0, p0, Lbbf;->a:Lbbe;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lbbe;->a(Lbbe;I)I

    .line 283
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lbbf;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
