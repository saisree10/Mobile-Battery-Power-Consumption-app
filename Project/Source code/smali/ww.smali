.class public Lww;
.super Ljava/lang/Object;
.source "AppsStatsDataMgr.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lxl;

.field public c:Lxl;

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Lxl;

    invoke-direct {v0, v1}, Lxl;-><init>(I)V

    iput-object v0, p0, Lww;->b:Lxl;

    .line 121
    new-instance v0, Lxl;

    invoke-direct {v0, v1}, Lxl;-><init>(I)V

    iput-object v0, p0, Lww;->c:Lxl;

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lww;->d:Z

    return-void
.end method
