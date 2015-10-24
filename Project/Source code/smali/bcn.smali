.class public Lbcn;
.super Ljava/lang/Object;
.source "TDLocationManager.java"


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/location/Location;

.field private c:Landroid/location/LocationManager;

.field private d:Lbcm;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lbcn;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbcn;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbcn;->e:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lbcn;->c:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbcn;->d:Lbcm;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lbcn;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lbcn;->c:Landroid/location/LocationManager;

    iget-object v1, p0, Lbcn;->d:Lbcm;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 64
    :cond_0
    return-void
.end method

.method public c()Landroid/location/Location;
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lbcn;->b:Landroid/location/Location;

    .line 69
    if-nez v0, :cond_0

    iget-object v1, p0, Lbcn;->d:Lbcm;

    if-eqz v1, :cond_0

    .line 71
    iget-object v0, p0, Lbcn;->d:Lbcm;

    invoke-virtual {v0}, Lbcm;->a()Landroid/location/Location;

    move-result-object v0

    .line 74
    :cond_0
    return-object v0
.end method
