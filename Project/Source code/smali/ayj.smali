.class public Layj;
.super Ljava/lang/Object;
.source "AppsPowerUsageListAdapterKitKat.java"


# instance fields
.field public a:I

.field public b:I

.field public c:D

.field public d:D

.field public e:D

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Layj;->a:I

    .line 58
    iput-wide v1, p0, Layj;->d:D

    .line 59
    iput-wide v1, p0, Layj;->e:D

    .line 60
    const-string v0, "nonesense"

    iput-object v0, p0, Layj;->f:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Layj;->g:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Layj;->h:Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Layj;->i:Landroid/graphics/drawable/Drawable;

    return-void
.end method
