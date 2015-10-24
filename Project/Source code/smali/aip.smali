.class public Laip;
.super Ljava/lang/Object;
.source "BatteryStatsHistory.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/android/internal/app/IBatteryStats;

.field private c:[I

.field private d:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Laip;->a:Landroid/content/Context;

    .line 29
    invoke-static {}, Lazf;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    const-string v0, "batteryinfo"

    invoke-static {v0}, Lgl;->a(Ljava/lang/Object;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Laip;->b:Lcom/android/internal/app/IBatteryStats;

    .line 33
    invoke-direct {p0}, Laip;->c()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Laip;->a(Landroid/os/BatteryStats;)V

    .line 35
    :cond_0
    return-void
.end method

.method private a(Landroid/os/BatteryStats;)V
    .locals 13
    .parameter

    .prologue
    .line 54
    if-nez p1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    const/16 v0, 0x19

    new-array v0, v0, [I

    iput-object v0, p0, Laip;->c:[I

    .line 58
    const/16 v0, 0x19

    new-array v0, v0, [I

    iput-object v0, p0, Laip;->d:[I

    .line 60
    const-wide/16 v6, 0x0

    .line 61
    const-wide/16 v4, 0x0

    .line 64
    const/4 v3, 0x0

    .line 65
    const/4 v2, -0x1

    .line 66
    const/4 v1, 0x1

    .line 67
    const/4 v0, 0x0

    .line 69
    invoke-virtual {p1}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 70
    new-instance v9, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v9}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 71
    :cond_2
    :goto_1
    invoke-virtual {p1, v9}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 72
    add-int/lit8 v3, v3, 0x1

    .line 73
    iget-byte v8, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v10, 0x1

    if-ne v8, v10, :cond_2

    .line 74
    if-eqz v1, :cond_3

    .line 75
    const/4 v1, 0x0

    .line 76
    iget-wide v6, v9, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 78
    :cond_3
    iget-byte v8, v9, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-ne v8, v2, :cond_4

    const/4 v8, 0x1

    if-ne v3, v8, :cond_2

    .line 79
    :cond_4
    iget-wide v4, v9, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 80
    iget-byte v2, v9, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 84
    invoke-static {}, Lbap;->b()J

    move-result-wide v10

    cmp-long v8, v4, v10

    if-lez v8, :cond_7

    .line 85
    invoke-static {v4, v5}, Lbap;->a(J)I

    move-result v8

    .line 86
    iget-object v10, p0, Laip;->c:[I

    aput v2, v10, v8

    .line 94
    :cond_5
    :goto_2
    if-eqz v0, :cond_2

    .line 96
    iget-object v8, p0, Laip;->c:[I

    const/4 v10, 0x0

    aget v8, v8, v10

    if-nez v8, :cond_6

    .line 97
    iget-object v10, p0, Laip;->c:[I

    array-length v11, v10

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v11, :cond_6

    aget v12, v10, v8

    .line 98
    if-eqz v12, :cond_8

    .line 99
    iget-object v8, p0, Laip;->c:[I

    const/4 v10, 0x0

    aput v12, v8, v10

    .line 105
    :cond_6
    iget-object v8, p0, Laip;->d:[I

    const/16 v10, 0x18

    iget-object v11, p0, Laip;->c:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    aput v11, v8, v10

    goto :goto_1

    .line 88
    :cond_7
    invoke-static {}, Lbap;->a()J

    move-result-wide v10

    cmp-long v8, v4, v10

    if-lez v8, :cond_5

    .line 89
    const/4 v0, 0x1

    .line 90
    invoke-static {v4, v5}, Lbap;->a(J)I

    move-result v8

    .line 91
    iget-object v10, p0, Laip;->d:[I

    aput v2, v10, v8

    goto :goto_2

    .line 97
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 113
    :cond_9
    cmp-long v0, v4, v6

    if-gtz v0, :cond_0

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Laip;->c:[I

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Laip;->d:[I

    goto/16 :goto_0
.end method

.method private c()Lcom/android/internal/os/BatteryStatsImpl;
    .locals 6

    .prologue
    .line 38
    const/4 v1, 0x0

    .line 40
    :try_start_0
    iget-object v0, p0, Laip;->b:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->getStatistics()[B

    move-result-object v0

    .line 41
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 42
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 43
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 44
    sget-object v0, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :try_start_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 50
    :goto_0
    return-object v0

    .line 46
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 48
    :goto_1
    const-string v2, "BatteryStatsHistory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lazt;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public a()[I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Laip;->c:[I

    return-object v0
.end method

.method public b()[I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Laip;->d:[I

    return-object v0
.end method
