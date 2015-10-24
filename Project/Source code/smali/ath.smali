.class public Lath;
.super Ljava/lang/Object;
.source "LabelIconHelper.java"


# static fields
.field private static d:Lath;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/pm/PackageManager;

.field private c:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lath;->d:Lath;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lath;->c:Landroid/util/SparseArray;

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lath;->a:Landroid/content/Context;

    .line 34
    iget-object v0, p0, Lath;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lath;->b:Landroid/content/pm/PackageManager;

    .line 35
    return-void
.end method

.method public static a(Landroid/content/Context;)Lath;
    .locals 2
    .parameter

    .prologue
    .line 38
    sget-object v0, Lath;->d:Lath;

    if-nez v0, :cond_1

    .line 39
    const-class v1, Lath;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Lath;->d:Lath;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lath;

    invoke-direct {v0, p0}, Lath;-><init>(Landroid/content/Context;)V

    sput-object v0, Lath;->d:Lath;

    .line 43
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_1
    sget-object v0, Lath;->d:Lath;

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


# virtual methods
.method public a(ILjava/lang/String;)Lati;
    .locals 13
    .parameter
    .parameter

    .prologue
    const v12, 0x1080093

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 67
    iget-object v2, p0, Lath;->c:Landroid/util/SparseArray;

    monitor-enter v2

    .line 68
    :try_start_0
    iget-object v0, p0, Lath;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lati;

    .line 69
    monitor-exit v2

    .line 70
    if-eqz v0, :cond_0

    .line 167
    :goto_0
    return-object v0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 78
    :cond_0
    new-instance v2, Lati;

    invoke-direct {v2}, Lati;-><init>()V

    .line 80
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 82
    iget-object v0, p0, Lath;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v2, Lati;->c:Landroid/graphics/drawable/Drawable;

    .line 84
    iget-object v0, p0, Lath;->a:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a008d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lati;->a:Ljava/lang/String;

    .line 85
    iget-object v1, p0, Lath;->c:Landroid/util/SparseArray;

    monitor-enter v1

    .line 86
    :try_start_1
    iget-object v0, p0, Lath;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    monitor-exit v1

    move-object v0, v2

    .line 88
    goto :goto_0

    .line 87
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 91
    :cond_1
    iget-object v0, p0, Lath;->b:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 94
    if-eqz v5, :cond_2

    array-length v0, v5

    if-nez v0, :cond_a

    .line 96
    :cond_2
    if-nez p1, :cond_5

    .line 97
    iget-object v0, p0, Lath;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v4, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v4, 0x7f0a0061

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lati;->a:Ljava/lang/String;

    .line 103
    :goto_1
    iget-object v0, p0, Lath;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v2, Lati;->c:Landroid/graphics/drawable/Drawable;

    move v4, v3

    .line 107
    :goto_2
    if-nez v4, :cond_3

    array-length v0, v5

    if-le v0, v3, :cond_3

    .line 109
    array-length v6, v5

    move v0, v1

    :goto_3
    if-ge v0, v6, :cond_3

    aget-object v7, v5, v0

    .line 111
    :try_start_2
    invoke-static {v7}, Lacq;->e(Ljava/lang/String;)Lacn;

    move-result-object v8

    .line 112
    invoke-virtual {v8}, Lacn;->c()Landroid/content/pm/PackageInfo;

    move-result-object v9

    iget v9, v9, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v9, :cond_6

    .line 113
    iget-object v9, p0, Lath;->b:Landroid/content/pm/PackageManager;

    invoke-virtual {v8}, Lacn;->c()Landroid/content/pm/PackageInfo;

    move-result-object v10

    iget v10, v10, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    invoke-virtual {v8}, Lacn;->c()Landroid/content/pm/PackageInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9, v7, v10, v11}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 115
    if-eqz v9, :cond_6

    .line 116
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lati;->a:Ljava/lang/String;

    .line 117
    iput-object v7, v2, Lati;->b:Ljava/lang/String;

    .line 118
    invoke-virtual {v8}, Lacn;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v2, Lati;->c:Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v4, v3

    .line 128
    :cond_3
    if-nez v4, :cond_9

    move v0, v1

    .line 131
    :goto_4
    array-length v6, v5

    if-ge v0, v6, :cond_8

    .line 133
    aget-object v6, v5, v0

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 140
    :goto_5
    :try_start_3
    aget-object v1, v5, v0

    invoke-static {v1}, Lacq;->e(Ljava/lang/String;)Lacn;

    move-result-object v1

    .line 141
    invoke-virtual {v1}, Lacn;->e()Ljava/lang/String;

    move-result-object v6

    .line 142
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lati;->a:Ljava/lang/String;

    .line 143
    aget-object v0, v5, v0

    iput-object v0, v2, Lati;->b:Ljava/lang/String;

    .line 144
    invoke-virtual {v1}, Lacn;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v2, Lati;->c:Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    move v0, v3

    .line 150
    :goto_6
    if-nez v0, :cond_4

    .line 151
    iput-object p2, v2, Lati;->a:Ljava/lang/String;

    .line 152
    const/4 v0, 0x0

    iput-object v0, v2, Lati;->b:Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lath;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v2, Lati;->c:Landroid/graphics/drawable/Drawable;

    .line 158
    :cond_4
    iget-object v1, p0, Lath;->c:Landroid/util/SparseArray;

    monitor-enter v1

    .line 159
    :try_start_4
    iget-object v0, p0, Lath;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 160
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v0, v2

    .line 167
    goto/16 :goto_0

    .line 100
    :cond_5
    iput-object p2, v2, Lati;->a:Ljava/lang/String;

    goto/16 :goto_1

    .line 123
    :catch_0
    move-exception v7

    .line 109
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 131
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 146
    :catch_1
    move-exception v0

    move v0, v4

    goto :goto_6

    .line 160
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_8
    move v0, v1

    goto :goto_5

    :cond_9
    move v0, v4

    goto :goto_6

    :cond_a
    move v4, v1

    goto/16 :goto_2
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 172
    :try_start_0
    invoke-static {p1}, Lacq;->e(Ljava/lang/String;)Lacn;

    move-result-object v0

    invoke-virtual {v0}, Lacn;->e()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 174
    :goto_0
    return-object v0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 53
    iget-object v1, p0, Lath;->c:Landroid/util/SparseArray;

    monitor-enter v1

    .line 54
    :try_start_0
    iget-object v0, p0, Lath;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 55
    monitor-exit v1

    .line 56
    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 60
    iget-object v1, p0, Lath;->c:Landroid/util/SparseArray;

    monitor-enter v1

    .line 61
    :try_start_0
    iget-object v0, p0, Lath;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 62
    monitor-exit v1

    .line 63
    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
