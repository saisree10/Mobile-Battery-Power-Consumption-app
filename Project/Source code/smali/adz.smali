.class public Ladz;
.super Ljava/lang/Object;
.source "SkinDownloader.java"


# instance fields
.field public a:Lakb;

.field private b:Lcom/dianxinos/powermanager/PowerMangerApplication;

.field private final c:Laeb;

.field private final d:Lajy;


# direct methods
.method public constructor <init>(Lajy;)V
    .locals 2
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Laeb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Laeb;-><init>(Ladz;Laea;)V

    iput-object v0, p0, Ladz;->c:Laeb;

    .line 52
    invoke-static {}, Lcom/dianxinos/powermanager/PowerMangerApplication;->a()Lcom/dianxinos/powermanager/PowerMangerApplication;

    move-result-object v0

    iput-object v0, p0, Ladz;->b:Lcom/dianxinos/powermanager/PowerMangerApplication;

    .line 53
    iput-object p1, p0, Ladz;->d:Lajy;

    .line 54
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 113
    if-nez p1, :cond_0

    .line 131
    :goto_0
    return-object v0

    .line 117
    :cond_0
    invoke-static {}, Lazf;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "Android/data/com.dianxinos.dxbs/files"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 122
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Laze;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v1

    .line 124
    const-string v2, "SkinDownloader"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lzs;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_1
    invoke-static {p1}, Laze;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ladz;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 141
    invoke-static {p0, p1}, Ladz;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    if-nez v0, :cond_0

    .line 143
    const/4 v0, 0x0

    .line 146
    :goto_0
    return v0

    .line 145
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 137
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 57
    iget-object v0, p0, Ladz;->b:Lcom/dianxinos/powermanager/PowerMangerApplication;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Ladz;->b:Lcom/dianxinos/powermanager/PowerMangerApplication;

    const-class v3, Lcom/dianxinos/powermanager/download/DownloadFileService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Ladz;->c:Laeb;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/dianxinos/powermanager/PowerMangerApplication;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 59
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 8
    .parameter

    .prologue
    .line 66
    if-nez p1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Ladz;->b:Lcom/dianxinos/powermanager/PowerMangerApplication;

    invoke-static {v0}, Lazx;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 71
    :try_start_0
    iget-object v0, p0, Ladz;->d:Lajy;

    const v1, 0x30d4a

    const-wide/16 v2, 0x0

    invoke-interface {v0, p1, v1, v2, v3}, Lajy;->a(Ljava/lang/String;IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    const-string v1, "SkinDownloader"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lzs;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_2
    iget-object v0, p0, Ladz;->a:Lakb;

    if-eqz v0, :cond_0

    .line 80
    :try_start_1
    iget-object v0, p0, Ladz;->b:Lcom/dianxinos/powermanager/PowerMangerApplication;

    invoke-static {v0, p1}, Ladz;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    if-nez v0, :cond_3

    .line 82
    iget-object v0, p0, Ladz;->d:Lajy;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Ladz;->d:Lajy;

    const v1, 0x30d41

    const-wide/16 v2, 0x0

    invoke-interface {v0, p1, v1, v2, v3}, Lajy;->a(Ljava/lang/String;IJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 88
    :catch_1
    move-exception v0

    .line 89
    const-string v1, "SkinDownloader"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lzs;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_3
    :try_start_2
    iget-object v0, p0, Ladz;->a:Lakb;

    iget-object v1, p0, Ladz;->b:Lcom/dianxinos/powermanager/PowerMangerApplication;

    invoke-static {v1, p1}, Ladz;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    iget-object v7, p0, Ladz;->d:Lajy;

    move-object v1, p1

    invoke-interface/range {v0 .. v7}, Lakb;->a(Ljava/lang/String;Ljava/lang/String;JJLajy;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Ladz;->b:Lcom/dianxinos/powermanager/PowerMangerApplication;

    iget-object v1, p0, Ladz;->c:Laeb;

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/PowerMangerApplication;->unbindService(Landroid/content/ServiceConnection;)V

    .line 63
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Ladz;->a:Lakb;

    if-eqz v0, :cond_0

    .line 97
    :try_start_0
    iget-object v0, p0, Ladz;->a:Lakb;

    invoke-interface {v0, p1}, Lakb;->b(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 102
    :goto_0
    return v0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    const-string v1, "SkinDownloader"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lzs;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
