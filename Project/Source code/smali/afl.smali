.class public Lafl;
.super Landroid/content/BroadcastReceiver;
.source "HealthCharger.java"


# instance fields
.field final synthetic a:Lafk;


# direct methods
.method public constructor <init>(Lafk;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lafl;->a:Lafk;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x67

    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lafk;->a(Ljava/lang/String;)V

    .line 70
    const-string v1, "com.dianxinos.dxbs.HEALTHCHARGING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lafl;->a:Lafk;

    invoke-static {v0}, Lafk;->a(Lafk;)I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lafl;->a:Lafk;

    invoke-static {v0}, Lafk;->a(Lafk;)I

    move-result v0

    const/16 v1, 0x66

    if-ne v0, v1, :cond_2

    .line 73
    :cond_0
    iget-object v0, p0, Lafl;->a:Lafk;

    iget-object v1, p0, Lafl;->a:Lafk;

    invoke-static {v1}, Lafk;->b(Lafk;)Lacu;

    move-result-object v1

    invoke-virtual {v1}, Lacu;->c()I

    move-result v1

    invoke-static {v0, v1}, Lafk;->a(Lafk;I)I

    .line 74
    iget-object v0, p0, Lafl;->a:Lafk;

    invoke-static {v0}, Lafk;->c(Lafk;)Ladh;

    move-result-object v0

    iget-object v1, p0, Lafl;->a:Lafk;

    invoke-static {v1}, Lafk;->a(Lafk;)I

    move-result v1

    invoke-virtual {v0, v1}, Ladh;->d(I)V

    .line 75
    iget-object v0, p0, Lafl;->a:Lafk;

    iget-object v1, p0, Lafl;->a:Lafk;

    invoke-static {v1}, Lafk;->b(Lafk;)Lacu;

    move-result-object v1

    invoke-virtual {v1}, Lacu;->d()I

    move-result v1

    invoke-static {v0, v1}, Lafk;->b(Lafk;I)I

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lafl;->a:Lafk;

    invoke-static {v1}, Lafk;->a(Lafk;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " remain time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lafl;->a:Lafk;

    invoke-static {v1}, Lafk;->d(Lafk;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lafk;->a(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lafl;->a:Lafk;

    invoke-static {v0}, Lafk;->a(Lafk;)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 78
    iget-object v1, p0, Lafl;->a:Lafk;

    iget-object v0, p0, Lafl;->a:Lafk;

    invoke-static {v0}, Lafk;->e(Lafk;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafg;

    iput-object v0, v1, Lafk;->a:Lafg;

    .line 79
    iget-object v0, p0, Lafl;->a:Lafk;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lafk;->c(Lafk;I)V

    .line 80
    iget-object v0, p0, Lafl;->a:Lafk;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lafk;->b(Lafk;I)I

    .line 83
    iget-object v0, p0, Lafl;->a:Lafk;

    invoke-static {v0}, Lafk;->f(Lafk;)Lafs;

    move-result-object v0

    invoke-virtual {v0}, Lafs;->b()Lafu;

    move-result-object v0

    .line 84
    iget v1, v0, Lafu;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lafu;->e:I

    .line 85
    iget-object v1, p0, Lafl;->a:Lafk;

    invoke-static {v1}, Lafk;->f(Lafk;)Lafs;

    move-result-object v1

    invoke-virtual {v1, v0}, Lafs;->b(Lafu;)V

    .line 87
    :try_start_0
    iget-object v0, p0, Lafl;->a:Lafk;

    invoke-static {v0}, Lafk;->h(Lafk;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lafl;->a:Lafk;

    invoke-static {v1}, Lafk;->g(Lafk;)Lafl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :cond_1
    :goto_0
    iget-object v0, p0, Lafl;->a:Lafk;

    invoke-static {v0}, Lafk;->i(Lafk;)Laff;

    move-result-object v0

    invoke-virtual {v0}, Laff;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lafl;->a:Lafk;

    invoke-static {v0}, Lafk;->h(Lafk;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.dianxinos.dxbs.action.RemainingTimeUpate"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 97
    :cond_2
    return-void

    .line 88
    :catch_0
    move-exception v0

    goto :goto_0
.end method
