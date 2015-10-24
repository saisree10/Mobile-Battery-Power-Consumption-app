.class public Lde;
.super Ljava/lang/Object;
.source "VelocityTrackerCompat.java"


# static fields
.field static final a:Ldh;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 68
    new-instance v0, Ldg;

    invoke-direct {v0}, Ldg;-><init>()V

    sput-object v0, Lde;->a:Ldh;

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    new-instance v0, Ldf;

    invoke-direct {v0}, Ldf;-><init>()V

    sput-object v0, Lde;->a:Ldh;

    goto :goto_0
.end method

.method public static a(Landroid/view/VelocityTracker;I)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 82
    sget-object v0, Lde;->a:Ldh;

    invoke-interface {v0, p0, p1}, Ldh;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/VelocityTracker;I)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 91
    sget-object v0, Lde;->a:Ldh;

    invoke-interface {v0, p0, p1}, Ldh;->b(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method
