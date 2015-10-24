.class Lbbb;
.super Ljava/lang/Object;
.source "AsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lbba;


# direct methods
.method constructor <init>(Lbba;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lbbb;->b:Lbba;

    iput-object p2, p0, Lbbb;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 256
    :try_start_0
    iget-object v0, p0, Lbbb;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    iget-object v0, p0, Lbbb;->b:Lbba;

    invoke-virtual {v0}, Lbba;->a()V

    .line 260
    return-void

    .line 258
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lbbb;->b:Lbba;

    invoke-virtual {v1}, Lbba;->a()V

    throw v0
.end method
