.class public final Lm;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroid/support/v4/app/Fragment$SavedState;
    .locals 2
    .parameter

    .prologue
    .line 333
    new-instance v0, Landroid/support/v4/app/Fragment$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/support/v4/app/Fragment$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public a(I)[Landroid/support/v4/app/Fragment$SavedState;
    .locals 1
    .parameter

    .prologue
    .line 337
    new-array v0, p1, [Landroid/support/v4/app/Fragment$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 331
    invoke-virtual {p0, p1}, Lm;->a(Landroid/os/Parcel;)Landroid/support/v4/app/Fragment$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 331
    invoke-virtual {p0, p1}, Lm;->a(I)[Landroid/support/v4/app/Fragment$SavedState;

    move-result-object v0

    return-object v0
.end method
