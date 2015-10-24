.class public final Lanm;
.super Ljava/lang/Object;
.source "DXHotBase.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/dianxinos/powermanager/recommend/model/DXHotBase;
    .locals 1
    .parameter

    .prologue
    .line 35
    new-instance v0, Lcom/dianxinos/powermanager/recommend/model/DXHotBase;

    invoke-direct {v0, p1}, Lcom/dianxinos/powermanager/recommend/model/DXHotBase;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/dianxinos/powermanager/recommend/model/DXHotBase;
    .locals 1
    .parameter

    .prologue
    .line 39
    new-array v0, p1, [Lcom/dianxinos/powermanager/recommend/model/DXHotBase;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lanm;->a(Landroid/os/Parcel;)Lcom/dianxinos/powermanager/recommend/model/DXHotBase;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lanm;->a(I)[Lcom/dianxinos/powermanager/recommend/model/DXHotBase;

    move-result-object v0

    return-object v0
.end method
