.class public final Lzm;
.super Ljava/lang/Object;
.source "CpuUtils.java"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq"

    aput-object v1, v0, v2

    const-string v1, "/sys/devices/system/cpu/cpu1/cpufreq/scaling_min_freq"

    aput-object v1, v0, v3

    sput-object v0, Lzm;->a:[Ljava/lang/String;

    .line 78
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    aput-object v1, v0, v2

    const-string v1, "/sys/devices/system/cpu/cpu1/cpufreq/scaling_max_freq"

    aput-object v1, v0, v3

    sput-object v0, Lzm;->b:[Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    sput-object v0, Lzm;->c:[I

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/io/BufferedReader;
    .locals 2
    .parameter

    .prologue
    .line 188
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 190
    :goto_0
    return-object v0

    .line 189
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    goto :goto_0
.end method

.method public static a()Lzn;
    .locals 7

    .prologue
    const/4 v5, 0x4

    const/4 v0, 0x0

    .line 86
    :try_start_0
    const-string v1, "/proc/stat"

    invoke-static {v1}, Lzm;->a(Ljava/lang/String;)Ljava/io/BufferedReader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 87
    if-nez v2, :cond_1

    .line 104
    if-eqz v2, :cond_0

    .line 106
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 110
    :cond_0
    :goto_0
    return-object v0

    .line 89
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 90
    const-string v3, "\\s+"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 91
    array-length v1, v3

    if-le v1, v5, :cond_1

    const/4 v1, 0x0

    aget-object v1, v3, v1

    const-string v4, "cpu"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    new-instance v1, Lzn;

    invoke-direct {v1}, Lzn;-><init>()V

    .line 93
    const/4 v4, 0x1

    aget-object v4, v3, v4

    const-wide/16 v5, 0x0

    invoke-static {v4, v5, v6}, Lzy;->a(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Lzn;->a:J

    .line 94
    const/4 v4, 0x2

    aget-object v4, v3, v4

    const-wide/16 v5, 0x0

    invoke-static {v4, v5, v6}, Lzy;->a(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Lzn;->b:J

    .line 95
    const/4 v4, 0x3

    aget-object v4, v3, v4

    const-wide/16 v5, 0x0

    invoke-static {v4, v5, v6}, Lzy;->a(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Lzn;->c:J

    .line 96
    const/4 v4, 0x4

    aget-object v3, v3, v4

    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lzy;->a(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v1, Lzn;->d:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 104
    if-eqz v2, :cond_2

    .line 106
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :cond_2
    :goto_1
    move-object v0, v1

    .line 107
    goto :goto_0

    .line 104
    :cond_3
    if-eqz v2, :cond_0

    .line 106
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v1

    goto :goto_0

    .line 100
    :catch_1
    move-exception v1

    move-object v2, v0

    .line 102
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 104
    if-eqz v2, :cond_0

    .line 106
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 107
    :catch_2
    move-exception v1

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    if-eqz v2, :cond_4

    .line 106
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 107
    :cond_4
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_4

    .line 104
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 100
    :catch_6
    move-exception v1

    goto :goto_2
.end method
