.class Lna;
.super Ljava/lang/Object;
.source "SplashHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lmy;

.field private b:Lnc;

.field private c:Lnb;


# direct methods
.method public constructor <init>(Lmy;Lnc;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lna;->a:Lmy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-object p2, p0, Lna;->b:Lnc;

    .line 274
    new-instance v0, Lnb;

    iget-object v1, p0, Lna;->b:Lnc;

    invoke-direct {v0, p1, v1}, Lnb;-><init>(Lmy;Lnc;)V

    iput-object v0, p0, Lna;->c:Lnb;

    .line 275
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 280
    iget-object v0, p0, Lna;->a:Lmy;

    .line 281
    invoke-static {p2}, Lmq;->a(Landroid/os/IBinder;)Lmp;

    move-result-object v1

    .line 280
    iput-object v1, v0, Lmy;->a:Lmp;

    .line 284
    :try_start_0
    iget-object v0, p0, Lna;->a:Lmy;

    iget-object v0, v0, Lmy;->a:Lmp;

    iget-object v1, p0, Lna;->b:Lnc;

    iget-object v1, v1, Lnc;->e:Ljava/lang/String;

    iget-object v2, p0, Lna;->b:Lnc;

    iget-object v2, v2, Lnc;->f:Ljava/lang/String;

    const-wide/16 v3, 0x0

    .line 285
    iget-object v5, p0, Lna;->a:Lmy;

    iget-object v6, p0, Lna;->b:Lnc;

    invoke-virtual {v5, v6}, Lmy;->d(Lnc;)J

    move-result-wide v5

    iget-object v7, p0, Lna;->c:Lnb;

    .line 284
    invoke-interface/range {v0 .. v7}, Lmp;->a(Ljava/lang/String;Ljava/lang/String;JJLmm;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_0
    iget-object v0, p0, Lna;->a:Lmy;

    invoke-static {v0}, Lmy;->a(Lmy;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 292
    :try_start_1
    iget-object v0, p0, Lna;->a:Lmy;

    invoke-static {v0}, Lmy;->a(Lmy;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lna;->b:Lnc;

    iget-object v2, v2, Lnc;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    return-void

    .line 286
    :catch_0
    move-exception v0

    .line 288
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 291
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter

    .prologue
    .line 298
    iget-object v0, p0, Lna;->a:Lmy;

    const/4 v1, 0x0

    iput-object v1, v0, Lmy;->a:Lmp;

    .line 300
    :try_start_0
    iget-object v0, p0, Lna;->a:Lmy;

    iget-object v0, v0, Lmy;->a:Lmp;

    iget-object v1, p0, Lna;->b:Lnc;

    iget-object v1, v1, Lnc;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Lmp;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_0
    :try_start_1
    iget-object v0, p0, Lna;->a:Lmy;

    invoke-static {v0}, Lmy;->a(Lmy;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 307
    :try_start_2
    iget-object v0, p0, Lna;->a:Lmy;

    invoke-static {v0}, Lmy;->a(Lmy;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lna;->b:Lnc;

    iget-object v2, v2, Lnc;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 306
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 312
    :goto_1
    return-void

    .line 301
    :catch_0
    move-exception v0

    .line 303
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 306
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 309
    :catch_1
    move-exception v0

    goto :goto_1
.end method
