.class public Lafi;
.super Ljava/lang/Object;
.source "ChargingReminder.java"

# interfaces
.implements Ladc;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ladh;

.field private c:Lamb;

.field private d:Landroid/app/NotificationManager;

.field private e:Laff;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lafi;->a:Landroid/content/Context;

    .line 48
    iget-object v0, p0, Lafi;->a:Landroid/content/Context;

    invoke-static {v0}, Ladh;->a(Landroid/content/Context;)Ladh;

    move-result-object v0

    iput-object v0, p0, Lafi;->b:Ladh;

    .line 49
    iget-object v0, p0, Lafi;->a:Landroid/content/Context;

    invoke-static {v0}, Lamb;->a(Landroid/content/Context;)Lamb;

    move-result-object v0

    iput-object v0, p0, Lafi;->c:Lamb;

    .line 50
    iget-object v0, p0, Lafi;->a:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lafi;->d:Landroid/app/NotificationManager;

    .line 51
    invoke-static {p1}, Laff;->a(Landroid/content/Context;)Laff;

    move-result-object v0

    iput-object v0, p0, Lafi;->e:Laff;

    .line 52
    return-void
.end method

.method private a(I)Landroid/app/PendingIntent;
    .locals 4
    .parameter

    .prologue
    const/high16 v3, 0x1000

    .line 168
    const/4 v0, 0x0

    .line 169
    const/4 v1, 0x6

    if-ne p1, v1, :cond_1

    .line 170
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lafi;->a:Landroid/content/Context;

    const-class v2, Lcom/dianxinos/powermanager/AliveReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    iget-object v1, p0, Lafi;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 178
    :cond_0
    :goto_0
    return-object v0

    .line 173
    :cond_1
    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    .line 174
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lafi;->a:Landroid/content/Context;

    const-class v2, Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    const-string v1, "From"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 176
    iget-object v1, p0, Lafi;->a:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0
.end method

