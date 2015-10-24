.class public Lbbk;
.super Ljava/lang/Object;
.source "ImageCache.java"


# static fields
.field private static f:Lbbk;


# instance fields
.field public a:Z

.field private b:Lbbe;

.field private c:Ljava/lang/Object;

.field private d:Lbq;

.field private e:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbbk;->c:Ljava/lang/Object;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbbk;->a:Z

    .line 49
    invoke-static {}, Lcom/dianxinos/powermanager/PowerMangerApplication;->a()Lcom/dianxinos/powermanager/PowerMangerApplication;

    move-result-object v0

    iput-object v0, p0, Lbbk;->e:Landroid/content/Context;

    .line 50
    invoke-static {}, Lazi;->a()Lazi;

    move-result-object v0

    new-instance v1, Lbbl;

    invoke-direct {v1, p0}, Lbbl;-><init>(Lbbk;)V

    invoke-virtual {v0, v1}, Lazi;->a(Ljava/lang/Runnable;)V

    .line 68
    new-instance v0, Lbbm;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v1

    const-wide/16 v3, 0x400

    div-long/2addr v1, v3

    const-wide/16 v3, 0xa

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-direct {v0, p0, v1}, Lbbm;-><init>(Lbbk;I)V

    iput-object v0, p0, Lbbk;->d:Lbq;

    .line 76
    return-void
.end method

.method static synthetic a(Lbbk;Lbbe;)Lbbe;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lbbk;->b:Lbbe;

    return-object p1
.end method

.method public static a()Lbbk;
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lbbk;->f:Lbbk;

    if-nez v0, :cond_1

    .line 38
    const-class v1, Lbbk;

    monitor-enter v1

    .line 39
    :try_start_0
    sget-object v0, Lbbk;->f:Lbbk;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lbbk;

    invoke-direct {v0}, Lbbk;-><init>()V

    sput-object v0, Lbbk;->f:Lbbk;

    .line 43
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_1
    sget-object v0, Lbbk;->f:Lbbk;

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lbbk;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lbbk;->c:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lbbk;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lbbk;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lbbk;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lbbk;->e:Landroid/content/Context;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    iget-object v1, p0, Lbbk;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 80
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lbbk;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 82
    :try_start_1
    const-string v0, "wait..."

    invoke-direct {p0, v0}, Lbbk;->c(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lbbk;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 91
    :try_start_4
    iget-object v0, p0, Lbbk;->b:Lbbe;

    invoke-static {p1}, Laze;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbbe;->a(Ljava/lang/String;)Lbbj;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_1

    .line 93
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbbj;->a(I)Ljava/io/InputStream;

    move-result-object v0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decode bitmap w:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lbbk;->c(Ljava/lang/String;)V

    .line 95
    invoke-static {v0, p2, p3}, Lbbp;->a(Ljava/io/InputStream;II)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    .line 101
    :goto_1
    return-object v0

    .line 97
    :catch_1
    move-exception v0

    .line 98
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 101
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lbbk;->d:Lbq;

    invoke-virtual {v0, p1}, Lbq;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 150
    if-nez v0, :cond_0

    .line 151
    const-string v1, "mem cache missing"

    invoke-direct {p0, v1}, Lbbk;->c(Ljava/lang/String;)V

    .line 153
    :cond_0
    return-object v0
.end method

.method public a(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 106
    .line 109
    :try_start_0
    iget-object v0, p0, Lbbk;->b:Lbbe;

    invoke-static {p2}, Laze;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbbe;->b(Ljava/lang/String;)Lbbg;

    move-result-object v0

    .line 110
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v3, 0x1000

    invoke-direct {v1, p1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    .line 111
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 112
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v3}, Lbbg;->a(I)Ljava/io/OutputStream;

    move-result-object v4

    .line 113
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 114
    const/16 v2, 0x1000

    :try_start_2
    new-array v2, v2, [B

    .line 116
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 117
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 124
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 126
    if-eqz v1, :cond_0

    .line 128
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 133
    :cond_0
    :goto_2
    if-eqz v2, :cond_1

    .line 135
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 141
    :cond_1
    :goto_3
    return-void

    .line 119
    :cond_2
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download complete "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lbbk;->c(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Lbbg;->a()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    move-object v2, v3

    .line 126
    :cond_3
    if-eqz v1, :cond_4

    .line 128
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 133
    :cond_4
    :goto_4
    if-eqz v2, :cond_1

    .line 135
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    .line 136
    :catch_1
    move-exception v0

    goto :goto_3

    .line 126
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_5
    if-eqz v1, :cond_5

    .line 128
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 133
    :cond_5
    :goto_6
    if-eqz v3, :cond_6

    .line 135
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 138
    :cond_6
    :goto_7
    throw v0

    .line 129
    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_2

    .line 136
    :catch_4
    move-exception v0

    goto :goto_3

    .line 129
    :catch_5
    move-exception v1

    goto :goto_6

    .line 136
    :catch_6
    move-exception v1

    goto :goto_7

    .line 126
    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_5

    .line 123
    :catch_7
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catch_8
    move-exception v0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Lbbo;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lbbk;->d:Lbq;

    invoke-virtual {v0, p1, p2}, Lbq;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 157
    iget-object v1, p0, Lbbk;->d:Lbq;

    invoke-virtual {v1, p1}, Lbq;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v0

    .line 161
    :cond_1
    iget-object v2, p0, Lbbk;->c:Ljava/lang/Object;

    monitor-enter v2

    .line 162
    :goto_1
    :try_start_0
    iget-boolean v1, p0, Lbbk;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 164
    :try_start_1
    const-string v1, "wait..."

    invoke-direct {p0, v1}, Lbbk;->c(Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lbbk;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 166
    :catch_0
    move-exception v1

    .line 167
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 174
    :try_start_4
    iget-object v1, p0, Lbbk;->b:Lbbe;

    invoke-static {p1}, Laze;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbbe;->a(Ljava/lang/String;)Lbbj;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v1

    if-nez v1, :cond_0

    .line 181
    :goto_2
    const/4 v0, 0x0

    goto :goto_0

    .line 177
    :catch_1
    move-exception v0

    .line 178
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method
