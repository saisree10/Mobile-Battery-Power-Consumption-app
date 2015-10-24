.class public Lbcj;
.super Ljava/lang/Object;
.source "PutXML.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final f:Ljava/lang/String;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:I

.field private g:Lbco;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lbcj;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbcj;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILbco;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lbcj;->a:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lbcj;->b:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lbcj;->c:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lbcj;->d:Ljava/lang/String;

    .line 24
    const/16 v0, 0x2710

    iput v0, p0, Lbcj;->e:I

    .line 35
    iput-object p1, p0, Lbcj;->a:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lbcj;->b:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lbcj;->c:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lbcj;->d:Ljava/lang/String;

    .line 39
    iput p5, p0, Lbcj;->e:I

    .line 40
    iput-object p6, p0, Lbcj;->g:Lbco;

    .line 41
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 46
    const/4 v2, 0x0

    .line 49
    :try_start_0
    new-instance v1, Ljava/net/Socket;

    iget-object v3, p0, Lbcj;->a:Ljava/lang/String;

    const/16 v4, 0x1f90

    invoke-direct {v1, v3, v4}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 50
    :try_start_1
    iget v2, p0, Lbcj;->e:I

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 53
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 55
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 56
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<handle sig=FF44EE55 session_id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lbcj;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " org_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lbcj;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " w="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lbcj;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " />"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 63
    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 65
    const/4 v4, 0x1

    new-array v4, v4, [C

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-char v6, v4, v5

    .line 66
    :goto_0
    const/16 v5, 0xf

    if-ge v0, v5, :cond_0

    .line 68
    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write([C)V

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 86
    :cond_1
    if-eqz v1, :cond_2

    .line 91
    :try_start_2
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 99
    :cond_2
    :goto_1
    return-void

    .line 73
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 75
    :goto_2
    :try_start_3
    const-string v2, "Failed to connect to the fp server"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 86
    if-eqz v1, :cond_2

    .line 91
    :try_start_4
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    .line 77
    :catch_2
    move-exception v0

    move-object v1, v2

    .line 79
    :goto_3
    :try_start_5
    const-string v2, "Failed to read/write to the fp server"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    iget-object v0, p0, Lbcj;->g:Lbco;

    if-eqz v0, :cond_3

    .line 82
    iget-object v0, p0, Lbcj;->g:Lbco;

    invoke-virtual {v0}, Lbco;->d()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 86
    :cond_3
    if-eqz v1, :cond_2

    .line 91
    :try_start_6
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 86
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_4

    .line 91
    :try_start_7
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 86
    :cond_4
    :goto_5
    throw v0

    :catch_3
    move-exception v1

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 77
    :catch_4
    move-exception v0

    goto :goto_3

    .line 73
    :catch_5
    move-exception v0

    goto :goto_2
.end method
