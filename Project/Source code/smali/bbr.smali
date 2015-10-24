.class Lbbr;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Lbbq;


# direct methods
.method constructor <init>(Lbbq;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lbbr;->a:Lbbq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 166
    iget-object v1, p0, Lbbr;->a:Lbbq;

    monitor-enter v1

    .line 167
    :try_start_0
    iget-object v0, p0, Lbbr;->a:Lbbq;

    invoke-static {v0}, Lbbq;->a(Lbbq;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 168
    monitor-exit v1

    .line 176
    :goto_0
    return-object v3

    .line 170
    :cond_0
    iget-object v0, p0, Lbbr;->a:Lbbq;

    invoke-static {v0}, Lbbq;->b(Lbbq;)V

    .line 171
    iget-object v0, p0, Lbbr;->a:Lbbq;

    invoke-static {v0}, Lbbq;->c(Lbbq;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lbbr;->a:Lbbq;

    invoke-static {v0}, Lbbq;->d(Lbbq;)V

    .line 173
    iget-object v0, p0, Lbbr;->a:Lbbq;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lbbq;->a(Lbbq;I)I

    .line 175
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
    .line 164
    invoke-virtual {p0}, Lbbr;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
