.class public Lanv;
.super Ljava/lang/Object;
.source "AdPlatformConfigsMgr.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:I

.field private static c:J

.field private static d:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const-string v0, "http://t1.tira.cn:8125/toolsmisc/powermanagerAd"

    sput-object v0, Lanv;->a:Ljava/lang/String;

    .line 39
    const v0, 0x7fffffff

    sput v0, Lanv;->b:I

    .line 40
    const-wide v0, 0x7fffffffffffffffL

    sput-wide v0, Lanv;->c:J

    .line 41
    const-wide/16 v0, 0x0

    sput-wide v0, Lanv;->d:J

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 100
    invoke-static {p0}, Laog;->b(Landroid/content/Context;)V

    .line 101
    invoke-static {p0}, Laog;->a(Landroid/content/Context;)V

    .line 102
    invoke-static {p0, v2, v3}, Laog;->a(Landroid/content/Context;J)V

    .line 104
    const-wide v0, 0x7fffffffffffffffL

    sput-wide v0, Lanv;->c:J

    .line 105
    sput-wide v2, Lanv;->d:J

    .line 106
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 28
    const-string v0, "prod"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    const-string v0, "http://tls.dxsvr.com/powermanagerAd"

    sput-object v0, Lanv;->a:Ljava/lang/String;

    .line 36
    :goto_0
    return-void

    .line 30
    :cond_0
    const-string v0, "test"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    const-string v0, "http://t1.tira.cn:8125/toolsmisc/powermanagerAd"

    sput-object v0, Lanv;->a:Ljava/lang/String;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal env "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", only prod, test and dev is available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
