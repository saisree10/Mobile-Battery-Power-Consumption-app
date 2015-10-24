.class public Lhf;
.super Ljava/lang/Object;
.source "DownLoadController.java"


# instance fields
.field private a:Lhh;

.field private b:Ljava/io/FileOutputStream;

.field private c:Landroid/app/NotificationManager;

.field private d:Ljava/util/concurrent/Future;

.field private e:Landroid/content/Context;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Lhg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v1, p0, Lhf;->f:I

    .line 50
    invoke-static {}, Lhi;->b()I

    move-result v0

    iput v0, p0, Lhf;->g:I

    .line 52
    iput v2, p0, Lhf;->h:I

    .line 54
    const/4 v0, 0x2

    iput v0, p0, Lhf;->i:I

    .line 63
    iput-object p1, p0, Lhf;->e:Landroid/content/Context;

    .line 64
    new-instance v0, Lhh;

    invoke-direct {v0, p5, p3, p4}, Lhh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lhf;->a:Lhh;

    .line 65
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lhf;->c:Landroid/app/NotificationManager;

    .line 66
    iput p6, p0, Lhf;->f:I

    .line 67
    iget-object v3, p0, Lhf;->a:Lhh;

    iget-object v4, p0, Lhf;->e:Landroid/content/Context;

    iget-object v0, p0, Lhf;->a:Lhh;

    invoke-virtual {v0}, Lhh;->e()Ljava/lang/String;

    move-result-object v5

    iget v0, p0, Lhf;->f:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v4, p2, v5, v0}, Lhi;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lhh;->a(Ljava/lang/String;)V

    .line 68
    return-void

    :cond_0
    move v0, v2

    .line 67
    goto :goto_0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lhf;->b:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 150
    :try_start_0
    iget-object v0, p0, Lhf;->b:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private j()Z
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lhf;->f:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lhf;->h:I

    return v0
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput p1, p0, Lhf;->f:I

    .line 105
    return-void
.end method

