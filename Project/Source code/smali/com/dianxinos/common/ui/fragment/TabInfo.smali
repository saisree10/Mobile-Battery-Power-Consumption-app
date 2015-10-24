.class public Lcom/dianxinos/common/ui/fragment/TabInfo;
.super Ljava/lang/Object;
.source "TabInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public a:Z

.field public b:Lrc;

.field public c:Z

.field public d:Ljava/lang/Class;

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lrg;

    invoke-direct {v0}, Lrg;-><init>()V

    sput-object v0, Lcom/dianxinos/common/ui/fragment/TabInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/Class;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/dianxinos/common/ui/fragment/TabInfo;->g:Ljava/lang/String;

    .line 18
    iput-boolean v1, p0, Lcom/dianxinos/common/ui/fragment/TabInfo;->a:Z

    .line 19
    iput-object v0, p0, Lcom/dianxinos/common/ui/fragment/TabInfo;->b:Lrc;

    .line 20
    iput-boolean v1, p0, Lcom/dianxinos/common/ui/fragment/TabInfo;->c:Z

    .line 21
    iput-object v0, p0, Lcom/dianxinos/common/ui/fragment/TabInfo;->d:Ljava/lang/Class;

    .line 39
    iput-object p2, p0, Lcom/dianxinos/common/ui/fragment/TabInfo;->g:Ljava/lang/String;

    .line 40
    iput p1, p0, Lcom/dianxinos/common/ui/fragment/TabInfo;->e:I

    .line 41
    iput p3, p0, Lcom/dianxinos/common/ui/fragment/TabInfo;->f:I

    .line 42
    iput-object p4, p0, Lcom/dianxinos/common/ui/fragment/TabInfo;->d:Ljava/lang/Class;

    .line 43
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/dianxinos/common/ui/fragment/TabInfo;-><init>(ILjava/lang/String;ILjava/lang/Class;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v2, p0, Lcom/dianxinos/common/ui/fragment/TabInfo;->g:Ljava/lang/String;

    .line 18
    iput-boolean v1, p0, Lcom/dianxinos/common/ui/fragment/TabInfo;->a:Z

    .line 19
    iput-object v2, p0, Lcom/dianxinos/common/ui/fragment/TabInfo;->b:Lrc;

    .line 20
    iput-boolean v1, p0, Lcom/dianxinos/common/ui/fragment/TabInfo;->c:Z

    .line 21
    iput-object v2, p0, Lcom/dianxinos/common/ui/fragment/TabInfo;->d:Ljava/lang/Class;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/dianxinos/common/ui/fragment/TabInfo;->e:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dianxinos/common/ui/fragment/TabInfo;->g:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/dianxinos/common/ui/fragment/TabInfo;->f:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/dianxinos/common/ui/fragment/TabInfo;->c:Z

    .line 50
    return-void

    :cond_0
    move v0, v1

    .line 49
    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/dianxinos/common/ui/fragment/TabInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/dianxinos/common/ui/fragment/TabInfo;->f:I

    return v0
.end method

.method public c()Lrc;
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/dianxinos/common/ui/fragment/TabInfo;->b:Lrc;

    if-nez v0, :cond_0

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/common/ui/fragment/TabInfo;->d:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 82
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrc;

    iput-object v0, p0, Lcom/dianxinos/common/ui/fragment/TabInfo;->b:Lrc;

    .line 83
    iget-object v0, p0, Lcom/dianxinos/common/ui/fragment/TabInfo;->b:Lrc;

    iget v1, p0, Lcom/dianxinos/common/ui/fragment/TabInfo;->e:I

    iput v1, v0, Lrc;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dianxinos/common/ui/fragment/TabInfo;->b:Lrc;

    return-object v0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 108
    iget v0, p0, Lcom/dianxinos/common/ui/fragment/TabInfo;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-object v0, p0, Lcom/dianxinos/common/ui/fragment/TabInfo;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget v0, p0, Lcom/dianxinos/common/ui/fragment/TabInfo;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-boolean v0, p0, Lcom/dianxinos/common/ui/fragment/TabInfo;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    return-void

    .line 111
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
