.class final Lbcp;
.super Lbca;
.source "TrustDefenderMobile.java"


# instance fields
.field final synthetic c:Lbco;


# direct methods
.method constructor <init>(Lbco;Lbco;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1240
    iput-object p1, p0, Lbcp;->c:Lbco;

    invoke-direct {p0, p2, p3}, Lbca;-><init>(Lbco;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1244
    iget-object v0, p0, Lbcp;->a:Lbco;

    invoke-static {v0}, Lbco;->a(Lbco;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1248
    :try_start_0
    invoke-static {}, Lbco;->e()Ljava/lang/String;

    .line 1249
    iget-object v0, p0, Lbcp;->a:Lbco;

    iget-object v1, p0, Lbcp;->c:Lbco;

    invoke-static {v1}, Lbco;->b(Lbco;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lbcp;->a:Lbco;

    invoke-static {v2}, Lbco;->c(Lbco;)Lbch;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lbco;->a(Lbco;Landroid/content/Context;Lbch;)V

    .line 1250
    invoke-static {}, Lbco;->e()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "status = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lbcp;->a:Lbco;

    invoke-virtual {v1}, Lbco;->b()Lbcq;

    move-result-object v1

    invoke-virtual {v1}, Lbcq;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1257
    :cond_0
    :goto_0
    iget-object v0, p0, Lbcp;->b:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_1

    .line 1259
    iget-object v0, p0, Lbcp;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1261
    :cond_1
    return-void

    .line 1254
    :catch_0
    move-exception v0

    invoke-static {}, Lbco;->e()Ljava/lang/String;

    goto :goto_0
.end method
