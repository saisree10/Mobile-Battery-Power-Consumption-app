.class public Ljm;
.super Ljava/lang/Object;
.source "PackageInfoCompat.java"


# static fields
.field private static a:Ljava/lang/reflect/Field;

.field private static b:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    const-class v0, Landroid/content/pm/PackageInfo;

    const-string v1, "firstInstallTime"

    invoke-static {v0, v1}, Ljq;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Ljm;->a:Ljava/lang/reflect/Field;

    .line 11
    const-class v0, Landroid/content/pm/PackageInfo;

    const-string v1, "lastUpdateTime"

    invoke-static {v0, v1}, Ljq;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Ljm;->b:Ljava/lang/reflect/Field;

    return-void
.end method

.method public static a(Landroid/content/pm/PackageInfo;)J
    .locals 2
    .parameter

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const-wide/16 v0, -0x1

    .line 42
    :goto_0
    return-wide v0

    .line 34
    :cond_0
    sget-object v0, Ljm;->b:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 36
    :try_start_0
    sget-object v0, Ljm;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 41
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    goto :goto_0
.end method
