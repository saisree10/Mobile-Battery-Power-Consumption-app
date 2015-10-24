.class public Lxr;
.super Ljava/lang/Object;
.source "PowerUsageStats.java"


# instance fields
.field private a:Lrj;

.field private final b:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "batteryinfo"

    invoke-static {v0}, Lgl;->a(Ljava/lang/Object;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lrj;->a(Landroid/os/IBinder;)Lrj;

    move-result-object v0

    iput-object v0, p0, Lxr;->a:Lrj;

    .line 57
    invoke-static {}, Lxr;->c()I

    move-result v0

    iput v0, p0, Lxr;->b:I

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Lxs;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lxr;-><init>()V

    return-void
.end method

.method public static a()Lxr;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lxt;->a:Lxr;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lxu;ILjava/util/HashSet;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x3e8

    .line 128
    iget-object v0, p1, Lxu;->a:Lrk;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    mul-long/2addr v1, v4

    invoke-virtual {v0, v1, v2, p2}, Lrk;->a(JI)J

    move-result-wide v2

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lxu;->b:J

    .line 132
    div-long v0, v2, v4

    iput-wide v0, p1, Lxu;->c:J

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    .line 133
    invoke-static/range {v0 .. v5}, Lxr;->a(Landroid/content/Context;Lxu;JILjava/util/HashSet;)V

    .line 134
    return-void
.end method

.method private static a(Landroid/content/Context;Lxu;JILjava/util/HashSet;)V
    .locals 18
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 138
    invoke-static {}, Lws;->a()Lws;

    move-result-object v10

    .line 139
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    iput-object v3, v0, Lxu;->d:Ljava/util/List;

    .line 140
    move-object/from16 v0, p1

    iget-object v3, v0, Lxu;->a:Lrk;

    invoke-virtual {v3}, Lrk;->c()Landroid/util/SparseArray;

    move-result-object v11

    .line 141
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 142
    const/4 v3, 0x0

    move v9, v3

    :goto_0
    if-ge v9, v12, :cond_8

    .line 143
    invoke-virtual {v11, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lru;

    .line 144
    invoke-virtual {v3}, Lru;->g()I

    move-result v4

    .line 145
    invoke-virtual {v10, v4}, Lws;->b(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 142
    :cond_0
    :goto_1
    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto :goto_0

    .line 150
    :cond_1
    if-eqz p5, :cond_2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 156
    :cond_2
    new-instance v13, Lxq;

    invoke-direct {v13}, Lxq;-><init>()V

    .line 157
    iput v4, v13, Lxq;->a:I

    .line 160
    invoke-virtual {v3}, Lru;->e()Ljava/util/Map;

    move-result-object v6

    .line 162
    const-wide/16 v4, 0x0

    .line 164
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v7

    if-lez v7, :cond_b

    .line 166
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-wide v5, v4

    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 169
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrw;

    .line 170
    move/from16 v0, p4

    invoke-virtual {v4, v0}, Lrw;->a(I)J

    move-result-wide v14

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Lrw;->b(I)J

    move-result-wide v16

    add-long v14, v14, v16

    const-wide/16 v16, 0xa

    mul-long v14, v14, v16

    .line 172
    const-wide/16 v16, 0x0

    cmp-long v4, v14, v16

    if-ltz v4, :cond_3

    .line 177
    add-long v4, v5, v14

    move-wide v5, v4

    .line 178
    goto :goto_2

    :cond_4
    move-wide v7, v5

    .line 181
    :goto_3
    const-wide/16 v4, 0x0

    cmp-long v4, v7, v4

    if-eqz v4, :cond_0

    .line 186
    iput-wide v7, v13, Lxq;->b:J

    .line 189
    const-wide/16 v4, 0x0

    .line 190
    invoke-virtual {v3}, Lru;->c()Ljava/util/Map;

    move-result-object v6

    .line 192
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-wide v5, v4

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 193
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lry;

    .line 194
    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Lry;->b(I)Lrt;

    move-result-object v4

    .line 195
    if-eqz v4, :cond_a

    .line 196
    move-wide/from16 v0, p2

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Lrt;->a(JI)J

    move-result-wide v15

    add-long v4, v5, v15

    :goto_5
    move-wide v5, v4

    .line 198
    goto :goto_4

    .line 199
    :cond_5
    const-wide/16 v14, 0x3e8

    div-long v4, v5, v14

    .line 200
    iput-wide v4, v13, Lxq;->c:J

    .line 202
    move-object/from16 v0, p1

    iget-wide v14, v0, Lxu;->f:J

    add-long v6, v14, v7

    move-object/from16 v0, p1

    iput-wide v6, v0, Lxu;->f:J

    .line 203
    move-object/from16 v0, p1

    iget-wide v6, v0, Lxu;->g:J

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lxu;->g:J

    .line 206
    move-wide/from16 v0, p2

    move/from16 v2, p4

    invoke-virtual {v3, v0, v1, v2}, Lru;->c(JI)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 207
    iput-wide v4, v13, Lxq;->e:J

    .line 208
    move-object/from16 v0, p1

    iget-wide v6, v0, Lxu;->e:J

    add-long/2addr v4, v6

    move-object/from16 v0, p1

    iput-wide v4, v0, Lxu;->e:J

    .line 211
    const-wide/16 v6, 0x0

    .line 212
    invoke-virtual {v3}, Lru;->d()Ljava/util/Map;

    move-result-object v4

    .line 214
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 215
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrx;

    .line 216
    invoke-virtual {v4}, Lrx;->c()I

    move-result v14

    .line 217
    invoke-virtual {v4}, Lrx;->e()Lrt;

    move-result-object v4

    .line 218
    move-wide/from16 v0, p2

    move/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2}, Lrt;->a(JI)J

    move-result-wide v4

    const-wide/16 v15, 0x3e8

    div-long/2addr v4, v15

    .line 219
    const/16 v15, -0x2710

    if-ne v14, v15, :cond_6

    .line 224
    :goto_6
    iput-wide v4, v13, Lxq;->f:J

    .line 227
    move-wide/from16 v0, p2

    move/from16 v2, p4

    invoke-virtual {v3, v0, v1, v2}, Lru;->a(JI)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 228
    iput-wide v4, v13, Lxq;->g:J

    .line 232
    move-wide/from16 v0, p2

    move/from16 v2, p4

    invoke-virtual {v3, v0, v1, v2}, Lru;->b(JI)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 233
    iput-wide v4, v13, Lxq;->h:J

    .line 236
    const/4 v4, 0x0

    .line 237
    invoke-virtual {v3}, Lru;->f()Ljava/util/Map;

    move-result-object v3

    .line 238
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 239
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrv;

    .line 240
    move/from16 v0, p4

    invoke-virtual {v3, v0}, Lrv;->a(I)I

    move-result v3

    add-int/2addr v3, v4

    move v4, v3

    .line 241
    goto :goto_7

    .line 242
    :cond_7
    iput v4, v13, Lxq;->d:I

    .line 244
    move-object/from16 v0, p1

    iget-object v3, v0, Lxu;->d:Ljava/util/List;

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 246
    :cond_8
    return-void

    :cond_9
    move-wide v4, v6

    goto :goto_6

    :cond_a
    move-wide v4, v5

    goto/16 :goto_5

    :cond_b
    move-wide v7, v4

    goto/16 :goto_3
.end method

.method private b()Lrk;
    .locals 6

    .prologue
    .line 65
    const/4 v1, 0x0

    .line 66
    invoke-static {}, Lazf;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 85
    :goto_0
    return-object v0

    .line 70
    :cond_0
    :try_start_0
    iget-object v0, p0, Lxr;->a:Lrj;

    invoke-virtual {v0}, Lrj;->c()[B

    move-result-object v0

    .line 71
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 72
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 73
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    sget-object v0, Lrk;->a:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrk;
    :try_end_0
    .catch Lri; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 75
    :try_start_1
    invoke-static {}, Lxr;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    iget v1, p0, Lxr;->b:I

    invoke-virtual {v0, v1}, Lrk;->a(I)V

    .line 78
    :cond_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catch Lri; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 79
    :catch_0
    move-exception v1

    .line 80
    :goto_1
    const-string v2, "PowerUsageStats"

    const-string v3, "compat exception"

    invoke-static {v2, v3, v1}, Lzs;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 81
    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 83
    :goto_2
    const-string v2, "PowerUsageStats"

    const-string v3, "unexpected exception"

    invoke-static {v2, v3, v1}, Lzs;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 81
    :catch_2
    move-exception v1

    goto :goto_2

    .line 79
    :catch_3
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_1
.end method

.method private static c()I
    .locals 2

    .prologue
    .line 249
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 250
    const/4 v0, 0x0

    .line 252
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private static d()Z
    .locals 2

    .prologue
    .line 258
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/util/HashSet;)Lxp;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 94
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-object v0

    .line 99
    :cond_1
    new-instance v1, Lxu;

    invoke-direct {v1}, Lxu;-><init>()V

    .line 101
    invoke-direct {p0}, Lxr;->b()Lrk;

    move-result-object v2

    iput-object v2, v1, Lxu;->a:Lrk;

    .line 102
    iget-object v2, v1, Lxu;->a:Lrk;

    if-eqz v2, :cond_0

    .line 107
    iget v2, p0, Lxr;->b:I

    invoke-static {p1, v1, v2, p2}, Lxr;->a(Landroid/content/Context;Lxu;ILjava/util/HashSet;)V

    .line 110
    iput-object v0, v1, Lxu;->a:Lrk;

    .line 119
    new-instance v0, Lxp;

    invoke-direct {v0}, Lxp;-><init>()V

    .line 120
    iget-wide v2, v1, Lxu;->b:J

    iput-wide v2, v0, Lxp;->a:J

    .line 121
    iget-wide v2, v1, Lxu;->c:J

    iput-wide v2, v0, Lxp;->b:J

    .line 122
    iget-object v1, v1, Lxu;->d:Ljava/util/List;

    iput-object v1, v0, Lxp;->c:Ljava/util/List;

    goto :goto_0
.end method
