.class public final Lann;
.super Ljava/lang/Object;
.source "DXHotTab.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/dianxinos/powermanager/recommend/model/DXHotTab;
    .locals 1
    .parameter

    .prologue
    .line 98
    new-instance v0, Lcom/dianxinos/powermanager/recommend/model/DXHotTab;

    invoke-direct {v0, p1}, Lcom/dianxinos/powermanager/recommend/model/DXHotTab;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/dianxinos/powermanager/recommend/model/DXHotTab;
    .locals 1
    .parameter

    .prologue
    .line 102
    new-array v0, p1, [Lcom/dianxinos/powermanager/recommend/model/DXHotTab;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lann;->a(Landroid/os/Parcel;)Lcom/dianxinos/powermanager/recommend/model/DXHotTab;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lann;->a(I)[Lcom/dianxinos/powermanager/recommend/model/DXHotTab;

    move-result-object v0

    return-object v0
.end method
