.class public Latr;
.super Ljava/lang/Object;
.source "PowerUsageStats.java"


# instance fields
.field public a:J

.field public b:J

.field public c:Lats;

.field public d:Latl;

.field public e:Lagi;

.field private f:Lcom/android/internal/os/BatteryStatsImpl;

.field private g:J

.field private h:J

.field private i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:D

.field private n:D

.field private o:J

.field private p:D

.field private q:J

.field private r:D

.field private s:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lats;

    invoke-direct {v0}, Lats;-><init>()V

    iput-object v0, p0, Latr;->c:Lats;

    .line 81
    new-instance v0, Latc;

    invoke-direct {v0}, Latc;-><init>()V

    iput-object v0, p0, Latr;->d:Latl;

    .line 83
    new-instance v0, Lagi;

    invoke-direct {v0}, Lagi;-><init>()V

    iput-object v0, p0, Latr;->e:Lagi;

    return-void
.end method

.method static synthetic a(Latr;D)D
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 60
    iget-wide v0, p0, Latr;->m:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Latr;->m:D

    return-wide v0
.end method

.method static synthetic a(Latr;J)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 60
    iget-wide v0, p0, Latr;->k:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Latr;->k:J

    return-wide v0
.end method

.method static synthetic a(Latr;)Lcom/android/internal/os/BatteryStatsImpl;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Latr;->f:Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method static synthetic a(Latr;Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/BatteryStatsImpl;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Latr;->f:Lcom/android/internal/os/BatteryStatsImpl;

    return-object p1
.end method

.method static synthetic b(Latr;)D
    .locals 2
    .parameter

    .prologue
    .line 60
    iget-wide v0, p0, Latr;->m:D

    return-wide v0
.end method

.method static synthetic b(Latr;D)D
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-wide p1, p0, Latr;->n:D

    return-wide p1
.end method

.method static synthetic b(Latr;J)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 60
    iget-wide v0, p0, Latr;->l:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Latr;->l:J

    return-wide v0
.end method

.method static synthetic c(Latr;)D
    .locals 2
    .parameter

    .prologue
    .line 60
    iget-wide v0, p0, Latr;->n:D

    return-wide v0
.end method

.method static synthetic c(Latr;D)D
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-wide p1, p0, Latr;->p:D

    return-wide p1
.end method

.method static synthetic c(Latr;J)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 60
    iget-wide v0, p0, Latr;->h:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Latr;->h:J

    return-wide v0
.end method

.method static synthetic d(Latr;D)D
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-wide p1, p0, Latr;->r:D

    return-wide p1
.end method

.method static synthetic d(Latr;)J
    .locals 2
    .parameter

    .prologue
    .line 60
    iget-wide v0, p0, Latr;->o:J

    return-wide v0
.end method

.method static synthetic d(Latr;J)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 60
    iget-wide v0, p0, Latr;->i:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Latr;->i:J

    return-wide v0
.end method

.method static synthetic e(Latr;)D
    .locals 2
    .parameter

    .prologue
    .line 60
    iget-wide v0, p0, Latr;->p:D

    return-wide v0
.end method

.method static synthetic e(Latr;J)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 60
    iget-wide v0, p0, Latr;->j:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Latr;->j:J

    return-wide v0
.end method

.method static synthetic f(Latr;)D
    .locals 2
    .parameter

    .prologue
    .line 60
    iget-wide v0, p0, Latr;->r:D

    return-wide v0
.end method

.method static synthetic f(Latr;J)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 60
    iget-wide v0, p0, Latr;->g:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Latr;->g:J

    return-wide v0
.end method

.method static synthetic g(Latr;)J
    .locals 2
    .parameter

    .prologue
    .line 60
    iget-wide v0, p0, Latr;->s:J

    return-wide v0
.end method

.method static synthetic g(Latr;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-wide p1, p0, Latr;->o:J

    return-wide p1
.end method

.method static synthetic h(Latr;)J
    .locals 2
    .parameter

    .prologue
    .line 60
    iget-wide v0, p0, Latr;->h:J

    return-wide v0
.end method

.method static synthetic h(Latr;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-wide p1, p0, Latr;->q:J

    return-wide p1
.end method

.method static synthetic i(Latr;)J
    .locals 2
    .parameter

    .prologue
    .line 60
    iget-wide v0, p0, Latr;->g:J

    return-wide v0
.end method

.method static synthetic i(Latr;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-wide p1, p0, Latr;->s:J

    return-wide p1
.end method

.method static synthetic j(Latr;)J
    .locals 2
    .parameter

    .prologue
    .line 60
    iget-wide v0, p0, Latr;->i:J

    return-wide v0
.end method
