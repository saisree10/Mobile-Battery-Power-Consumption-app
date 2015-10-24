.class public final Lmd;
.super Ljava/lang/Object;
.source "CoinManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/dianxinos/common/coins/CoinManager$RequestResult;
    .locals 2
    .parameter

    .prologue
    .line 77
    new-instance v0, Lcom/dianxinos/common/coins/CoinManager$RequestResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/dianxinos/common/coins/CoinManager$RequestResult;-><init>(Landroid/os/Parcel;Lmb;)V

    return-object v0
.end method

.method public a(I)[Lcom/dianxinos/common/coins/CoinManager$RequestResult;
    .locals 1
    .parameter

    .prologue
    .line 82
    new-array v0, p1, [Lcom/dianxinos/common/coins/CoinManager$RequestResult;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lmd;->a(Landroid/os/Parcel;)Lcom/dianxinos/common/coins/CoinManager$RequestResult;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lmd;->a(I)[Lcom/dianxinos/common/coins/CoinManager$RequestResult;

    move-result-object v0

    return-object v0
.end method
