.class public Lazu;
.super Ljava/lang/Object;
.source "MemoryUtils.java"


# static fields
.field public static a:I

.field private static b:Ljava/lang/reflect/Method;

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    sput-object v0, Lazu;->b:Ljava/lang/reflect/Method;

    .line 133
    const/4 v0, -0x1

    sput v0, Lazu;->c:I

    .line 135
    const/16 v0, 0xc8

    sput v0, Lazu;->a:I

    return-void
.end method

.method private static a(Ljava/io/File;)J
    .locals 5
    .parameter

    .prologue
    .line 210
    const-wide/16 v0, 0x0

    .line 211
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v3, v0

    mul-long v0, v1, v3

    .line 215
    :cond_0
    return-wide v0
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 187
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 188
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/app/ActivityManager;[I)[I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v1

    .line 69
    array-length v0, v1

    new-array v2, v0, [I

    .line 70
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 72
    aget-object v3, v1, v0

    invoke-virtual {v3}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v3

    aput v3, v2, v0

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    return-object v2
.end method

.method public static b()J
    .locals 2

    .prologue
    .line 196
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 197
    invoke-static {v0}, Lazu;->a(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static c()J
    .locals 2

    .prologue
    .line 205
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 206
    invoke-static {v0}, Lazu;->a(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method
