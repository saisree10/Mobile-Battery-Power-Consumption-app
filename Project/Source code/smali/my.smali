.class public Lmy;
.super Ljava/lang/Object;
.source "SplashHelper.java"


# static fields
.field private static final b:Z

.field private static c:Lmy;


# instance fields
.field a:Lmp;

.field private d:Landroid/content/Context;

.field private e:Landroid/content/SharedPreferences;

.field private f:Landroid/app/AlarmManager;

.field private g:F

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/Object;

.field private j:Ljava/util/ArrayList;

.field private k:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lmi;->a:Z

    sput-boolean v0, Lmy;->b:Z

    .line 24
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmy;->i:Ljava/lang/Object;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmy;->j:Ljava/util/ArrayList;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lmy;->d:Landroid/content/Context;

    .line 55
    const-string v0, "splash_nettimes"

    .line 56
    const/4 v1, 0x0

    .line 55
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lmy;->e:Landroid/content/SharedPreferences;

    .line 57
    iget-object v0, p0, Lmy;->d:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lmy;->f:Landroid/app/AlarmManager;

    .line 58
    iget-object v0, p0, Lmy;->e:Landroid/content/SharedPreferences;

    const-string v1, "selected_splash_md5"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmy;->h:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lmy;->e:Landroid/content/SharedPreferences;

    const-string v1, "selected_splash_stay_time"

    const/high16 v2, 0x3fc0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lmy;->g:F

    .line 60
    return-void
.end method

