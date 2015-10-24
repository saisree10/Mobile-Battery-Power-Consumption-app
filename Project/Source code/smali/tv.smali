.class Ltv;
.super Landroid/content/BroadcastReceiver;
.source "HwInfoService.java"


# instance fields
.field final synthetic a:Lts;


# direct methods
.method constructor <init>(Lts;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Ltv;->a:Lts;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 131
    new-instance v0, Ltw;

    iget-object v1, p0, Ltv;->a:Lts;

    invoke-direct {v0, v1, p2}, Ltw;-><init>(Lts;Landroid/content/Intent;)V

    invoke-static {v0}, Luf;->a(Ljava/lang/Runnable;)Z

    .line 132
    return-void
.end method
