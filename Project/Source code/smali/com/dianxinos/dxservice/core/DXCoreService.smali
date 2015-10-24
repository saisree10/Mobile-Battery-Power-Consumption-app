.class public Lcom/dianxinos/dxservice/core/DXCoreService;
.super Landroid/app/Service;
.source "DXCoreService.java"


# instance fields
.field final a:Landroid/os/Messenger;

.field private b:Landroid/content/Context;

.field private c:Lsm;

.field private d:Ltj;

.field private e:Lty;

.field private f:Lss;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 77
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lsd;

    invoke-static {}, Luf;->a()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lsd;-><init>(Lcom/dianxinos/dxservice/core/DXCoreService;Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/dianxinos/dxservice/core/DXCoreService;->a:Landroid/os/Messenger;

    return-void
.end method

.method public static synthetic a(Lcom/dianxinos/dxservice/core/DXCoreService;)Ltj;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/dianxinos/dxservice/core/DXCoreService;->d:Ltj;

    return-object v0
.end method

.method public static synthetic b(Lcom/dianxinos/dxservice/core/DXCoreService;)Lsm;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/dianxinos/dxservice/core/DXCoreService;->c:Lsm;

    return-object v0
.end method

.method public static synthetic c(Lcom/dianxinos/dxservice/core/DXCoreService;)Lty;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/dianxinos/dxservice/core/DXCoreService;->e:Lty;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter

    .prologue
    .line 81
    sget-boolean v0, Lud;->c:Z

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "stat.DXCoreService"

    const-string v1, "DXCoreSevice onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/dxservice/core/DXCoreService;->c:Lsm;

    invoke-virtual {v0}, Lsm;->a()V

    .line 85
    iget-object v0, p0, Lcom/dianxinos/dxservice/core/DXCoreService;->d:Ltj;

    invoke-virtual {v0}, Ltj;->a()V

    .line 86
    iget-object v0, p0, Lcom/dianxinos/dxservice/core/DXCoreService;->f:Lss;

    invoke-virtual {v0}, Lss;->a()V

    .line 87
    invoke-virtual {p0}, Lcom/dianxinos/dxservice/core/DXCoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lud;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/dianxinos/dxservice/core/DXCoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lsi;->a(Landroid/content/Context;)Lsi;

    move-result-object v0

    invoke-virtual {v0}, Lsi;->a()V

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/dxservice/core/DXCoreService;->a:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 95
    sget-boolean v0, Lud;->c:Z

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "stat.DXCoreService"

    const-string v1, "DXCoreSevice onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/dianxinos/dxservice/core/DXCoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/dxservice/core/DXCoreService;->b:Landroid/content/Context;

    .line 99
    new-instance v0, Lsm;

    iget-object v1, p0, Lcom/dianxinos/dxservice/core/DXCoreService;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lsm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dianxinos/dxservice/core/DXCoreService;->c:Lsm;

    .line 100
    new-instance v0, Ltj;

    iget-object v1, p0, Lcom/dianxinos/dxservice/core/DXCoreService;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Ltj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dianxinos/dxservice/core/DXCoreService;->d:Ltj;

    .line 101
    new-instance v0, Lss;

    iget-object v1, p0, Lcom/dianxinos/dxservice/core/DXCoreService;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lss;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dianxinos/dxservice/core/DXCoreService;->f:Lss;

    .line 102
    new-instance v0, Lty;

    iget-object v1, p0, Lcom/dianxinos/dxservice/core/DXCoreService;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lty;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dianxinos/dxservice/core/DXCoreService;->e:Lty;

    .line 103
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 107
    sget-boolean v0, Lud;->c:Z

    if-eqz v0, :cond_0

    .line 108
    const-string v0, "stat.DXCoreService"

    const-string v1, "DXCoreSevice onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/dxservice/core/DXCoreService;->d:Ltj;

    invoke-virtual {v0}, Ltj;->b()V

    .line 111
    iget-object v0, p0, Lcom/dianxinos/dxservice/core/DXCoreService;->c:Lsm;

    invoke-virtual {v0}, Lsm;->b()V

    .line 112
    iget-object v0, p0, Lcom/dianxinos/dxservice/core/DXCoreService;->f:Lss;

    invoke-virtual {v0}, Lss;->b()V

    .line 113
    return-void
.end method
