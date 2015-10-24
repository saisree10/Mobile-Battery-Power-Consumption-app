.class final Latt;
.super Ljava/lang/Object;
.source "UidPowerStats.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lats;
    .locals 1
    .parameter

    .prologue
    .line 596
    new-instance v0, Lats;

    invoke-direct {v0}, Lats;-><init>()V

    .line 597
    invoke-static {v0, p1}, Lats;->a(Lats;Landroid/os/Parcel;)Z

    .line 598
    return-object v0
.end method

.method public a(I)[Lats;
    .locals 1
    .parameter

    .prologue
    .line 602
    new-array v0, p1, [Lats;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 594
    invoke-virtual {p0, p1}, Latt;->a(Landroid/os/Parcel;)Lats;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 594
    invoke-virtual {p0, p1}, Latt;->a(I)[Lats;

    move-result-object v0

    return-object v0
.end method
