.class Last;
.super Landroid/content/BroadcastReceiver;
.source "SmartSettingsMgr.java"


# instance fields
.field final synthetic a:Lass;


# direct methods
.method constructor <init>(Lass;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Last;->a:Lass;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 87
    const-string v0, "Hang up"

    invoke-static {v0}, Lass;->a(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Last;->a:Lass;

    iget-boolean v0, v0, Lass;->a:Z

    if-nez v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Last;->a:Lass;

    iget-object v1, p0, Last;->a:Lass;

    invoke-static {v1}, Lass;->a(Lass;)Lasv;

    move-result-object v1

    invoke-static {v0, v1}, Lass;->a(Lass;Lasv;)V

    .line 92
    iget-object v0, p0, Last;->a:Lass;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lass;->a:Z

    goto :goto_0
.end method
