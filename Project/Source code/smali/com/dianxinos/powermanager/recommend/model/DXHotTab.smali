.class public Lcom/dianxinos/powermanager/recommend/model/DXHotTab;
.super Lcom/dianxinos/powermanager/recommend/model/DXHotBase;
.source "DXHotTab.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public a:Ljava/lang/String;

.field public b:[J

.field public c:[J

.field public d:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lann;

    invoke-direct {v0}, Lann;-><init>()V

    sput-object v0, Lcom/dianxinos/powermanager/recommend/model/DXHotTab;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/dianxinos/powermanager/recommend/model/DXHotBase;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/recommend/model/DXHotBase;-><init>(Landroid/os/Parcel;)V

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/recommend/model/DXHotTab;->a:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/recommend/model/DXHotTab;->b:[J

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/recommend/model/DXHotTab;->c:[J

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/recommend/model/DXHotTab;->d:[J

    .line 85
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-super {p0, p1, p2}, Lcom/dianxinos/powermanager/recommend/model/DXHotBase;->writeToParcel(Landroid/os/Parcel;I)V

    .line 90
    iget-object v0, p0, Lcom/dianxinos/powermanager/recommend/model/DXHotTab;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/dianxinos/powermanager/recommend/model/DXHotTab;->b:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 92
    iget-object v0, p0, Lcom/dianxinos/powermanager/recommend/model/DXHotTab;->c:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 93
    iget-object v0, p0, Lcom/dianxinos/powermanager/recommend/model/DXHotTab;->d:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 94
    return-void
.end method
