.class Luo;
.super Ljava/lang/Object;
.source "DXFBManager.java"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# instance fields
.field final synthetic a:Lun;


# direct methods
.method constructor <init>(Lun;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Luo;->a:Lun;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 99
    :try_start_0
    invoke-virtual {p2}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    const-string v1, ""

    invoke-static {v1, v0}, Lvt;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
