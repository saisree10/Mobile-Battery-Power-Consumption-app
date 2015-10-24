.class Landroid/content/pm/PackageStats$1;
.super Ljava/lang/Object;
.source "PackageStats.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroid/content/pm/PackageStats;
    .locals 1
    .parameter

    .prologue
    .line 74
    new-instance v0, Landroid/content/pm/PackageStats;

    invoke-direct {v0, p1}, Landroid/content/pm/PackageStats;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Landroid/content/pm/PackageStats;
    .locals 1
    .parameter

    .prologue
    .line 78
    new-array v0, p1, [Landroid/content/pm/PackageStats;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageStats$1;->a(Landroid/os/Parcel;)Landroid/content/pm/PackageStats;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageStats$1;->a(I)[Landroid/content/pm/PackageStats;

    move-result-object v0

    return-object v0
.end method
