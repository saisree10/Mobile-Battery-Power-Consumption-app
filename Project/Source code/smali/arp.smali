.class public Larp;
.super Landroid/content/BroadcastReceiver;
.source "ScreenReceiver.java"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const v0, 0x4e200

    sput v0, Larp;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 16
    sget v0, Larp;->a:I

    return v0
.end method

.method static synthetic a(I)I
    .locals 0
    .parameter

    .prologue
    .line 16
    sput p0, Larp;->a:I

    return p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {p1}, Larr;->a(Landroid/content/Context;)Larr;

    move-result-object v1

    invoke-virtual {v1}, Larr;->r()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 69
    :goto_0
    return-void

    .line 32
    :cond_0
    invoke-static {}, Lazi;->a()Lazi;

    move-result-object v1

    new-instance v2, Larq;

    invoke-direct {v2, p0, p1, v0}, Larq;-><init>(Larp;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lazi;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
