.class Laig;
.super Landroid/content/BroadcastReceiver;
.source "VibrateCommand.java"


# instance fields
.field final synthetic a:Laif;


# direct methods
.method constructor <init>(Laif;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Laig;->a:Laif;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Laig;->a:Laif;

    iget-object v0, v0, Laif;->e:Lahq;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Laig;->a:Laif;

    invoke-virtual {v0}, Laif;->i()V

    .line 86
    iget-object v0, p0, Laig;->a:Laif;

    iget-object v0, v0, Laif;->e:Lahq;

    iget-object v1, p0, Laig;->a:Laif;

    iget-object v2, p0, Laig;->a:Laif;

    invoke-static {v2}, Laif;->a(Laif;)I

    move-result v2

    iget-object v3, p0, Laig;->a:Laif;

    invoke-static {v3}, Laif;->b(Laif;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lahq;->a(Lahp;II)V

    .line 88
    :cond_0
    return-void
.end method
