.class public Labm;
.super Landroid/content/BroadcastReceiver;
.source "PowerMgrTabActivity.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;


# direct methods
.method public constructor <init>(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Labm;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 219
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 220
    const-string v1, "com.dianxinos.dxbs.CLOSE_APP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    iget-object v0, p0, Labm;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->finish()V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    const-string v1, "com.dianxinos.dxbs.GOTO_TOOLBOX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    iget-object v0, p0, Labm;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    const-string v1, "tab_tag_mode"

    iget-object v2, p0, Labm;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v2}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->c(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)Lcom/dianxinos/powermanager/ui/InverseTabHost;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dianxinos/powermanager/ui/InverseTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->f(Lcom/dianxinos/powermanager/PowerMgrTabActivity;Z)Z

    .line 224
    iget-object v0, p0, Labm;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->h(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)V

    goto :goto_0

    .line 225
    :cond_2
    const-string v1, "goto_personal_center"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 226
    iget-object v0, p0, Labm;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    const-string v1, "lottery_result"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->a(Lcom/dianxinos/powermanager/PowerMgrTabActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 227
    iget-object v0, p0, Labm;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->i(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)V

    .line 228
    iget-object v0, p0, Labm;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->j(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)Lavi;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 229
    iget-object v0, p0, Labm;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->j(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)Lavi;

    move-result-object v0

    invoke-virtual {v0}, Lavi;->dismiss()V

    .line 231
    :cond_3
    iget-object v0, p0, Labm;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->k(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)V

    goto :goto_0

    .line 232
    :cond_4
    const-string v1, "back_from_play_login"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Labm;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->g(Lcom/dianxinos/powermanager/PowerMgrTabActivity;Z)Z

    .line 234
    iget-object v0, p0, Labm;->a:Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    const-string v1, "lottery_result"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->a(Lcom/dianxinos/powermanager/PowerMgrTabActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
