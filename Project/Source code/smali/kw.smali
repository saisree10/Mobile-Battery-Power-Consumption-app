.class public interface abstract Lkw;
.super Ljava/lang/Object;
.source "CacheService.java"


# static fields
.field public static final a:Ljava/io/File;

.field public static final b:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, ".cms/cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lkw;->a:Ljava/io/File;

    .line 22
    new-instance v0, Ljava/io/File;

    sget-object v1, Lkw;->a:Ljava/io/File;

    const-string v2, "img"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lkw;->b:Ljava/io/File;

    .line 14
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Lkv;
.end method

.method public abstract a(Ljava/lang/String;Lkv;)Z
.end method
