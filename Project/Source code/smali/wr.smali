.class Lwr;
.super Ljava/lang/Object;
.source "AppsMonitor.java"

# interfaces
.implements Lxx;


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lxp;

.field final synthetic e:Lwm;


# direct methods
.method constructor <init>(Lwm;Ljava/util/HashMap;Ljava/lang/String;Ljava/util/List;Lxp;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 621
    iput-object p1, p0, Lwr;->e:Lwm;

    iput-object p2, p0, Lwr;->a:Ljava/util/HashMap;

    iput-object p3, p0, Lwr;->b:Ljava/lang/String;

    iput-object p4, p0, Lwr;->c:Ljava/util/List;

    iput-object p5, p0, Lwr;->d:Lxp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 625
    iget-object v0, p0, Lwr;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 626
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 627
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 628
    iget-object v3, p0, Lwr;->b:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lwr;->b:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 629
    iget-object v3, p0, Lwr;->e:Lwm;

    invoke-static {v3}, Lwm;->g(Lwm;)Lws;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lws;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 631
    :cond_0
    iget-object v3, p0, Lwr;->e:Lwm;

    invoke-static {v3}, Lwm;->g(Lwm;)Lws;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lws;->b(Ljava/lang/String;I)V

    goto :goto_0

    .line 636
    :cond_1
    iget-object v0, p0, Lwr;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 637
    iget-object v0, p0, Lwr;->e:Lwm;

    invoke-static {v0}, Lwm;->g(Lwm;)Lws;

    move-result-object v0

    iget-object v1, p0, Lwr;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lws;->b(Ljava/util/List;)V

    .line 641
    :cond_2
    iget-object v0, p0, Lwr;->d:Lxp;

    if-eqz v0, :cond_3

    .line 642
    iget-object v0, p0, Lwr;->e:Lwm;

    invoke-static {v0}, Lwm;->g(Lwm;)Lws;

    move-result-object v0

    iget-object v1, p0, Lwr;->d:Lxp;

    invoke-virtual {v0, v1}, Lws;->b(Lxp;)V

    .line 646
    :cond_3
    return-void
.end method
