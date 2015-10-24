.class public Labj;
.super Ljava/util/TimerTask;
.source "PowerMgrService.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/PowerMgrService;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/PowerMgrService;)V
    .locals 0
    .parameter

    .prologue
    .line 523
    iput-object p1, p0, Labj;->a:Lcom/dianxinos/powermanager/PowerMgrService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 526
    iget-object v0, p0, Labj;->a:Lcom/dianxinos/powermanager/PowerMgrService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/PowerMgrService;->a(Lcom/dianxinos/powermanager/PowerMgrService;Z)Z

    .line 527
    iget-object v0, p0, Labj;->a:Lcom/dianxinos/powermanager/PowerMgrService;

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMgrService;->j(Lcom/dianxinos/powermanager/PowerMgrService;)V

    .line 528
    return-void
.end method
