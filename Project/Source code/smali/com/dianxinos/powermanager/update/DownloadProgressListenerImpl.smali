.class public Lcom/dianxinos/powermanager/update/DownloadProgressListenerImpl;
.super Ljava/lang/Object;
.source "DownloadProgressListenerImpl.java"

# interfaces
.implements Liz;


# instance fields
.field private a:Landroid/app/NotificationManager;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;I)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const v2, 0x7f0a0124

    const v1, 0x7f0a0120

    const/4 v7, 0x3

    const/4 v4, 0x0

    .line 137
    if-ne p2, v7, :cond_0

    .line 138
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    :goto_0
    const-string v1, "DownloadProgressListenerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download failed with error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lazt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 163
    invoke-static {p1, v4, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 165
    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a011f

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 166
    new-instance v3, Landroid/app/Notification;

    sget-object v4, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v4, 0x7f02000e

    const-wide/16 v5, 0x0

    invoke-direct {v3, v4, v2, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 167
    const/16 v4, 0x10

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 168
    invoke-virtual {v3, p1, v2, v0, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 170
    iget-object v0, p0, Lcom/dianxinos/powermanager/update/DownloadProgressListenerImpl;->a:Landroid/app/NotificationManager;

    invoke-virtual {v0, v7, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 171
    return-void

    .line 139
    :cond_0
    const/4 v0, 0x5

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 141
    :cond_1
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0122

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 142
    :cond_2
    const/4 v0, 0x6

    if-ne p2, v0, :cond_3

    .line 143
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0123

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 144
    :cond_3
    const/4 v0, 0x7

    if-ne p2, v0, :cond_4

    .line 145
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0121

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 146
    :cond_4
    const/16 v0, 0x9

    if-ne p2, v0, :cond_5

    .line 147
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 148
    :cond_5
    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    .line 149
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0125

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 150
    :cond_6
    const/16 v0, 0xa

    if-ne p2, v0, :cond_7

    .line 151
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 152
    :cond_7
    const/16 v0, 0x8

    if-ne p2, v0, :cond_8

    .line 153
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0126

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 155
    :cond_8
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private a(Landroid/content/Context;IZZI)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v9, 0x7f07021e

    const v5, 0x7f070018

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 77
    iget-object v0, p0, Lcom/dianxinos/powermanager/update/DownloadProgressListenerImpl;->a:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 78
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/dianxinos/powermanager/update/DownloadProgressListenerImpl;->a:Landroid/app/NotificationManager;

    .line 82
    :cond_0
    iput p2, p0, Lcom/dianxinos/powermanager/update/DownloadProgressListenerImpl;->b:I

    .line 85
    iget-object v0, p0, Lcom/dianxinos/powermanager/update/DownloadProgressListenerImpl;->a:Landroid/app/NotificationManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 87
    if-eqz p3, :cond_3

    .line 88
    if-eqz p4, :cond_2

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lka;->a(Landroid/content/Context;)Lka;

    move-result-object v0

    invoke-virtual {v0, v8}, Lka;->a(Ljl;)Z

    .line 93
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/update/DownloadProgressListenerImpl;->a:Landroid/app/NotificationManager;

    invoke-virtual {v0, v7}, Landroid/app/NotificationManager;->cancel(I)V

    .line 133
    :goto_1
    return-void

    .line 90
    :cond_2
    if-eq p5, v7, :cond_1

    .line 91
    invoke-direct {p0, p1, p5}, Lcom/dianxinos/powermanager/update/DownloadProgressListenerImpl;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 97
    :cond_3
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a004a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a011c

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 100
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/dianxinos/powermanager/update/DownloadActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 102
    const-string v2, "percent"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    new-instance v2, Landroid/widget/RemoteViews;

    const-string v3, "com.dianxinos.dxbs"

    sget-object v4, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v4, 0x7f030086

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 106
    sget-object v3, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v3, 0x7f070014

    sget-object v4, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v4, 0x7f02000d

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 108
    sget-object v3, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    invoke-virtual {v2, v5, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 109
    sget-object v3, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 110
    sget-object v3, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v3, 0x7f070092

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, p2, v6}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 111
    invoke-static {}, Lazf;->r()I

    move-result v3

    .line 112
    if-lez v3, :cond_4

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 114
    sget-object v4, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    invoke-virtual {v2, v5, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 115
    sget-object v4, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    invoke-virtual {v2, v9, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 118
    :cond_4
    const/high16 v3, 0x800

    invoke-static {p1, v6, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 121
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .line 122
    sget-object v4, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v4, 0x7f02000e

    iput v4, v3, Landroid/app/Notification;->icon:I

    .line 123
    const-wide/16 v4, 0x0

    iput-wide v4, v3, Landroid/app/Notification;->when:J

    .line 124
    const/4 v4, 0x2

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 125
    iput v6, v3, Landroid/app/Notification;->defaults:I

    .line 126
    iput-object v8, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 127
    iput-object v8, v3, Landroid/app/Notification;->vibrate:[J

    .line 128
    iput-object v2, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 129
    iput-object v1, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 130
    iput-object v0, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 132
    iget-object v0, p0, Lcom/dianxinos/powermanager/update/DownloadProgressListenerImpl;->a:Landroid/app/NotificationManager;

    invoke-virtual {v0, v7, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public a(Landroid/content/Context;JJ)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 51
    iget v2, p0, Lcom/dianxinos/powermanager/update/DownloadProgressListenerImpl;->b:I

    .line 52
    cmp-long v0, p4, v4

    if-lez v0, :cond_0

    cmp-long v0, p2, v4

    if-lez v0, :cond_0

    .line 53
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p2

    div-long/2addr v0, p4

    long-to-int v2, v0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    .line 55
    invoke-direct/range {v0 .. v5}, Lcom/dianxinos/powermanager/update/DownloadProgressListenerImpl;->a(Landroid/content/Context;IZZI)V

    .line 56
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;JJ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 37
    .line 38
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-lez v0, :cond_0

    .line 39
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p3

    div-long/2addr v0, p5

    long-to-int v2, v0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    .line 41
    invoke-direct/range {v0 .. v5}, Lcom/dianxinos/powermanager/update/DownloadProgressListenerImpl;->a(Landroid/content/Context;IZZI)V

    .line 42
    return-void

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;ZILjava/lang/String;I)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    const-string v0, "DownloadProgressListenerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download complete with result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget v2, p0, Lcom/dianxinos/powermanager/update/DownloadProgressListenerImpl;->b:I

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/dianxinos/powermanager/update/DownloadProgressListenerImpl;->a(Landroid/content/Context;IZZI)V

    .line 70
    const/4 v0, 0x2

    if-eq p6, v0, :cond_0

    .line 71
    invoke-static {}, Laxn;->e()V

    .line 73
    :cond_0
    return-void
.end method
