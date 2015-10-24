.class public Laaz;
.super Ljava/lang/Thread;
.source "PowerMgrActivity.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/PowerMgrActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/PowerMgrActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Laaz;->a:Lcom/dianxinos/powermanager/PowerMgrActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x64

    const/4 v4, 0x1

    .line 97
    const-wide/16 v0, 0x0

    .line 98
    :goto_0
    iget-object v2, p0, Laaz;->a:Lcom/dianxinos/powermanager/PowerMgrActivity;

    invoke-static {v2}, Lcom/dianxinos/powermanager/PowerMgrActivity;->a(Lcom/dianxinos/powermanager/PowerMgrActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/dianxinos/powermanager/PowerMgrActivity;->a()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 99
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Laaz;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_1
    add-long/2addr v0, v5

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Laaz;->a:Lcom/dianxinos/powermanager/PowerMgrActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMgrActivity;->b(Lcom/dianxinos/powermanager/PowerMgrActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Laaz;->a:Lcom/dianxinos/powermanager/PowerMgrActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMgrActivity;->c(Lcom/dianxinos/powermanager/PowerMgrActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    iget-object v0, p0, Laaz;->a:Lcom/dianxinos/powermanager/PowerMgrActivity;

    invoke-static {v0, v4}, Lcom/dianxinos/powermanager/PowerMgrActivity;->a(Lcom/dianxinos/powermanager/PowerMgrActivity;Z)Z

    .line 104
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Laaz;->a:Lcom/dianxinos/powermanager/PowerMgrActivity;

    const-class v2, Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    iget-object v1, p0, Laaz;->a:Lcom/dianxinos/powermanager/PowerMgrActivity;

    invoke-virtual {v1, v0, v4}, Lcom/dianxinos/powermanager/PowerMgrActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 106
    iget-object v0, p0, Laaz;->a:Lcom/dianxinos/powermanager/PowerMgrActivity;

    invoke-static {v0}, Lmy;->a(Landroid/content/Context;)Lmy;

    move-result-object v0

    invoke-virtual {v0}, Lmy;->c()V

    .line 108
    :cond_1
    return-void

    .line 99
    :catch_0
    move-exception v2

    goto :goto_1
.end method
