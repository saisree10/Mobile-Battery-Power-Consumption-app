.class public final Lacq;
.super Ljava/lang/Object;
.source "AppManager.java"


# static fields
.field private static a:Lacq;

.field private static b:Landroid/graphics/drawable/Drawable;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Landroid/content/pm/PackageManager;

.field private e:Ljava/util/concurrent/ConcurrentHashMap;

.field private f:Ljava/util/concurrent/ConcurrentHashMap;

.field private g:Ljava/util/concurrent/ConcurrentHashMap;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/Object;

.field private j:Ljava/util/ArrayList;

.field private k:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lacq;->i:Ljava/lang/Object;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lacq;->j:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Lacr;

    invoke-direct {v0, p0}, Lacr;-><init>(Lacq;)V

    iput-object v0, p0, Lacq;->k:Landroid/content/BroadcastReceiver;

    .line 101
    invoke-static {}, Lwh;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lacq;->c:Landroid/content/Context;

    .line 102
    iget-object v0, p0, Lacq;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lacq;->d:Landroid/content/pm/PackageManager;

    .line 103
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lacq;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 104
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lacq;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 105
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lacq;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 107
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 108
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lacq;->c:Landroid/content/Context;

    iget-object v2, p0, Lacq;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 114
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 115
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lacq;->c:Landroid/content/Context;

    iget-object v2, p0, Lacq;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    return-void
.end method

.method public static a(Ljava/lang/String;Z)Lacn;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 418
    if-eqz p1, :cond_1

    .line 419
    invoke-static {}, Lacq;->a()Lacq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lacq;->d(Ljava/lang/String;)Lacn;

    move-result-object v0

    .line 423
    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Lacn;

    invoke-direct {v0, p0}, Lacn;-><init>(Ljava/lang/String;)V

    .line 424
    :cond_0
    return-object v0

    .line 421
    :cond_1
    invoke-static {}, Lacq;->a()Lacq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lacq;->c(Ljava/lang/String;)Lacn;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()Lacq;
    .locals 2

    .prologue
    .line 128
    sget-object v0, Lacq;->a:Lacq;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lacq;

    invoke-direct {v0}, Lacq;-><init>()V

    sput-object v0, Lacq;->a:Lacq;

    .line 130
    invoke-static {}, Lwh;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lacq;->b:Landroid/graphics/drawable/Drawable;

    .line 133
    :cond_0
    sget-object v0, Lacq;->a:Lacq;

    return-object v0
.end method