.method private a(II)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/16 v2, 0xa

    .line 183
    if-ge p1, v2, :cond_0

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    :goto_0
    if-ge p2, v2, :cond_1

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    :goto_1
    return-object v0

    .line 187
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 193
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x8

    .line 119
    const/4 v1, 0x0

    .line 120
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lafi;->c:Lamb;

    invoke-virtual {v0}, Lamb;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    if-ne p1, v3, :cond_2

    iget-object v0, p0, Lafi;->c:Lamb;

    invoke-virtual {v0}, Lamb;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    :cond_2
    iget-object v0, p0, Lafi;->a:Landroid/content/Context;

    invoke-static {v0}, Lbap;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 133
    iget-object v0, p0, Lafi;->a:Landroid/content/Context;

    invoke-static {v0}, Lbae;->b(Landroid/content/Context;)V

    .line 136
    :cond_3
    iget-object v0, p0, Lafi;->a:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 137
    if-ne p1, v3, :cond_5

    .line 138
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lafi;->c:Lamb;

    invoke-virtual {v0}, Lamb;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lafi;->a:Landroid/content/Context;

    invoke-static {v0}, Lzu;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lafi;->a:Landroid/content/Context;

    invoke-static {v0}, Lazy;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 140
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lafi;->a:Landroid/content/Context;

    const-class v3, Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 142
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 144
    const-string v1, "From"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    iget-object v1, p0, Lafi;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 146
    :cond_4
    iget-object v0, p0, Lafi;->a:Landroid/content/Context;

    invoke-static {v0}, Lazy;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    new-instance v0, Lauq;

    iget-object v1, p0, Lafi;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p3}, Lauq;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_5
    invoke-direct {p0, p1}, Lafi;->a(I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 154
    new-instance v2, Landroid/app/Notification;

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f02000e

    iget-object v4, p0, Lafi;->a:Landroid/content/Context;

    sget-object v5, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v5, 0x7f0a018a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 156
    iget-object v3, p0, Lafi;->a:Landroid/content/Context;

    invoke-virtual {v2, v3, p2, p3, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 157
    const/16 v0, 0x10

    iput v0, v2, Landroid/app/Notification;->flags:I

    .line 158
    iput-object v1, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 159
    iget-object v0, p0, Lafi;->d:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 161
    :try_start_0
    iget-object v0, p0, Lafi;->d:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 162
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Ladd;)V
    .locals 7
    .parameter

    .prologue
    const/16 v3, 0x67

    const/16 v2, 0x66

    const/16 v6, 0xc

    const/16 v5, 0x8

    const/4 v4, 0x6

    .line 59
    iget-object v0, p0, Lafi;->e:Laff;

    invoke-virtual {v0}, Laff;->e()I

    move-result v0

    .line 60
    iget-object v1, p0, Lafi;->b:Ladh;

    invoke-virtual {v1}, Ladh;->a()I

    move-result v1

    .line 61
    if-ne v0, v3, :cond_3

    if-eq v1, v3, :cond_3

    .line 64
    iget-object v1, p0, Lafi;->e:Laff;

    invoke-virtual {v1}, Laff;->f()Lafh;

    move-result-object v1

    instance-of v1, v1, Lafk;

    if-eqz v1, :cond_2

    .line 65
    iget-object v1, p0, Lafi;->a:Landroid/content/Context;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0187

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lafi;->a:Landroid/content/Context;

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a0188

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v1, v2}, Lafi;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_0
    :goto_0
    iget-object v1, p0, Lafi;->b:Ladh;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ladh;->a(J)V

    .line 75
    iget-object v1, p0, Lafi;->b:Ladh;

    invoke-virtual {v1, v0}, Ladh;->a(I)V

    .line 116
    :cond_1
    :goto_1
    return-void

    .line 68
    :cond_2
    iget-object v1, p0, Lafi;->e:Laff;

    invoke-virtual {v1}, Laff;->f()Lafh;

    move-result-object v1

    instance-of v1, v1, Lafp;

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lafi;->a:Landroid/content/Context;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0187

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lafi;->a:Landroid/content/Context;

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a0189

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v1, v2}, Lafi;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_3
    if-ne v0, v2, :cond_4

    if-eq v1, v2, :cond_4

    .line 80
    invoke-static {}, Lagj;->a()Lagj;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lagj;->a(ILadd;)V

    .line 81
    iget-object v1, p0, Lafi;->b:Ladh;

    invoke-virtual {v1, v0}, Ladh;->a(I)V

    goto :goto_1

    .line 84
    :cond_4
    iget-object v1, p0, Lafi;->b:Ladh;

    invoke-virtual {v1, v0}, Ladh;->a(I)V

    .line 86
    iget-object v0, p0, Lafi;->e:Laff;

    invoke-virtual {v0}, Laff;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 88
    iget-object v0, p0, Lafi;->d:Landroid/app/NotificationManager;

    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 89
    iget-object v0, p0, Lafi;->d:Landroid/app/NotificationManager;

    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1

    .line 93
    :cond_5
    iget-object v0, p0, Lafi;->e:Laff;

    invoke-virtual {v0}, Laff;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lafi;->a:Landroid/content/Context;

    invoke-static {v0}, Laaq;->a(Landroid/content/Context;)Laaq;

    move-result-object v0

    invoke-virtual {v0}, Laaq;->a()V

    .line 98
    iget v0, p1, Ladd;->j:I

    const/16 v1, 0x62

    if-gt v0, v1, :cond_1

    .line 100
    iget-object v0, p0, Lafi;->e:Laff;

    invoke-virtual {v0}, Laff;->f()Lafh;

    move-result-object v0

    invoke-virtual {v0}, Lafh;->c()I

    move-result v0

    .line 101
    if-eqz v0, :cond_1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 102
    div-int/lit8 v0, v0, 0x3c

    .line 104
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 106
    invoke-virtual {v1, v6, v0}, Ljava/util/Calendar;->add(II)V

    .line 107
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lafi;->a(II)Ljava/lang/String;

    move-result-object v0

    .line 110
    const/4 v1, 0x0

    invoke-direct {p0, v5, v1, v0}, Lafi;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
