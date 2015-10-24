.class public Lxm;
.super Ljava/lang/Object;
.source "NetTrafficUtils.java"


# direct methods
.method public static a(I)Lxn;
    .locals 8
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 31
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/uid_stat/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 32
    const/4 v0, 0x0

    .line 50
    :cond_0
    :goto_0
    return-object v0

    .line 35
    :cond_1
    new-instance v0, Lxn;

    invoke-direct {v0}, Lxn;-><init>()V

    .line 36
    iput p0, v0, Lxn;->a:I

    .line 38
    const-string v1, "/proc/uid_stat/%d/tcp_rcv"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-static {v1}, Lzq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    invoke-static {v1, v6, v7}, Lzy;->a(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lxn;->b:J

    .line 44
    :cond_2
    const-string v1, "/proc/uid_stat/%d/tcp_snd"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-static {v1}, Lzq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    invoke-static {v1, v6, v7}, Lzy;->a(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lxn;->c:J

    goto :goto_0
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/uid_stat/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Ljava/util/List;
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 57
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/uid_stat/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 59
    if-eqz v2, :cond_0

    array-length v0, v2

    if-nez v0, :cond_2

    .line 60
    :cond_0
    const/4 v0, 0x0

    .line 81
    :cond_1
    return-object v0

    .line 63
    :cond_2
    invoke-static {}, Lws;->a()Lws;

    move-result-object v3

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    array-length v4, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v2, v1

    .line 66
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[\\d]+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 65
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    :cond_4
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v8}, Lzy;->b(Ljava/lang/String;I)I

    move-result v5

    .line 70
    if-eq v5, v8, :cond_3

    .line 73
    invoke-virtual {v3, v5}, Lws;->b(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 76
    invoke-static {v5}, Lxm;->a(I)Lxn;

    move-result-object v5

    .line 77
    if-eqz v5, :cond_3

    .line 78
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
