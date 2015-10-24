.class public Lcy;
.super Ljava/lang/Object;
.source "MotionEventCompat.java"


# static fields
.field static final a:Ldb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 109
    new-instance v0, Lda;

    invoke-direct {v0}, Lda;-><init>()V

    sput-object v0, Lcy;->a:Ldb;

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    new-instance v0, Lcz;

    invoke-direct {v0}, Lcz;-><init>()V

    sput-object v0, Lcy;->a:Ldb;

    goto :goto_0
.end method

.method public static a(Landroid/view/MotionEvent;)I
    .locals 1
    .parameter

    .prologue
    .line 183
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static a(Landroid/view/MotionEvent;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 201
    sget-object v0, Lcy;->a:Ldb;

    invoke-interface {v0, p0, p1}, Ldb;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/MotionEvent;)I
    .locals 2
    .parameter

    .prologue
    .line 191
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static b(Landroid/view/MotionEvent;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 210
    sget-object v0, Lcy;->a:Ldb;

    invoke-interface {v0, p0, p1}, Ldb;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public static c(Landroid/view/MotionEvent;I)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 219
    sget-object v0, Lcy;->a:Ldb;

    invoke-interface {v0, p0, p1}, Ldb;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method

.method public static c(Landroid/view/MotionEvent;)I
    .locals 1
    .parameter

    .prologue
    .line 236
    sget-object v0, Lcy;->a:Ldb;

    invoke-interface {v0, p0}, Ldb;->a(Landroid/view/MotionEvent;)I

    move-result v0

    return v0
.end method

.method public static d(Landroid/view/MotionEvent;I)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 228
    sget-object v0, Lcy;->a:Ldb;

    invoke-interface {v0, p0, p1}, Ldb;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method
