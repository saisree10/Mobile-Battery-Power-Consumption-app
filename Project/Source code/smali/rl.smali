.class final Lrl;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lrk;
    .locals 1
    .parameter

    .prologue
    .line 32
    new-instance v0, Lrk;

    invoke-direct {v0, p1}, Lrk;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lrk;
    .locals 1
    .parameter

    .prologue
    .line 37
    new-array v0, p1, [Lrk;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lrl;->a(Landroid/os/Parcel;)Lrk;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lrl;->a(I)[Lrk;

    move-result-object v0

    return-object v0
.end method
