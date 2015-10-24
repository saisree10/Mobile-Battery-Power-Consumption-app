.class public Luk;
.super Ljava/lang/Object;
.source "WriteSDCard.java"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 21
    const/4 v1, 0x0

    .line 23
    :try_start_0
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 24
    new-instance v0, Ljava/io/File;

    const-string v2, "/sdcard/dianxinos/"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 26
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 28
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/sdcard/dianxinos/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 30
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 36
    :cond_1
    :goto_0
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 38
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 44
    :goto_1
    if-eqz v2, :cond_2

    .line 46
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 51
    :cond_2
    :goto_2
    return-void

    .line 31
    :cond_3
    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x1400000

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 32
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 33
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    :goto_3
    :try_start_4
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_4

    .line 42
    const-string v2, "stat.WriteSDCard"

    const-string v3, "createNewFile has IOException!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 44
    :cond_4
    if-eqz v1, :cond_2

    .line 46
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 47
    :catch_1
    move-exception v0

    .line 48
    const-string v1, "stat.WriteSDCard"

    const-string v2, "closeFileOutStream has IOException!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 47
    :catch_2
    move-exception v0

    .line 48
    const-string v1, "stat.WriteSDCard"

    const-string v2, "closeFileOutStream has IOException!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 44
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_5

    .line 46
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 49
    :cond_5
    :goto_5
    throw v0

    .line 47
    :catch_3
    move-exception v1

    .line 48
    const-string v2, "stat.WriteSDCard"

    const-string v3, "closeFileOutStream has IOException!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 44
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_4

    .line 40
    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :cond_6
    move-object v2, v1

    goto :goto_1
.end method
