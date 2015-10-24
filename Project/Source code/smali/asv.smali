.class public Lasv;
.super Ljava/lang/Object;
.source "SmartSettingsMgr.java"


# instance fields
.field a:I

.field b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput v0, p0, Lasv;->a:I

    .line 218
    iput v0, p0, Lasv;->b:I

    .line 215
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput v0, p0, Lasv;->a:I

    .line 218
    iput v0, p0, Lasv;->b:I

    .line 211
    iput p1, p0, Lasv;->a:I

    .line 212
    iput p2, p0, Lasv;->b:I

    .line 213
    return-void
.end method
