.class public Lsh;
.super Ljava/lang/Object;
.source "DXStatsService.java"


# direct methods
.method public static a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 14
    const-string v0, "dev"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    sput-boolean v1, Lud;->a:Z

    .line 16
    sput-boolean v1, Lud;->b:Z

    .line 17
    sget-boolean v0, Lud;->b:Z

    sput-boolean v0, Lud;->d:Z

    .line 18
    sget-boolean v0, Lud;->b:Z

    sput-boolean v0, Lud;->c:Z

    .line 31
    :goto_0
    return-void

    .line 19
    :cond_0
    const-string v0, "test"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    sput-boolean v1, Lud;->a:Z

    .line 21
    sput-boolean v1, Lud;->b:Z

    .line 22
    sget-boolean v0, Lud;->b:Z

    sput-boolean v0, Lud;->d:Z

    .line 23
    sget-boolean v0, Lud;->b:Z

    sput-boolean v0, Lud;->c:Z

    goto :goto_0

    .line 24
    :cond_1
    const-string v0, "prod"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25
    sput-boolean v2, Lud;->a:Z

    .line 26
    sput-boolean v2, Lud;->b:Z

    .line 27
    sget-boolean v0, Lud;->b:Z

    sput-boolean v0, Lud;->d:Z

    .line 28
    sget-boolean v0, Lud;->b:Z

    sput-boolean v0, Lud;->c:Z

    goto :goto_0

    .line 30
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong environment type!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
