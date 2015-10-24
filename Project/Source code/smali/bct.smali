.class public Lbct;
.super Lbcs;
.source "AsyncHttpClient.java"


# static fields
.field static f:[I


# instance fields
.field protected final g:Lbcv;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x14

    .line 16
    new-array v0, v5, [I

    sput-object v0, Lbct;->f:[I

    .line 19
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_1

    .line 20
    sget-object v2, Lbct;->f:[I

    const/4 v0, 0x2

    if-ge v1, v0, :cond_0

    move v0, v1

    :goto_1
    aput v0, v2, v1

    .line 19
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 20
    :cond_0
    sget-object v0, Lbct;->f:[I

    add-int/lit8 v3, v1, -0x2

    aget v0, v0, v3

    sget-object v3, Lbct;->f:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    add-int/2addr v0, v3

    goto :goto_1

    .line 22
    :cond_1
    return-void
.end method

.method public constructor <init>(Lbcv;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    new-instance v0, Lbcu;

    invoke-direct {v0}, Lbcu;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lbct;-><init>(Lbcv;Ljava/lang/String;Lbde;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lbcv;Ljava/lang/String;Lbde;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p2, p3}, Lbcs;-><init>(Ljava/lang/String;Lbde;)V

    .line 25
    const/4 v0, 0x3

    iput v0, p0, Lbct;->h:I

    .line 62
    iput-object p1, p0, Lbct;->g:Lbcv;

    .line 63
    return-void
.end method