.method private static a(Lacs;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Lacs;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 343
    if-nez p0, :cond_0

    .line 344
    invoke-static {}, Lacq;->a()Lacq;

    move-result-object v0

    invoke-direct {v0, p1}, Lacq;->k(Ljava/lang/String;)Lacs;

    move-result-object p0

    .line 346
    :cond_0
    if-eqz p2, :cond_1

    iput-object p2, p0, Lacs;->a:Ljava/lang/String;

    .line 347
    :cond_1
    if-eqz p3, :cond_2

    .line 348
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lacs;->b:Ljava/lang/ref/WeakReference;

    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lacs;->c:Z

    .line 351
    :cond_2
    return-object p0
.end method

.method public static a(Lacn;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 361
    iget-object v0, p0, Lacn;->a:Ljava/lang/String;

    .line 362
    invoke-static {}, Lacq;->a()Lacq;

    move-result-object v1

    invoke-direct {v1, v0}, Lacq;->l(Ljava/lang/String;)Lacs;

    move-result-object v2

    .line 363
    const/4 v1, 0x0

    .line 364
    if-eqz v2, :cond_0

    iget-object v1, v2, Lacs;->a:Ljava/lang/String;

    .line 365
    :cond_0
    if-nez v1, :cond_1

    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lacq;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lacq;->f()V

    return-void
.end method

.method static synthetic a(Lacq;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lacq;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 498
    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 499
    if-eqz v2, :cond_0

    array-length v0, v2

    if-nez v0, :cond_1

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    invoke-direct {p0}, Lacq;->d()V

    .line 501
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 502
    iget-object v4, p0, Lacq;->i:Ljava/lang/Object;

    monitor-enter v4

    .line 503
    :try_start_0
    array-length v5, v2

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_4

    aget-object v6, v2, v0

    .line 504
    invoke-virtual {p0, v6}, Lacq;->c(Ljava/lang/String;)Lacn;

    move-result-object v7

    .line 505
    if-nez v7, :cond_2

    .line 503
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 506
    :cond_2
    invoke-virtual {v7}, Lacn;->g()V

    .line 507
    if-eqz v3, :cond_3

    .line 509
    iget-object v8, p0, Lacq;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 515
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 512
    :cond_3
    :try_start_1
    iget-object v7, p0, Lacq;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 515
    :cond_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 516
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lacq;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 369
    invoke-static {}, Lacq;->a()Lacq;

    move-result-object v0

    invoke-direct {v0, p0}, Lacq;->l(Ljava/lang/String;)Lacs;

    move-result-object v0

    .line 370
    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lacq;->a(Lacs;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Lacs;

    .line 371
    return-void
.end method

.method public static b(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 289
    :try_start_0
    invoke-static {}, Lacq;->a()Lacq;

    move-result-object v0

    invoke-virtual {v0}, Lacq;->b()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 293
    :goto_0
    return v0

    .line 290
    :catch_0
    move-exception v0

    .line 293
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static b(Lacn;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 374
    iget-object v2, p0, Lacn;->a:Ljava/lang/String;

    .line 375
    invoke-static {}, Lacq;->a()Lacq;

    move-result-object v0

    invoke-direct {v0, v2}, Lacq;->l(Ljava/lang/String;)Lacs;

    move-result-object v3

    .line 377
    if-eqz v3, :cond_3

    iget-object v0, v3, Lacs;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    iget-object v0, v3, Lacs;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v4, v3, Lacs;->c:Z

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lacn;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 379
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lacn;->c()Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 380
    if-eqz v4, :cond_1

    .line 382
    :try_start_0
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {}, Lacq;->a()Lacq;

    move-result-object v5

    invoke-virtual {v5}, Lacq;->b()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 387
    :goto_1
    if-eqz v0, :cond_1

    .line 388
    invoke-static {v3, v2, v1, v0}, Lacq;->a(Lacs;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Lacs;

    .line 392
    :cond_1
    if-nez v0, :cond_2

    sget-object v0, Lacq;->b:Landroid/graphics/drawable/Drawable;

    :cond_2
    return-object v0

    .line 384
    :catch_0
    move-exception v4

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public static c()Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 236
    invoke-static {}, Lacq;->a()Lacq;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lacq;->a(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized d()V
    .locals 1

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lacq;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lacq;->c:Landroid/content/Context;

    invoke-static {v0}, Lwg;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    iput-object v0, p0, Lacq;->h:Ljava/lang/String;

    .line 140
    invoke-direct {p0}, Lacq;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :cond_0
    monitor-exit p0

    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static e(Ljava/lang/String;)Lacn;
    .locals 3
    .parameter

    .prologue
    .line 327
    invoke-static {}, Lacq;->a()Lacq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lacq;->c(Ljava/lang/String;)Lacn;

    move-result-object v0

    .line 328
    if-nez v0, :cond_0

    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_0
    return-object v0
.end method

.method private e()V
    .locals 7

    .prologue
    .line 189
    iget-object v0, p0, Lacq;->d:Landroid/content/pm/PackageManager;

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lacq;->d:Landroid/content/pm/PackageManager;

    const/16 v2, 0x2200

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 192
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 193
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 194
    iget-object v4, p0, Lacq;->i:Ljava/lang/Object;

    monitor-enter v4

    .line 195
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 196
    new-instance v6, Lacn;

    invoke-direct {v6, v0}, Lacn;-><init>(Landroid/content/pm/PackageInfo;)V

    .line 197
    iget-object v0, v6, Lacn;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 199
    :cond_0
    :try_start_1
    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 200
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 201
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 202
    new-instance v5, Lacn;

    invoke-direct {v5, v0}, Lacn;-><init>(Landroid/content/pm/PackageInfo;)V

    .line 203
    iget-object v0, v5, Lacn;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 205
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    iput-object v2, p0, Lacq;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 207
    iput-object v3, p0, Lacq;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 208
    return-void
.end method

.method public static f(Ljava/lang/String;)Lacn;
    .locals 3
    .parameter

    .prologue
    .line 402
    invoke-static {}, Lacq;->a()Lacq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lacq;->d(Ljava/lang/String;)Lacn;

    move-result-object v0

    .line 403
    if-nez v0, :cond_0

    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_0
    return-object v0
.end method

.method private f()V
    .locals 6

    .prologue
    .line 212
    iget-object v0, p0, Lacq;->d:Landroid/content/pm/PackageManager;

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 213
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 214
    iget-object v2, p0, Lacq;->i:Ljava/lang/Object;

    monitor-enter v2

    .line 215
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 216
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lacq;->e:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    iput-object v1, p0, Lacq;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 220
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lacq;->a(ILjava/lang/String;)V

    .line 221
    return-void
.end method

.method public static g(Ljava/lang/String;)Lacn;
    .locals 1
    .parameter

    .prologue
    .line 413
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lacq;->a(Ljava/lang/String;Z)Lacn;

    move-result-object v0

    return-object v0
.end method

.method private k(Ljava/lang/String;)Lacs;
    .locals 2
    .parameter

    .prologue
    .line 333
    new-instance v0, Lacs;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lacs;-><init>(Lacr;)V

    .line 334
    iget-object v1, p0, Lacq;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    return-object v0
.end method

.method private l(Ljava/lang/String;)Lacs;
    .locals 1
    .parameter

    .prologue
    .line 339
    iget-object v0, p0, Lacq;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacs;

    return-object v0
.end method

.method private m(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 470
    iget-object v0, p0, Lacq;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacs;

    .line 471
    if-eqz v0, :cond_0

    .line 472
    const/4 v1, 0x0

    iput-boolean v1, v0, Lacs;->c:Z

    .line 474
    :cond_0
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 2
    .parameter

    .prologue
    .line 174
    :try_start_0
    iget-object v0, p0, Lacq;->d:Landroid/content/pm/PackageManager;

    const/16 v1, 0x240

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    .line 176
    :catch_0
    move-exception v0

    .line 178
    :try_start_1
    iget-object v0, p0, Lacq;->d:Landroid/content/pm/PackageManager;

    const/16 v1, 0x2240

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 180
    :catch_1
    move-exception v0

    .line 184
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Z)Ljava/util/ArrayList;
    .locals 5
    .parameter

    .prologue
    .line 269
    invoke-direct {p0}, Lacq;->d()V

    .line 270
    iget-object v2, p0, Lacq;->i:Ljava/lang/Object;

    monitor-enter v2

    .line 271
    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lacq;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v2

    .line 278
    :goto_0
    return-object v0

    .line 272
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 273
    iget-object v0, p0, Lacq;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacn;

    .line 274
    invoke-virtual {v0}, Lacn;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 275
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 278
    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0
.end method

.method public a(ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 163
    iget-object v1, p0, Lacq;->j:Ljava/util/ArrayList;

    monitor-enter v1

    .line 164
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lacq;->j:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 165
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lact;

    .line 168
    invoke-interface {v0, p1, p2}, Lact;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 170
    :cond_0
    return-void
.end method

.method public b()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lacq;->d:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lacn;
    .locals 1
    .parameter

    .prologue
    .line 305
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    const/4 v0, 0x0

    .line 309
    :goto_0
    return-object v0

    .line 308
    :cond_0
    invoke-direct {p0}, Lacq;->d()V

    .line 309
    iget-object v0, p0, Lacq;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacn;

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Lacn;
    .locals 1
    .parameter

    .prologue
    .line 313
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    const/4 v0, 0x0

    .line 317
    :goto_0
    return-object v0

    .line 316
    :cond_0
    invoke-direct {p0}, Lacq;->d()V

    .line 317
    iget-object v0, p0, Lacq;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacn;

    goto :goto_0
.end method

.method public h(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    .line 445
    invoke-direct {p0}, Lacq;->d()V

    .line 446
    invoke-virtual {p0, p1}, Lacq;->a(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 447
    if-nez v0, :cond_0

    .line 456
    :goto_0
    return-void

    .line 448
    :cond_0
    iget-object v1, p0, Lacq;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 449
    :try_start_0
    new-instance v2, Lacn;

    invoke-direct {v2, v0}, Lacn;-><init>(Landroid/content/pm/PackageInfo;)V

    .line 450
    iget-object v0, p0, Lacq;->e:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, v2, Lacn;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    invoke-virtual {v2}, Lacn;->f()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    .line 452
    iget-object v0, p0, Lacq;->f:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, v2, Lacn;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lacq;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 454
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 460
    invoke-direct {p0}, Lacq;->d()V

    .line 461
    iget-object v1, p0, Lacq;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 462
    :try_start_0
    iget-object v0, p0, Lacq;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    iget-object v0, p0, Lacq;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    invoke-direct {p0, p1}, Lacq;->m(Ljava/lang/String;)V

    .line 465
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lacq;->a(ILjava/lang/String;)V

    .line 467
    return-void

    .line 465
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    .line 478
    invoke-direct {p0}, Lacq;->d()V

    .line 480
    iget-object v1, p0, Lacq;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 481
    :try_start_0
    iget-object v0, p0, Lacq;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    iget-object v0, p0, Lacq;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    invoke-direct {p0, p1}, Lacq;->m(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p0, p1}, Lacq;->a(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 485
    if-nez v0, :cond_1

    monitor-exit v1

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    new-instance v2, Lacn;

    invoke-direct {v2, v0}, Lacn;-><init>(Landroid/content/pm/PackageInfo;)V

    .line 487
    iget-boolean v0, v2, Lacn;->c:Z

    .line 488
    iget-object v3, p0, Lacq;->e:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, v2, Lacn;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    invoke-virtual {v2}, Lacn;->f()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 490
    iget-object v3, p0, Lacq;->f:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, v2, Lacn;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    const/4 v1, 0x3

    invoke-virtual {p0, v1, p1}, Lacq;->a(ILjava/lang/String;)V

    .line 494
    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lacq;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 492
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
