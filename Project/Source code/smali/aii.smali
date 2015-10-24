.class Laii;
.super Landroid/content/BroadcastReceiver;
.source "WifiCommand.java"


# instance fields
.field final synthetic a:Laih;


# direct methods
.method constructor <init>(Laih;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Laii;->a:Laih;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    .line 65
    iget-object v0, p0, Laii;->a:Laih;

    iget-object v0, v0, Laih;->e:Lahq;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Laii;->a:Laih;

    invoke-virtual {v0}, Laih;->a()Z

    .line 67
    iget-object v0, p0, Laii;->a:Laih;

    iget-boolean v0, v0, Laih;->g:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 69
    :goto_0
    iget-object v1, p0, Laii;->a:Laih;

    invoke-static {v1}, Laih;->a(Laih;)I

    move-result v1

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Laii;->a:Laih;

    invoke-static {v1}, Laih;->a(Laih;)I

    move-result v1

    if-nez v1, :cond_2

    .line 77
    :cond_0
    :goto_1
    return-void

    .line 67
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 73
    :cond_2
    iget-object v1, p0, Laii;->a:Laih;

    iget-object v1, v1, Laih;->e:Lahq;

    iget-object v2, p0, Laii;->a:Laih;

    invoke-interface {v1, v2, v0, v0}, Lahq;->a(Lahp;II)V

    .line 75
    iget-object v0, p0, Laii;->a:Laih;

    iget-object v0, v0, Laih;->d:Landroid/content/Context;

    invoke-static {v0}, Lamp;->a(Landroid/content/Context;)Lamp;

    move-result-object v0

    invoke-virtual {v0, v3}, Lamp;->f(I)V

    goto :goto_1
.end method
