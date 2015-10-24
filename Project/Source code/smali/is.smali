.class public Lis;
.super Ljava/lang/Object;
.source "AndroidUtils.java"


# static fields
.field private static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    sget-boolean v0, Lit;->a:Z

    sput-boolean v0, Lis;->a:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 99
    :goto_0
    return v0

    .line 53
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v2

    .line 55
    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 59
    invoke-static {p0}, Lka;->a(Landroid/content/Context;)Lka;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lka;->m()Ljz;

    move-result-object v5

    .line 62
    if-nez v5, :cond_3

    move v0, v2

    .line 63
    goto :goto_0

    .line 65
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 67
    if-eqz v5, :cond_5

    iget-object v0, v5, Ljz;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 68
    iget-object v0, v5, Ljz;->i:Ljava/lang/String;

    .line 74
    :goto_1
    invoke-static {p1}, Lis;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 75
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v5, v5, Ljz;->g:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 78
    :cond_4
    const/4 v0, 0x4

    goto :goto_0

    :cond_5
    move-object v0, v1

    .line 70
    goto :goto_1

    .line 80
    :cond_6
    const/16 v5, 0x4000

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 81
    if-nez v4, :cond_7

    move v0, v2

    .line 82
    goto :goto_0

    .line 84
    :cond_7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 87
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 88
    const/4 v0, 0x3

    goto :goto_0

    .line 90
    :cond_8
    invoke-static {p0}, Lkj;->b(Landroid/content/Context;)I

    move-result v0

    .line 91
    if-gez v0, :cond_9

    move v0, v2

    .line 92
    goto :goto_0

    .line 94
    :cond_9
    iget v1, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    if-lt v0, v1, :cond_a

    .line 95
    const/4 v0, 0x2

    goto :goto_0

    :cond_a
    move v0, v3

    .line 97
    goto :goto_0

    :cond_b
    move v0, v3

    .line 99
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Landroid/content/pm/IPackageManager;
    .locals 4
    .parameter

    .prologue
    .line 149
    const-string v0, "package"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lis;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v1

    .line 150
    const-string v2, "AndroidUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PM: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v1, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    return-object v0

    .line 150
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/os/IBinder;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    const/4 v0, 0x0

    .line 129
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 133
    :goto_0
    const-string v1, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    .line 134
    if-eqz p2, :cond_0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    if-nez v1, :cond_0

    .line 137
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 138
    const-string v1, "AndroidUtils"

    const-string v2, "system service"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :goto_1
    return-object v0

    .line 141
    :cond_0
    invoke-static {p1}, Lis;->b(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 142
    const-string v1, "AndroidUtils"

    const-string v2, "BP service"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 130
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    :goto_0
    return-object v0

    .line 108
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Liw;->a(Ljava/io/File;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 2
    .parameter

    .prologue
    .line 116
    :try_start_0
    invoke-static {}, Ld;->a()Lf;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_0

    .line 118
    invoke-interface {v0, p0}, Lf;->a(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 123
    :goto_0
    return-object v0

    .line 120
    :catch_0
    move-exception v0

    .line 122
    :cond_0
    const-string v0, "AndroidUtils"

    const-string v1, "BP daemon is not running."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v0, 0x0

    goto :goto_0
.end method
