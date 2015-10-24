.class public Lak;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# static fields
.field private static final a:Laq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 154
    new-instance v0, Lau;

    invoke-direct {v0}, Lau;-><init>()V

    sput-object v0, Lak;->a:Laq;

    .line 162
    :goto_0
    return-void

    .line 155
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 156
    new-instance v0, Lat;

    invoke-direct {v0}, Lat;-><init>()V

    sput-object v0, Lak;->a:Laq;

    goto :goto_0

    .line 157
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 158
    new-instance v0, Las;

    invoke-direct {v0}, Las;-><init>()V

    sput-object v0, Lak;->a:Laq;

    goto :goto_0

    .line 160
    :cond_2
    new-instance v0, Lar;

    invoke-direct {v0}, Lar;-><init>()V

    sput-object v0, Lak;->a:Laq;

    goto :goto_0
.end method

.method static synthetic a()Laq;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lak;->a:Laq;

    return-object v0
.end method
