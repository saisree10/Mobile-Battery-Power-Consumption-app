.class Lahg;
.super Ljava/lang/Object;
.source "AutoSyncCommand.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# instance fields
.field final synthetic a:Lahf;


# direct methods
.method constructor <init>(Lahf;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lahg;->a:Lahf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .locals 2
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lahg;->a:Lahf;

    invoke-static {v0}, Lahf;->a(Lahf;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lahh;

    invoke-direct {v1, p0}, Lahh;-><init>(Lahg;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    return-void
.end method
