.class public Lcom/dianxinos/appupdate/DownloadService;
.super Landroid/app/Service;
.source "DownloadService.java"


# static fields
.field private static final e:Z


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:Z

.field protected d:Z

.field private f:Ljd;

.field private g:Liz;

.field private h:Liz;

.field private i:Ljava/lang/Object;

.field private final j:Ljb;

.field private k:Ljw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    sget-boolean v0, Lit;->a:Z

    sput-boolean v0, Lcom/dianxinos/appupdate/DownloadService;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/appupdate/DownloadService;->i:Ljava/lang/Object;

    .line 84
    new-instance v0, Ljb;

    invoke-direct {v0, p0}, Ljb;-><init>(Lcom/dianxinos/appupdate/DownloadService;)V

    iput-object v0, p0, Lcom/dianxinos/appupdate/DownloadService;->j:Ljb;

    .line 86
    iput-boolean v1, p0, Lcom/dianxinos/appupdate/DownloadService;->a:Z

    .line 88
    iput-boolean v1, p0, Lcom/dianxinos/appupdate/DownloadService;->b:Z

    .line 90
    iput-boolean v1, p0, Lcom/dianxinos/appupdate/DownloadService;->c:Z

    .line 92
    iput-boolean v1, p0, Lcom/dianxinos/appupdate/DownloadService;->d:Z

    .line 285
    new-instance v0, Lja;

    invoke-direct {v0, p0}, Lja;-><init>(Lcom/dianxinos/appupdate/DownloadService;)V

    iput-object v0, p0, Lcom/dianxinos/appupdate/DownloadService;->k:Ljw;

    return-void
.end method

