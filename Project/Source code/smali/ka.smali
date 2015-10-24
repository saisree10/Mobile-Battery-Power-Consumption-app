.class public Lka;
.super Ljava/lang/Object;
.source "UpdateManager.java"


# static fields
.field private static final a:Z

.field private static b:I

.field private static c:Lka;

.field private static x:Ljava/lang/String;


# instance fields
.field private A:Ljj;

.field private B:Ljava/lang/Boolean;

.field private C:Ljy;

.field private D:Landroid/content/ServiceConnection;

.field private E:Z

.field private d:Landroid/content/Context;

.field private e:J

.field private f:Z

.field private g:J

.field private h:I

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Ljr;

.field private l:Lkg;

.field private m:Ljava/lang/Thread;

.field private n:Ljava/lang/String;

.field private o:Lcom/dianxinos/appupdate/DownloadService;

.field private p:I

.field private q:Liz;

.field private r:Ljava/lang/Object;

.field private s:Ljava/lang/Object;

.field private t:Ljava/lang/Object;

.field private u:Ljz;

.field private v:Ljava/util/Map;

.field private w:I

.field private y:Z

.field private z:Landroid/net/ConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lit;->a:Z

    sput-boolean v0, Lka;->a:Z

    .line 131
    const/4 v0, 0x0

    sput v0, Lka;->b:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 230
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lka;-><init>(Landroid/content/Context;Ljr;)V

    .line 231
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljr;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lka;->e:J

    .line 138
    iput-boolean v4, p0, Lka;->f:Z

    .line 142
    iput v4, p0, Lka;->h:I

    .line 144
    iput-boolean v5, p0, Lka;->i:Z

    .line 168
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lka;->r:Ljava/lang/Object;

    .line 170
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lka;->s:Ljava/lang/Object;

    .line 172
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lka;->t:Ljava/lang/Object;

    .line 178
    iput v4, p0, Lka;->w:I

    .line 1157
    const/4 v0, 0x0

    iput-object v0, p0, Lka;->B:Ljava/lang/Boolean;

    .line 1342
    new-instance v0, Lke;

    invoke-direct {v0, p0}, Lke;-><init>(Lka;)V

    iput-object v0, p0, Lka;->C:Ljy;

    .line 1376
    new-instance v0, Lkf;

    invoke-direct {v0, p0}, Lkf;-><init>(Lka;)V

    iput-object v0, p0, Lka;->D:Landroid/content/ServiceConnection;

    .line 1640
    iput-boolean v5, p0, Lka;->E:Z

    .line 234
    iput-object p1, p0, Lka;->d:Landroid/content/Context;

    .line 235
    iget-object v0, p0, Lka;->d:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lka;->z:Landroid/net/ConnectivityManager;

    .line 236
    iget-object v0, p0, Lka;->d:Landroid/content/Context;

    iget-object v1, p0, Lka;->C:Ljy;

    invoke-static {v0, v1}, Ljj;->a(Landroid/content/Context;Ljy;)Ljj;

    move-result-object v0

    iput-object v0, p0, Lka;->A:Ljj;

    .line 237
    if-nez p2, :cond_2

    .line 238
    new-instance v0, Ljr;

    invoke-direct {v0}, Ljr;-><init>()V

    iput-object v0, p0, Lka;->k:Ljr;

    .line 239
    iget-object v0, p0, Lka;->k:Ljr;

    iget-object v1, p0, Lka;->C:Ljy;

    invoke-virtual {v0, v1}, Ljr;->a(Ljy;)V

    .line 243
    :goto_0
    invoke-direct {p0}, Lka;->s()V

    .line 245
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 247
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 249
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Lka;->p:I

    .line 250
    sget-boolean v0, Lka;->a:Z

    if-eqz v0, :cond_0

    .line 251
    const-string v0, "UpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current apk version code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lka;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :cond_0
    :goto_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 258
    sget-boolean v1, Lka;->a:Z

    if-eqz v1, :cond_1

    .line 259
    const-string v1, "UpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "my uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_1
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_3

    .line 262
    iput v6, p0, Lka;->w:I

    .line 263
    iput-boolean v4, p0, Lka;->y:Z

    .line 273
    :goto_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lka;->d:Landroid/content/Context;

    invoke-static {v1, v4}, Lix;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 275
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lka;->d:Landroid/content/Context;

    invoke-static {v2, v6}, Lix;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    invoke-direct {p0, v0}, Lka;->a(Ljava/io/File;)V

    .line 278
    invoke-direct {p0, v1}, Lka;->a(Ljava/io/File;)V

    .line 279
    return-void

    .line 241
    :cond_2
    iput-object p2, p0, Lka;->k:Ljr;

    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 265
    :cond_3
    iput v4, p0, Lka;->w:I

    .line 267
    iget-object v0, p0, Lka;->d:Landroid/content/Context;

    const-string v1, "pref-apk-des"

    invoke-static {v0, v1, v4}, Ljo;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lka;->w:I

    .line 268
    sget-boolean v0, Lka;->a:Z

    if-eqz v0, :cond_4

    .line 269
    const-string v0, "UpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get destionation from pref: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lka;->w:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_4
    iput-boolean v5, p0, Lka;->y:Z

    goto :goto_2
.end method

.method static synthetic a(Lka;Lcom/dianxinos/appupdate/DownloadService;)Lcom/dianxinos/appupdate/DownloadService;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lka;->o:Lcom/dianxinos/appupdate/DownloadService;

    return-object p1
.end method

.method static synthetic a(Lka;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lka;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lka;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lka;->n:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lka;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lka;->m:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic a(Lka;Ljz;)Ljz;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lka;->u:Ljz;

    return-object p1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lka;
    .locals 3
    .parameter

    .prologue
    .line 189
    const-class v1, Lka;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lka;->c:Lka;

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Lka;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lka;-><init>(Landroid/content/Context;)V

    sput-object v0, Lka;->c:Lka;

    .line 192
    :cond_0
    sget-object v0, Lka;->c:Lka;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lka;Lkg;)Lkg;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lka;->l:Lkg;

    return-object p1
