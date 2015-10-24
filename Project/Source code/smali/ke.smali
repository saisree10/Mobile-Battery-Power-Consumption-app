.class Lke;
.super Ljava/lang/Object;
.source "UpdateManager.java"

# interfaces
.implements Ljy;


# instance fields
.field final synthetic a:Lka;

.field private final b:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lka;)V
    .locals 1
    .parameter

    .prologue
    .line 1342
    iput-object p1, p0, Lke;->a:Lka;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1344
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lke;->b:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public a()Ljx;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1347
    iget-object v0, p0, Lke;->a:Lka;

    invoke-static {v0}, Lka;->d(Lka;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1348
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1349
    if-eqz v0, :cond_1

    .line 1350
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_1

    .line 1353
    :try_start_0
    iget-object v0, p0, Lke;->a:Lka;

    invoke-static {v0}, Lka;->d(Lka;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lke;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1354
    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1355
    const-string v0, "proxy"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1356
    const-string v0, "port"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1357
    const-string v0, "user"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1358
    const-string v0, "password"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1359
    new-instance v0, Ljx;

    invoke-direct {v0, v2, v3, v4, v5}, Ljx;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1365
    if-eqz v1, :cond_0

    .line 1366
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1371
    :cond_0
    :goto_0
    return-object v0

    .line 1362
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 1363
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1365
    if-eqz v1, :cond_1

    .line 1366
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v6

    .line 1371
    goto :goto_0

    .line 1365
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_2

    .line 1366
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1365
    :cond_2
    throw v0

    :cond_3
    if-eqz v1, :cond_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 1362
    :catch_1
    move-exception v0

    goto :goto_1
.end method
