.class public final Lrg;
.super Ljava/lang/Object;
.source "TabInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/dianxinos/common/ui/fragment/TabInfo;
    .locals 1
    .parameter

    .prologue
    .line 93
    new-instance v0, Lcom/dianxinos/common/ui/fragment/TabInfo;

    invoke-direct {v0, p1}, Lcom/dianxinos/common/ui/fragment/TabInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/dianxinos/common/ui/fragment/TabInfo;
    .locals 1
    .parameter

    .prologue
    .line 97
    new-array v0, p1, [Lcom/dianxinos/common/ui/fragment/TabInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lrg;->a(Landroid/os/Parcel;)Lcom/dianxinos/common/ui/fragment/TabInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lrg;->a(I)[Lcom/dianxinos/common/ui/fragment/TabInfo;

    move-result-object v0

    return-object v0
.end method
