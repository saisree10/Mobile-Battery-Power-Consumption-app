.class public final Lano;
.super Ljava/lang/Object;
.source "DXHotTabList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/dianxinos/powermanager/recommend/model/DXHotTabList;
    .locals 1
    .parameter

    .prologue
    .line 72
    new-instance v0, Lcom/dianxinos/powermanager/recommend/model/DXHotTabList;

    invoke-direct {v0, p1}, Lcom/dianxinos/powermanager/recommend/model/DXHotTabList;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/dianxinos/powermanager/recommend/model/DXHotTabList;
    .locals 1
    .parameter

    .prologue
    .line 76
    new-array v0, p1, [Lcom/dianxinos/powermanager/recommend/model/DXHotTabList;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lano;->a(Landroid/os/Parcel;)Lcom/dianxinos/powermanager/recommend/model/DXHotTabList;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lano;->a(I)[Lcom/dianxinos/powermanager/recommend/model/DXHotTabList;

    move-result-object v0

    return-object v0
.end method