.end method

.method private a(Ljava/io/File;)V
    .locals 11
    .parameter

    .prologue
    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lka;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-update_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 491
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 492
    new-instance v1, Lkc;

    invoke-direct {v1, p0, v0}, Lkc;-><init>(Lka;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 497
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 498
    if-eqz v1, :cond_3

    .line 499
    const/4 v0, 0x0

    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_3

    .line 500
    aget-object v4, v1, v0

    .line 501
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    sub-long v5, v2, v5

    .line 502
    sget-boolean v7, Lka;->a:Z

    if-eqz v7, :cond_0

    .line 503
    const-string v7, "UpdateManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", last modified:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_0
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-ltz v7, :cond_1

    const-wide/32 v7, 0xa4cb800

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    .line 508
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    .line 509
    sget-boolean v6, Lka;->a:Z

    if-eqz v6, :cond_2

    .line 510
    const-string v6, "UpdateManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Delete old updated file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " removed:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 517
    :cond_3
    return-void
.end method

.method private a(Ljava/lang/String;Ljv;IZ)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 520
    sget-boolean v0, Lka;->a:Z

    if-eqz v0, :cond_0

    .line 521
    const-string v0, "UpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Before performing download, url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 523
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljn;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_3

    .line 525
    :cond_1
    if-eqz p2, :cond_2

    .line 526
    invoke-interface {p2}, Ljv;->d()V

    .line 577
    :cond_2
    :goto_0
    return-void

    .line 530
    :cond_3
    if-eqz p2, :cond_4

    .line 531
    invoke-interface {p2}, Ljv;->c()V

    .line 533
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.dianxinos.appupdate.intent.DOWNLOAD"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lka;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 536
    const-string v0, "extra-progress-enable"

    invoke-virtual {v1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 537
    const-string v0, "extra-filename"

    iget-object v2, p0, Lka;->j:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_8

    .line 539
    const/4 v0, 0x5

    iput v0, p0, Lka;->w:I

    .line 540
    sget-boolean v0, Lka;->a:Z

    if-eqz v0, :cond_5

    .line 541
    const-string v0, "UpdateManager"

    const-string v2, "switch destination to data"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_5
    :goto_1
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_9

    .line 547
    const-string v0, "extra-download-retry"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 551
    :goto_2
    iget-object v0, p0, Lka;->d:Landroid/content/Context;

    const-string v2, "pref-apk-des"

    iget v3, p0, Lka;->w:I

    invoke-static {v0, v2, v3}, Ljo;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 552
    const-string v0, "extra-dest"

    iget v2, p0, Lka;->w:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 553
    iget-object v0, p0, Lka;->u:Ljz;

    iget-object v0, v0, Ljz;->e:Ljava/util/Map;

    const-string v2, "update-file-size"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 554
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 555
    const-string v0, "0"

    .line 557
    :cond_6
    const-string v2, "extra-file-size"

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 558
    const-string v0, "extra-checksum"

    iget-object v2, p0, Lka;->u:Ljz;

    iget-object v2, v2, Ljz;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    iget-object v0, p0, Lka;->u:Ljz;

    if-eqz v0, :cond_a

    .line 561
    const-string v0, "extra-dspt"

    iget-object v2, p0, Lka;->u:Ljz;

    iget-object v2, v2, Ljz;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 563
    const-string v0, "extra-pri"

    iget-object v2, p0, Lka;->u:Ljz;

    iget v2, v2, Ljz;->c:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 565
    const-string v0, "extra-extra_info"

    iget-object v2, p0, Lka;->u:Ljz;

    iget-object v2, v2, Ljz;->e:Ljava/util/Map;

    invoke-virtual {p0, v2}, Lka;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    :cond_7
    :goto_3
    iget-object v0, p0, Lka;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 573
    iget-object v0, p0, Lka;->d:Landroid/content/Context;

    const-string v2, "pref-last-down-url"

    invoke-static {v0, v2, p1}, Ljo;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Lka;->d:Landroid/content/Context;

    const-string v2, "pref-need-redownload"

    invoke-static {v0, v2, v4}, Ljo;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 575
    iget-object v0, p0, Lka;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 543
    :cond_8
    iget-boolean v0, p0, Lka;->y:Z

    if-eqz v0, :cond_5

    .line 544
    iput v3, p0, Lka;->w:I

    goto/16 :goto_1

    .line 549
    :cond_9
    const-string v0, "extra-download-retry"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_2

    .line 568
    :cond_a
    sget-boolean v0, Lka;->a:Z

    if-eqz v0, :cond_7

    .line 569
    const-string v0, "UpdateManager"

    const-string v2, "Lastest update info is null"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method static synthetic a(Lka;Ljava/lang/String;Ljv;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lka;->a(Ljava/lang/String;Ljv;IZ)V

    return-void
.end method

.method private a(Ljl;Lju;ZZ)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 648
    iget-object v6, p0, Lka;->t:Ljava/lang/Object;

    monitor-enter v6

    .line 649
    :try_start_0
    iget-object v0, p0, Lka;->m:Ljava/lang/Thread;

    invoke-static {v0}, Lkj;->a(Ljava/lang/Thread;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 650
    sget-boolean v0, Lka;->a:Z

    if-eqz v0, :cond_0

    .line 651
    const-string v0, "UpdateManager"

    const-string v1, "A previous install thread interrupted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :cond_0
    const/4 v0, 0x0

    monitor-exit v6

    .line 763
    :goto_0
    return v0

    .line 655
    :cond_1
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lkd;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lkd;-><init>(Lka;Ljl;Lju;ZZ)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InstallThread-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lka;->b:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lka;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v7, p0, Lka;->m:Ljava/lang/Thread;

    .line 762
    iget-object v0, p0, Lka;->m:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 763
    const/4 v0, 0x1

    monitor-exit v6

    goto :goto_0

    .line 764
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lka;Ljava/io/File;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lka;->b(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lka;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lka;->w()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lka;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lka;->c(Ljava/io/File;)V

    return-void
.end method

.method private b(Ljava/io/File;)Z
    .locals 5
    .parameter

    .prologue
    .line 768
    iget-object v0, p0, Lka;->d:Landroid/content/Context;

    invoke-static {v0}, Lis;->a(Landroid/content/Context;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 769
    if-nez v0, :cond_1

    .line 770
    const-string v0, "UpdateManager"

    const-string v1, "service not found, silent install failed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 772
    :cond_1
    const-string v1, "UpdateManager"

    const-string v2, "service be found"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 774
    const/4 v2, 0x2

    .line 776
    :try_start_0
    new-instance v3, Lki;

    invoke-direct {v3, p0}, Lki;-><init>(Lka;)V

    iget-object v4, p0, Lka;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v3, v2, v4}, Landroid/content/pm/IPackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    const/4 v0, 0x1

    goto :goto_1

    .line 779
    :catch_0
    move-exception v0

    .line 780
    sget-boolean v1, Lka;->a:Z

    if-eqz v1, :cond_0

    .line 781
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic c(Lka;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lka;->j:Ljava/lang/String;

    return-object v0
.end method

.method private c(Ljava/io/File;)V
    .locals 3
    .parameter

    .prologue
    .line 797
    sget-boolean v0, Lka;->a:Z

    if-eqz v0, :cond_0

    .line 798
    const-string v0, "UpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Installing via intent, file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 802
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 803
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 805
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 806
    const-string v1, "android.intent.extra.INSTALLER_PACKAGE_NAME"

    iget-object v2, p0, Lka;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 807
    iget-object v1, p0, Lka;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 808
    sget-boolean v0, Lka;->a:Z

    if-eqz v0, :cond_1

    .line 809
    const-string v0, "UpdateManager"

    const-string v1, "PackageInstaller called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    :cond_1
    return-void
.end method

.method static synthetic d(Lka;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lka;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter

    .prologue
    .line 46
    sput-object p0, Lka;->x:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lka;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lka;->t:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic f(Lka;)Landroid/content/ServiceConnection;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lka;->D:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic g(Lka;)Liz;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lka;->q:Liz;

    return-object v0
.end method

.method static synthetic h(Lka;)Lcom/dianxinos/appupdate/DownloadService;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lka;->o:Lcom/dianxinos/appupdate/DownloadService;

    return-object v0
.end method

.method static synthetic i(Lka;)I
    .locals 1
    .parameter

    .prologue
    .line 46
    iget v0, p0, Lka;->p:I

    return v0
.end method

.method static synthetic j(Lka;)Ljr;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lka;->k:Ljr;

    return-object v0
.end method

.method static synthetic k(Lka;)I
    .locals 1
    .parameter

    .prologue
    .line 46
    iget v0, p0, Lka;->h:I

    return v0
.end method

.method static synthetic l(Lka;)Ljz;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lka;->u:Ljz;

    return-object v0
.end method

.method static synthetic p()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lka;->a:Z

    return v0
.end method

.method static synthetic q()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lka;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lka;->b:I

    return v0
.end method

.method static synthetic r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lka;->x:Ljava/lang/String;

    return-object v0
.end method

.method private s()V
    .locals 9

    .prologue
    const-wide/32 v7, 0xea60

    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    .line 289
    iget-object v0, p0, Lka;->d:Landroid/content/Context;

    const-string v1, "pref-filename"

    invoke-static {v0, v1}, Ljo;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lka;->j:Ljava/lang/String;

    .line 290
    iget-object v0, p0, Lka;->d:Landroid/content/Context;

    const-string v1, "pref-update-info"

    invoke-static {v0, v1}, Ljo;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lka;->b(Ljava/lang/String;)Ljz;

    move-result-object v0

    iput-object v0, p0, Lka;->u:Ljz;

    .line 292
    iget-object v0, p0, Lka;->j:Ljava/lang/String;

    invoke-static {v0}, Lkj;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 293
    sget-boolean v0, Lka;->a:Z

    if-eqz v0, :cond_0

    .line 294
    const-string v0, "UpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid filename found in pref:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lka;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lka;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-update_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lka;->j:Ljava/lang/String;

    .line 299
    iget-object v0, p0, Lka;->j:Ljava/lang/String;

    invoke-static {v0}, Lkj;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 300
    sget-boolean v0, Lka;->a:Z

    if-eqz v0, :cond_1

    .line 301
    const-string v0, "UpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Generated filename invalid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lka;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app-update_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lka;->j:Ljava/lang/String;

    .line 304
    sget-boolean v0, Lka;->a:Z

    if-eqz v0, :cond_2

    .line 305
    const-string v0, "UpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Use failback filename:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lka;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_2
    :goto_0
    iget-object v0, p0, Lka;->d:Landroid/content/Context;

    const-string v1, "pref-auto-check-interval"

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Ljo;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lka;->e:J

    .line 324
    iget-wide v0, p0, Lka;->e:J

    cmp-long v0, v0, v5

    if-lez v0, :cond_7

    .line 325
    iput-boolean v4, p0, Lka;->f:Z

    .line 326
    iget-wide v0, p0, Lka;->e:J

    cmp-long v0, v0, v7

    if-gez v0, :cond_3

    .line 327
    iput-wide v7, p0, Lka;->e:J

    .line 332
    :cond_3
    :goto_1
    iget-object v0, p0, Lka;->d:Landroid/content/Context;

    const-string v1, "pref-ignore-update-time"

    invoke-static {v0, v1, v5, v6}, Ljo;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lka;->g:J

    .line 333
    iget-object v0, p0, Lka;->d:Landroid/content/Context;

    const-string v1, "pref-ignored-version"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljo;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lka;->h:I

    .line 334
    iget-object v0, p0, Lka;->d:Landroid/content/Context;

    const-string v1, "pref-filename"

    iget-object v2, p0, Lka;->j:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Ljo;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lka;->d:Landroid/content/Context;

    const-string v1, "pref-progress-listener-enable"

    invoke-static {v0, v1, v4}, Ljo;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lka;->i:Z

    .line 336
    iget-object v0, p0, Lka;->d:Landroid/content/Context;

    const-string v1, "pref-custom-info"

    invoke-static {v0, v1}, Ljo;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    sget-boolean v1, Lka;->a:Z

    if-eqz v1, :cond_4

    .line 339
    const-string v1, "UpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get saved custom info from pref:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_4
    invoke-virtual {p0, v0}, Lka;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lka;->v:Ljava/util/Map;

    .line 342
    return-void

    .line 308
    :cond_5
    sget-boolean v0, Lka;->a:Z

    if-eqz v0, :cond_2

    .line 309
    const-string v0, "UpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filename generated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lka;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 313
    :cond_6
    sget-boolean v0, Lka;->a:Z

    if-eqz v0, :cond_2

    .line 314
    const-string v0, "UpdateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get filename from pref:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lka;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 330
    :cond_7
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lka;->e:J

    goto/16 :goto_1
.end method

.method private t()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 475
    iput-boolean v2, p0, Lka;->i:Z

    .line 476
    iget-object v0, p0, Lka;->d:Landroid/content/Context;

    const-string v1, "pref-progress-listener-enable"

    invoke-static {v0, v1, v2}, Ljo;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 477
    return-void
.end method

.method private u()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 480
    iput-boolean v2, p0, Lka;->i:Z

    .line 481
    iget-object v0, p0, Lka;->d:Landroid/content/Context;

    const-string v1, "pref-progress-listener-enable"

    invoke-static {v0, v1, v2}, Ljo;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 482
    return-void
.end method

.method private v()V
    .locals 4

    .prologue
    .line 1219
    iget-object v0, p0, Lka;->d:Landroid/content/Context;

    const-string v1, "pref_my_appupdate_host_version"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Ljo;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 1220
    iget-object v1, p0, Lka;->d:Landroid/content/Context;

    invoke-static {v1}, Lkj;->b(Landroid/content/Context;)I

    move-result v1

    .line 1221
    if-eq v0, v1, :cond_0

    .line 1222
    iget-object v2, p0, Lka;->d:Landroid/content/Context;

    const-string v3, "pref_my_appupdate_host_version"

    invoke-static {v2, v3, v1}, Ljo;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1224
    if-gez v0, :cond_1

    .line 1232
    :cond_0
    :goto_0
    return-void

    .line 1227
    :cond_1
    iget-object v0, p0, Lka;->d:Landroid/content/Context;

    invoke-static {v0}, Lkj;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1228
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lka;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1229
    const-string v0, "up"

    invoke-virtual {p0, v0}, Lka;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private w()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1244
    iget-object v0, p0, Lka;->d:Landroid/content/Context;

    iget v1, p0, Lka;->w:I

    invoke-static {v0, v1}, Lix;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a()Landroid/net/ConnectivityManager;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lka;->z:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method protected a(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 892
    if-eqz p1, :cond_1

    .line 893
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 894
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 895
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 896
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 897
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 898
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 900
    :try_start_0
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 901
    :catch_0
    move-exception v0

    .line 902
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 905
    :cond_0
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 907
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method a(JJ)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 1235
    iget-object v0, p0, Lka;->d:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1236
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.dianxinos.appupdate.intent.CHECK_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1237
    iget-object v2, p0, Lka;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1238
    iget-object v2, p0, Lka;->d:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x1000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1240
    const/4 v1, 0x1

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 1241
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1318
    sget-boolean v0, Lit;->a:Z

    if-eqz v0, :cond_0

    .line 1319
    const-string v0, "UpdateManager"

    const-string v1, "onReceiver "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    :cond_0
    if-eqz p2, :cond_2

    .line 1323
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1325
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1326
    invoke-static {p1, p2}, Ljp;->b(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1329
    :cond_1
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1330
    invoke-static {p1, p2}, Ljp;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1334
    :cond_2
    return-void
.end method

.method public a(Liz;)V
    .locals 5
    .parameter

    .prologue
    .line 1113
    if-nez p1, :cond_0

    .line 1131
    :goto_0
    return-void

    .line 1116
    :cond_0
    iget-object v1, p0, Lka;->D:Landroid/content/ServiceConnection;

    monitor-enter v1

    .line 1117
    :try_start_0
    iput-object p1, p0, Lka;->q:Liz;

    .line 1118
    sget-boolean v0, Lka;->a:Z

    if-eqz v0, :cond_1

    .line 1119
    const-string v0, "UpdateManager"

    const-string v2, "Binding download service"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    :cond_1
    iget-object v0, p0, Lka;->o:Lcom/dianxinos/appupdate/DownloadService;

    if-eqz v0, :cond_3

    .line 1122
    iget-object v0, p0, Lka;->o:Lcom/dianxinos/appupdate/DownloadService;

    invoke-virtual {v0, p1}, Lcom/dianxinos/appupdate/DownloadService;->a(Liz;)V

    .line 1127
    :goto_1
    sget-boolean v0, Lka;->a:Z

    if-eqz v0, :cond_2

    .line 1128
    const-string v0, "UpdateManager"

    const-string v2, "After bind download service"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1124
    :cond_3
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lka;->d:Landroid/content/Context;

    const-class v3, Lcom/dianxinos/appupdate/DownloadService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1125
    iget-object v2, p0, Lka;->d:Landroid/content/Context;

    iget-object v3, p0, Lka;->D:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 345
    iget-object v0, p0, Lka;->A:Ljj;

    invoke-virtual {v0, p1}, Ljj;->a(Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 349
    iget-object v0, p0, Lka;->A:Ljj;

    invoke-virtual {v0, p1, p2}, Ljj;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 350
    return-void
.end method

.method public a(Ljv;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 390
    iget-object v0, p0, Lka;->A:Ljj;

    const-string v1, "sdl-u"

    invoke-virtual {v0, v1}, Ljj;->a(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0, p1, v2, v2}, Lka;->a(Ljv;ZI)V

    .line 392
    return-void
.end method

.method public a(Ljv;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 407
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lka;->a(Ljv;ZI)V

    .line 408
    return-void
.end method

.method protected a(Ljv;ZI)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 418
    iget-object v3, p0, Lka;->s:Ljava/lang/Object;

    monitor-enter v3

    .line 419
    :try_start_0
    iget-object v2, p0, Lka;->d:Landroid/content/Context;

    const-string v4, "pref-last-progress-enable"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Ljo;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 421
    if-nez p2, :cond_6

    .line 422
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_4

    .line 423
    invoke-direct {p0}, Lka;->t()V

    move v0, v1

    .line 431
    :goto_0
    if-eqz p2, :cond_0

    or-int/lit8 p3, p3, 0x4

    .line 432
    :cond_0
    iget-object v2, p0, Lka;->n:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lka;->u:Ljz;

    if-nez v2, :cond_5

    .line 433
    :cond_1
    sget-boolean v2, Lka;->a:Z

    if-eqz v2, :cond_2

    .line 434
    const-string v2, "UpdateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Empty download URL:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lka;->n:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", check update now"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_2
    new-instance v2, Lkb;

    invoke-direct {v2, p0, p1, p3, v0}, Lkb;-><init>(Lka;Ljv;IZ)V

    invoke-virtual {p0, v2}, Lka;->a(Liv;)Z

    .line 468
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    if-nez p2, :cond_3

    .line 470
    iget-object v0, p0, Lka;->d:Landroid/content/Context;

    const-string v2, "pref-retry-count"

    invoke-static {v0, v2, v1}, Ljo;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 472
    :cond_3
    return-void

    .line 426
    :cond_4
    :try_start_1
    invoke-direct {p0}, Lka;->u()V

    goto :goto_0

    .line 468
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 466
    :cond_5
    :try_start_2
    iget-object v2, p0, Lka;->n:Ljava/lang/String;

    invoke-direct {p0, v2, p1, p3, v0}, Lka;->a(Ljava/lang/String;Ljv;IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_0
.end method

.method protected a(Ljz;)V
    .locals 4
    .parameter

    .prologue
    .line 868
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 870
    :try_start_0
    const-string v1, "vc"

    iget v2, p1, Ljz;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 871
    const-string v1, "vn"

    iget-object v2, p1, Ljz;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 872
    const-string v1, "dspt"

    iget-object v2, p1, Ljz;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 873
    const-string v1, "prt"

    iget v2, p1, Ljz;->c:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 874
    const-string v1, "time"

    iget-wide v2, p1, Ljz;->f:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 875
    const-string v1, "md5"

    iget-object v2, p1, Ljz;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 876
    const-string v1, "pkg"

    iget-object v2, p1, Ljz;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 877
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p1, Ljz;->h:Ljava/util/List;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 878
    const-string v2, "markets"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 879
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p1, Ljz;->e:Ljava/util/Map;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 880
    const-string v2, "extra"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 881
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 882
    sget-boolean v1, Lka;->a:Z

    if-eqz v1, :cond_0

    .line 883
    const-string v1, "UpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saving update info:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_0
    iget-object v1, p0, Lka;->d:Landroid/content/Context;

    const-string v2, "pref-update-info"

    invoke-static {v1, v2, v0}, Ljo;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 889
    :goto_0
    return-void

    .line 886
    :catch_0
    move-exception v0

    .line 887
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method protected a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1154
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lka;->a(ZZ)V

    .line 1155
    return-void
.end method

.method a(ZZ)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1159
    iget-object v0, p0, Lka;->d:Landroid/content/Context;

    invoke-static {v0}, Lkj;->a(Landroid/content/Context;)I

    move-result v0

    .line 1161
    if-gez v0, :cond_0

    .line 1216
    :goto_0
    return-void

    .line 1164
    :cond_0
    if-ne v0, v1, :cond_7

    move v0, v1

    .line 1168
    :goto_1
    monitor-enter p0

    .line 1169
    :try_start_0
    iget-object v9, p0, Lka;->B:Ljava/lang/Boolean;

    .line 1170
    iget-boolean v10, p0, Lka;->f:Z

    .line 1171
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lka;->B:Ljava/lang/Boolean;

    .line 1172
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1174
    invoke-virtual {p0}, Lka;->j()J

    move-result-wide v5

    .line 1181
    iget-wide v7, p0, Lka;->e:J

    .line 1182
    if-eqz p2, :cond_1

    .line 1183
    if-nez v10, :cond_1

    .line 1184
    if-eqz v0, :cond_8

    .line 1185
    const-wide/32 v7, 0xdbba00

    .line 1194
    :cond_1
    :goto_2
    add-long/2addr v7, v5

    cmp-long v7, v7, v3

    if-ltz v7, :cond_2

    cmp-long v7, v5, v3

    if-lez v7, :cond_9

    .line 1195
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.dianxinos.appupdate.intent.CHECK_UPDATE"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1196
    iget-object v7, p0, Lka;->d:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1197
    iget-object v7, p0, Lka;->d:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1199
    sget-boolean v2, Lka;->a:Z

    if-eqz v2, :cond_3

    .line 1200
    const-string v2, "UpdateManager"

    const-string v7, "Check update caused by data invalid"

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v2, v1

    .line 1207
    :cond_4
    :goto_3
    if-nez v2, :cond_5

    if-eqz v9, :cond_5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1208
    :cond_5
    iget-wide v7, p0, Lka;->e:J

    if-eqz v2, :cond_a

    move-wide v0, v3

    :goto_4
    add-long/2addr v0, v7

    .line 1209
    iget-wide v5, p0, Lka;->e:J

    invoke-virtual {p0, v0, v1, v5, v6}, Lka;->a(JJ)V

    .line 1210
    sget-boolean v2, Lka;->a:Z

    if-eqz v2, :cond_6

    .line 1211
    const-string v2, "UpdateManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Schedule check update at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "seconds later"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    :cond_6
    invoke-direct {p0}, Lka;->v()V

    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 1164
    goto/16 :goto_1

    .line 1172
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1187
    :cond_8
    const-wide/32 v7, 0x5265c00

    goto :goto_2

    .line 1202
    :cond_9
    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lka;->o()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1203
    const/4 v1, 0x0

    const/4 v7, 0x2

    invoke-virtual {p0, v1, v2, v7}, Lka;->a(Ljv;ZI)V

    goto :goto_3

    :cond_a
    move-wide v0, v5

    .line 1208
    goto :goto_4
.end method

.method public a(Liv;)Z
    .locals 1
    .parameter

    .prologue
    .line 353
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lka;->a(Liv;Z)Z

    move-result v0

    return v0
.end method

.method protected a(Liv;Ljava/util/concurrent/Callable;Z)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 370
    iget-object v1, p0, Lka;->r:Ljava/lang/Object;

    monitor-enter v1

    .line 371
    :try_start_0
    iget-object v0, p0, Lka;->l:Lkg;

    invoke-static {v0}, Lkj;->a(Ljava/lang/Thread;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    sget-boolean v0, Lka;->a:Z

    if-eqz v0, :cond_0

    .line 373
    const-string v0, "UpdateManager"

    const-string v2, "A previous check update task is working, start check failed"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    .line 380
    :goto_0
    return v0

    .line 377
    :cond_1
    new-instance v0, Lkg;

    invoke-direct {v0, p0, p1, p2}, Lkg;-><init>(Lka;Liv;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lka;->l:Lkg;

    .line 378
    iget-object v0, p0, Lka;->l:Lkg;

    invoke-virtual {v0, p3}, Lkg;->a(Z)V

    .line 379
    iget-object v0, p0, Lka;->l:Lkg;

    invoke-virtual {v0}, Lkg;->start()V

    .line 380
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 381
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Liv;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 365
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lka;->a(Liv;Ljava/util/concurrent/Callable;Z)Z

    move-result v0

    return v0
.end method

.method public a(Ljl;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 617
    const-string v0, "ins"

    invoke-virtual {p0, v0}, Lka;->a(Ljava/lang/String;)V

    .line 618
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lka;->a(Ljl;Lju;ZZ)Z

    move-result v0

    return v0
.end method

.method protected b(Ljava/lang/String;)Ljz;
    .locals 13
    .parameter

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 816
    if-eqz p1, :cond_1

    .line 818
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 819
    const-string v4, "vc"

    const/4 v5, -0x1

    invoke-virtual {v6, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 820
    const-string v4, "vn"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 821
    const-string v4, "dspt"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 822
    const-string v4, "prt"

    const/4 v5, 0x0

    invoke-virtual {v6, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 823
    if-le v4, v3, :cond_4

    move v5, v3

    .line 826
    :goto_0
    const-string v3, "time"

    const-wide/16 v10, 0x0

    invoke-virtual {v6, v3, v10, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 827
    cmp-long v10, v3, v1

    if-gez v10, :cond_3

    .line 830
    :goto_1
    const-string v3, "markets"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 831
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 832
    if-eqz v3, :cond_0

    .line 833
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v0, v10, :cond_0

    .line 834
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 833
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 837
    :cond_0
    const-string v0, "extra"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 838
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 839
    if-eqz v3, :cond_2

    .line 840
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v11

    .line 841
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 842
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 843
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 860
    :catch_0
    move-exception v0

    .line 861
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 864
    :cond_1
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 846
    :cond_2
    :try_start_1
    const-string v0, "pkg"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 847
    if-lez v7, :cond_1

    .line 848
    new-instance v0, Ljz;

    invoke-direct {v0}, Ljz;-><init>()V

    .line 849
    iput v7, v0, Ljz;->a:I

    .line 850
    iput-object v8, v0, Ljz;->b:Ljava/lang/String;

    .line 851
    iput v5, v0, Ljz;->c:I

    .line 852
    iput-object v9, v0, Ljz;->d:Ljava/lang/String;

    .line 853
    iput-wide v1, v0, Ljz;->f:J

    .line 854
    iput-object v3, v0, Ljz;->i:Ljava/lang/String;

    .line 855
    iput-object v4, v0, Ljz;->h:Ljava/util/List;

    .line 856
    iput-object v10, v0, Ljz;->e:Ljava/util/Map;

    .line 857
    const-string v1, "md5"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ljz;->g:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :cond_3
    move-wide v1, v3

    goto :goto_1

    :cond_4
    move v5, v4

    goto :goto_0
.end method

.method public b(Liz;)V
    .locals 3
    .parameter

    .prologue
    .line 1134
    if-nez p1, :cond_0

    .line 1148
    :goto_0
    return-void

    .line 1137
    :cond_0
    iget-object v1, p0, Lka;->D:Landroid/content/ServiceConnection;

    monitor-enter v1

    .line 1138
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lka;->q:Liz;

    .line 1139
    iget-object v0, p0, Lka;->o:Lcom/dianxinos/appupdate/DownloadService;

    if-eqz v0, :cond_1

    .line 1140
    iget-object v0, p0, Lka;->o:Lcom/dianxinos/appupdate/DownloadService;

    invoke-virtual {v0, p1}, Lcom/dianxinos/appupdate/DownloadService;->b(Liz;)V

    .line 1141
    iget-object v0, p0, Lka;->d:Landroid/content/Context;

    iget-object v2, p0, Lka;->D:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1142
    const/4 v0, 0x0

    iput-object v0, p0, Lka;->o:Lcom/dianxinos/appupdate/DownloadService;

    .line 1143
    sget-boolean v0, Lka;->a:Z

    if-eqz v0, :cond_1

    .line 1144
    const-string v0, "UpdateManager"

    const-string v2, "DownloadProgressListener unregistered"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
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

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1642
    iput-boolean p1, p0, Lka;->E:Z

    .line 1643
    return-void
.end method

.method protected b()Z
    .locals 1

    .prologue
    .line 485
    iget-boolean v0, p0, Lka;->i:Z

    return v0
.end method

.method protected c(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .parameter

    .prologue
    .line 911
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 913
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 914
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 915
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 916
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 917
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 918
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 919
    if-eqz v4, :cond_0

    .line 920
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 924
    :catch_0
    move-exception v0

    .line 925
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 928
    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 586
    iget-object v1, p0, Lka;->r:Ljava/lang/Object;

    monitor-enter v1

    .line 587
    :try_start_0
    iget-object v0, p0, Lka;->l:Lkg;

    invoke-static {v0}, Lkj;->a(Ljava/lang/Thread;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lka;->l:Lkg;

    invoke-virtual {v0}, Lkg;->a()V

    .line 589
    iget-object v0, p0, Lka;->l:Lkg;

    invoke-virtual {v0}, Lkg;->interrupt()V

    .line 591
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    const/4 v0, 0x0

    iput-object v0, p0, Lka;->l:Lkg;

    .line 593
    return-void

    .line 591
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 596
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.dianxinos.appupdate.intent.CANCEL_DOWNLOAD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 597
    iget-object v1, p0, Lka;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 598
    iget-object v1, p0, Lka;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 599
    iget-object v0, p0, Lka;->d:Landroid/content/Context;

    const-string v1, "pref-need-redownload"

    invoke-static {v0, v1, v3}, Ljo;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 601
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.dianxinos.appupdate.intent.DOWNLOAD_RETRY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 603
    iget-object v1, p0, Lka;->d:Landroid/content/Context;

    const/high16 v2, 0x2000

    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 606
    if-eqz v1, :cond_0

    .line 607
    iget-object v0, p0, Lka;->d:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 609
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 611
    :cond_0
    sget-boolean v0, Lka;->a:Z

    if-eqz v0, :cond_1

    .line 612
    const-string v0, "UpdateManager"

    const-string v1, "Cancel download intent sent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_1
    return-void
.end method

.method public e()J
    .locals 2

    .prologue
    .line 938
    iget-wide v0, p0, Lka;->e:J

    return-wide v0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 955
    iget-object v0, p0, Lka;->d:Landroid/content/Context;

    invoke-static {v0}, Lkj;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 956
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lka;->a(Z)V

    .line 957
    sget-boolean v0, Lka;->a:Z

    if-eqz v0, :cond_0

    .line 958
    const-string v0, "UpdateManager"

    const-string v1, "Check update scheduled through wakeup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    :cond_0
    :goto_0
    return-void

    .line 961
    :cond_1
    sget-boolean v0, Lka;->a:Z

    if-eqz v0, :cond_0

    .line 962
    const-string v0, "UpdateManager"

    const-string v1, "Network unavaliable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public g()V
    .locals 4

    .prologue
    .line 968
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lka;->g:J

    .line 969
    iget-object v0, p0, Lka;->d:Landroid/content/Context;

    const-string v1, "pref-ignore-update-time"

    iget-wide v2, p0, Lka;->g:J

    invoke-static {v0, v1, v2, v3}, Ljo;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 970
    const-string v0, "ig"

    invoke-virtual {p0, v0}, Lka;->a(Ljava/lang/String;)V

    .line 971
    return-void
.end method

.method public h()Z
    .locals 8

    .prologue
    const-wide/32 v1, 0xa4cb800

    const/4 v3, 0x0

    .line 981
    iget-object v0, p0, Lka;->u:Ljz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lka;->u:Ljz;

    iget-object v0, v0, Ljz;->e:Ljava/util/Map;

    if-nez v0, :cond_1

    :cond_0
    move v0, v3

    .line 1003
    :goto_0
    return v0

    .line 986
    :cond_1
    :try_start_0
    iget-object v0, p0, Lka;->u:Ljz;

    iget-object v0, v0, Ljz;->e:Ljava/util/Map;

    const-string v4, "udpate-no-check-delay"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    .line 999
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1000
    iget-wide v6, p0, Lka;->g:J

    add-long/2addr v0, v6

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    iget-wide v0, p0, Lka;->g:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_5

    :cond_2
    move v0, v3

    .line 1001
    goto :goto_0

    .line 988
    :catch_0
    move-exception v0

    .line 989
    sget-boolean v4, Lka;->a:Z

    if-eqz v4, :cond_3

    .line 990
    const-string v4, "UpdateManager"

    const-string v5, "no_check_delay parse failed, use default"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    move-wide v0, v1

    .line 998
    goto :goto_1

    .line 993
    :catch_1
    move-exception v0

    .line 994
    sget-boolean v4, Lka;->a:Z

    if-eqz v4, :cond_4

    .line 995
    const-string v4, "UpdateManager"

    const-string v5, "no_check_delay parse failed, use default"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    move-wide v0, v1

    .line 997
    goto :goto_1

    .line 1003
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 1008
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1009
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x7

    if-gt v0, v1, :cond_0

    .line 1010
    const/4 v0, 0x1

    .line 1012
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()J
    .locals 4

    .prologue
    .line 1021
    iget-object v0, p0, Lka;->d:Landroid/content/Context;

    const-string v1, "pref-last-check"

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Ljo;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public k()Ljz;
    .locals 6

    .prologue
    .line 1034
    iget-object v0, p0, Lka;->d:Landroid/content/Context;

    iget v1, p0, Lka;->w:I

    invoke-static {v0, v1}, Lix;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1036
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lka;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1037
    iget-object v0, p0, Lka;->d:Landroid/content/Context;

    invoke-static {v0, v1}, Lis;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 1038
    if-nez v0, :cond_0

    .line 1039
    iget-object v0, p0, Lka;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1040
    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 1042
    if-nez v2, :cond_1

    .line 1043
    sget-boolean v0, Lka;->a:Z

    if-eqz v0, :cond_0

    .line 1044
    const-string v0, "UpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot get archive info for apk:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1047
    :cond_1
    new-instance v0, Ljz;

    invoke-direct {v0}, Ljz;-><init>()V

    .line 1048
    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v3, v0, Ljz;->a:I

    .line 1049
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, v0, Ljz;->b:Ljava/lang/String;

    .line 1050
    iget-object v2, p0, Lka;->d:Landroid/content/Context;

    const-string v3, "pref-archive-pri"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ljo;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Ljz;->c:I

    .line 1053
    iget-object v2, p0, Lka;->d:Landroid/content/Context;

    const-string v3, "pref-archive-dspt"

    invoke-static {v2, v3}, Ljo;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Ljz;->d:Ljava/lang/String;

    .line 1055
    iget-object v2, p0, Lka;->d:Landroid/content/Context;

    const-string v3, "pref-archive-extra"

    invoke-static {v2, v3}, Ljo;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1057
    invoke-virtual {p0, v2}, Lka;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 1058
    iput-object v2, v0, Ljz;->e:Ljava/util/Map;

    .line 1059
    iget-object v2, p0, Lka;->d:Landroid/content/Context;

    const-string v3, "pref-archive-time"

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljo;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Ljz;->f:J

    .line 1061
    iput-object v1, v0, Ljz;->j:Ljava/lang/String;

    goto :goto_0
.end method

.method public l()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 1077
    invoke-virtual {p0}, Lka;->k()Ljz;

    move-result-object v1

    .line 1078
    if-nez v1, :cond_1

    .line 1079
    sget-boolean v1, Lka;->a:Z

    if-eqz v1, :cond_0

    .line 1080
    const-string v1, "UpdateManager"

    const-string v2, "No local archive, need download"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :cond_0
    :goto_0
    return v0

    .line 1084
    :cond_1
    iget-object v2, p0, Lka;->u:Ljz;

    if-nez v2, :cond_2

    .line 1085
    sget-boolean v1, Lka;->a:Z

    if-eqz v1, :cond_0

    .line 1086
    const-string v1, "UpdateManager"

    const-string v2, "No latest update info found, need download"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1090
    :cond_2
    sget-boolean v2, Lka;->a:Z

    if-eqz v2, :cond_3

    .line 1091
    const-string v2, "UpdateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Latest version:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lka;->u:Ljz;

    iget v4, v4, Ljz;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", local archive version:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Ljz;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :cond_3
    iget-object v2, p0, Lka;->u:Ljz;

    iget v2, v2, Ljz;->a:I

    iget v1, v1, Ljz;->a:I

    if-gt v2, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Ljz;
    .locals 1

    .prologue
    .line 1105
    iget-object v0, p0, Lka;->u:Ljz;

    return-object v0
.end method

.method public n()Ljava/util/List;
    .locals 10

    .prologue
    .line 1264
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1267
    iget-object v0, p0, Lka;->u:Ljz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lka;->u:Ljz;

    iget-object v0, v0, Ljz;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lka;->u:Ljz;

    iget-object v0, v0, Ljz;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 1314
    :goto_0
    return-object v0

    .line 1271
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1272
    iget-object v0, p0, Lka;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1273
    iget-object v0, p0, Lka;->u:Ljz;

    iget-object v0, v0, Ljz;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1275
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v4, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 1276
    if-eqz v6, :cond_2

    .line 1277
    new-instance v7, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1279
    invoke-virtual {p0}, Lka;->m()Ljz;

    move-result-object v2

    .line 1281
    if-eqz v2, :cond_3

    iget-object v8, v2, Ljz;->i:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1282
    iget-object v2, v2, Ljz;->i:Ljava/lang/String;

    .line 1286
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "market://details?id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1287
    iget-object v2, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1288
    const/4 v2, 0x0

    invoke-virtual {v4, v7, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1291
    new-instance v2, Lkh;

    invoke-direct {v2}, Lkh;-><init>()V

    .line 1292
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1293
    if-eqz v8, :cond_2

    .line 1296
    invoke-virtual {v8, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v2, Lkh;->a:Landroid/graphics/drawable/Drawable;

    .line 1297
    invoke-virtual {v8, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lkh;->b:Ljava/lang/String;

    .line 1298
    iput-object v7, v2, Lkh;->c:Landroid/content/Intent;

    .line 1299
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1300
    iget-object v2, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1302
    :catch_0
    move-exception v2

    .line 1303
    sget-boolean v2, Lka;->a:Z

    if-eqz v2, :cond_2

    .line 1304
    const-string v2, "UpdateManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "is not found"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1284
    :cond_3
    :try_start_1
    iget-object v2, p0, Lka;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_2

    .line 1308
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1309
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1310
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 1311
    const-string v3, "pkg-list"

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    const-string v2, "ml"

    invoke-virtual {p0, v2, v0}, Lka;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_5
    move-object v0, v1

    .line 1314
    goto/16 :goto_0
.end method

.method o()Z
    .locals 1

    .prologue
    .line 1646
    iget-boolean v0, p0, Lka;->E:Z

    return v0
.end method
