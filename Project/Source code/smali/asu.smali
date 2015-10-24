.class Lasu;
.super Landroid/content/BroadcastReceiver;
.source "SmartSettingsMgr.java"


# instance fields
.field final synthetic a:Lass;


# direct methods
.method constructor <init>(Lass;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lasu;->a:Lass;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lasu;->a:Lass;

    iget-boolean v1, v1, Lass;->b:Z

    if-nez v1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    const-string v1, "com.dianxinos.dxbs.ALARMCHECKER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    iget-object v0, p0, Lasu;->a:Lass;

    iput-boolean v2, v0, Lass;->b:Z

    .line 107
    iget-object v0, p0, Lasu;->a:Lass;

    invoke-static {v0}, Lass;->b(Lass;)Larm;

    move-result-object v0

    invoke-virtual {v0}, Larm;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lasu;->a:Lass;

    invoke-static {v0}, Lass;->c(Lass;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00f4

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 110
    iget-object v0, p0, Lasu;->a:Lass;

    invoke-static {v0}, Lass;->b(Lass;)Larm;

    move-result-object v0

    invoke-virtual {v0}, Larm;->d()V

    .line 111
    iget-object v0, p0, Lasu;->a:Lass;

    invoke-static {v0}, Lass;->b(Lass;)Larm;

    move-result-object v0

    invoke-virtual {v0}, Larm;->c()V

    goto :goto_0

    .line 113
    :cond_2
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 114
    iget-object v0, p0, Lasu;->a:Lass;

    invoke-static {v0}, Lass;->b(Lass;)Larm;

    move-result-object v0

    invoke-virtual {v0}, Larm;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lasu;->a:Lass;

    invoke-static {v0}, Lass;->d(Lass;)V

    goto :goto_0

    .line 118
    :cond_3
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lasu;->a:Lass;

    invoke-static {v0}, Lass;->b(Lass;)Larm;

    move-result-object v0

    invoke-virtual {v0}, Larm;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lasu;->a:Lass;

    invoke-static {v0}, Lass;->d(Lass;)V

    goto :goto_0
.end method
