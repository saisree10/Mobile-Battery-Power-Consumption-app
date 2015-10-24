.class public Lcr;
.super Ljava/lang/Object;
.source "KeyEventCompat.java"


# static fields
.field static final a:Lcv;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 166
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 167
    new-instance v0, Lcu;

    invoke-direct {v0}, Lcu;-><init>()V

    sput-object v0, Lcr;->a:Lcv;

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    new-instance v0, Lcs;

    invoke-direct {v0}, Lcs;-><init>()V

    sput-object v0, Lcr;->a:Lcv;

    goto :goto_0
.end method

.method public static a(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 192
    sget-object v0, Lcr;->a:Lcv;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-interface {v0, v1}, Lcv;->b(I)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/KeyEvent;I)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 188
    sget-object v0, Lcr;->a:Lcv;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcv;->a(II)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/KeyEvent;)V
    .locals 1
    .parameter

    .prologue
    .line 196
    sget-object v0, Lcr;->a:Lcv;

    invoke-interface {v0, p0}, Lcv;->a(Landroid/view/KeyEvent;)V

    .line 197
    return-void
.end method
