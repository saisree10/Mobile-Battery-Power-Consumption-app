.class Lsp;
.super Landroid/content/BroadcastReceiver;
.source "AppInfoService.java"


# instance fields
.field final synthetic a:Lsm;


# direct methods
.method constructor <init>(Lsm;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lsp;->a:Lsm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 160
    new-instance v0, Lsq;

    iget-object v1, p0, Lsp;->a:Lsm;

    invoke-direct {v0, v1, p2}, Lsq;-><init>(Lsm;Landroid/content/Intent;)V

    invoke-static {v0}, Luf;->a(Ljava/lang/Runnable;)Z

    .line 161
    return-void
.end method
