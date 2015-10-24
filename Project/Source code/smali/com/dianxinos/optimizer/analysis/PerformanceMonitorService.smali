.class public Lcom/dianxinos/optimizer/analysis/PerformanceMonitorService;
.super Landroid/app/Service;
.source "PerformanceMonitorService.java"


# instance fields
.field private a:Lwm;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 38
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/optimizer/analysis/PerformanceMonitorService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 40
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 21
    new-instance v0, Lwm;

    invoke-direct {v0, p0}, Lwm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dianxinos/optimizer/analysis/PerformanceMonitorService;->a:Lwm;

    .line 22
    iget-object v0, p0, Lcom/dianxinos/optimizer/analysis/PerformanceMonitorService;->a:Lwm;

    invoke-virtual {v0}, Lwm;->a()V

    .line 23
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dianxinos/optimizer/analysis/PerformanceMonitorService;->a:Lwm;

    invoke-virtual {v0}, Lwm;->b()V

    .line 34
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 35
    return-void
.end method
