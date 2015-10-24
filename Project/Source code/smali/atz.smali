.class public Latz;
.super Ljava/lang/Object;
.source "ChargingDB.java"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field private static f:Latz;

.field private static g:[B

.field private static final h:Ljava/lang/Object;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Laua;

.field private e:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "start_level"

    aput-object v1, v0, v3

    const-string v1, "end_level"

    aput-object v1, v0, v4

    const-string v1, "data"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "count"

    aput-object v2, v0, v1

    sput-object v0, Latz;->a:[Ljava/lang/String;

    .line 36
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "level"

    aput-object v1, v0, v3

    const-string v1, "data"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    sput-object v0, Latz;->b:[Ljava/lang/String;

    .line 77
    new-array v0, v3, [B

    sput-object v0, Latz;->g:[B

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Latz;->h:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Latz;->c:Landroid/content/Context;

    .line 94
    new-instance v0, Laua;

    iget-object v1, p0, Latz;->c:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Laua;-><init>(Latz;Landroid/content/Context;)V

    iput-object v0, p0, Latz;->d:Laua;

    .line 95
    iget-object v0, p0, Latz;->d:Laua;

    invoke-virtual {v0}, Laua;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Latz;->e:Landroid/database/sqlite/SQLiteDatabase;

    .line 96
    return-void
.end method

.method public static a(Landroid/content/Context;)Latz;
    .locals 2
    .parameter

    .prologue
    .line 82
    sget-object v0, Latz;->f:Latz;

    if-nez v0, :cond_1

    .line 83
    sget-object v1, Latz;->g:[B

    monitor-enter v1

    .line 84
    :try_start_0
    sget-object v0, Latz;->f:Latz;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Latz;

    invoke-direct {v0, p0}, Latz;-><init>(Landroid/content/Context;)V

    sput-object v0, Latz;->f:Latz;

    .line 87
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_1
    sget-object v0, Latz;->f:Latz;

    return-object v0

    .line 87
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
