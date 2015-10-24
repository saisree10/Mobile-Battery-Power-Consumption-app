.class public Lcom/dianxinos/powermanager/recommend/model/DXHotTabList;
.super Ljava/lang/Object;
.source "DXHotTabList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static c:J

.field public static d:J

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;


# instance fields
.field public a:I

.field public b:J

.field public g:Ljava/lang/String;

.field public h:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lano;

    invoke-direct {v0}, Lano;-><init>()V

    sput-object v0, Lcom/dianxinos/powermanager/recommend/model/DXHotTabList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/dianxinos/powermanager/recommend/model/DXHotTabList;->a:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dianxinos/powermanager/recommend/model/DXHotTabList;->b:J

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    sput-wide v0, Lcom/dianxinos/powermanager/recommend/model/DXHotTabList;->c:J

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    sput-wide v0, Lcom/dianxinos/powermanager/recommend/model/DXHotTabList;->d:J

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dianxinos/powermanager/recommend/model/DXHotTabList;->e:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dianxinos/powermanager/recommend/model/DXHotTabList;->f:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/recommend/model/DXHotTabList;->g:Ljava/lang/String;

    .line 44
    const-class v0, Lcom/dianxinos/powermanager/recommend/model/DXHotTabList;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, [Lcom/dianxinos/powermanager/recommend/model/DXHotTab;

    check-cast v0, [Lcom/dianxinos/powermanager/recommend/model/DXHotTab;

    .line 46
    if-eqz v0, :cond_0

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/dianxinos/powermanager/recommend/model/DXHotTabList;->h:Ljava/util/ArrayList;

    .line 48
    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 49
    iget-object v4, p0, Lcom/dianxinos/powermanager/recommend/model/DXHotTabList;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 55
    iget v0, p0, Lcom/dianxinos/powermanager/recommend/model/DXHotTabList;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget-wide v0, p0, Lcom/dianxinos/powermanager/recommend/model/DXHotTabList;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 58
    sget-wide v0, Lcom/dianxinos/powermanager/recommend/model/DXHotTabList;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 59
    sget-wide v0, Lcom/dianxinos/powermanager/recommend/model/DXHotTabList;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 60
    sget-object v0, Lcom/dianxinos/powermanager/recommend/model/DXHotTabList;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    sget-object v0, Lcom/dianxinos/powermanager/recommend/model/DXHotTabList;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/dianxinos/powermanager/recommend/model/DXHotTabList;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/dianxinos/powermanager/recommend/model/DXHotTabList;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/dianxinos/powermanager/recommend/model/DXHotTabList;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/dianxinos/powermanager/recommend/model/DXHotTab;

    .line 65
    iget-object v1, p0, Lcom/dianxinos/powermanager/recommend/model/DXHotTabList;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 66
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 68
    :cond_0
    return-void
.end method
