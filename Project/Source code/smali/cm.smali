.class public Lcm;
.super Ljava/lang/Object;
.source "GravityCompat.java"


# static fields
.field static final a:Lcn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 90
    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 91
    new-instance v0, Lcp;

    invoke-direct {v0}, Lcp;-><init>()V

    sput-object v0, Lcm;->a:Lcn;

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    new-instance v0, Lco;

    invoke-direct {v0}, Lco;-><init>()V

    sput-object v0, Lcm;->a:Lcn;

    goto :goto_0
.end method

.method public static a(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 201
    sget-object v0, Lcm;->a:Lcn;

    invoke-interface {v0, p0, p1}, Lcn;->a(II)I

    move-result v0

    return v0
.end method
