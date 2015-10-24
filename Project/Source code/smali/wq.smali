.class Lwq;
.super Ljava/lang/Object;
.source "AppsMonitor.java"

# interfaces
.implements Lxx;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lxq;

.field final synthetic c:Lxp;

.field final synthetic d:Lwm;


# direct methods
.method constructor <init>(Lwm;ZLxq;Lxp;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Lwq;->d:Lwm;

    iput-boolean p2, p0, Lwq;->a:Z

    iput-object p3, p0, Lwq;->b:Lxq;

    iput-object p4, p0, Lwq;->c:Lxp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 539
    iget-boolean v0, p0, Lwq;->a:Z

    if-eqz v0, :cond_1

    .line 541
    iget-object v0, p0, Lwq;->b:Lxq;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lwq;->d:Lwm;

    invoke-static {v0}, Lwm;->g(Lwm;)Lws;

    move-result-object v0

    iget-object v1, p0, Lwq;->b:Lxq;

    invoke-virtual {v0, v1}, Lws;->b(Lxq;)V

    .line 544
    :cond_0
    iget-object v0, p0, Lwq;->d:Lwm;

    invoke-static {v0}, Lwm;->g(Lwm;)Lws;

    move-result-object v0

    iget-object v1, p0, Lwq;->c:Lxp;

    invoke-virtual {v0, v1}, Lws;->b(Lxp;)V

    .line 552
    :goto_0
    return-void

    .line 547
    :cond_1
    iget-object v0, p0, Lwq;->b:Lxq;

    if-eqz v0, :cond_2

    .line 548
    iget-object v0, p0, Lwq;->d:Lwm;

    invoke-static {v0}, Lwm;->g(Lwm;)Lws;

    move-result-object v0

    iget-object v1, p0, Lwq;->b:Lxq;

    invoke-virtual {v0, v1}, Lws;->a(Lxq;)V

    .line 550
    :cond_2
    iget-object v0, p0, Lwq;->d:Lwm;

    invoke-static {v0}, Lwm;->g(Lwm;)Lws;

    move-result-object v0

    iget-object v1, p0, Lwq;->c:Lxp;

    invoke-virtual {v0, v1}, Lws;->a(Lxp;)V

    goto :goto_0
.end method
