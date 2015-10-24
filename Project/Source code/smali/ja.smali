.class public Lja;
.super Ljava/lang/Object;
.source "DownloadService.java"

# interfaces
.implements Ljw;


# instance fields
.field final synthetic a:Lcom/dianxinos/appupdate/DownloadService;

.field private final b:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/dianxinos/appupdate/DownloadService;)V
    .locals 1
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lja;->a:Lcom/dianxinos/appupdate/DownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lja;->b:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 290
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lja;->a:Lcom/dianxinos/appupdate/DownloadService;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/dianxinos/appupdate/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 296
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 297
    if-nez v0, :cond_0

    .line 298
    const/4 v0, 0x0

    .line 300
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lja;->a:Lcom/dianxinos/appupdate/DownloadService;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/dianxinos/appupdate/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 306
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 343
    :try_start_0
    iget-object v1, p0, Lja;->a:Lcom/dianxinos/appupdate/DownloadService;

    invoke-virtual {v1}, Lcom/dianxinos/appupdate/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roaming"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 346
    invoke-static {}, Lcom/dianxinos/appupdate/DownloadService;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 347
    const-string v2, "DownloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Allow roaming:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :cond_0
    if-eq v1, v0, :cond_1

    .line 353
    :goto_0
    return v0

    .line 349
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 350
    :catch_0
    move-exception v1

    .line 351
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public g()Ljx;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 357
    iget-object v0, p0, Lja;->a:Lcom/dianxinos/appupdate/DownloadService;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/dianxinos/appupdate/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 358
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 359
    if-eqz v0, :cond_2

    .line 360
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_2

    .line 363
    :try_start_0
    iget-object v0, p0, Lja;->a:Lcom/dianxinos/appupdate/DownloadService;

    invoke-virtual {v0}, Lcom/dianxinos/appupdate/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lja;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 364
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    const-string v0, "proxy"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 366
    const-string v0, "port"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 367
    const-string v0, "user"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 368
    const-string v0, "password"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 369
    new-instance v0, Ljx;

    invoke-direct {v0, v2, v3, v4, v5}, Ljx;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 375
    if-eqz v1, :cond_0

    .line 376
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 381
    :cond_0
    :goto_0
    return-object v0

    .line 375
    :cond_1
    if-eqz v1, :cond_2

    .line 376
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move-object v0, v6

    .line 381
    goto :goto_0

    .line 372
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 373
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 375
    if-eqz v1, :cond_2

    .line 376
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 375
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_3

    .line 376
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 375
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 372
    :catch_1
    move-exception v0

    goto :goto_2
.end method
