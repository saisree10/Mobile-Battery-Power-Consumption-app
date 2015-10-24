.class public Lse;
.super Ljava/lang/Object;
.source "DXCoreServiceInteractor.java"


# static fields
.field private static volatile g:Lse;


# instance fields
.field final a:Landroid/os/Messenger;

.field private b:Landroid/content/Context;

.field private c:Z

.field private d:Landroid/os/Messenger;

.field private e:Ljava/util/List;

.field private f:Z

.field private h:Landroid/content/ServiceConnection;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lsg;

    invoke-direct {v1, p0, v3}, Lsg;-><init>(Lse;Lsf;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lse;->a:Landroid/os/Messenger;

    .line 135
    new-instance v0, Lsf;

    invoke-direct {v0, p0}, Lsf;-><init>(Lse;)V

    iput-object v0, p0, Lse;->h:Landroid/content/ServiceConnection;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lse;->b:Landroid/content/Context;

    .line 50
    iput-boolean v2, p0, Lse;->c:Z

    .line 51
    iput-object v3, p0, Lse;->d:Landroid/os/Messenger;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lse;->e:Ljava/util/List;

    .line 53
    iput-boolean v2, p0, Lse;->f:Z

    .line 54
    invoke-virtual {p0}, Lse;->a()V

    .line 55
    return-void
.end method

.method static synthetic a(Lse;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lse;->d:Landroid/os/Messenger;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lse;
    .locals 2
    .parameter

    .prologue
    .line 39
    const-class v1, Lse;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Lse;->g:Lse;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lse;

    invoke-direct {v0, p0}, Lse;-><init>(Landroid/content/Context;)V

    sput-object v0, Lse;->g:Lse;

    .line 43
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    sget-object v0, Lse;->g:Lse;

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Landroid/os/Message;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 118
    const/4 v0, 0x1

    .line 120
    :try_start_0
    iget-object v2, p0, Lse;->d:Landroid/os/Messenger;

    invoke-virtual {v2, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 132
    :goto_0
    return v0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_0

    .line 123
    const-string v2, "stat.DXServiceInterator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has RemoteException!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move v0, v1

    .line 131
    goto :goto_0

    .line 126
    :catch_1
    move-exception v0

    .line 127
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_1

    .line 128
    const-string v2, "stat.DXServiceInterator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has Exception!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move v0, v1

    .line 130
    goto :goto_0
.end method

.method static synthetic a(Lse;)Z
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-boolean v0, p0, Lse;->f:Z

    return v0
.end method

.method static synthetic a(Lse;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput-boolean p1, p0, Lse;->c:Z

    return p1
.end method

.method static synthetic b(Lse;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lse;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lse;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput-boolean p1, p0, Lse;->f:Z

    return p1
.end method

.method private c()V
    .locals 4

    .prologue
    .line 162
    iget-object v0, p0, Lse;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lse;->b:Landroid/content/Context;

    const-class v3, Lcom/dianxinos/dxservice/core/DXCoreService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lse;->h:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 163
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 70
    sget-boolean v0, Lud;->c:Z

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "stat.DXServiceInterator"

    const-string v1, "Start to bind!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    invoke-direct {p0}, Lse;->c()V

    .line 74
    return-void
.end method

.method public a(I)Z
    .locals 2
    .parameter

    .prologue
    .line 107
    iget-boolean v0, p0, Lse;->c:Z

    if-nez v0, :cond_1

    .line 108
    sget-boolean v0, Lud;->c:Z

    if-eqz v0, :cond_0

    .line 109
    const-string v0, "stat.DXServiceInterator"

    const-string v1, "Service haven\'t bind.The status change trigger will be ignored!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    .line 113
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 114
    invoke-direct {p0, v0}, Lse;->a(Landroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Ltf;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 81
    iget-boolean v1, p0, Lse;->c:Z

    if-nez v1, :cond_1

    .line 82
    sget-boolean v1, Lud;->c:Z

    if-eqz v1, :cond_0

    .line 83
    const-string v1, "stat.DXServiceInterator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service haven\'t bind.The event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ltf;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " will send again when service is bound!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    iget-object v1, p0, Lse;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :goto_0
    return v0

    .line 89
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 90
    invoke-virtual {p1}, Ltf;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 91
    invoke-direct {p0, v0}, Lse;->a(Landroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public b()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 95
    iget-boolean v1, p0, Lse;->c:Z

    if-nez v1, :cond_1

    .line 96
    sget-boolean v1, Lud;->c:Z

    if-eqz v1, :cond_0

    .line 97
    const-string v1, "stat.DXServiceInterator"

    const-string v2, "Service haven\'t bind.When is bound,it will send again!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    iput-boolean v0, p0, Lse;->f:Z

    .line 103
    :goto_0
    return v0

    .line 102
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 103
    invoke-direct {p0, v0}, Lse;->a(Landroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method
