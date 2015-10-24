.class public Laoi;
.super Ljava/lang/Object;
.source "OptimizerSwitchMgr.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:I

.field private static c:Z

.field private static d:J

.field private static e:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    const-string v0, "http://t1.tira.cn:8125/toolsmisc/sa"

    sput-object v0, Laoi;->a:Ljava/lang/String;

    .line 41
    const v0, 0x7fffffff

    sput v0, Laoi;->b:I

    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Laoi;->c:Z

    .line 43
    const-wide v0, 0x7fffffffffffffffL

    sput-wide v0, Laoi;->d:J

    .line 44
    const-wide/16 v0, 0x0

    sput-wide v0, Laoi;->e:J

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 30
    const-string v0, "prod"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    const-string v0, "http://tls.dxsvr.com/sa"

    sput-object v0, Laoi;->a:Ljava/lang/String;

    .line 38
    :goto_0
    return-void

    .line 32
    :cond_0
    const-string v0, "test"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    const-string v0, "http://t1.tira.cn:8125/toolsmisc/sa"

    sput-object v0, Laoi;->a:Ljava/lang/String;

    goto :goto_0

    .line 35
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
