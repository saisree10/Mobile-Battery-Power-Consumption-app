.class Laia;
.super Landroid/content/BroadcastReceiver;
.source "Only2GCommand.java"


# instance fields
.field final synthetic a:Lahz;


# direct methods
.method constructor <init>(Lahz;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Laia;->a:Lahz;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Laia;->a:Lahz;

    invoke-static {v0, p2}, Lahz;->a(Lahz;Landroid/content/Intent;)V

    .line 112
    return-void
.end method
