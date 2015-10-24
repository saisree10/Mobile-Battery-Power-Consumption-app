.class public Latd;
.super Latl;
.source "HardwareStatsEntry.java"


# instance fields
.field public a:I

.field public b:J


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Latl;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Latd;->a:I

    .line 60
    iput p1, p0, Latd;->a:I

    .line 61
    return-void
.end method
