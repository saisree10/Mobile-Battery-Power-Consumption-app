.class public Labg;
.super Ljava/util/TimerTask;
.source "PowerMgrService.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/PowerMgrService;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/PowerMgrService;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Labg;->a:Lcom/dianxinos/powermanager/PowerMgrService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Labg;->a:Lcom/dianxinos/powermanager/PowerMgrService;

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMgrService;->a(Lcom/dianxinos/powermanager/PowerMgrService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Labg;->a:Lcom/dianxinos/powermanager/PowerMgrService;

    invoke-static {v0}, Lbal;->a(Landroid/content/Context;)V

    goto :goto_0
.end method
