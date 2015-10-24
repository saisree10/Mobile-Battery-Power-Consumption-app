.class public Latx;
.super Latl;
.source "UidStatsEntry.java"


# instance fields
.field public a:I

.field public b:J


# direct methods
.method public constructor <init>(IDJ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Latl;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Latx;->a:I

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Latx;->c:I

    .line 33
    iput p1, p0, Latx;->a:I

    .line 34
    iput-wide p2, p0, Latx;->d:D

    .line 35
    iput-wide p4, p0, Latx;->b:J

    .line 36
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Latl;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Latx;->a:I

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Latx;->c:I

    .line 54
    invoke-direct {p0, p1}, Latx;->a(Landroid/os/Parcel;)V

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Latv;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, Latx;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private a(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Latx;->a:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Latx;->d:D

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Latx;->b:J

    .line 61
    return-void
.end method

.method static synthetic a(Latx;Landroid/os/Parcel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, Latx;->b(Landroid/os/Parcel;)V

    return-void
.end method

.method private b(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 64
    iget v0, p0, Latx;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget-wide v0, p0, Latx;->d:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 66
    iget-wide v0, p0, Latx;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 67
    return-void
.end method


# virtual methods
.method protected synthetic c()Latl;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Latx;->e()Latx;

    move-result-object v0

    return-object v0
.end method

.method protected e()Latx;
    .locals 6

    .prologue
    .line 40
    new-instance v0, Latx;

    iget v1, p0, Latx;->a:I

    iget-wide v2, p0, Latx;->d:D

    iget-wide v4, p0, Latx;->b:J

    invoke-direct/range {v0 .. v5}, Latx;-><init>(IDJ)V

    return-object v0
.end method
