.class public Ldz;
.super Ljava/lang/Object;
.source "ViewConfigurationCompat.java"


# static fields
.field static final a:Lec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 59
    new-instance v0, Leb;

    invoke-direct {v0}, Leb;-><init>()V

    sput-object v0, Ldz;->a:Lec;

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    new-instance v0, Lea;

    invoke-direct {v0}, Lea;-><init>()V

    sput-object v0, Ldz;->a:Lec;

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewConfiguration;)I
    .locals 1
    .parameter

    .prologue
    .line 73
    sget-object v0, Ldz;->a:Lec;

    invoke-interface {v0, p0}, Lec;->a(Landroid/view/ViewConfiguration;)I

    move-result v0

    return v0
.end method
