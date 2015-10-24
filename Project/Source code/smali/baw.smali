.class Lbaw;
.super Ljava/util/concurrent/FutureTask;
.source "AsyncTask.java"


# instance fields
.field final synthetic a:Lbat;


# direct methods
.method constructor <init>(Lbat;Ljava/util/concurrent/Callable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lbaw;->a:Lbat;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 3

    .prologue
    .line 321
    :try_start_0
    iget-object v0, p0, Lbaw;->a:Lbat;

    invoke-virtual {p0}, Lbaw;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lbat;->b(Lbat;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 330
    :goto_0
    return-void

    .line 322
    :catch_0
    move-exception v0

    .line 323
    const-string v1, "AsyncTask"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 324
    :catch_1
    move-exception v0

    .line 325
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "An error occured while executing doInBackground()"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 327
    :catch_2
    move-exception v0

    .line 328
    iget-object v0, p0, Lbaw;->a:Lbat;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbat;->b(Lbat;Ljava/lang/Object;)V

    goto :goto_0
.end method
