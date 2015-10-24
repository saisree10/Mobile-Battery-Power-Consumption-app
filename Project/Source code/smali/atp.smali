.class Latp;
.super Ljava/lang/Thread;
.source "PowerUsageStats.java"


# instance fields
.field final synthetic a:Lato;


# direct methods
.method constructor <init>(Lato;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Latp;->a:Lato;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 237
    iget-object v0, p0, Latp;->a:Lato;

    invoke-static {v0}, Lato;->a(Lato;)V

    .line 238
    iget-object v0, p0, Latp;->a:Lato;

    invoke-static {v0}, Lato;->b(Lato;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 239
    :try_start_0
    iget-object v0, p0, Latp;->a:Lato;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lato;->a(Lato;Z)Z

    .line 240
    monitor-exit v1

    .line 241
    return-void

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