.method public static synthetic a()Z
    .locals 1

    .prologue
    .line 20
    sget-boolean v0, Lcom/dianxinos/appupdate/DownloadService;->e:Z

    return v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 236
    sget-boolean v0, Lcom/dianxinos/appupdate/DownloadService;->e:Z

    if-eqz v0, :cond_0

    .line 237
    const-string v0, "DownloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canceling downlaod, tid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/dianxinos/appupdate/DownloadService;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/appupdate/DownloadService;->f:Ljd;

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, p0, Lcom/dianxinos/appupdate/DownloadService;->f:Ljd;

    invoke-virtual {v0}, Ljd;->a()V

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/appupdate/DownloadService;->f:Ljd;

    .line 244
    sget-boolean v0, Lcom/dianxinos/appupdate/DownloadService;->e:Z

    if-eqz v0, :cond_1

    .line 245
    const-string v0, "DownloadService"

    const-string v2, "Download canceled"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/dianxinos/appupdate/DownloadService;->stopSelf()V

    .line 253
    monitor-exit v1

    .line 254
    return-void

    .line 248
    :cond_2
    sget-boolean v0, Lcom/dianxinos/appupdate/DownloadService;->e:Z

    if-eqz v0, :cond_1

    .line 249
    const-string v0, "DownloadService"

    const-string v2, "No active download"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private c()Liz;
    .locals 4

    .prologue
    .line 257
    sget-boolean v0, Lcom/dianxinos/appupdate/DownloadService;->e:Z

    if-eqz v0, :cond_0

    .line 258
    const-string v0, "DownloadService"

    const-string v1, "Reflecting download progress listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/dianxinos/appupdate/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 262
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/dianxinos/appupdate/DownloadService;

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 265
    const/16 v0, 0x80

    :try_start_0
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 267
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 268
    const-string v1, "com.dianxinos.appupdate.DOWNLOAD_PROGRESS_LISTENER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_1

    .line 270
    const-class v1, Liz;

    invoke-static {v0, v1}, Lkj;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liz;

    .line 282
    :goto_0
    return-object v0

    .line 275
    :cond_1
    sget-boolean v0, Lcom/dianxinos/appupdate/DownloadService;->e:Z

    if-eqz v0, :cond_2

    .line 276
    const-string v0, "DownloadService"

    const-string v1, "Download progress listener not specified"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public a(Liz;)V
    .locals 2
    .parameter

    .prologue
    .line 212
    if-nez p1, :cond_0

    .line 221
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/dianxinos/appupdate/DownloadService;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 216
    :try_start_0
    iput-object p1, p0, Lcom/dianxinos/appupdate/DownloadService;->h:Liz;

    .line 217
    iget-object v0, p0, Lcom/dianxinos/appupdate/DownloadService;->f:Ljd;

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/dianxinos/appupdate/DownloadService;->f:Ljd;

    invoke-virtual {v0, p1}, Ljd;->a(Liz;)V

    .line 220
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Liz;)V
    .locals 2
    .parameter

    .prologue
    .line 224
    if-nez p1, :cond_0

    .line 233
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/dianxinos/appupdate/DownloadService;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 228
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/dianxinos/appupdate/DownloadService;->h:Liz;

    .line 229
    iget-object v0, p0, Lcom/dianxinos/appupdate/DownloadService;->f:Ljd;

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/dianxinos/appupdate/DownloadService;->f:Ljd;

    invoke-virtual {v0, p1}, Ljd;->b(Liz;)V

    .line 232
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/dianxinos/appupdate/DownloadService;->j:Ljb;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 97
    sget-boolean v0, Lcom/dianxinos/appupdate/DownloadService;->e:Z

    if-eqz v0, :cond_0

    .line 98
    const-string v0, "DownloadService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dianxinos/appupdate/DownloadService;->d:Z

    .line 101
    invoke-direct {p0}, Lcom/dianxinos/appupdate/DownloadService;->c()Liz;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/appupdate/DownloadService;->g:Liz;

    .line 102
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 203
    sget-boolean v0, Lcom/dianxinos/appupdate/DownloadService;->e:Z

    if-eqz v0, :cond_0

    .line 204
    const-string v0, "DownloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy, tid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    invoke-direct {p0}, Lcom/dianxinos/appupdate/DownloadService;->b()V

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dianxinos/appupdate/DownloadService;->c:Z

    .line 208
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 209
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, -0x1

    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 118
    invoke-super {p0, p1, p3}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 119
    iput-boolean v0, p0, Lcom/dianxinos/appupdate/DownloadService;->b:Z

    iput-boolean v0, p0, Lcom/dianxinos/appupdate/DownloadService;->a:Z

    .line 120
    if-eqz p1, :cond_1

    .line 121
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 122
    sget-boolean v2, Lcom/dianxinos/appupdate/DownloadService;->e:Z

    if-eqz v2, :cond_0

    .line 123
    const-string v2, "DownloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStartCommand, action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    const-string v2, "com.dianxinos.appupdate.intent.DOWNLOAD"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 126
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 127
    if-eqz v1, :cond_5

    .line 128
    iput-boolean v5, p0, Lcom/dianxinos/appupdate/DownloadService;->a:Z

    .line 129
    iget-object v2, p0, Lcom/dianxinos/appupdate/DownloadService;->i:Ljava/lang/Object;

    monitor-enter v2

    .line 130
    :try_start_0
    iget-object v3, p0, Lcom/dianxinos/appupdate/DownloadService;->f:Ljd;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/dianxinos/appupdate/DownloadService;->f:Ljd;

    invoke-virtual {v3}, Ljd;->getState()Ljava/lang/Thread$State;

    move-result-object v3

    sget-object v4, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    invoke-virtual {v3, v4}, Ljava/lang/Thread$State;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 132
    const-string v0, "DownloadService"

    const-string v1, "A previous download is still executing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    :goto_1
    return v0

    .line 135
    :cond_2
    :try_start_1
    new-instance v3, Liy;

    invoke-virtual {p0}, Lcom/dianxinos/appupdate/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/dianxinos/appupdate/DownloadService;->k:Ljw;

    invoke-direct {v3, v4, v5}, Liy;-><init>(Landroid/content/Context;Ljw;)V

    .line 137
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Liy;->a:Ljava/lang/String;

    .line 138
    const-string v1, "extra-filename"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Liy;->c:Ljava/lang/String;

    .line 140
    const/4 v1, 0x1

    iput-boolean v1, v3, Liy;->b:Z

    .line 141
    const-string v1, "extra-dest"

    const/4 v4, -0x1

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 142
    if-ne v1, v6, :cond_9

    .line 143
    const-string v1, "DownloadService"

    const-string v4, "Download destination not specified"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_2
    iput v0, v3, Liy;->e:I

    .line 148
    const-string v0, "extra-pri"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, v3, Liy;->m:I

    .line 150
    const-string v0, "extra-dspt"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Liy;->n:Ljava/lang/String;

    .line 152
    const-string v0, "extra-extra_info"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Liy;->o:Ljava/lang/String;

    .line 154
    const-string v0, "extra-checksum"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Liy;->l:Ljava/lang/String;

    .line 156
    const-string v0, "extra-file-size"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, v3, Liy;->j:J

    .line 158
    const-string v0, "extra-progress-enable"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 159
    new-instance v1, Ljd;

    invoke-virtual {p0}, Lcom/dianxinos/appupdate/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/dianxinos/appupdate/DownloadService;->k:Ljw;

    invoke-direct {v1, v4, v5, v3, v0}, Ljd;-><init>(Landroid/content/Context;Ljw;Liy;Z)V

    iput-object v1, p0, Lcom/dianxinos/appupdate/DownloadService;->f:Ljd;

    .line 162
    iget-object v0, p0, Lcom/dianxinos/appupdate/DownloadService;->f:Ljd;

    iget-object v1, p0, Lcom/dianxinos/appupdate/DownloadService;->g:Liz;

    invoke-virtual {v0, v1}, Ljd;->a(Liz;)V

    .line 164
    iget-object v0, p0, Lcom/dianxinos/appupdate/DownloadService;->h:Liz;

    if-eqz v0, :cond_3

    .line 165
    iget-object v0, p0, Lcom/dianxinos/appupdate/DownloadService;->f:Ljd;

    iget-object v1, p0, Lcom/dianxinos/appupdate/DownloadService;->h:Liz;

    invoke-virtual {v0, v1}, Ljd;->a(Liz;)V

    .line 172
    :cond_3
    iget-object v0, p0, Lcom/dianxinos/appupdate/DownloadService;->f:Ljd;

    invoke-virtual {v0}, Ljd;->start()V

    .line 173
    sget-boolean v0, Lcom/dianxinos/appupdate/DownloadService;->e:Z

    if-eqz v0, :cond_4

    .line 174
    const-string v0, "DownloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Download thread started, dest:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v3, Liy;->e:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", checksum:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v3, Liy;->l:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", total:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, v3, Liy;->j:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_4
    const/4 v0, 0x3

    monitor-exit v2

    goto/16 :goto_1

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 183
    :cond_5
    const-string v0, "DownloadService"

    const-string v1, "Receive start download command, but no uri specified"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 186
    :cond_6
    const-string v0, "com.dianxinos.appupdate.intent.CANCEL_DOWNLOAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 187
    sget-boolean v0, Lcom/dianxinos/appupdate/DownloadService;->e:Z

    if-eqz v0, :cond_7

    .line 188
    const-string v0, "DownloadService"

    const-string v1, "Canceling download action received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_7
    iput-boolean v5, p0, Lcom/dianxinos/appupdate/DownloadService;->b:Z

    .line 191
    invoke-direct {p0}, Lcom/dianxinos/appupdate/DownloadService;->b()V

    goto/16 :goto_0

    .line 193
    :cond_8
    sget-boolean v0, Lcom/dianxinos/appupdate/DownloadService;->e:Z

    if-eqz v0, :cond_1

    .line 194
    const-string v0, "DownloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto/16 :goto_2
.end method
