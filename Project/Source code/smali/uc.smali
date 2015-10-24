.class public Luc;
.super Ljava/lang/Object;
.source "AppInfoUtils.java"


# direct methods
.method public static a(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Ljava/lang/Long;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 80
    const/4 v1, 0x0

    .line 83
    :try_start_0
    const-class v0, Landroid/content/pm/PackageInfo;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    .line 106
    :goto_0
    if-nez v0, :cond_0

    .line 108
    :try_start_1
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 109
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    move-result-object v0

    .line 125
    :cond_0
    :goto_1
    return-object v0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_1

    .line 86
    const-string v2, "stat.AppInfoUtils"

    const-string v3, "GetTimeByPackageInfo in reflect has IllegalArgumentException!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move-object v0, v1

    .line 104
    goto :goto_0

    .line 88
    :catch_1
    move-exception v0

    .line 89
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_2

    .line 90
    const-string v2, "stat.AppInfoUtils"

    const-string v3, "GetTimeByPackageInfo in reflect has SecurityException!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    move-object v0, v1

    .line 104
    goto :goto_0

    .line 92
    :catch_2
    move-exception v0

    .line 93
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_3

    .line 94
    const-string v2, "stat.AppInfoUtils"

    const-string v3, "GetTimeByPackageInfo in reflect has IllegalAccessException!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    move-object v0, v1

    .line 104
    goto :goto_0

    .line 96
    :catch_3
    move-exception v0

    .line 97
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_4

    .line 98
    const-string v2, "stat.AppInfoUtils"

    const-string v3, "GetTimeByPackageInfo in reflect has NoSuchFieldException!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    move-object v0, v1

    .line 104
    goto :goto_0

    .line 100
    :catch_4
    move-exception v0

    .line 101
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_5

    .line 102
    const-string v2, "stat.AppInfoUtils"

    const-string v3, "GetTimeByPackageInfo in reflect has Exception!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    move-object v0, v1

    goto :goto_0

    .line 110
    :catch_5
    move-exception v1

    .line 111
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_0

    .line 112
    const-string v2, "stat.AppInfoUtils"

    const-string v3, "GetTimeByPackageInfo has NullPointerException!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 114
    :catch_6
    move-exception v1

    .line 115
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_0

    .line 116
    const-string v2, "stat.AppInfoUtils"

    const-string v3, "GetTimeByPackageInfo has SecurityException!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 118
    :catch_7
    move-exception v1

    .line 119
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_0

    .line 120
    const-string v2, "stat.AppInfoUtils"

    const-string v3, "GetTimeByPackageInfo has Exception!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 21
    const-string v0, ""

    .line 23
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 36
    :cond_0
    :goto_0
    return-object v0

    .line 27
    :catch_0
    move-exception v1

    .line 28
    sget-boolean v1, Lud;->d:Z

    if-eqz v1, :cond_0

    .line 29
    const-string v1, "stat.AppInfoUtils"

    const-string v2, "Failed to get VersionName!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 31
    :catch_1
    move-exception v1

    .line 32
    sget-boolean v1, Lud;->d:Z

    if-eqz v1, :cond_0

    .line 33
    const-string v1, "stat.AppInfoUtils"

    const-string v2, "Failed to get VersionName!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 40
    const/4 v0, -0x1

    .line 42
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 55
    :cond_0
    :goto_0
    return v0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    sget-boolean v1, Lud;->d:Z

    if-eqz v1, :cond_0

    .line 48
    const-string v1, "stat.AppInfoUtils"

    const-string v2, "Failed to get VersionCode!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 50
    :catch_1
    move-exception v1

    .line 51
    sget-boolean v1, Lud;->d:Z

    if-eqz v1, :cond_0

    .line 52
    const-string v1, "stat.AppInfoUtils"

    const-string v2, "Failed to get VersionCode!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 59
    const-string v0, ""

    .line 61
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 62
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 63
    array-length v2, v1

    if-lez v2, :cond_0

    .line 64
    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    .line 65
    invoke-static {v1}, Lte;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 76
    :cond_0
    :goto_0
    return-object v0

    .line 67
    :catch_0
    move-exception v1

    .line 68
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_0

    .line 69
    const-string v2, "stat.AppInfoUtils"

    const-string v3, "Failed to get signature!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 71
    :catch_1
    move-exception v1

    .line 72
    sget-boolean v2, Lud;->d:Z

    if-eqz v2, :cond_0

    .line 73
    const-string v2, "stat.AppInfoUtils"

    const-string v3, "Failed to get signature!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
