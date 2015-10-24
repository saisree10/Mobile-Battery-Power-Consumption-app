.class public Lanr;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final f:Ljava/lang/String;

.field private static final g:I


# instance fields
.field private final a:Ljava/lang/Process;

.field private final b:Ljava/io/BufferedReader;

.field private final c:Ljava/io/DataOutputStream;

.field private final d:Ljava/util/List;

.field private e:Z

.field private h:Ljava/lang/Runnable;

.field private i:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-string v0, "LD_LIBRARY_PATH"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lanr;->f:Ljava/lang/String;

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput v0, Lanr;->g:I

    return-void

    :cond_0
    const/16 v0, 0x801

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanr;->d:Ljava/util/List;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanr;->e:Z

    .line 187
    new-instance v0, Lans;

    invoke-direct {v0, p0}, Lans;-><init>(Lanr;)V

    iput-object v0, p0, Lanr;->h:Ljava/lang/Runnable;

    .line 197
    new-instance v0, Lant;

    invoke-direct {v0, p0}, Lant;-><init>(Lanr;)V

    iput-object v0, p0, Lanr;->i:Ljava/lang/Runnable;

    .line 157
    const-string v0, "Shell"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting shell: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-static {p1, p2, p3}, Lanr;->a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lanr;->a:Ljava/lang/Process;

    .line 163
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lanr;->a:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lanr;->b:Ljava/io/BufferedReader;

    .line 164
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lanr;->a:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lanr;->c:Ljava/io/DataOutputStream;

    .line 166
    iget-object v0, p0, Lanr;->c:Ljava/io/DataOutputStream;

    const-string v1, "echo Started\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 167
    iget-object v0, p0, Lanr;->c:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 170
    :cond_0
    iget-object v0, p0, Lanr;->b:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 171
    if-nez v0, :cond_1

    .line 172
    new-instance v0, Lanq;

    const-string v1, "stdout line is null! Access was denied or this executeable is not a shell!"

    invoke-direct {v0, v1}, Lanq;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_1
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    const-string v1, "Started"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lanr;->h:Ljava/lang/Runnable;

    const-string v2, "Shell Input"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 184
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lanr;->i:Ljava/lang/Runnable;

    const-string v2, "Shell Output"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 185
    return-void

    .line 179
    :cond_2
    invoke-direct {p0}, Lanr;->d()V

    .line 180
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to start shell, unexpected output \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static a(Ljava/util/ArrayList;Ljava/lang/String;)Lanr;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 57
    const-string v0, "Shell"

    const-string v1, "Starting Root Shell!"

    invoke-static {v0, v1}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lanr;->c()Ljava/lang/String;

    move-result-object v0

    .line 59
    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/io/IOException;

    const-string v1, "get su path return null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    if-nez p0, :cond_1

    .line 68
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LD_LIBRARY_PATH="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lanr;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v1, Lanr;

    invoke-direct {v1, v0, p0, p1}, Lanr;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 74
    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/Process;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v2

    .line 112
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    add-int/2addr v0, v3

    new-array v4, v0, [Ljava/lang/String;

    .line 115
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v1

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 116
    add-int/lit8 v3, v2, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    move v2, v3

    goto :goto_1

    :cond_0
    move v0, v1

    .line 112
    goto :goto_0

    .line 118
    :cond_1
    if-eqz p1, :cond_2

    .line 119
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 120
    add-int/lit8 v1, v2, 0x1

    aput-object v0, v4, v2

    move v2, v1

    goto :goto_2

    .line 125
    :cond_2
    if-nez p2, :cond_3

    .line 126
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v4, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v0

    .line 130
    :goto_3
    return-object v0

    .line 128
    :cond_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v4, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    move-result-object v0

    goto :goto_3
.end method

.method static synthetic a(Lanr;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lanr;->e()V

    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 105
    invoke-static {}, Lanr;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 78
    invoke-static {}, Lgk;->a()Ljava/lang/Object;

    move-result-object v2

    .line 80
    new-array v3, v1, [Ljava/lang/Object;

    aput-object v2, v3, v0

    .line 84
    invoke-static {p0, v3}, Lgk;->a(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    aget-object v2, v3, v0

    .line 88
    invoke-static {v2}, Lgk;->a(Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    const-string v1, "Shell"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] for file owner."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    invoke-static {v2}, Lgk;->b(Ljava/lang/Object;)I

    move-result v2

    sget v3, Lanr;->g:I

    and-int/2addr v2, v3

    sget v3, Lanr;->g:I

    if-eq v2, v3, :cond_2

    .line 94
    const-string v1, "Shell"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] for file permission."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 98
    goto :goto_0
.end method

.method public static b()Lanr;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 152
    invoke-static {v0, v0}, Lanr;->a(Ljava/util/ArrayList;Ljava/lang/String;)Lanr;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lanr;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lanr;->f()V

    return-void
.end method

.method private static c()Ljava/lang/String;
    .locals 5

    .prologue
    .line 134
    const-string v0, "PATH"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 136
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 137
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/su"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-static {v0}, Lanr;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 142
    :goto_1
    return-object v0

    .line 136
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 142
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private d()V
    .locals 2

    .prologue
    .line 217
    :try_start_0
    iget-object v0, p0, Lanr;->a:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    const-string v0, "Shell"

    const-string v1, "Shell destroyed"

    invoke-static {v0, v1}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 224
    iget-object v0, p0, Lanr;->a:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    goto :goto_0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 237
    const/4 v1, 0x0

    .line 240
    :goto_0
    :try_start_0
    iget-object v2, p0, Lanr;->d:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lanr;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lanr;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 242
    iget-object v0, p0, Lanr;->d:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    const-string v1, "Shell"

    const-string v2, "interrupted while writing command"

    invoke-static {v1, v2, v0}, Lazt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 264
    :goto_2
    return-void

    .line 244
    :cond_0
    :try_start_3
    iget-object v3, p0, Lanr;->c:Ljava/io/DataOutputStream;

    .line 245
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 246
    :try_start_4
    iget-object v0, p0, Lanr;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 247
    iget-object v0, p0, Lanr;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanp;

    .line 248
    invoke-virtual {v0, v3}, Lanp;->a(Ljava/io/OutputStream;)V

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\necho dxbs@dxos*D^@#F "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " $?\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 251
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 252
    add-int/lit8 v0, v1, 0x1

    :goto_3
    move v1, v0

    .line 260
    goto :goto_0

    .line 253
    :cond_1
    iget-boolean v0, p0, Lanr;->e:Z

    if-eqz v0, :cond_2

    .line 254
    const-string v0, "\nexit 0\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 255
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 256
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 257
    const-string v0, "Shell"

    const-string v1, "Closing shell"

    invoke-static {v0, v1}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_3
.end method

.method private f()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 272
    move v2, v3

    move-object v0, v4

    .line 277
    :cond_0
    :goto_0
    iget-object v1, p0, Lanr;->b:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 280
    if-nez v1, :cond_2

    .line 315
    :goto_1
    const-string v1, "Shell"

    const-string v3, "Read all output"

    invoke-static {v1, v3}, Lazt;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Lanr;->a:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 317
    invoke-direct {p0}, Lanr;->d()V

    .line 319
    :goto_2
    iget-object v1, p0, Lanr;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_7

    .line 320
    if-nez v0, :cond_1

    .line 321
    iget-object v0, p0, Lanr;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanp;

    .line 323
    :cond_1
    const-string v1, "Unexpected Termination!"

    invoke-virtual {v0, v1}, Lanp;->c(Ljava/lang/String;)V

    .line 324
    add-int/lit8 v2, v2, 0x1

    move-object v0, v4

    .line 325
    goto :goto_2

    .line 283
    :cond_2
    if-nez v0, :cond_4

    .line 286
    iget-object v5, p0, Lanr;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v2, v5, :cond_3

    .line 287
    iget-boolean v1, p0, Lanr;->e:Z

    if-eqz v1, :cond_0

    goto :goto_1

    .line 293
    :cond_3
    iget-object v0, p0, Lanr;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanp;

    .line 296
    :cond_4
    const-string v5, "dxbs@dxos*D^@#F"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 297
    if-lez v5, :cond_5

    .line 298
    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lanp;->a(Ljava/lang/String;)V

    .line 300
    :cond_5
    if-ltz v5, :cond_6

    .line 301
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 302
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 303
    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 304
    if-ne v6, v2, :cond_6

    .line 305
    const/4 v1, 0x2

    aget-object v1, v5, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lanp;->c(I)V

    .line 308
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v4

    .line 310
    goto :goto_0

    .line 313
    :cond_6
    invoke-virtual {v0, v1}, Lanp;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 327
    :cond_7
    return-void
.end method


# virtual methods
.method public a(Lanp;)Lanp;
    .locals 2
    .parameter

    .prologue
    .line 336
    iget-boolean v0, p0, Lanr;->e:Z

    if-eqz v0, :cond_0

    .line 337
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to add commands to a closed shell"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_0
    iget-object v1, p0, Lanr;->d:Ljava/util/List;

    monitor-enter v1

    .line 339
    :try_start_0
    iget-object v0, p0, Lanr;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    iget-object v0, p0, Lanr;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, p0, v0}, Lanp;->a(Lanr;I)V

    .line 343
    iget-object v0, p0, Lanr;->d:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 344
    monitor-exit v1

    .line 346
    return-object p1

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 354
    iget-object v1, p0, Lanr;->d:Ljava/util/List;

    monitor-enter v1

    .line 355
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lanr;->e:Z

    .line 356
    iget-object v0, p0, Lanr;->d:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 357
    monitor-exit v1

    .line 358
    return-void

    .line 357
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
