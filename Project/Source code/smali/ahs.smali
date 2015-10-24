.class Lahs;
.super Landroid/content/BroadcastReceiver;
.source "GpsCommand.java"


# instance fields
.field final synthetic a:Lahr;


# direct methods
.method constructor <init>(Lahr;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lahs;->a:Lahr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lahs;->a:Lahr;

    iget-object v0, v0, Lahr;->e:Lahq;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lahs;->a:Lahr;

    invoke-virtual {v0}, Lahr;->a()Z

    .line 88
    iget-object v0, p0, Lahs;->a:Lahr;

    iget-boolean v0, v0, Lahr;->g:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 89
    :goto_0
    iget-object v1, p0, Lahs;->a:Lahr;

    iget-object v1, v1, Lahr;->e:Lahq;

    iget-object v2, p0, Lahs;->a:Lahr;

    invoke-interface {v1, v2, v0, v0}, Lahq;->a(Lahp;II)V

    .line 91
    :cond_0
    return-void

    .line 88
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
