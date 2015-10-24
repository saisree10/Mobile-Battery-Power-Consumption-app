.class public Loq;
.super Ljava/lang/Object;
.source "ToolboxCacheManager.java"


# static fields
.field static final a:[Ljava/lang/String;

.field private static j:Loq;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/database/sqlite/SQLiteDatabase;

.field private d:Ljava/util/HashMap;

.field private e:Ljava/util/HashMap;

.field private f:Ljava/util/ArrayList;

.field private final g:Ljava/io/File;

.field private h:Ljava/lang/Object;

.field private i:Z

.field private k:Lbbq;

.field private final l:Ljava/lang/Object;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 467
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "pid"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "tid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gid"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "iid"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "pkg_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "desc"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "short_desc"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "position"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "open_type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "url_source"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "icon"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "url_play"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "url_apk"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "pts"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "points"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "download"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "new"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "click_time"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "update_time"

    aput-object v2, v0, v1

    sput-object v0, Loq;->a:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Loq;->d:Ljava/util/HashMap;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Loq;->e:Ljava/util/HashMap;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Loq;->f:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Loq;->h:Ljava/lang/Object;

    .line 70
    iput-boolean v1, p0, Loq;->i:Z

    .line 210
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Loq;->l:Ljava/lang/Object;

    .line 211
    iput-boolean v1, p0, Loq;->m:Z

    .line 83
    iput-object p1, p0, Loq;->b:Landroid/content/Context;

    .line 85
    const-string v0, "toolboximg"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Loq;->g:Ljava/io/File;

    .line 86
    iget-object v0, p0, Loq;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Loq;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 90
    :cond_0
    invoke-static {p1}, Loq;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 91
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lot;

    .line 92
    iget-object v2, p0, Loq;->e:Ljava/util/HashMap;

    iget-object v3, v0, Lot;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 95
    :cond_1
    new-instance v0, Lpe;

    iget-object v1, p0, Loq;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lpe;-><init>(Landroid/content/Context;)V

    .line 96
    invoke-virtual {v0}, Lpe;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Loq;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 97
    return-void
.end method

.method static synthetic a(Loq;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Loq;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Loq;
    .locals 3
    .parameter

    .prologue
    .line 75
    const-class v1, Loq;

    monitor-enter v1

    :try_start_0
    sget-object v0, Loq;->j:Loq;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Loq;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Loq;-><init>(Landroid/content/Context;)V

    sput-object v0, Loq;->j:Loq;

    .line 77
    sget-object v0, Loq;->j:Loq;

    invoke-direct {v0}, Loq;->d()V

    .line 79
    :cond_0
    sget-object v0, Loq;->j:Loq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/content/ContentValues;Lou;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 653
    invoke-virtual {p0}, Landroid/content/ContentValues;->clear()V

    .line 654
    const-string v0, "ad_tag"

    iget-object v1, p1, Lou;->q:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const-string v0, "pid"

    iget-wide v1, p1, Lou;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 657
    const-string v0, "tid"

    iget-wide v1, p1, Lou;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 658
    const-string v0, "gid"

    iget-wide v1, p1, Lou;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 659
    const-string v0, "iid"

    iget-wide v1, p1, Lou;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 661
    const-string v0, "name"

    iget-object v1, p1, Lou;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const-string v0, "pkg_name"

    iget-object v1, p1, Lou;->f:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    const-string v0, "icon"

    iget-object v1, p1, Lou;->l:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const-string v0, "desc"

    iget-object v1, p1, Lou;->g:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const-string v0, "short_desc"

    iget-object v1, p1, Lou;->h:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    const-string v0, "position"

    iget v1, p1, Lou;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 668
    const-string v0, "open_type"

    iget v1, p1, Lou;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 669
    const-string v0, "url_source"

    iget-object v1, p1, Lou;->k:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    const-string v0, "icon"

    iget-object v1, p1, Lou;->l:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    const-string v0, "url_play"

    iget-object v1, p1, Lou;->m:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    const-string v0, "url_apk"

    iget-object v1, p1, Lou;->n:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    const-string v0, "pts"

    iget v1, p1, Lou;->o:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 676
    const-string v0, "points"

    iget v1, p1, Lou;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 678
    const-string v1, "new"

    iget-boolean v0, p1, Lou;->r:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 680
    const-string v0, "download"

    iget-wide v1, p1, Lou;->s:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 682
    const-string v0, "update_time"

    iget-wide v1, p1, Lou;->w:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 683
    return-void

    .line 678
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Loq;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Loq;->m(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Loq;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Loq;->b(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Loq;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-boolean p1, p0, Loq;->i:Z

    return p1
.end method

.method static synthetic b(Loq;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Loq;->b:Landroid/content/Context;

    return-object v0
.end method

.method private b(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 244
    invoke-static {p1}, Lpi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    iget-object v4, p0, Loq;->l:Ljava/lang/Object;

    monitor-enter v4

    .line 248
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Loq;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    .line 250
    :try_start_1
    iget-object v2, p0, Loq;->l:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 251
    :catch_0
    move-exception v2

    goto :goto_0

    .line 254
    :cond_0
    :try_start_2
    iget-object v2, p0, Loq;->k:Lbbq;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_1

    .line 257
    :try_start_3
    iget-object v2, p0, Loq;->k:Lbbq;

    invoke-virtual {v2, v1}, Lbbq;->a(Ljava/lang/String;)Lbbw;

    move-result-object v1

    .line 258
    if-eqz v1, :cond_3

    .line 260
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lbbw;->a(I)Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    .line 261
    if-eqz v2, :cond_2

    .line 262
    :try_start_4
    move-object v0, v2

    check-cast v0, Ljava/io/FileInputStream;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 264
    invoke-static {v1, p2, p3}, Lpi;->a(Ljava/io/FileDescriptor;II)Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v3

    move-object v1, v3

    .line 271
    :goto_1
    :try_start_5
    invoke-static {v2}, Lpi;->a(Ljava/io/Closeable;)V

    .line 276
    :goto_2
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-object v1

    .line 268
    :catch_1
    move-exception v1

    move-object v2, v3

    .line 269
    :goto_3
    :try_start_6
    const-string v5, "ToolboxCacheMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getBitmapFromDiskCache - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lnz;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 271
    :try_start_7
    invoke-static {v2}, Lpi;->a(Ljava/io/Closeable;)V

    move-object v1, v3

    .line 272
    goto :goto_2

    .line 271
    :catchall_0
    move-exception v1

    move-object v2, v3

    :goto_4
    invoke-static {v2}, Lpi;->a(Ljava/io/Closeable;)V

    throw v1

    .line 277
    :catchall_1
    move-exception v1

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v1

    .line 274
    :cond_1
    :try_start_8
    const-string v1, "ToolboxCacheMgr"

    const-string v2, "WHAT?? mDiskLruCache == null"

    invoke-static {v1, v2}, Lnz;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object v1, v3

    goto :goto_2

    .line 271
    :catchall_2
    move-exception v1

    goto :goto_4

    .line 268
    :catch_2
    move-exception v1

    goto :goto_3

    :cond_2
    move-object v1, v3

    goto :goto_1

    :cond_3
    move-object v2, v3

    move-object v1, v3

    goto :goto_1
.end method

.method private static b(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .parameter

    .prologue
    .line 171
    const/4 v2, 0x0

    .line 173
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v3, "dxtoolbox/dxtoolbox.json"

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 174
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 175
    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 177
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    .line 178
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 185
    invoke-static {v1}, Lpi;->a(Ljava/io/Closeable;)V

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    return-object v0

    .line 181
    :cond_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Loq;->j(Ljava/lang/String;)Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    .line 185
    invoke-static {v1}, Lpi;->a(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    invoke-static {v1}, Lpi;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 182
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private b(Ljava/lang/String;Ljava/util/List;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 569
    iget-object v0, p0, Loq;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 572
    if-nez v0, :cond_1

    move v1, v3

    .line 573
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    .line 574
    const-string v2, "ToolboxCacheMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pull completed: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " --> "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    if-ne v6, v1, :cond_3

    move v5, v3

    .line 576
    :goto_1
    if-ge v5, v6, :cond_0

    .line 577
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lou;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lou;

    invoke-virtual {v1, v2}, Lou;->a(Lou;)Z

    move-result v1

    if-nez v1, :cond_2

    move v3, v4

    .line 586
    :cond_0
    :goto_2
    if-eqz v3, :cond_6

    .line 587
    sget-boolean v0, Lpa;->a:Z

    if-eqz v0, :cond_5

    .line 588
    const-string v0, "ToolboxCacheMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "========== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " =========="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lou;

    .line 590
    const-string v2, "ToolboxCacheMgr"

    invoke-virtual {v0}, Lou;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 572
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 576
    :cond_2
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    :cond_3
    move v3, v4

    .line 583
    goto :goto_2

    .line 593
    :cond_4
    const-string v0, "ToolboxCacheMgr"

    const-string v1, "=============================="

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    :cond_5
    invoke-direct {p0, p1, p2}, Loq;->c(Ljava/lang/String;Ljava/util/List;)V

    .line 600
    invoke-direct {p0, p1}, Loq;->m(Ljava/lang/String;)V

    .line 603
    :cond_6
    return v3
.end method

.method private c(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 368
    .line 372
    :try_start_0
    invoke-static {p1}, Lpi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 373
    iget-object v2, p0, Loq;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dxtoolbox/images/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 376
    if-eqz v2, :cond_1

    .line 377
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 379
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 380
    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_0

    .line 381
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 386
    :catch_0
    move-exception v1

    .line 387
    :goto_1
    :try_start_2
    const-string v3, "ToolboxCacheMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBitmapFromAssets- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lnz;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 389
    invoke-static {v2}, Lpi;->a(Ljava/io/Closeable;)V

    .line 392
    :goto_2
    return-object v0

    .line 383
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1, p2, p3}, Lpi;->a([BII)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    .line 389
    :cond_1
    invoke-static {v2}, Lpi;->a(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    invoke-static {v2}, Lpi;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 386
    :catch_1
    move-exception v1

    move-object v2, v0

    goto :goto_1
.end method

.method static synthetic c(Loq;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Loq;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method private c(Ljava/lang/String;Ljava/util/List;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 608
    :try_start_0
    iget-object v0, p0, Loq;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 609
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 612
    const-string v3, "ad_tag=? AND iid=? AND pkg_name=?"

    .line 616
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    .line 618
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 619
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lou;

    .line 620
    iput-wide v1, v0, Lou;->w:J

    .line 621
    invoke-static {v5, v0}, Loq;->a(Landroid/content/ContentValues;Lou;)V

    .line 622
    const/4 v7, 0x0

    aput-object p1, v4, v7

    .line 623
    const/4 v7, 0x1

    iget-wide v8, v0, Lou;->d:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    .line 624
    const/4 v7, 0x2

    iget-object v0, v0, Lou;->f:Ljava/lang/String;

    aput-object v0, v4, v7

    .line 626
    iget-object v0, p0, Loq;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "tb_cache"

    invoke-virtual {v0, v7, v5, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 627
    if-nez v0, :cond_0

    .line 628
    iget-object v0, p0, Loq;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "tb_cache"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 643
    :catchall_0
    move-exception v0

    iget-object v1, p0, Loq;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 633
    :cond_1
    :try_start_1
    const-string v0, "ad_tag=? AND update_time<>?"

    .line 635
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    .line 639
    iget-object v1, p0, Loq;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "tb_cache"

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 641
    iget-object v0, p0, Loq;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 643
    iget-object v0, p0, Loq;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 645
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 100
    invoke-static {}, Lpg;->a()Lpg;

    move-result-object v0

    new-instance v1, Lor;

    invoke-direct {v1, p0}, Lor;-><init>(Loq;)V

    invoke-virtual {v0, v1}, Lpg;->a(Ljava/lang/Runnable;)V

    .line 160
    invoke-static {}, Lpg;->a()Lpg;

    move-result-object v0

    new-instance v1, Los;

    invoke-direct {v1, p0}, Los;-><init>(Loq;)V

    invoke-virtual {v0, v1}, Lpg;->a(Ljava/lang/Runnable;)V

    .line 168
    return-void
.end method

.method static synthetic d(Loq;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Loq;->e()V

    return-void
.end method

.method private e()V
    .locals 6

    .prologue
    .line 223
    iget-object v1, p0, Loq;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 224
    :try_start_0
    iget-object v0, p0, Loq;->k:Lbbq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Loq;->k:Lbbq;

    invoke-virtual {v0}, Lbbq;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    :cond_0
    :try_start_1
    iget-object v0, p0, Loq;->g:Ljava/io/File;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/32 v4, 0x300000

    invoke-static {v0, v2, v3, v4, v5}, Lbbq;->a(Ljava/io/File;IIJ)Lbbq;

    move-result-object v0

    iput-object v0, p0, Loq;->k:Lbbq;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 232
    :cond_1
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Loq;->m:Z

    .line 233
    iget-object v0, p0, Loq;->l:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 234
    monitor-exit v1

    .line 235
    return-void

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 229
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static j(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter

    .prologue
    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 194
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 195
    const/4 v0, 0x0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    :goto_0
    if-ge v0, v3, :cond_0

    .line 196
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 197
    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 198
    const-string v6, "id"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 199
    const-string v7, "max"

    const/16 v8, 0x12

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 200
    new-instance v7, Lot;

    invoke-direct {v7, v5, v6, v4}, Lot;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    const-string v2, "ToolboxCacheMgr"

    const-string v3, "dxtoolbox.json format error."

    invoke-static {v2, v3, v0}, Lnz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    :cond_0
    return-object v1
.end method

.method private k(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 281
    invoke-static {p1}, Lpi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 283
    iget-object v2, p0, Loq;->l:Ljava/lang/Object;

    monitor-enter v2

    .line 284
    :goto_0
    :try_start_0
    iget-boolean v3, p0, Loq;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 286
    :try_start_1
    iget-object v3, p0, Loq;->l:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 287
    :catch_0
    move-exception v3

    goto :goto_0

    .line 290
    :cond_0
    :try_start_2
    iget-object v3, p0, Loq;->k:Lbbq;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_2

    .line 293
    :try_start_3
    iget-object v3, p0, Loq;->k:Lbbq;

    invoke-virtual {v3, v1}, Lbbq;->a(Ljava/lang/String;)Lbbw;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v1

    .line 294
    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :try_start_4
    monitor-exit v2

    .line 301
    :goto_1
    return v0

    .line 295
    :catch_1
    move-exception v1

    .line 296
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 299
    :cond_2
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method private l(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    .line 396
    iget-object v1, p0, Loq;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 397
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Loq;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 399
    :try_start_1
    iget-object v0, p0, Loq;->h:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 400
    :catch_0
    move-exception v0

    .line 401
    :try_start_2
    const-string v0, "ToolboxCacheMgr"

    const-string v2, "Wait Failed. @isExistsInAssets"

    invoke-static {v0, v2}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 406
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 404
    :cond_0
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lpi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 405
    iget-object v2, p0, Loq;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return v0
.end method

.method private m(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 648
    invoke-virtual {p0, p1}, Loq;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 649
    iget-object v1, p0, Loq;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 410
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 411
    :cond_0
    const/4 v0, 0x0

    .line 418
    :goto_0
    return-object v0

    .line 414
    :cond_1
    invoke-direct {p0, p1}, Loq;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 415
    invoke-direct {p0, p1, p2, p3}, Loq;->c(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 418
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Loq;->b(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method a()V
    .locals 5

    .prologue
    .line 355
    iget-object v1, p0, Loq;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 356
    :try_start_0
    iget-object v0, p0, Loq;->k:Lbbq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 358
    :try_start_1
    iget-object v0, p0, Loq;->k:Lbbq;

    invoke-virtual {v0}, Lbbq;->b()V

    .line 359
    const-string v0, "ToolboxCacheMgr"

    const-string v2, "Disk cache flushed"

    invoke-static {v0, v2}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 364
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 365
    return-void

    .line 360
    :catch_0
    move-exception v0

    .line 361
    const-string v2, "ToolboxCacheMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "flush - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lnz;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 764
    iget-object v0, p0, Loq;->b:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lom;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 765
    return-void
.end method

.method a(Ljava/lang/String;[B)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 311
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    iget-object v2, p0, Loq;->l:Ljava/lang/Object;

    monitor-enter v2

    .line 317
    :try_start_0
    iget-object v0, p0, Loq;->k:Lbbq;

    if-eqz v0, :cond_3

    .line 318
    invoke-static {p1}, Lpi;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 319
    const/4 v0, 0x0

    .line 321
    :try_start_1
    iget-object v3, p0, Loq;->k:Lbbq;

    invoke-virtual {v3, v1}, Lbbq;->a(Ljava/lang/String;)Lbbw;

    move-result-object v3

    .line 322
    if-nez v3, :cond_4

    .line 323
    iget-object v3, p0, Loq;->k:Lbbq;

    invoke-virtual {v3, v1}, Lbbq;->b(Ljava/lang/String;)Lbbt;

    move-result-object v1

    .line 324
    if-eqz v1, :cond_2

    .line 325
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lbbt;->a(I)Ljava/io/OutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 326
    :try_start_2
    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 327
    invoke-virtual {v1}, Lbbt;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 343
    :cond_2
    :goto_1
    :try_start_3
    invoke-static {v0}, Lpi;->a(Ljava/io/Closeable;)V

    .line 346
    :cond_3
    :goto_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 330
    :cond_4
    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {v3, v1}, Lbbw;->a(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 331
    invoke-virtual {v3}, Lbbw;->a()Lbbt;

    move-result-object v3

    .line 332
    if-eqz v3, :cond_2

    .line 333
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lbbt;->a(I)Ljava/io/OutputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v1

    .line 334
    :try_start_5
    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 335
    invoke-virtual {v3}, Lbbt;->a()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-object v0, v1

    goto :goto_1

    .line 338
    :catch_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 339
    :goto_3
    :try_start_6
    const-string v3, "ToolboxCacheMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOE addFileToCache - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lnz;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 343
    :try_start_7
    invoke-static {v1}, Lpi;->a(Ljava/io/Closeable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 340
    :catch_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 341
    :goto_4
    :try_start_8
    const-string v3, "ToolboxCacheMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "E addFileToCache - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 343
    :try_start_9
    invoke-static {v1}, Lpi;->a(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_5
    invoke-static {v1}, Lpi;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_5

    .line 340
    :catch_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_4

    .line 338
    :catch_4
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_3
.end method

.method public a(Lou;)V
    .locals 9
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 803
    if-nez p1, :cond_1

    .line 838
    :cond_0
    :goto_0
    return-void

    .line 807
    :cond_1
    iget-wide v0, p1, Lou;->v:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 811
    iget-object v1, p0, Loq;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 812
    :goto_1
    :try_start_0
    iget-boolean v0, p0, Loq;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 814
    :try_start_1
    iget-object v0, p0, Loq;->h:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 815
    :catch_0
    move-exception v0

    .line 816
    :try_start_2
    const-string v0, "ToolboxCacheMgr"

    const-string v2, "Wait Failed. @updateNoNetworkClickTime"

    invoke-static {v0, v2}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 837
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 819
    :cond_2
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 820
    new-instance v0, Landroid/content/ContentValues;

    const/4 v4, 0x3

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 821
    const-string v4, "click_time"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 823
    const-string v4, "iid=?"

    .line 824
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-wide v7, p1, Lou;->d:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 829
    iget-object v6, p0, Loq;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "tb_cache"

    invoke-virtual {v6, v7, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 830
    if-lez v0, :cond_3

    .line 832
    iget-object v0, p0, Loq;->b:Landroid/content/Context;

    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lom;->a(Landroid/content/Context;J)V

    .line 836
    :cond_3
    iput-wide v2, p1, Lou;->v:J

    .line 837
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method a(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 422
    invoke-direct {p0, p1}, Loq;->l(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 430
    :cond_0
    :goto_0
    return v0

    .line 426
    :cond_1
    invoke-direct {p0, p1}, Loq;->k(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 430
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/util/List;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 555
    iget-object v1, p0, Loq;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 556
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Loq;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 558
    :try_start_1
    iget-object v0, p0, Loq;->h:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 559
    :catch_0
    move-exception v0

    .line 560
    :try_start_2
    const-string v0, "ToolboxCacheMgr"

    const-string v2, "Wait Failed. @updateAdList"

    invoke-static {v0, v2}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 565
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 564
    :cond_0
    :try_start_3
    invoke-direct {p0, p1, p2}, Loq;->b(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return v0
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter

    .prologue
    .line 450
    iget-object v2, p0, Loq;->h:Ljava/lang/Object;

    monitor-enter v2

    .line 451
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Loq;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 453
    :try_start_1
    iget-object v0, p0, Loq;->h:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 454
    :catch_0
    move-exception v0

    .line 455
    :try_start_2
    const-string v0, "ToolboxCacheMgr"

    const-string v1, "Wait Failed. @getList"

    invoke-static {v0, v1}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 464
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 459
    :cond_0
    :try_start_3
    iget-object v0, p0, Loq;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Loq;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v2

    move-object v0, v1

    .line 462
    :goto_1
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public b()Ljava/util/Set;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Loq;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public b(Lou;)V
    .locals 6
    .parameter

    .prologue
    .line 847
    if-eqz p1, :cond_0

    iget-object v0, p1, Lou;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 874
    :cond_0
    :goto_0
    return-void

    .line 850
    :cond_1
    iget-object v1, p0, Loq;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 851
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    const/16 v2, 0xd

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 852
    const-string v2, "pkg_name"

    iget-object v3, p1, Lou;->f:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    const-string v2, "click_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 854
    new-instance v2, Lns;

    invoke-direct {v2, p1}, Lns;-><init>(Lou;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 856
    :try_start_1
    const-string v3, "click_DATA"

    invoke-virtual {v2}, Lns;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    const-string v2, "pkg_name=?"

    .line 859
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p1, Lou;->f:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 863
    iget-object v4, p0, Loq;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "tb_validclick"

    invoke-virtual {v4, v5, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 865
    if-nez v2, :cond_2

    .line 866
    const-string v2, "status"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 868
    iget-object v2, p0, Loq;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "tb_validclick"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 873
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 870
    :catch_0
    move-exception v0

    .line 871
    :try_start_3
    const-string v2, "ToolboxCacheMgr"

    const-string v3, "decode failed: "

    invoke-static {v2, v3, v0}, Lnz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public c()Ljava/util/List;
    .locals 10

    .prologue
    .line 1005
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1006
    iget-object v9, p0, Loq;->h:Ljava/lang/Object;

    monitor-enter v9

    .line 1007
    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "click_DATA"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "click_time"

    aput-object v1, v2, v0

    .line 1013
    const-string v3, "status=?"

    .line 1014
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1018
    iget-object v0, p0, Loq;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "tb_validclick"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1022
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1023
    new-instance v0, Lns;

    invoke-direct {v0}, Lns;-><init>()V

    .line 1024
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1026
    :try_start_1
    invoke-virtual {v0, v2}, Lns;->a(Ljava/lang/String;)V

    .line 1027
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lns;->h:J

    .line 1028
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1029
    :catch_0
    move-exception v0

    .line 1030
    :try_start_2
    const-string v2, "ToolboxCacheMgr"

    const-string v3, "decode failed: "

    invoke-static {v2, v3, v0}, Lnz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1035
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1034
    :cond_0
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1035
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1037
    return-object v8
.end method

.method c(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 498
    const-string v0, "ad_tag=?"

    .line 499
    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v9

    .line 502
    const-string v0, "position ASC"

    .line 504
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 506
    iget-object v0, p0, Loq;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "tb_cache"

    sget-object v2, Loq;->a:[Ljava/lang/String;

    const-string v3, "ad_tag=?"

    const-string v7, "position ASC"

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 510
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 511
    new-instance v2, Lou;

    invoke-direct {v2}, Lou;-><init>()V

    .line 512
    iput-object p1, v2, Lou;->q:Ljava/lang/String;

    .line 514
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lou;->a:J

    .line 515
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lou;->b:J

    .line 516
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lou;->c:J

    .line 517
    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lou;->d:J

    .line 519
    const/4 v0, 0x4

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lou;->e:Ljava/lang/String;

    .line 520
    const/4 v0, 0x5

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lou;->f:Ljava/lang/String;

    .line 521
    const/4 v0, 0x6

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lou;->g:Ljava/lang/String;

    .line 522
    const/4 v0, 0x7

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lou;->h:Ljava/lang/String;

    .line 523
    const/16 v0, 0x8

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lou;->i:I

    .line 525
    const/16 v0, 0x9

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lou;->j:I

    .line 526
    const/16 v0, 0xa

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lou;->k:Ljava/lang/String;

    .line 528
    const/16 v0, 0xb

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lou;->l:Ljava/lang/String;

    .line 529
    const/16 v0, 0xc

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lou;->m:Ljava/lang/String;

    .line 530
    const/16 v0, 0xd

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lou;->n:Ljava/lang/String;

    .line 532
    const/16 v0, 0xe

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lou;->o:I

    .line 533
    const/16 v0, 0xf

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lou;->p:I

    .line 535
    const/16 v0, 0x10

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lou;->s:J

    .line 536
    const/16 v0, 0x11

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v8, :cond_0

    move v0, v8

    :goto_1
    iput-boolean v0, v2, Lou;->r:Z

    .line 538
    const/16 v0, 0x12

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lou;->v:J

    .line 539
    const/16 v0, 0x13

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lou;->w:J

    .line 540
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    move v0, v9

    .line 536
    goto :goto_1

    .line 543
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 544
    return-object v10
.end method

.method public d(Ljava/lang/String;)Lot;
    .locals 1
    .parameter

    .prologue
    .line 692
    iget-object v0, p0, Loq;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lot;

    return-object v0
.end method

.method e(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 710
    iget-object v1, p0, Loq;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 711
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Loq;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 713
    :try_start_1
    iget-object v0, p0, Loq;->h:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 714
    :catch_0
    move-exception v0

    .line 715
    :try_start_2
    const-string v0, "ToolboxCacheMgr"

    const-string v2, "Wait Failed. @delAllItemsInDB"

    invoke-static {v0, v2}, Lnz;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 727
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 719
    :cond_0
    :try_start_3
    const-string v0, "ad_tag=?"

    .line 720
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 723
    iget-object v3, p0, Loq;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "tb_cache"

    invoke-virtual {v3, v4, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 726
    iget-object v0, p0, Loq;->d:Ljava/util/HashMap;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 728
    return-void
.end method

.method public f(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 755
    iget-object v0, p0, Loq;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lom;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public g(Ljava/lang/String;)Lns;
    .locals 10
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 883
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v8

    .line 915
    :goto_0
    return-object v0

    .line 886
    :cond_0
    iget-object v9, p0, Loq;->h:Ljava/lang/Object;

    monitor-enter v9

    .line 887
    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "click_DATA"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "click_time"

    aput-object v1, v2, v0

    .line 893
    const-string v3, "pkg_name=?"

    .line 894
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 898
    iget-object v0, p0, Loq;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "tb_validclick"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 903
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 904
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 905
    new-instance v8, Lns;

    invoke-direct {v8}, Lns;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 907
    :try_start_1
    invoke-virtual {v8, v0}, Lns;->a(Ljava/lang/String;)V

    .line 908
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v8, Lns;->h:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v8

    .line 914
    :goto_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 915
    monitor-exit v9

    goto :goto_0

    .line 916
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 909
    :catch_0
    move-exception v0

    .line 910
    :try_start_3
    const-string v2, "ToolboxCacheMgr"

    const-string v3, "decode failed: "

    invoke-static {v2, v3, v0}, Lnz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v8

    goto :goto_1

    :cond_1
    move-object v0, v8

    goto :goto_1
.end method

.method public h(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 925
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 937
    :goto_0
    return-void

    .line 928
    :cond_0
    iget-object v1, p0, Loq;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 930
    :try_start_0
    const-string v0, "pkg_name=?"

    .line 931
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 935
    iget-object v3, p0, Loq;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "tb_validclick"

    invoke-virtual {v3, v4, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 936
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    .line 947
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 963
    :goto_0
    return-void

    .line 951
    :cond_0
    iget-object v1, p0, Loq;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 952
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 953
    const-string v2, "status"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 956
    const-string v2, "pkg_name=?"

    .line 957
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 961
    iget-object v4, p0, Loq;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "tb_validclick"

    invoke-virtual {v4, v5, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 962
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
