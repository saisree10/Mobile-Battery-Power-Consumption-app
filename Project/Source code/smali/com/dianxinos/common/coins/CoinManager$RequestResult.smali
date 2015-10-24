.class public Lcom/dianxinos/common/coins/CoinManager$RequestResult;
.super Ljava/lang/Object;
.source "CoinManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lmd;

    invoke-direct {v0}, Lmd;-><init>()V

    sput-object v0, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->a:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->a:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->b:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->c:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->d:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->e:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->f:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->g:I

    .line 94
    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lmb;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/dianxinos/common/coins/CoinManager$RequestResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->a:I

    .line 50
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->e:Ljava/lang/String;

    .line 51
    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    iput-object p2, p0, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->f:Ljava/lang/String;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lmb;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/dianxinos/common/coins/CoinManager$RequestResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/dianxinos/common/coins/CoinManager$RequestResult;
    .locals 4
    .parameter

    .prologue
    .line 55
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 56
    const-string v1, "mid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    const-string v2, "type"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    new-instance v3, Lcom/dianxinos/common/coins/CoinManager$RequestResult;

    invoke-direct {v3, v1, v2}, Lcom/dianxinos/common/coins/CoinManager$RequestResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v1, "total"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v3, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->a:I

    .line 62
    const-string v1, "midscore"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v3, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->b:I

    .line 63
    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v3, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->c:I

    .line 64
    const-string v1, "integalmax"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v3, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->d:I

    .line 65
    const-string v1, "midpayscore"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->g:I

    .line 66
    return-object v3
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    .line 113
    iget v0, p0, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->c:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->c:I

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 140
    iget v0, p0, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->c:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->c:I

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->c:I

    const/16 v1, 0x1a4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 154
    iget v0, p0, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->c:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->c:I

    const/16 v1, 0x19a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->c:I

    const/16 v1, 0x19b

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->c:I

    const/16 v1, 0x19c

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 161
    iget v0, p0, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->c:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->c:I

    const/16 v1, 0x19a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->c:I

    const/16 v1, 0x19b

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->c:I

    const/16 v1, 0x19c

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 98
    iget v0, p0, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget v0, p0, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget v0, p0, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget v0, p0, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget-object v0, p0, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget v0, p0, Lcom/dianxinos/common/coins/CoinManager$RequestResult;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    return-void
.end method
