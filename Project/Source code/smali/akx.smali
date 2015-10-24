.class public Lakx;
.super Ljava/lang/Object;
.source "GServiceManager.java"


# static fields
.field private static a:Lakx;

.field private static b:Ljava/util/ArrayList;

.field private static c:Laec;

.field private static d:Landroid/content/Context;


# instance fields
.field private e:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lakx;->b:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lakx;->e:Ljava/util/ArrayList;

    .line 30
    sput-object p1, Lakx;->d:Landroid/content/Context;

    .line 31
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lakx;
    .locals 3
    .parameter

    .prologue
    .line 34
    const-class v1, Lakx;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lakx;->a:Lakx;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lakx;

    invoke-direct {v0, p0}, Lakx;-><init>(Landroid/content/Context;)V

    sput-object v0, Lakx;->a:Lakx;

    .line 38
    new-instance v0, Laec;

    invoke-direct {v0, p0}, Laec;-><init>(Landroid/content/Context;)V

    sput-object v0, Lakx;->c:Laec;

    .line 39
    sget-object v0, Lakx;->b:Ljava/util/ArrayList;

    sget-object v2, Lakx;->c:Laec;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lakx;->a:Lakx;

    invoke-direct {v0}, Lakx;->f()V

    .line 50
    :cond_0
    sget-object v0, Lakx;->a:Lakx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 78
    sget-object v0, Lakx;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakp;

    .line 79
    invoke-interface {v0}, Lakp;->b()V

    goto :goto_0

    .line 81
    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 66
    invoke-virtual {p0}, Lakx;->b()Z

    move-result v1

    .line 67
    iget-object v0, p0, Lakx;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakq;

    .line 68
    invoke-interface {v0, v1}, Lakq;->a(Z)V

    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method

.method public a(Lakq;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lakx;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lakx;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    new-instance v0, Laej;

    sget-object v1, Lakx;->c:Laec;

    invoke-virtual {v1}, Laec;->g()Lcom/dianxinos/powermanager/billing/BillingService;

    move-result-object v1

    invoke-direct {v0, p1, p2, p3, v1}, Laej;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;Lcom/dianxinos/powermanager/billing/BillingService;)V

    .line 131
    sget-object v1, Lakx;->c:Laec;

    invoke-virtual {v1, p1, v0}, Laec;->a(Landroid/content/Context;Laej;)V

    .line 132
    return-void
.end method

.method public b(Lakq;)V
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lakx;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lakx;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 63
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 89
    sget-object v0, Lakx;->d:Landroid/content/Context;

    invoke-static {v0}, Lanx;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lakx;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move v0, v1

    .line 96
    :goto_0
    return v0

    .line 92
    :cond_1
    sget-object v0, Lakx;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakp;

    .line 93
    invoke-interface {v0}, Lakp;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 94
    goto :goto_0

    .line 96
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 100
    sget-object v0, Lakx;->d:Landroid/content/Context;

    invoke-static {v0}, Lanx;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lakx;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move v0, v1

    .line 107
    :goto_0
    return v0

    .line 103
    :cond_1
    sget-object v0, Lakx;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakp;

    .line 104
    invoke-interface {v0}, Lakp;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 105
    goto :goto_0

    .line 107
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 111
    sget-object v0, Lakx;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakp;

    .line 112
    invoke-interface {v0}, Lakp;->e()V

    goto :goto_0

    .line 113
    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 116
    sget-object v0, Lakx;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakp;

    .line 117
    invoke-interface {v0}, Lakp;->f()V

    goto :goto_0

    .line 118
    :cond_0
    return-void
.end method
