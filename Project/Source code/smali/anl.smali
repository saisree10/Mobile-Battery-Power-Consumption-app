.class public final Lanl;
.super Ljava/lang/Object;
.source "DXHotAPK.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/dianxinos/powermanager/recommend/model/DXHotAPK;
    .locals 1
    .parameter

    .prologue
    .line 111
    new-instance v0, Lcom/dianxinos/powermanager/recommend/model/DXHotAPK;

    invoke-direct {v0, p1}, Lcom/dianxinos/powermanager/recommend/model/DXHotAPK;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/dianxinos/powermanager/recommend/model/DXHotAPK;
    .locals 1
    .parameter

    .prologue
    .line 115
    new-array v0, p1, [Lcom/dianxinos/powermanager/recommend/model/DXHotAPK;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lanl;->a(Landroid/os/Parcel;)Lcom/dianxinos/powermanager/recommend/model/DXHotAPK;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lanl;->a(I)[Lcom/dianxinos/powermanager/recommend/model/DXHotAPK;

    move-result-object v0

    return-object v0
.end method
