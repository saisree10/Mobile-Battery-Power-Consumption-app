.class final Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties$1;
.super Ljava/lang/Object;
.source "Abstract.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;
    .locals 1
    .parameter

    .prologue
    .line 61
    new-instance v0, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;

    invoke-direct {v0, p1}, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;
    .locals 1
    .parameter

    .prologue
    .line 65
    new-array v0, p1, [Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties$1;->newArray(I)[Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;

    move-result-object v0

    return-object v0
.end method
