.class public Labh;
.super Ljava/util/TimerTask;
.source "PowerMgrService.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/PowerMgrService;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/PowerMgrService;)V
    .locals 0
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Labh;->a:Lcom/dianxinos/powermanager/PowerMgrService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 299
    iget-object v0, p0, Labh;->a:Lcom/dianxinos/powermanager/PowerMgrService;

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMgrService;->d(Lcom/dianxinos/powermanager/PowerMgrService;)Laaa;

    move-result-object v0

    const/16 v1, 0x190

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Laaa;->a(IZ)I

    .line 300
    return-void
.end method
