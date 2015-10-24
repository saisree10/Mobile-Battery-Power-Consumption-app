.class Lwp;
.super Ljava/lang/Object;
.source "AppsMonitor.java"

# interfaces
.implements Lxx;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lxn;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lwm;


# direct methods
.method constructor <init>(Lwm;ZLxn;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 486
    iput-object p1, p0, Lwp;->d:Lwm;

    iput-boolean p2, p0, Lwp;->a:Z

    iput-object p3, p0, Lwp;->b:Lxn;

    iput-object p4, p0, Lwp;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 489
    iget-boolean v0, p0, Lwp;->a:Z

    if-eqz v0, :cond_2

    .line 491
    iget-object v0, p0, Lwp;->b:Lxn;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lwp;->d:Lwm;

    invoke-static {v0}, Lwm;->g(Lwm;)Lws;

    move-result-object v0

    iget-object v1, p0, Lwp;->b:Lxn;

    invoke-virtual {v0, v1}, Lws;->a(Lxn;)V

    .line 494
    :cond_0
    iget-object v0, p0, Lwp;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 495
    iget-object v0, p0, Lwp;->d:Lwm;

    invoke-static {v0}, Lwm;->g(Lwm;)Lws;

    move-result-object v0

    iget-object v1, p0, Lwp;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lws;->a(Ljava/util/List;)V

    .line 506
    :cond_1
    :goto_0
    return-void

    .line 499
    :cond_2
    iget-object v0, p0, Lwp;->b:Lxn;

    if-eqz v0, :cond_3

    .line 500
    iget-object v0, p0, Lwp;->d:Lwm;

    invoke-static {v0}, Lwm;->g(Lwm;)Lws;

    move-result-object v0

    iget-object v1, p0, Lwp;->b:Lxn;

    invoke-virtual {v0, v1}, Lws;->b(Lxn;)V

    .line 502
    :cond_3
    iget-object v0, p0, Lwp;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 503
    iget-object v0, p0, Lwp;->d:Lwm;

    invoke-static {v0}, Lwm;->g(Lwm;)Lws;

    move-result-object v0

    iget-object v1, p0, Lwp;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lws;->b(Ljava/util/List;)V

    goto :goto_0
.end method