.method protected a(JJ)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const v5, 0x7f0a003e

    .line 116
    const-string v0, "DownLoadController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownLoadStart file name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lhf;->a:Lhh;

    invoke-virtual {v2}, Lhh;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytesSoFar "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " total Bytes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lhf;->e:Landroid/content/Context;

    iget-object v0, p0, Lhf;->e:Landroid/content/Context;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lhf;->e:Landroid/content/Context;

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lhf;->e:Landroid/content/Context;

    sget-object v4, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lhf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 120
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 169
    invoke-direct {p0}, Lhf;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 173
    :cond_0
    new-instance v1, Landroid/content/Intent;

    if-eqz p5, :cond_2

    const-string v0, "com.dianxinos.dxap.INSTALL"

    :goto_1
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    if-eqz p5, :cond_4

    .line 177
    const/4 v0, 0x1

    if-eq v0, p6, :cond_1

    const/4 v0, 0x3

    if-eq v0, p6, :cond_1

    const/4 v0, 0x4

    if-ne v0, p6, :cond_3

    .line 180
    :cond_1
    iget-object v0, p0, Lhf;->c:Landroid/app/NotificationManager;

    iget v1, p0, Lhf;->g:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 173
    :cond_2
    const-string v0, "com.dianxinos.dxap.STOP_DOWNLOAD"

    goto :goto_1

    .line 184
    :cond_3
    const/4 v0, 0x2

    if-ne v0, p6, :cond_4

    .line 185
    const-string v0, "com.dianxinos.dxap.RETRY"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    :cond_4
    iget-object v0, p0, Lhf;->e:Landroid/content/Context;

    const-class v2, Lcom/dianxinos/acomponent/ui/DownLoadDialogActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 190
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 192
    iget-object v0, p0, Lhf;->a:Lhh;

    invoke-virtual {v0}, Lhh;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 193
    const-string v0, "extra_local_path"

    iget-object v2, p0, Lhf;->a:Lhh;

    invoke-virtual {v2}, Lhh;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    const-string v0, "extra_pkg_name"

    iget-object v2, p0, Lhf;->a:Lhh;

    invoke-virtual {v2}, Lhh;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const-string v0, "extra_version_code"

    iget-object v2, p0, Lhf;->a:Lhh;

    invoke-virtual {v2}, Lhh;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const/4 v0, 0x0

    const/high16 v2, 0x800

    invoke-static {p1, v0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 200
    new-instance v4, Landroid/app/Notification;

    if-eqz p5, :cond_6

    const v0, 0x1080082

    :goto_2
    invoke-direct {v4, v0, p2, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 204
    if-eqz p5, :cond_5

    .line 205
    iget v0, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v4, Landroid/app/Notification;->flags:I

    .line 206
    const-string v0, "DownLoadController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updating notification, done: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_5
    invoke-virtual {v4, p1, p3, p4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 210
    iget-object v0, p0, Lhf;->c:Landroid/app/NotificationManager;

    iget v1, p0, Lhf;->g:I

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 200
    :cond_6
    const v0, 0x1080081

    goto :goto_2
.end method

.method public a(Lhg;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lhf;->j:Lhg;

    .line 92
    return-void
.end method

.method public a(Ljava/util/concurrent/Future;)V
    .locals 1
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lhf;->d:Ljava/util/concurrent/Future;

    .line 100
    const/4 v0, 0x1

    iput v0, p0, Lhf;->h:I

    .line 101
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lhf;->i:I

    return v0
.end method

.method protected b(I)V
    .locals 7
    .parameter

    .prologue
    const v5, 0x7f0a003f

    .line 131
    const-string v0, "DownLoadController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownLoadCompleted file name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lhf;->a:Lhh;

    invoke-virtual {v2}, Lhh;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  resultStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lhf;->e:Landroid/content/Context;

    iget-object v0, p0, Lhf;->e:Landroid/content/Context;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lhf;->e:Landroid/content/Context;

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lhf;->e:Landroid/content/Context;

    sget-object v4, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lhf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 137
    iput p1, p0, Lhf;->i:I

    .line 138
    const/4 v0, 0x2

    iput v0, p0, Lhf;->h:I

    .line 140
    invoke-direct {p0}, Lhf;->i()V

    .line 142
    iget-object v0, p0, Lhf;->a:Lhh;

    invoke-virtual {v0}, Lhh;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lhf;->a:Lhh;

    invoke-virtual {v1}, Lhh;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhi;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lhf;->j:Lhg;

    invoke-interface {v1, v0, p1}, Lhg;->a(Ljava/lang/String;I)V

    .line 145
    return-void
.end method

.method protected b(JJ)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 123
    const-string v0, "DownLoadController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateProgress file name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lhf;->a:Lhh;

    invoke-virtual {v2}, Lhh;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytesSoFar "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " total Bytes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lhf;->e:Landroid/content/Context;

    iget-object v0, p0, Lhf;->e:Landroid/content/Context;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a003d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lhf;->a:Lhh;

    invoke-virtual {v0}, Lhh;->f()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lhf;->e:Landroid/content/Context;

    sget-object v4, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v4, 0x7f0a0040

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {v0, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, -0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lhf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 128
    return-void
.end method

.method public c()Ljava/io/FileOutputStream;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lhf;->b:Ljava/io/FileOutputStream;

    return-object v0
.end method

.method public d()V
    .locals 3

    .prologue
    .line 84
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lhf;->a:Lhh;

    invoke-virtual {v1}, Lhh;->f()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lhf;->b:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public e()Lhh;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lhf;->a:Lhh;

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lhf;->f:I

    return v0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lhf;->d:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 113
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    .line 158
    invoke-direct {p0}, Lhf;->i()V

    .line 159
    iget-object v0, p0, Lhf;->c:Landroid/app/NotificationManager;

    iget v1, p0, Lhf;->g:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 160
    const-string v0, "DownLoadController"

    const-string v1, " destroy download controller cancel notification"

    invoke-static {v0, v1}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method
