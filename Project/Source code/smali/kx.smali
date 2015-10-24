.class public Lkx;
.super Ljava/lang/Object;
.source "DBCacheService.java"

# interfaces
.implements Lkw;


# static fields
.field public static c:J

.field public static d:J

.field private static final e:Ljava/lang/String;

.field private static final f:[Ljava/lang/String;

.field private static g:Lkx;


# instance fields
.field private h:Landroid/content/Context;

.field private i:I

.field private j:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const-class v0, Lkx;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lkx;->e:Ljava/lang/String;

    .line 32
    const-wide/16 v0, 0x3c

    sput-wide v0, Lkx;->c:J

    .line 33
    const-wide/16 v0, 0x258

    sput-wide v0, Lkx;->d:J

    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 36
    const-string v2, "value"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 37
    const-string v2, "lastModified"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 38
    const-string v2, "visitCount"

    aput-object v2, v0, v1

    .line 35
    sput-object v0, Lkx;->f:[Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lkx;->g:Lkx;

    .line 28
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lkx;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V

    .line 61
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/16 v0, 0xbb8

    iput v0, p0, Lkx;->i:I

    .line 64
    iput-object p1, p0, Lkx;->h:Landroid/content/Context;

    .line 65
    if-eqz p2, :cond_0

    .line 66
    iput-object p2, p0, Lkx;->j:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 70
    :goto_0
    iget-object v0, p0, Lkx;->j:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lky;

    invoke-direct {v1, p0}, Lky;-><init>(Lkx;)V

    sget-wide v2, Lkx;->c:J

    sget-wide v4, Lkx;->d:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 71
    return-void

    .line 68
    :cond_0
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lkx;->j:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 183
    const-string v0, "key=?"

    .line 184
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 185
    aput-object p2, v1, v2

    .line 188
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 189
    const-string v3, "visitCount"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 190
    invoke-static {p1}, Llp;->a(Landroid/content/Context;)Llp;

    move-result-object v3

    sget-object v4, Lln;->a:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2, v0, v1}, Llp;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lkx;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lkx;->h:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lkx;->e:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 155
    .line 158
    :try_start_0
    const-string v3, "key=?"

    .line 159
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 160
    aput-object p2, v4, v0

    .line 163
    invoke-static {p1}, Llp;->a(Landroid/content/Context;)Llp;

    move-result-object v0

    .line 164
    sget-object v1, Lln;->a:Landroid/net/Uri;

    sget-object v2, Lkx;->f:[Ljava/lang/String;

    .line 165
    const/4 v5, 0x0

    .line 163
    invoke-virtual/range {v0 .. v5}, Llp;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 166
    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 168
    :try_start_2
    const-string v0, "value"

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v0, "lastModified"

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v0, "visitCount"

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    .line 175
    :goto_0
    if-eqz v2, :cond_0

    .line 176
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 179
    :cond_0
    :goto_1
    return-object v0

    .line 172
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    .line 173
    :goto_2
    :try_start_3
    sget-object v2, Lkx;->e:Ljava/lang/String;

    const-string v3, "failed to query record"

    invoke-static {v2, v3, v1}, Lla;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 175
    if-eqz v6, :cond_0

    .line 176
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 174
    :catchall_0
    move-exception v0

    move-object v2, v6

    .line 175
    :goto_3
    if-eqz v2, :cond_1

    .line 176
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 177
    :cond_1
    throw v0

    .line 174
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v6

    goto :goto_3

    .line 172
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    move-object v6, v2

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v6, v2

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2

    :cond_2
    move-object v0, v6

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lkx;
    .locals 2
    .parameter

    .prologue
    .line 49
    const-class v1, Lkx;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lkx;->g:Lkx;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lkx;

    invoke-direct {v0, p0}, Lkx;-><init>(Landroid/content/Context;)V

    sput-object v0, Lkx;->g:Lkx;

    .line 52
    :cond_0
    sget-object v0, Lkx;->g:Lkx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lkx;)I
    .locals 1
    .parameter

    .prologue
    .line 56
    iget v0, p0, Lkx;->i:I

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lkv;
    .locals 4
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lkx;->h:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lkx;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 85
    const/4 v0, 0x0

    .line 87
    if-eqz v2, :cond_0

    .line 88
    sget-object v0, Lkx;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "hit cache:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v1, Lkv;

    invoke-direct {v1}, Lkv;-><init>()V

    .line 90
    const-string v0, "visitCount"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lkv;->c:I

    .line 91
    iget-object v0, p0, Lkx;->h:Landroid/content/Context;

    iget v3, v1, Lkv;->c:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v0, p1, v3}, Lkx;->a(Landroid/content/Context;Ljava/lang/String;I)I

    .line 92
    const-string v0, "value"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lkv;->a:Ljava/lang/String;

    .line 93
    const-string v0, "lastModified"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lkv;->b:J

    move-object v0, v1

    .line 96
    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/String;Lkv;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 101
    if-eqz p2, :cond_0

    iget-object v2, p2, Lkv;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 102
    :cond_0
    sget-object v0, Lkx;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "empty newEntry:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lla;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 133
    :cond_1
    :goto_0
    return v0

    .line 105
    :cond_2
    const-string v2, "key=?"

    .line 106
    new-array v3, v0, [Ljava/lang/String;

    .line 107
    aput-object p1, v3, v1

    .line 110
    iget-object v4, p0, Lkx;->h:Landroid/content/Context;

    invoke-direct {p0, v4, p1}, Lkx;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 112
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 114
    const-string v6, "lastModified"

    iget-wide v7, p2, Lkv;->b:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 115
    const-string v6, "value"

    iget-object v7, p2, Lkv;->a:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    if-nez v4, :cond_4

    .line 119
    :try_start_0
    const-string v2, "key"

    invoke-virtual {v5, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v2, "visitCount"

    const-string v3, "1"

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v2, p0, Lkx;->h:Landroid/content/Context;

    invoke-static {v2}, Llp;->a(Landroid/content/Context;)Llp;

    move-result-object v2

    sget-object v3, Lln;->a:Landroid/net/Uri;

    invoke-virtual {v2, v3, v5}, Llp;->a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 122
    if-nez v2, :cond_1

    :cond_3
    :goto_1
    move v0, v1

    .line 133
    goto :goto_0

    .line 125
    :cond_4
    iget-object v4, p0, Lkx;->h:Landroid/content/Context;

    invoke-static {v4}, Llp;->a(Landroid/content/Context;)Llp;

    move-result-object v4

    sget-object v6, Lln;->a:Landroid/net/Uri;

    invoke-virtual {v4, v6, v5, v2, v3}, Llp;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 126
    if-lez v2, :cond_3

    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    sget-object v2, Lkx;->e:Ljava/lang/String;

    const-string v3, "failed to insert or update record"

    invoke-static {v2, v3, v0}, Lla;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
