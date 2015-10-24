.class public Lzt;
.super Ljava/lang/Object;
.source "MemoryUtils.java"


# static fields
.field private static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lxy;->a:Z

    sput-boolean v0, Lzt;->a:Z

    return-void
.end method

.method public static a(Landroid/app/ActivityManager;I)I
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0

    .line 46
    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 33
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 35
    invoke-static {v0, p1}, Lzt;->a(Landroid/app/ActivityManager;I)I

    move-result v0

    return v0
.end method

.method public static a()[I
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    .line 114
    const/4 v0, 0x0

    .line 116
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/proc/meminfo"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v3, v2

    move v0, v2

    .line 121
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 122
    const-string v5, "MemTotal"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 123
    add-int/lit8 v3, v3, 0x1

    .line 124
    const/4 v0, 0x0

    invoke-static {v4, v0}, Lzy;->a(Ljava/lang/String;I)I

    move-result v0

    .line 132
    :cond_1
    :goto_0
    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    move v3, v2

    move v2, v0

    .line 136
    :goto_1
    if-lez v3, :cond_4

    if-lez v2, :cond_4

    .line 137
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v4, 0x0

    aput v3, v0, v4

    const/4 v3, 0x1

    aput v2, v0, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 144
    invoke-static {v1}, Lzq;->a(Ljava/io/Closeable;)V

    .line 146
    :goto_2
    return-object v0

    .line 125
    :cond_2
    :try_start_2
    const-string v5, "MemFree"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 126
    add-int/lit8 v3, v3, 0x1

    .line 127
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lzy;->a(Ljava/lang/String;I)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_0

    .line 128
    :cond_3
    const-string v5, "Cached"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 129
    add-int/lit8 v3, v3, 0x1

    .line 130
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lzy;->a(Ljava/lang/String;I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    add-int/2addr v2, v4

    goto :goto_0

    .line 144
    :cond_4
    invoke-static {v1}, Lzq;->a(Ljava/io/Closeable;)V

    .line 146
    :goto_3
    new-array v0, v6, [I

    fill-array-data v0, :array_0

    goto :goto_2

    .line 139
    :catch_0
    move-exception v1

    .line 144
    :goto_4
    invoke-static {v0}, Lzq;->a(Ljava/io/Closeable;)V

    goto :goto_3

    .line 141
    :catch_1
    move-exception v1

    move-object v1, v0

    .line 144
    :goto_5
    invoke-static {v1}, Lzq;->a(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_6
    invoke-static {v1}, Lzq;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_6

    .line 141
    :catch_2
    move-exception v0

    goto :goto_5

    .line 139
    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_4

    :cond_5
    move v3, v2

    move v2, v0

    goto :goto_1

    .line 146
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static a(Landroid/app/ActivityManager;[I)[I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v1

    .line 80
    array-length v0, v1

    new-array v2, v0, [I

    .line 81
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 83
    aget-object v3, v1, v0

    invoke-virtual {v3}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v3

    aput v3, v2, v0

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    return-object v2
.end method

.method public static a(Landroid/content/Context;[I)[I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 67
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 69
    invoke-static {v0, p1}, Lzt;->a(Landroid/app/ActivityManager;[I)[I

    move-result-object v0

    return-object v0
.end method
