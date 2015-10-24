.class public Lank;
.super Ljava/lang/Object;
.source "RecommendConfig.java"


# static fields
.field public static a:Z

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/4 v0, 0x0

    sput-boolean v0, Lank;->a:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 44
    const-string v0, "prod"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lank;->a:Z

    .line 46
    const-string v0, "http://mk.jccjd.com/cf/"

    sput-object v0, Lank;->b:Ljava/lang/String;

    .line 47
    const-string v0, "http://mk.jccjd.com/cf/rs"

    sput-object v0, Lank;->c:Ljava/lang/String;

    .line 56
    :goto_0
    return-void

    .line 48
    :cond_0
    const-string v0, "test"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    const/4 v0, 0x1

    sput-boolean v0, Lank;->a:Z

    .line 50
    const-string v0, "http://t1.tira.cn:8125/cms/"

    sput-object v0, Lank;->b:Ljava/lang/String;

    .line 51
    const-string v0, "http://t1.tira.cn:8125/cms/rs"

    sput-object v0, Lank;->c:Ljava/lang/String;

    goto :goto_0

    .line 53
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
