.class public Larf;
.super Landroid/os/AsyncTask;
.source "SkinUnzipTask.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 55
    iput-object p1, p0, Larf;->a:Landroid/content/Context;

    .line 56
    return-void
.end method

.method private static a(Ljava/util/zip/ZipInputStream;Ljava/io/File;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 128
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 130
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 133
    :goto_0
    invoke-virtual {p0, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 134
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 138
    return-void
.end method


# virtual methods
.method public final varargs a([Ljava/lang/String;)Larg;
    .locals 14
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x1

    .line 64
    aget-object v0, p1, v8

    .line 65
    invoke-static {v0}, Laze;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    iget-object v3, p0, Larf;->a:Landroid/content/Context;

    invoke-static {v3, v0}, Ladz;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    aget-object v3, p1, v1

    .line 68
    const/4 v4, 0x2

    aget-object v4, p1, v4

    .line 69
    const/4 v5, 0x3

    aget-object v5, p1, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 70
    if-nez v0, :cond_0

    .line 71
    new-instance v0, Larg;

    invoke-direct/range {v0 .. v6}, Larg;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 124
    :goto_0
    return-object v0

    .line 74
    :cond_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_2

    .line 76
    :cond_1
    new-instance v0, Larg;

    invoke-direct/range {v0 .. v6}, Larg;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 80
    :cond_2
    :try_start_0
    new-instance v10, Ljava/util/zip/ZipInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 82
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 86
    iget-object v7, p0, Larf;->a:Landroid/content/Context;

    const-string v9, "skin_v.jpg"

    invoke-virtual {v7, v9}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 87
    iget-object v7, p0, Larf;->a:Landroid/content/Context;

    const-string v9, "skin_h.jpg"

    invoke-virtual {v7, v9}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    move v7, v8

    move-object v9, v0

    move v0, v8

    .line 89
    :goto_1
    if-eqz v9, :cond_4

    .line 90
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    .line 91
    const-string v13, "skin_v.jpg"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 92
    invoke-static {v10, v11}, Larf;->a(Ljava/util/zip/ZipInputStream;Ljava/io/File;)V

    move v7, v1

    .line 99
    :cond_3
    :goto_2
    if-eqz v7, :cond_6

    if-eqz v0, :cond_6

    .line 106
    :cond_4
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 107
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->close()V

    .line 109
    if-eqz v7, :cond_8

    if-eqz v0, :cond_8

    .line 111
    iget-object v0, p0, Larf;->a:Landroid/content/Context;

    const-string v7, "ot__v.jpg"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    and-int/2addr v0, v1

    .line 112
    iget-object v7, p0, Larf;->a:Landroid/content/Context;

    const-string v9, "ot__h.jpg"

    invoke-virtual {v7, v9}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    and-int/2addr v0, v7

    .line 117
    new-instance v7, Larg;

    if-eqz v0, :cond_7

    :goto_3
    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    move-wide v12, v5

    invoke-direct/range {v7 .. v13}, Larg;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    move-object v0, v7

    goto :goto_0

    .line 94
    :cond_5
    const-string v13, "skin_h.jpg"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 95
    invoke-static {v10, v12}, Larf;->a(Ljava/util/zip/ZipInputStream;Ljava/io/File;)V

    move v0, v1

    .line 96
    goto :goto_2

    .line 103
    :cond_6
    invoke-virtual {v10}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    goto :goto_1

    :cond_7
    move v8, v1

    .line 117
    goto :goto_3

    .line 120
    :catch_0
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 124
    :cond_8
    new-instance v0, Larg;

    invoke-direct/range {v0 .. v6}, Larg;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0
.end method

.method public synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 40
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Larf;->a([Ljava/lang/String;)Larg;

    move-result-object v0

    return-object v0
.end method
