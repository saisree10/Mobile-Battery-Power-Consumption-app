.class final Lcom/facebook/widget/FacebookDialog$PendingCall$1;
.super Ljava/lang/Object;
.source "FacebookDialog.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/widget/FacebookDialog$PendingCall;
    .locals 2
    .parameter

    .prologue
    .line 1147
    new-instance v0, Lcom/facebook/widget/FacebookDialog$PendingCall;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/facebook/widget/FacebookDialog$PendingCall;-><init>(Landroid/os/Parcel;Lcom/facebook/widget/FacebookDialog$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1145
    invoke-virtual {p0, p1}, Lcom/facebook/widget/FacebookDialog$PendingCall$1;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/widget/FacebookDialog$PendingCall;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/facebook/widget/FacebookDialog$PendingCall;
    .locals 1
    .parameter

    .prologue
    .line 1151
    new-array v0, p1, [Lcom/facebook/widget/FacebookDialog$PendingCall;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1145
    invoke-virtual {p0, p1}, Lcom/facebook/widget/FacebookDialog$PendingCall$1;->newArray(I)[Lcom/facebook/widget/FacebookDialog$PendingCall;

    move-result-object v0

    return-object v0
.end method
