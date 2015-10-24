.class Lwo;
.super Ljava/lang/Object;
.source "AppsMonitor.java"

# interfaces
.implements Lxx;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lxn;

.field final synthetic f:Lxn;

.field final synthetic g:Lxq;

.field final synthetic h:Lxq;

.field final synthetic i:I

.field final synthetic j:Lwm;


# direct methods
.method constructor <init>(Lwm;ZLjava/lang/String;ZLjava/lang/String;Lxn;Lxn;Lxq;Lxq;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lwo;->j:Lwm;

    iput-boolean p2, p0, Lwo;->a:Z

    iput-object p3, p0, Lwo;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lwo;->c:Z

    iput-object p5, p0, Lwo;->d:Ljava/lang/String;

    iput-object p6, p0, Lwo;->e:Lxn;

    iput-object p7, p0, Lwo;->f:Lxn;

    iput-object p8, p0, Lwo;->g:Lxq;

    iput-object p9, p0, Lwo;->h:Lxq;

    iput p10, p0, Lwo;->i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 411
    invoke-static {}, Lxc;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lwo;->j:Lwm;

    invoke-static {v0}, Lwm;->g(Lwm;)Lws;

    move-result-object v2

    iget-boolean v0, p0, Lwo;->a:Z

    if-eqz v0, :cond_4

    move-object v0, v1

    :goto_0
    iget-boolean v3, p0, Lwo;->c:Z

    if-eqz v3, :cond_5

    :goto_1
    iget-object v3, p0, Lwo;->j:Lwm;

    invoke-static {v3}, Lwm;->f(Lwm;)Z

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Lws;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 418
    :cond_0
    iget-object v0, p0, Lwo;->e:Lxn;

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lwo;->j:Lwm;

    invoke-static {v0}, Lwm;->g(Lwm;)Lws;

    move-result-object v0

    iget-object v1, p0, Lwo;->e:Lxn;

    invoke-virtual {v0, v1}, Lws;->b(Lxn;)V

    .line 421
    iget-object v0, p0, Lwo;->j:Lwm;

    invoke-static {v0}, Lwm;->g(Lwm;)Lws;

    move-result-object v0

    iget-object v1, p0, Lwo;->e:Lxn;

    invoke-virtual {v0, v1}, Lws;->c(Lxn;)V

    .line 423
    :cond_1
    iget-object v0, p0, Lwo;->f:Lxn;

    if-eqz v0, :cond_2

    .line 425
    iget-object v0, p0, Lwo;->j:Lwm;

    invoke-static {v0}, Lwm;->g(Lwm;)Lws;

    move-result-object v0

    iget-object v1, p0, Lwo;->f:Lxn;

    invoke-virtual {v0, v1}, Lws;->a(Lxn;)V

    .line 429
    :cond_2
    iget-object v0, p0, Lwo;->g:Lxq;

    if-eqz v0, :cond_6

    .line 431
    iget-object v0, p0, Lwo;->j:Lwm;

    invoke-static {v0}, Lwm;->g(Lwm;)Lws;

    move-result-object v0

    iget-object v1, p0, Lwo;->g:Lxq;

    invoke-virtual {v0, v1}, Lws;->b(Lxq;)V

    .line 432
    iget-object v0, p0, Lwo;->j:Lwm;

    invoke-static {v0}, Lwm;->g(Lwm;)Lws;

    move-result-object v0

    iget-object v1, p0, Lwo;->g:Lxq;

    invoke-virtual {v0, v1}, Lws;->c(Lxq;)V

    .line 436
    :goto_2
    iget-object v0, p0, Lwo;->h:Lxq;

    if-eqz v0, :cond_7

    .line 438
    iget-object v0, p0, Lwo;->j:Lwm;

    invoke-static {v0}, Lwm;->g(Lwm;)Lws;

    move-result-object v0

    iget-object v1, p0, Lwo;->h:Lxq;

    invoke-virtual {v0, v1}, Lws;->a(Lxq;)V

    .line 444
    :goto_3
    iget v0, p0, Lwo;->i:I

    if-lez v0, :cond_3

    .line 445
    iget-object v0, p0, Lwo;->j:Lwm;

    invoke-static {v0}, Lwm;->g(Lwm;)Lws;

    move-result-object v0

    iget-object v1, p0, Lwo;->d:Ljava/lang/String;

    iget v2, p0, Lwo;->i:I

    invoke-virtual {v0, v1, v2}, Lws;->a(Ljava/lang/String;I)V

    .line 447
    :cond_3
    return-void

    .line 412
    :cond_4
    iget-object v0, p0, Lwo;->b:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lwo;->d:Ljava/lang/String;

    goto :goto_1

    .line 434
    :cond_6
    const-string v0, "No old power snap for update."

    invoke-static {v0}, Lwm;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 440
    :cond_7
    const-string v0, "No new power snap for update."

    invoke-static {v0}, Lwm;->a(Ljava/lang/String;)V

    goto :goto_3
.end method
