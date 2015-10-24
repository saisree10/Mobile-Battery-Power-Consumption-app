.class Laab;
.super Ljava/util/TimerTask;
.source "AutoCleanuper.java"


# instance fields
.field final synthetic a:Laaa;


# direct methods
.method constructor <init>(Laaa;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Laab;->a:Laaa;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Laab;->a:Laaa;

    invoke-static {v0}, Laaa;->a(Laaa;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.dianxinos.dxbs.action.RemainingTimeUpate"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 112
    return-void
.end method
