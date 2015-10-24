.class Lsq;
.super Ljava/lang/Object;
.source "AppInfoService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Landroid/content/Intent;

.field final synthetic b:Lsm;


# direct methods
.method public constructor <init>(Lsm;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lsq;->b:Lsm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p2, p0, Lsq;->a:Landroid/content/Intent;

    .line 317
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 323
    sget-boolean v2, Lud;->b:Z

    if-eqz v2, :cond_0

    .line 324
    const-string v2, "stat.AppInfoService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enter in handleAppAction!\nAction received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lsq;->a:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_0
    iget-object v2, p0, Lsq;->a:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 327
    const/4 v2, 0x0

    .line 330
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    iget-object v5, p0, Lsq;->a:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 331
    invoke-static {}, Lsm;->d()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 332
    sget-boolean v1, Lud;->b:Z

    if-eqz v1, :cond_1

    .line 333
    const-string v1, "stat.AppInfoService"

    const-string v3, "This add broadcast is Update action!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_1
    invoke-static {v0}, Lsm;->a(Z)Z

    move-object v1, v2

    .line 356
    :goto_0
    if-eqz v0, :cond_4

    .line 357
    sget-boolean v0, Lud;->b:Z

    if-eqz v0, :cond_2

    .line 358
    const-string v0, "stat.AppInfoService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lsr;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][actionType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lsr;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is to put into DB!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_2
    iget-object v0, p0, Lsq;->b:Lsm;

    invoke-static {v0, v1}, Lsm;->a(Lsm;Lsr;)Z

    move-result v0

    .line 361
    invoke-static {v1}, Lub;->a(Lsr;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 362
    invoke-static {v1}, Lub;->b(Lsr;)V

    .line 364
    :cond_3
    sget-boolean v1, Lud;->b:Z

    if-eqz v1, :cond_4

    .line 365
    const-string v1, "stat.AppInfoService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Put to db :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " and Now used DB size is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lsm;->e()Lsj;

    move-result-object v2

    invoke-virtual {v2}, Lsj;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Byte!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_4
    return-void

    .line 337
    :cond_5
    const-string v0, "install"

    invoke-static {v3, v0}, Lub;->a(Ljava/lang/String;Ljava/lang/String;)Lsr;

    move-result-object v0

    move v6, v1

    move-object v1, v0

    move v0, v6

    goto/16 :goto_0

    .line 339
    :cond_6
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    iget-object v5, p0, Lsq;->a:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 340
    const-string v2, "uninstall"

    invoke-static {v3, v2}, Lub;->a(Ljava/lang/String;Ljava/lang/String;)Lsr;

    move-result-object v2

    .line 343
    invoke-virtual {v2}, Lsr;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 344
    sget-boolean v3, Lud;->b:Z

    if-eqz v3, :cond_7

    .line 345
    const-string v3, "stat.AppInfoService"

    const-string v4, "This remove broadcast is Update action!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_7
    invoke-static {v1}, Lsm;->a(Z)Z

    move-object v1, v2

    goto/16 :goto_0

    .line 349
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lsr;->a(J)V

    move v0, v1

    move-object v1, v2

    goto/16 :goto_0

    .line 351
    :cond_9
    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    iget-object v5, p0, Lsq;->a:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 352
    const-string v2, "change"

    invoke-static {v3, v2}, Lub;->a(Ljava/lang/String;Ljava/lang/String;)Lsr;

    move-result-object v2

    .line 353
    invoke-static {v0}, Lsm;->a(Z)Z

    move v0, v1

    move-object v1, v2

    goto/16 :goto_0

    :cond_a
    move v0, v1

    move-object v1, v2

    goto/16 :goto_0
.end method
