.class Lnb;
.super Lmn;
.source "SplashHelper.java"


# instance fields
.field final synthetic a:Lmy;

.field private b:Lnc;


# direct methods
.method public constructor <init>(Lmy;Lnc;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lnb;->a:Lmy;

    invoke-direct {p0}, Lmn;-><init>()V

    .line 329
    iput-object p2, p0, Lnb;->b:Lnc;

    .line 330
    return-void
.end method


# virtual methods
.method public a(IJ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 351
    const-string v0, "onDownloadFailed"

    invoke-static {v0}, Lmy;->b(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lnb;->a:Lmy;

    invoke-static {v0}, Lmy;->a(Lmy;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 353
    :try_start_0
    iget-object v0, p0, Lnb;->a:Lmy;

    invoke-static {v0}, Lmy;->a(Lmy;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lnb;->b:Lnc;

    iget-object v2, v2, Lnc;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 352
    monitor-exit v1

    .line 355
    return-void

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(J)V
    .locals 3
    .parameter

    .prologue
    .line 341
    const-string v0, "onDownloadSucceed"

    invoke-static {v0}, Lmy;->b(Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lnb;->a:Lmy;

    iget-object v1, p0, Lnb;->b:Lnc;

    invoke-static {v0, v1, p1, p2}, Lmy;->a(Lmy;Lnc;J)V

    .line 343
    iget-object v0, p0, Lnb;->a:Lmy;

    iget-object v1, p0, Lnb;->b:Lnc;

    invoke-virtual {v0, v1}, Lmy;->c(Lnc;)V

    .line 344
    iget-object v0, p0, Lnb;->a:Lmy;

    invoke-static {v0}, Lmy;->a(Lmy;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 345
    :try_start_0
    iget-object v0, p0, Lnb;->a:Lmy;

    invoke-static {v0}, Lmy;->a(Lmy;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lnb;->b:Lnc;

    iget-object v2, v2, Lnc;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 344
    monitor-exit v1

    .line 347
    return-void

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;IJJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 335
    const-string v0, "onDownloadProgressUpdate"

    invoke-static {v0}, Lmy;->b(Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lnb;->a:Lmy;

    iget-object v1, p0, Lnb;->b:Lnc;

    invoke-static {v0, v1, p3, p4}, Lmy;->a(Lmy;Lnc;J)V

    .line 337
    return-void
.end method

.method public b(J)V
    .locals 3
    .parameter

    .prologue
    .line 359
    const-string v0, "onDownloadCanceled"

    invoke-static {v0}, Lmy;->b(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lnb;->a:Lmy;

    invoke-static {v0}, Lmy;->a(Lmy;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 361
    :try_start_0
    iget-object v0, p0, Lnb;->a:Lmy;

    invoke-static {v0}, Lmy;->a(Lmy;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lnb;->b:Lnc;

    iget-object v2, v2, Lnc;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 360
    monitor-exit v1

    .line 363
    return-void

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