.method static synthetic a(Lmy;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lmy;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lmy;
    .locals 2
    .parameter

    .prologue
    .line 63
    sget-object v0, Lmy;->c:Lmy;

    if-nez v0, :cond_1

    .line 64
    const-class v1, Lmy;

    monitor-enter v1

    .line 65
    :try_start_0
    sget-object v0, Lmy;->c:Lmy;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lmy;

    invoke-direct {v0, p0}, Lmy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lmy;->c:Lmy;

    .line 64
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_1
    sget-object v0, Lmy;->c:Lmy;

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    invoke-static {p0}, Lnf;->b(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method static synthetic a(Lmy;Lnc;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 315
    invoke-direct {p0, p1, p2, p3}, Lmy;->a(Lnc;J)V

    return-void
.end method

.method private a(Lnc;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 316
    iget-object v0, p0, Lmy;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 317
    iget-object v1, p1, Lnc;->d:Ljava/lang/String;

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 318
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 319
    return-void
.end method

.method private a(Lnc;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 211
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 214
    if-eqz p2, :cond_0

    .line 215
    const-string v0, "com.dianxinos.common.dxsplash.ALARMSPLASHCONFIG"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    iget-wide v0, p1, Lnc;->b:J

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "itme.firsttime:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p1, Lnc;->b:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " lasttime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lnc;->c:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 218
    const-string v4, " current:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 217
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmy;->c(Ljava/lang/String;)V

    .line 226
    :goto_0
    const-string v3, "is_first_timer"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 227
    const-string v3, "splash_item_name"

    iget-object v4, p1, Lnc;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string v3, "splash_item_firsttime"

    iget-wide v4, p1, Lnc;->b:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 229
    const-string v3, "splash_item_lasttime"

    iget-wide v4, p1, Lnc;->c:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 230
    const-string v3, "splash_item_md5"

    iget-object v4, p1, Lnc;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const-string v3, "splash_item_url"

    iget-object v4, p1, Lnc;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    const-string v3, "splash_item_stay_time"

    iget v4, p1, Lnc;->g:F

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 233
    const-string v3, "splash_item_localpath"

    iget-object v4, p1, Lnc;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    iget-object v3, p0, Lmy;->d:Landroid/content/Context;

    const/4 v4, 0x0

    .line 235
    const/high16 v5, 0x800

    .line 234
    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 236
    iget-object v3, p0, Lmy;->f:Landroid/app/AlarmManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 237
    return-void

    .line 220
    :cond_0
    const-string v0, "com.dianxinos.common.dxsplash.ALARMSPLASHCONFIG_CANCLE"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    iget-wide v0, p1, Lnc;->c:J

    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "itme.firsttime:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p1, Lnc;->b:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " lasttime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lnc;->c:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 223
    const-string v4, " current:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 222
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmy;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lmy;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lmy;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 399
    invoke-static {p0}, Lmy;->c(Ljava/lang/String;)V

    return-void
.end method

.method private static c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 400
    sget-boolean v0, Lmy;->b:Z

    if-eqz v0, :cond_0

    .line 401
    const-string v0, "SplashHelper"

    invoke-static {v0, p0}, Lms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :cond_0
    return-void
.end method

.method private e(Lnc;)V
    .locals 4
    .parameter

    .prologue
    .line 264
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lmy;->d:Landroid/content/Context;

    const-class v2, Lcom/dianxinos/common/dxsplash/SplashDownloadFileService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 265
    iget-object v1, p0, Lmy;->d:Landroid/content/Context;

    new-instance v2, Lna;

    invoke-direct {v2, p0, p1}, Lna;-><init>(Lmy;Lnc;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 266
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 84
    iget v0, p0, Lmy;->g:F

    const/high16 v1, 0x447a

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 378
    if-nez p2, :cond_1

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 383
    if-eqz v0, :cond_0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 386
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 387
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 388
    const-string v0, "wifi connected!"

    invoke-static {v0}, Lmy;->c(Ljava/lang/String;)V

    .line 389
    invoke-static {p1}, Lmy;->a(Landroid/content/Context;)Lmy;

    move-result-object v0

    invoke-virtual {v0}, Lmy;->f()V

    goto :goto_0

    .line 391
    :cond_2
    const-string v0, "wifi disconnected!"

    invoke-static {v0}, Lmy;->c(Ljava/lang/String;)V

    .line 393
    invoke-static {p1}, Lmy;->a(Landroid/content/Context;)Lmy;

    move-result-object v0

    invoke-virtual {v0}, Lmy;->e()V

    goto :goto_0
.end method

.method public a(Lnc;)V
    .locals 5
    .parameter

    .prologue
    .line 167
    const-string v0, "selectSplash"

    invoke-static {v0}, Lmy;->c(Ljava/lang/String;)V

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "itme.firsttime:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p1, Lnc;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lasttime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p1, Lnc;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 169
    const-string v1, " current:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmy;->c(Ljava/lang/String;)V

    .line 171
    :try_start_0
    iget-object v1, p0, Lmy;->i:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :try_start_1
    invoke-virtual {p1}, Lnc;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    new-instance v0, Ljava/io/File;

    iget-object v2, p1, Lnc;->f:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lmy;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    .line 174
    const-string v4, "splash.jpg"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 175
    iget-object v0, p1, Lnc;->d:Ljava/lang/String;

    iput-object v0, p0, Lmy;->h:Ljava/lang/String;

    .line 176
    iget v0, p1, Lnc;->g:F

    iput v0, p0, Lmy;->g:F

    .line 178
    iget-object v0, p0, Lmy;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 179
    const-string v2, "selected_splash_md5"

    iget-object v3, p1, Lnc;->d:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 180
    const-string v2, "selected_splash_stay_time"

    iget v3, p1, Lnc;->g:F

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 181
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 171
    :cond_0
    monitor-exit v1

    .line 189
    :cond_1
    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    sget-boolean v1, Lmy;->b:Z

    if-eqz v1, :cond_1

    .line 186
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 93
    iget-object v1, p0, Lmy;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 94
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lmy;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "splash.jpg"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    const-string v2, "Splash file not exist!"

    invoke-static {v2}, Lmy;->c(Ljava/lang/String;)V

    .line 97
    monitor-exit v1

    .line 107
    :goto_0
    return-object v0

    .line 99
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lmy;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "splash.jpg"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lnd;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 100
    iget-object v3, p0, Lmy;->h:Ljava/lang/String;

    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 101
    const-string v2, "Md5 not matched!"

    invoke-static {v2}, Lmy;->c(Ljava/lang/String;)V

    .line 102
    monitor-exit v1

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 104
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lmy;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "splash.jpg"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmy;->k:Landroid/graphics/Bitmap;

    .line 93
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    iget-object v0, p0, Lmy;->k:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public b(Lnc;)V
    .locals 4
    .parameter

    .prologue
    .line 192
    const-string v0, "cancleSplash"

    invoke-static {v0}, Lmy;->c(Ljava/lang/String;)V

    .line 194
    :try_start_0
    iget-object v1, p0, Lmy;->i:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lmy;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "splash.jpg"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 197
    monitor-exit v1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    invoke-static {v0}, Lnd;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lnc;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lmy;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "splash.jpg"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 194
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    sget-boolean v1, Lmy;->b:Z

    if-eqz v1, :cond_0

    .line 205
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public c()V
    .locals 2

    .prologue
    .line 111
    iget-object v1, p0, Lmy;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 112
    :try_start_0
    iget-object v0, p0, Lmy;->k:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lmy;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lmy;->k:Landroid/graphics/Bitmap;

    .line 111
    :cond_0
    monitor-exit v1

    .line 117
    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method c(Lnc;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 248
    iget-wide v0, p1, Lnc;->b:J

    .line 249
    iget-wide v2, p1, Lnc;->c:J

    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v4, v0

    if-gez v0, :cond_1

    .line 252
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lmy;->a(Lnc;Z)V

    .line 254
    invoke-direct {p0, p1, v6}, Lmy;->a(Lnc;Z)V

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 257
    invoke-virtual {p0, p1}, Lmy;->a(Lnc;)V

    .line 259
    invoke-direct {p0, p1, v6}, Lmy;->a(Lnc;Z)V

    goto :goto_0
.end method

.method d(Lnc;)J
    .locals 4
    .parameter

    .prologue
    .line 322
    iget-object v0, p0, Lmy;->e:Landroid/content/SharedPreferences;

    iget-object v1, p1, Lnc;->d:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method d()V
    .locals 4

    .prologue
    .line 121
    iget-object v0, p0, Lmy;->d:Landroid/content/Context;

    invoke-static {v0}, Lnd;->b(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 122
    const-string v0, "downloadConfigSplash: not wifi"

    invoke-static {v0}, Lmy;->c(Ljava/lang/String;)V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    :try_start_0
    iget-object v0, p0, Lmy;->d:Landroid/content/Context;

    invoke-static {v0}, Lmu;->b(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 128
    if-nez v0, :cond_2

    .line 129
    const-string v0, "downloadConfigSplash: items is null"

    invoke-static {v0}, Lmy;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 132
    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Item number is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmy;->c(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnc;

    .line 134
    sget-boolean v2, Lmy;->b:Z

    if-eqz v2, :cond_3

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SplashItem:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lnc;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmy;->c(Ljava/lang/String;)V

    .line 137
    :cond_3
    if-eqz v0, :cond_4

    iget-object v2, v0, Lnc;->d:Ljava/lang/String;

    if-eqz v2, :cond_4

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 138
    :cond_4
    const-string v0, "downloadConfigSplash: not match md5"

    invoke-static {v0}, Lmy;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_5
    iget-object v2, p0, Lmy;->d:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lnc;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lmy;->h:Ljava/lang/String;

    iget-object v3, v0, Lnc;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 142
    invoke-direct {p0, v0}, Lmy;->e(Lnc;)V

    goto :goto_1

    .line 144
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Need not download or md5 not matched. SelectedMd5: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lmy;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 145
    const-string v3, " itemMd5:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lnc;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmy;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method e()V
    .locals 4

    .prologue
    .line 154
    iget-object v1, p0, Lmy;->j:Ljava/util/ArrayList;

    monitor-enter v1

    .line 156
    :try_start_0
    iget-object v0, p0, Lmy;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 154
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    return-void

    .line 156
    :cond_0
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 157
    iget-object v3, p0, Lmy;->a:Lmp;

    invoke-interface {v3, v0}, Lmp;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 161
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 367
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmz;

    invoke-direct {v1, p0}, Lmz;-><init>(Lmy;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 374
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 375
    return-void
.end method
