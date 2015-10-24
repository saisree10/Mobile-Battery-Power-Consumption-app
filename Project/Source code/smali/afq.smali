.class public Lafq;
.super Landroid/content/BroadcastReceiver;
.source "NormalCharger.java"


# instance fields
.field final synthetic a:Lafp;


# direct methods
.method public constructor <init>(Lafp;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lafq;->a:Lafp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x67

    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 61
    const-string v1, "com.dianxinos.dxbs.HEALTHCHARGING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    iget-object v0, p0, Lafq;->a:Lafp;

    invoke-static {v0}, Lafp;->a(Lafp;)I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lafq;->a:Lafp;

    invoke-static {v0}, Lafp;->a(Lafp;)I

    move-result v0

    const/16 v1, 0x66

    if-ne v0, v1, :cond_2

    .line 64
    :cond_0
    iget-object v0, p0, Lafq;->a:Lafp;

    iget-object v1, p0, Lafq;->a:Lafp;

    invoke-static {v1}, Lafp;->b(Lafp;)Lacu;

    move-result-object v1

    invoke-virtual {v1}, Lacu;->c()I

    move-result v1

    invoke-static {v0, v1}, Lafp;->a(Lafp;I)I

    .line 65
    iget-object v0, p0, Lafq;->a:Lafp;

    invoke-static {v0}, Lafp;->c(Lafp;)Ladh;

    move-result-object v0

    iget-object v1, p0, Lafq;->a:Lafp;

    invoke-static {v1}, Lafp;->a(Lafp;)I

    move-result v1

    invoke-virtual {v0, v1}, Ladh;->d(I)V

    .line 66
    iget-object v0, p0, Lafq;->a:Lafp;

    iget-object v1, p0, Lafq;->a:Lafp;

    invoke-static {v1}, Lafp;->b(Lafp;)Lacu;

    move-result-object v1

    invoke-virtual {v1}, Lacu;->d()I

    move-result v1

    invoke-static {v0, v1}, Lafp;->b(Lafp;I)I

    .line 67
    iget-object v0, p0, Lafq;->a:Lafp;

    invoke-static {v0}, Lafp;->a(Lafp;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 68
    iget-object v1, p0, Lafq;->a:Lafp;

    iget-object v0, p0, Lafq;->a:Lafp;

    invoke-static {v0}, Lafp;->d(Lafp;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafg;

    iput-object v0, v1, Lafp;->a:Lafg;

    .line 69
    iget-object v0, p0, Lafq;->a:Lafp;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lafp;->c(Lafp;I)V

    .line 70
    iget-object v0, p0, Lafq;->a:Lafp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lafp;->b(Lafp;I)I

    .line 73
    :try_start_0
    iget-object v0, p0, Lafq;->a:Lafp;

    invoke-static {v0}, Lafp;->f(Lafp;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lafq;->a:Lafp;

    invoke-static {v1}, Lafp;->e(Lafp;)Lafq;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_1
    :goto_0
    iget-object v0, p0, Lafq;->a:Lafp;

    invoke-static {v0}, Lafp;->f(Lafp;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.dianxinos.dxbs.action.RemainingTimeUpate"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 80
    :cond_2
    return-void

    .line 74
    :catch_0
    move-exception v0

    goto :goto_0
.end method
