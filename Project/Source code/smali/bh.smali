.class Lbh;
.super Ljava/lang/Object;
.source "ParcelableCompat.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field final a:Lbi;


# direct methods
.method public constructor <init>(Lbi;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lbh;->a:Lbi;

    .line 47
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lbh;->a:Lbi;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lbi;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lbh;->a:Lbi;

    invoke-interface {v0, p1}, Lbi;->a(I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
