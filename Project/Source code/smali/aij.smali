.class public Laij;
.super Ljava/lang/Object;
.source "AppConfig.java"


# static fields
.field public static a:Z

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const/4 v0, 0x0

    sput-boolean v0, Laij;->a:Z

    .line 11
    const-string v0, "http://t1.tira.cn:8125/recommend/apk/get?"

    sput-object v0, Laij;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 26
    const-string v0, "prod"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Laij;->a:Z

    .line 28
    const-string v0, "http://ak.dxsvr.com/rec/apk/get?"

    sput-object v0, Laij;->b:Ljava/lang/String;

    .line 41
    :goto_0
    return-void

    .line 30
    :cond_0
    const-string v0, "test"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    sput-boolean v1, Laij;->a:Z

    .line 32
    const-string v0, "http://t1.tira.cn:8125/recommend/apk/get?"

    sput-object v0, Laij;->b:Ljava/lang/String;

    goto :goto_0

    .line 34
    :cond_1
    const-string v0, "dev"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35
    sput-boolean v1, Laij;->a:Z

    .line 36
    const-string v0, "http://t1.tira.cn:8125/recommend/apk/get?"

    sput-object v0, Laij;->b:Ljava/lang/String;

    goto :goto_0

    .line 39
    :cond_2
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
