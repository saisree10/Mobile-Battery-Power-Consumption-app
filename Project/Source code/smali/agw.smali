.class public Lagw;
.super Lmc;
.source "CoinEventCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lmc;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    return-void
.end method

.method private c(Landroid/content/Context;Lcom/dianxinos/common/coins/CoinManager$RequestResult;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 41
    iget v0, p2, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->c:I

    packed-switch v0, :pswitch_data_0

    .line 48
    invoke-static {p1}, Lme;->h(Landroid/content/Context;)V

    .line 49
    invoke-static {p1}, Lcom/dianxinos/common/coins/CoinManager;->a(Landroid/content/Context;)Lcom/dianxinos/common/coins/CoinManager;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/dianxinos/common/coins/CoinManager;->a(I)V

    .line 51
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a02d3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dianxinos/powermanager/PowerMangerApplication;->a(II)V

    .line 54
    :goto_0
    return-void

    .line 43
    :pswitch_0
    invoke-static {p1}, Lme;->g(Landroid/content/Context;)V

    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method

.method private d(Landroid/content/Context;Lcom/dianxinos/common/coins/CoinManager$RequestResult;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x1000

    const v3, 0x7f0a02e7

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0xb

    .line 58
    iget v0, p2, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->c:I

    sparse-switch v0, :sswitch_data_0

    .line 139
    invoke-static {p1}, Lme;->b(Landroid/content/Context;)V

    .line 142
    :goto_0
    return-void

    .line 60
    :sswitch_0
    invoke-static {p1}, Lme;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 64
    :sswitch_1
    invoke-static {p1}, Lme;->a(Landroid/content/Context;)V

    .line 65
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    const-string v1, "From"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    invoke-static {p1, v6, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 72
    new-instance v1, Lao;

    invoke-direct {v1, p1}, Lao;-><init>(Landroid/content/Context;)V

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a02c9

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p2, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lao;->c(Ljava/lang/CharSequence;)Lao;

    move-result-object v1

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a02c9

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p2, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lao;->a(Ljava/lang/CharSequence;)Lao;

    move-result-object v1

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a004a

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lao;->b(Ljava/lang/CharSequence;)Lao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lao;->a(Landroid/app/PendingIntent;)Lao;

    move-result-object v0

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f02000e

    invoke-virtual {v0, v1}, Lao;->a(I)Lao;

    move-result-object v0

    invoke-virtual {v0, v7}, Lao;->a(Z)Lao;

    move-result-object v0

    invoke-virtual {v0}, Lao;->a()Landroid/app/Notification;

    move-result-object v1

    .line 83
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 85
    invoke-virtual {v0, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 92
    :sswitch_2
    invoke-static {p1}, Lme;->b(Landroid/content/Context;)V

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/PersonalCenterActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    const-string v1, "From"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    invoke-static {p1, v6, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 100
    new-instance v1, Lao;

    invoke-direct {v1, p1}, Lao;-><init>(Landroid/content/Context;)V

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lao;->a(Ljava/lang/CharSequence;)Lao;

    move-result-object v1

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lao;->c(Ljava/lang/CharSequence;)Lao;

    move-result-object v1

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a02e8

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lao;->b(Ljava/lang/CharSequence;)Lao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lao;->a(Landroid/app/PendingIntent;)Lao;

    move-result-object v0

    invoke-virtual {v0, v7}, Lao;->a(Z)Lao;

    move-result-object v0

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f02000e

    invoke-virtual {v0, v1}, Lao;->a(I)Lao;

    move-result-object v0

    invoke-virtual {v0}, Lao;->a()Landroid/app/Notification;

    move-result-object v1

    .line 109
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 111
    invoke-virtual {v0, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 115
    :sswitch_3
    invoke-static {p1}, Lme;->b(Landroid/content/Context;)V

    .line 116
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/PersonalCenterActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    const-string v1, "From"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    invoke-static {p1, v6, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 123
    new-instance v1, Lao;

    invoke-direct {v1, p1}, Lao;-><init>(Landroid/content/Context;)V

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lao;->a(Ljava/lang/CharSequence;)Lao;

    move-result-object v1

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lao;->c(Ljava/lang/CharSequence;)Lao;

    move-result-object v1

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a003b

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lao;->b(Ljava/lang/CharSequence;)Lao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lao;->a(Landroid/app/PendingIntent;)Lao;

    move-result-object v0

    invoke-virtual {v0, v7}, Lao;->a(Z)Lao;

    move-result-object v0

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f02000e

    invoke-virtual {v0, v1}, Lao;->a(I)Lao;

    move-result-object v0

    invoke-virtual {v0}, Lao;->a()Landroid/app/Notification;

    move-result-object v1

    .line 132
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 134
    invoke-virtual {v0, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 58
    :sswitch_data_0
    .sparse-switch
        -0x3 -> :sswitch_2
        -0x1 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x19a -> :sswitch_2
        0x19b -> :sswitch_3
        0x19c -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public b(Landroid/content/Context;Lcom/dianxinos/common/coins/CoinManager$RequestResult;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Action event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lagw;->a(Ljava/lang/String;)V

    .line 32
    const-string v0, "22"

    iget-object v1, p2, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    invoke-direct {p0, p1, p2}, Lagw;->d(Landroid/content/Context;Lcom/dianxinos/common/coins/CoinManager$RequestResult;)V

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    const-string v0, "11"

    iget-object v1, p2, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-direct {p0, p1, p2}, Lagw;->c(Landroid/content/Context;Lcom/dianxinos/common/coins/CoinManager$RequestResult;)V

    goto :goto_0
.end method
